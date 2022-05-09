; ModuleID = '/llk/IR_all_yes/net/openvswitch/datapath.c_pt.bc'
source_filename = "../net/openvswitch/datapath.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.128 }
%union.anon.128 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.64 = type { i16, i16 }
%struct.datapath = type { %struct.callback_head, %struct.list_head, %struct.flow_table, ptr, ptr, %struct.possible_net_t, i32, i32, %struct.dp_meter_table, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.flow_table = type { ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.dp_meter_table = type { ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.vport = type { ptr, ptr, ptr, ptr, i16, %struct.hlist_node, %struct.hlist_node, ptr, %struct.list_head, %struct.callback_head }
%struct.dp_upcall_info = type { ptr, ptr, ptr, i32, i32, i8, i16 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dp_stats_percpu = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sw_flow_key = type { [255 x i8], i8, %struct.ip_tunnel_key, %struct.anon.4, i8, i8, i32, i32, %struct.anon.5, i8, i8, %union.anon.6, i16, %struct.anon.8, %union.anon.9, %struct.anon.21 }
%struct.ip_tunnel_key = type { i64, %union.anon.1, i16, i8, i8, i32, i16, i16 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.3 }
%union.anon.3 = type { [4 x i32] }
%struct.anon.4 = type <{ i32, i32, i16 }>
%struct.anon.5 = type { [6 x i8], [6 x i8], %struct.vlan_head, %struct.vlan_head, i16 }
%struct.vlan_head = type { i16, i16 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i8, i8, i8, i8 }
%struct.anon.8 = type { i16, i16, i16 }
%union.anon.9 = type { %struct.anon.15 }
%struct.anon.15 = type { %struct.anon.16, i32, %union.anon.17 }
%struct.anon.16 = type { %struct.in6_addr, %struct.in6_addr }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.21 = type { %struct.anon.22, i32, %struct.ovs_key_ct_labels }
%struct.anon.22 = type { i16, i16 }
%struct.ovs_key_ct_labels = type { %union.anon.23 }
%union.anon.23 = type { [4 x i32] }
%struct.sw_flow = type { %struct.callback_head, %struct.anon.181, %struct.anon.181, i32, %struct.sw_flow_key, %struct.sw_flow_id, %struct.cpumask, ptr, ptr, [0 x ptr] }
%struct.anon.181 = type { [2 x %struct.hlist_node], i32 }
%struct.sw_flow_id = type { i32, %union.anon.182 }
%union.anon.182 = type { [4 x i32] }
%struct.dp_nlsk_pids = type { %struct.callback_head, i32, [0 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.184, i16, i16, i16 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { [6 x i8], [6 x i8] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.24 }
%union.anon.24 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.130, i32, %struct.spinlock }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { ptr, ptr }
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
%struct.ovs_vport_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.159, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.176, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.159 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.176 = type { ptr }
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
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.sock_common = type { %union.anon.143, %union.anon.145, %union.anon.146, i16, i8, i8, i32, %union.anon.148, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.151, [0 x i32], %union.anon.152, i16, i16, %union.anon.153, %struct.refcount_struct, [0 x i32], %union.anon.154 }
%union.anon.143 = type { i64 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i32 }
%union.anon.148 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.151 = type { i32 }
%union.anon.152 = type { %struct.hlist_node }
%union.anon.153 = type { i32 }
%union.anon.154 = type { i32 }
%struct.vport_parms = type { ptr, i32, ptr, ptr, i16, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.163 }
%union.anon.163 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.ovs_net = type { %struct.list_head, %struct.work_struct, %struct.delayed_work, ptr, i8 }
%struct.genlmsghdr = type { i8, i8, i16 }
%struct.ovs_dp_stats = type { i64, i64, i64, i64 }
%struct.ovs_dp_megaflow_stats = type { i64, i32, i32, i64, i64 }
%struct.sw_flow_mask = type { i32, %struct.callback_head, %struct.sw_flow_key_range, %struct.sw_flow_key }
%struct.sw_flow_key_range = type { i16, i16 }
%struct.sw_flow_match = type { ptr, %struct.sw_flow_key_range, ptr }
%struct.sw_flow_actions = type { %struct.callback_head, i32, i32, [0 x %struct.nlattr] }
%struct.nlattr = type { i16, i16 }
%struct.ovs_flow_stats = type { i64, i64 }

@ovs_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ovs_mutex, i64 52), ptr getelementptr (i8, ptr @ovs_mutex, i64 52) }, ptr @ovs_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ovs_lookup_vport.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/openvswitch/datapath.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ovs_dp_process_packet.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@ovs_dp_process_packet.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ovs_dp_process_packet\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ovs: action execution error on datapath %s: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"openvswitch: ovs: action execution error on datapath %s: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tc_recirc_sharing_support = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@ovs_dp_get_upcall_portid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_dp_get_upcall_portid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ovs_dp_get_upcall_portid = private unnamed_addr constant [25 x i8] c"ovs_dp_get_upcall_portid\00", align 1
@ovs_dp_get_upcall_portid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.ovs_dp_get_upcall_portid, ptr @.str, i32 1647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016openvswitch: cpu_id mismatch with handler threads\00", [44 x i8] zeroinitializer }, align 32
@ovs_dp_get_upcall_portid._entry_ptr = internal global ptr @ovs_dp_get_upcall_portid._entry, section ".printk_index", align 4
@vport_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 64, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.63 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@dp_vport_genl_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @ovs_vport_cmd_new, ptr null, i8 1, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @ovs_vport_cmd_del, ptr null, i8 2, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @ovs_vport_cmd_get, ptr @ovs_vport_cmd_dump, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @ovs_vport_cmd_set, ptr null, i8 4, i8 0, i8 16, i8 3 }], [48 x i8] zeroinitializer }, align 32
@ovs_dp_vport_multicast_group = internal constant { %struct.genl_multicast_group, [47 x i8] } { %struct.genl_multicast_group { [16 x i8] c"ovs_vport\00\00\00\00\00\00\00", i8 0 }, [47 x i8] zeroinitializer }, align 32
@dp_vport_genl_family = dso_local global %struct.genl_family { i32 0, i32 4, [16 x i8] c"ovs_vport\00\00\00\00\00\00\00", i32 1, i32 9, i32 0, i8 -64, i8 0, i8 4, i8 1, ptr @vport_policy, ptr null, ptr null, ptr null, ptr @dp_vport_genl_ops, ptr @ovs_dp_vport_multicast_group, ptr null }, section ".data..ro_after_init", align 4
@__initcall__kmod_openvswitch__630_2711_dp_init6 = internal global ptr @dp_init, section ".initcall6.init", align 4
@__exitcall_dp_cleanup = internal global ptr @dp_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description631 = internal constant [56 x i8] c"openvswitch.description=Open vSwitch switching datapath\00", section ".modinfo", align 1
@__UNIQUE_ID_file632 = internal constant [45 x i8] c"openvswitch.file=net/openvswitch/openvswitch\00", section ".modinfo", align 1
@__UNIQUE_ID_license633 = internal constant [24 x i8] c"openvswitch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias634 = internal constant [57 x i8] c"openvswitch.alias=net-pf-16-proto-16-family-ovs_datapath\00", section ".modinfo", align 1
@__UNIQUE_ID_alias635 = internal constant [54 x i8] c"openvswitch.alias=net-pf-16-proto-16-family-ovs_vport\00", section ".modinfo", align 1
@__UNIQUE_ID_alias636 = internal constant [53 x i8] c"openvswitch.alias=net-pf-16-proto-16-family-ovs_flow\00", section ".modinfo", align 1
@__UNIQUE_ID_alias637 = internal constant [55 x i8] c"openvswitch.alias=net-pf-16-proto-16-family-ovs_packet\00", section ".modinfo", align 1
@__UNIQUE_ID_alias638 = internal constant [54 x i8] c"openvswitch.alias=net-pf-16-proto-16-family-ovs_meter\00", section ".modinfo", align 1
@__UNIQUE_ID_alias639 = internal constant [57 x i8] c"openvswitch.alias=net-pf-16-proto-16-family-ovs_ct_limit\00", section ".modinfo", align 1
@ovs_net_id = dso_local global i32 0, section ".data..read_mostly", align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ovs_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ovs_mutex\00", [22 x i8] zeroinitializer }, align 32
@ovs_vport_ovsl_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/openvswitch/datapath.h\00", [37 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_ovs_dp_upcall = external dso_local global %struct.tracepoint, align 4
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/openvswitch/openvswitch_trace.h\00", [60 x i8] zeroinitializer }, align 32
@trace_ovs_dp_upcall.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@dp_packet_genl_family = internal global %struct.genl_family { i32 0, i32 4, [16 x i8] c"ovs_packet\00\00\00\00\00\00", i32 1, i32 11, i32 0, i8 -64, i8 0, i8 1, i8 0, ptr @packet_policy, ptr null, ptr null, ptr null, ptr @dp_packet_genl_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@ovs_vport_rcu.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@packet_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 14, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.63 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@dp_packet_genl_ops = internal constant { [1 x %struct.genl_small_ops], [20 x i8] } { [1 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @ovs_packet_cmd_execute, ptr null, i8 3, i8 0, i8 16, i8 3 }], [20 x i8] zeroinitializer }, align 32
@ovs_packet_cmd_execute.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@get_dp.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovs_update_headroom.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_get_max_headroom.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_vport_cmd_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 2644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016openvswitch: Open vSwitch switching datapath\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dp_init\00", [24 x i8] zeroinitializer }, align 32
@dp_init._entry_ptr = internal global ptr @dp_init._entry, section ".printk_index", align 4
@ovs_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @ovs_init_net, ptr null, ptr @ovs_exit_net, ptr null, ptr @ovs_net_id, i32 160 }, [32 x i8] zeroinitializer }, align 32
@ovs_dp_device_notifier = external dso_local global %struct.notifier_block, align 4
@ovs_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&ovs_net->dp_notify_work)\00", [52 x i8] zeroinitializer }, align 32
@ovs_init_net.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&ovs_net->masks_rebalance)->work)\00", [42 x i8] zeroinitializer }, align 32
@ovs_init_net.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&ovs_net->masks_rebalance)->timer\00", [60 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@net_rwsem = external dso_local global %struct.rw_semaphore, align 4
@net_namespace_list = external dso_local global %struct.list_head, align 4
@__dp_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__dp_destroy.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dp_genl_families = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dp_datapath_genl_family, ptr @dp_vport_genl_family, ptr @dp_flow_genl_family, ptr @dp_packet_genl_family, ptr @dp_meter_genl_family, ptr @dp_ct_limit_genl_family], [40 x i8] zeroinitializer }, align 32
@dp_datapath_genl_family = internal global %struct.genl_family { i32 0, i32 4, [16 x i8] c"ovs_datapath\00\00\00\00", i32 2, i32 8, i32 0, i8 -64, i8 0, i8 4, i8 1, ptr @datapath_policy, ptr null, ptr null, ptr null, ptr @dp_datapath_genl_ops, ptr @ovs_dp_datapath_multicast_group, ptr null }, section ".data..ro_after_init", align 4
@dp_flow_genl_family = internal global %struct.genl_family { i32 0, i32 4, [16 x i8] c"ovs_flow\00\00\00\00\00\00\00\00", i32 1, i32 11, i32 0, i8 -64, i8 0, i8 4, i8 1, ptr @flow_policy, ptr null, ptr null, ptr null, ptr @dp_flow_genl_ops, ptr @ovs_dp_flow_multicast_group, ptr null }, section ".data..ro_after_init", align 4
@dp_meter_genl_family = external dso_local global %struct.genl_family, align 4
@dp_ct_limit_genl_family = external dso_local global %struct.genl_family, align 4
@dp_datapath_genl_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @ovs_dp_cmd_new, ptr null, i8 1, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @ovs_dp_cmd_del, ptr null, i8 2, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @ovs_dp_cmd_get, ptr @ovs_dp_cmd_dump, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @ovs_dp_cmd_set, ptr null, i8 4, i8 0, i8 16, i8 3 }], [48 x i8] zeroinitializer }, align 32
@ovs_dp_datapath_multicast_group = internal constant { %struct.genl_multicast_group, [47 x i8] } { %struct.genl_multicast_group { [16 x i8] c"ovs_datapath\00\00\00\00", i8 0 }, [47 x i8] zeroinitializer }, align 32
@datapath_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.64 } }, %struct.nla_policy }>, [56 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.64 } }, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.64 } } { i8 3, i8 1, i16 0, { %struct.anon.64 } { %struct.anon.64 { i16 0, i16 4096 } } }, %struct.nla_policy zeroinitializer }>, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@ovs_dp_stats_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@ovs_dp_set_upcall_portids.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Dropping previously announced user features\0A\00", [51 x i8] zeroinitializer }, align 32
@flow_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 1, %union.anon.63 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@dp_flow_genl_ops = internal constant { [4 x %struct.genl_small_ops], [48 x i8] } { [4 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @ovs_flow_cmd_new, ptr null, i8 1, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @ovs_flow_cmd_del, ptr null, i8 2, i8 0, i8 16, i8 3 }, %struct.genl_small_ops { ptr @ovs_flow_cmd_get, ptr @ovs_flow_cmd_dump, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @ovs_flow_cmd_set, ptr null, i8 4, i8 0, i8 16, i8 3 }], [48 x i8] zeroinitializer }, align 32
@ovs_dp_flow_multicast_group = internal constant { %struct.genl_multicast_group, [47 x i8] } { %struct.genl_multicast_group { [16 x i8] c"ovs_flow\00\00\00\00\00\00\00\00", i8 0 }, [47 x i8] zeroinitializer }, align 32
@ovs_flow_cmd_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016openvswitch: netlink: Flow key attr not present in new flow.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ovs_flow_cmd_new\00", [47 x i8] zeroinitializer }, align 32
@ovs_flow_cmd_new._entry_ptr = internal global ptr @ovs_flow_cmd_new._entry, section ".printk_index", align 4
@ovs_flow_cmd_new._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016openvswitch: netlink: Flow actions attr not present in new flow.\0A\00", [60 x i8] zeroinitializer }, align 32
@ovs_flow_cmd_new._entry_ptr.36 = internal global ptr @ovs_flow_cmd_new._entry.34, section ".printk_index", align 4
@ovs_flow_cmd_new._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016openvswitch: netlink: Flow actions may not be safe on all matching packets.\0A\00", [49 x i8] zeroinitializer }, align 32
@ovs_flow_cmd_new._entry_ptr.39 = internal global ptr @ovs_flow_cmd_new._entry.37, section ".printk_index", align 4
@ovs_flow_cmd_new.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@genl_has_listeners.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@ovs_flow_cmd_fill_actions.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_cmd_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovs_flow_cmd_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016openvswitch: netlink: Flow get message rejected, Key attribute missing.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ovs_flow_cmd_get\00", [47 x i8] zeroinitializer }, align 32
@ovs_flow_cmd_get._entry_ptr = internal global ptr @ovs_flow_cmd_get._entry, section ".printk_index", align 4
@ovs_flow_cmd_build_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_flow_cmd_build_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ovs_flow_cmd_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@ovs_flow_cmd_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016openvswitch: netlink: Flow set message rejected, Key attribute missing.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ovs_flow_cmd_set\00", [47 x i8] zeroinitializer }, align 32
@ovs_flow_cmd_set._entry_ptr = internal global ptr @ovs_flow_cmd_set._entry, section ".printk_index", align 4
@ovs_flow_cmd_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ovs_nla_init_match_and_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016openvswitch: netlink: Flow key attribute not present in set flow.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ovs_nla_init_match_and_action\00", [34 x i8] zeroinitializer }, align 32
@ovs_nla_init_match_and_action._entry_ptr = internal global ptr @ovs_nla_init_match_and_action._entry, section ".printk_index", align 4
@get_flow_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016openvswitch: netlink: Actions may not be safe on all matching packets\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_flow_actions\00", [47 x i8] zeroinitializer }, align 32
@get_flow_actions._entry_ptr = internal global ptr @get_flow_actions._entry, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"ovs_mutex\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 188, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 263, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 266, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"tc_recirc_sharing_support\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1604, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1647, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [13 x i8] c"vport_policy\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2469, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"dp_vport_genl_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2480, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"ovs_dp_vport_multicast_group\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 66, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 102, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"../net/openvswitch/datapath.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 213, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 271, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [39 x i8] c"../net/openvswitch/openvswitch_trace.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 82, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 108, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 695, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 723, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"packet_policy\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 659, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"dp_packet_genl_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 668, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 991, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2644, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"ovs_net_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2630, i32 33 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2563, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2564, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 45, i32 7 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1862, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"dp_genl_families\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 2519, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [21 x i8] c"dp_datapath_genl_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1997, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant [32 x i8] c"ovs_dp_datapath_multicast_group\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 62, i32 42 }
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"datapath_policy\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1989, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1709, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1600, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [12 x i8] c"flow_policy\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1459, i32 32 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"dp_flow_genl_ops\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1469, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"ovs_dp_flow_multicast_group\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 58, i32 42 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 950, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 954, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 990, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.221, i32 437, i32 6 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1296, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1191, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1152, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [30 x i8] c"../net/openvswitch/datapath.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 1110, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_alias634, ptr @__UNIQUE_ID_alias635, ptr @__UNIQUE_ID_alias636, ptr @__UNIQUE_ID_alias637, ptr @__UNIQUE_ID_alias638, ptr @__UNIQUE_ID_alias639, ptr @__UNIQUE_ID_description631, ptr @__UNIQUE_ID_file632, ptr @__UNIQUE_ID_license633, ptr @__exitcall_dp_cleanup, ptr @__initcall__kmod_openvswitch__630_2711_dp_init6, ptr @dp_init._entry, ptr @dp_init._entry_ptr, ptr @get_flow_actions._entry, ptr @get_flow_actions._entry_ptr, ptr @ovs_dp_get_upcall_portid._entry, ptr @ovs_dp_get_upcall_portid._entry_ptr, ptr @ovs_flow_cmd_get._entry, ptr @ovs_flow_cmd_get._entry_ptr, ptr @ovs_flow_cmd_new._entry, ptr @ovs_flow_cmd_new._entry.34, ptr @ovs_flow_cmd_new._entry.37, ptr @ovs_flow_cmd_new._entry_ptr, ptr @ovs_flow_cmd_new._entry_ptr.36, ptr @ovs_flow_cmd_new._entry_ptr.39, ptr @ovs_flow_cmd_set._entry, ptr @ovs_flow_cmd_set._entry_ptr, ptr @ovs_nla_init_match_and_action._entry, ptr @ovs_nla_init_match_and_action._entry_ptr, ptr @ovs_mutex, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tc_recirc_sharing_support, ptr @ovs_dp_get_upcall_portid._rs, ptr @.str.7, ptr @.str.8, ptr @vport_policy, ptr @dp_vport_genl_ops, ptr @ovs_dp_vport_multicast_group, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @packet_policy, ptr @dp_packet_genl_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ovs_net_ops, ptr @ovs_init_net.__key, ptr @.str.21, ptr @ovs_init_net.__key.22, ptr @.str.23, ptr @ovs_init_net.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @dp_genl_families, ptr @dp_datapath_genl_ops, ptr @ovs_dp_datapath_multicast_group, ptr @datapath_policy, ptr @ovs_dp_stats_init.__key, ptr @.str.30, ptr @.str.31, ptr @flow_policy, ptr @dp_flow_genl_ops, ptr @ovs_dp_flow_multicast_group, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_recirc_sharing_support to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_dp_get_upcall_portid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_dp_get_upcall_portid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vport_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_vport_genl_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_dp_vport_multicast_group to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_packet_genl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_init_net.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_init_net.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_genl_families to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_datapath_genl_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_dp_datapath_multicast_group to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @datapath_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_dp_stats_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_flow_genl_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_dp_flow_multicast_group to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_flow_cmd_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_flow_cmd_new._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_flow_cmd_new._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_flow_cmd_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_flow_cmd_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ovs_nla_init_match_and_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_flow_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_lock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_unlock() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockdep_ovsl_is_held() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_dp_name(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.ovs_vport_ovsl_rcu.exit_crit_edge

entry.ovs_vport_ovsl_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

land.rhs.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.ovs_vport_ovsl_rcu.exit_crit_edge, label %lockdep_ovsl_is_held.exit.i

land.rhs.i.ovs_vport_ovsl_rcu.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

lockdep_ovsl_is_held.exit.i:                      ; preds = %land.rhs.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %land.rhs6.i, label %lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl_rcu.exit_crit_edge

lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl_rcu.exit_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

land.rhs6.i:                                      ; preds = %lockdep_ovsl_is_held.exit.i
  %.b44.i = load i1, ptr @ovs_vport_ovsl_rcu.__already_done, align 1
  br i1 %.b44.i, label %land.rhs6.i.ovs_vport_ovsl_rcu.exit_crit_edge, label %if.then.i, !prof !209

land.rhs6.i.ovs_vport_ovsl_rcu.exit_crit_edge:    ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

if.then.i:                                        ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_vport_ovsl_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %ovs_vport_ovsl_rcu.exit

ovs_vport_ovsl_rcu.exit:                          ; preds = %if.then.i, %land.rhs6.i.ovs_vport_ovsl_rcu.exit_crit_edge, %lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl_rcu.exit_crit_edge, %land.rhs.i.ovs_vport_ovsl_rcu.exit_crit_edge, %entry.ovs_vport_ovsl_rcu.exit_crit_edge
  %call41.i = tail call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext 0) #14
  %1 = ptrtoint ptr %call41.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call41.i, align 4
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_lookup_vport(ptr nocapture noundef readonly %dp, i16 noundef zeroext %port_no) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 3
  %0 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports.i, align 4
  %2 = and i16 %port_no, 1023
  %and.i = zext i16 %2 to i32
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %1, i32 %and.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lockdep_ovsl_is_held.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lockdep_ovsl_is_held.exit:                        ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %lockdep_ovsl_is_held.exit.do.end_crit_edge

lockdep_ovsl_is_held.exit.do.end_crit_edge:       ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %lockdep_ovsl_is_held.exit
  %call2 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b45 = load i1, ptr @ovs_lookup_vport.__warned, align 1
  br i1 %.b45, label %land.lhs.true7.do.end_crit_edge, label %if.then

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_lookup_vport.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 189, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lockdep_ovsl_is_held.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool14.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -28
  %tobool16.not5154 = icmp eq ptr %add.ptr, null
  %tobool16.not51 = or i1 %tobool14.not, %tobool16.not5154
  br i1 %tobool16.not51, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %vport.052 = phi ptr [ %add.ptr33, %for.inc.for.body_crit_edge ], [ %add.ptr, %do.end.for.body_crit_edge ]
  %port_no17 = getelementptr inbounds %struct.vport, ptr %vport.052, i32 0, i32 4
  %6 = ptrtoint ptr %port_no17 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port_no17, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %port_no)
  %cmp = icmp eq i16 %7, %port_no
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %dp_hash_node = getelementptr inbounds %struct.vport, ptr %vport.052, i32 0, i32 6
  %8 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %dp_hash_node, align 4
  %tobool29.not = icmp eq ptr %9, null
  %add.ptr33 = getelementptr i8, ptr %9, i32 -28
  %tobool16.not55 = icmp eq ptr %add.ptr33, null
  %tobool16.not = or i1 %tobool29.not, %tobool16.not55
  br i1 %tobool16.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %vport.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %vport.052, %for.body.cleanup_crit_edge ]
  ret ptr %vport.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_dp_detach_port(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %lockdep_ovsl_is_held.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lockdep_ovsl_is_held.exit:                        ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %do.end, label %lockdep_ovsl_is_held.exit.if.end_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.if.end_crit_edge:       ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %lockdep_ovsl_is_held.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %dp_hash_node = getelementptr inbounds %struct.vport, ptr %p, i32 0, i32 6
  %1 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp_hash_node, align 4
  %pprev2.i.i = getelementptr inbounds %struct.vport, ptr %p, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev2.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %2, ptr %4, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

if.end.hlist_del_rcu.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %if.end.hlist_del_rcu.exit_crit_edge
  %7 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @ovs_vport_del(ptr noundef %p) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ovs_dp_process_packet(ptr noundef %skb, ptr noundef %key) local_unnamed_addr #0 align 64 {
entry:
  %n_mask_hit = alloca i32, align 4
  %n_cache_hit = alloca i32, align 4
  %upcall = alloca %struct.dp_upcall_info, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %dp1 = getelementptr inbounds %struct.vport, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_mask_hit) #14
  %4 = ptrtoint ptr %n_mask_hit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %n_mask_hit, align 4, !annotation !211
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n_cache_hit) #14
  %5 = ptrtoint ptr %n_cache_hit to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %n_cache_hit, align 4, !annotation !211
  %stats_percpu = getelementptr inbounds %struct.datapath, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %stats_percpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats_percpu, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, %8
  %15 = inttoptr i32 %add to ptr
  %table = getelementptr inbounds %struct.datapath, ptr %3, i32 0, i32 2
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %16 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %17 = and i16 %bf.load.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %if.then.i, label %entry.skb_get_hash.exit_crit_edge

entry.skb_get_hash.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_get_hash.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__skb_get_hash(ptr noundef %skb) #14
  br label %skb_get_hash.exit

skb_get_hash.exit:                                ; preds = %if.then.i, %entry.skb_get_hash.exit_crit_edge
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %19 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hash.i, align 4
  %call4 = call ptr @ovs_flow_tbl_lookup_stats(ptr noundef %table, ptr noundef %key, i32 noundef %20, ptr noundef nonnull %n_mask_hit, ptr noundef nonnull %n_cache_hit) #14
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.then, label %if.end29, !prof !210

if.then:                                          ; preds = %skb_get_hash.exit
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %upcall) #14
  %21 = call ptr @memset(ptr %upcall, i32 0, i32 24)
  %cmd = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall, i32 0, i32 5
  %22 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cmd, align 4
  %user_features = getelementptr inbounds %struct.datapath, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %user_features to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %user_features, align 4
  %and = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu, align 4
  %call12 = call i32 @ovs_dp_get_upcall_portid(ptr noundef %3, i32 noundef %26)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %call13 = call i32 @ovs_vport_find_upcall_portid(ptr noundef %1, ptr noundef %skb) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %call12.sink = phi i32 [ %call13, %if.else ], [ %call12, %if.then9 ]
  %27 = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call12.sink, ptr %27, align 4
  %mru = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %mru to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mru, align 4
  %mru17 = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall, i32 0, i32 6
  %31 = ptrtoint ptr %mru17 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %mru17, align 2
  %call18 = call i32 @ovs_dp_upcall(ptr noundef %3, ptr noundef %skb, ptr noundef %key, ptr noundef nonnull %upcall, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else27, label %if.then26, !prof !209

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #14
  br label %if.end28

if.else27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @consume_skb(ptr noundef %skb) #14
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %n_missed = getelementptr inbounds %struct.dp_stats_percpu, ptr %15, i32 0, i32 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %upcall) #14
  br label %out

if.end29:                                         ; preds = %skb_get_hash.exit
  %flags = getelementptr inbounds %struct.sw_flow_key, ptr %key, i32 0, i32 13, i32 2
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags, align 2
  call void @ovs_flow_stats_update(ptr noundef nonnull %call4, i16 noundef zeroext %33, ptr noundef %skb) #14
  %sf_acts34 = getelementptr inbounds %struct.sw_flow, ptr %call4, i32 0, i32 8
  %34 = ptrtoint ptr %sf_acts34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %sf_acts34, align 4
  %call36 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true, label %if.end29.do.end45_crit_edge

if.end29.do.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end45

land.lhs.true:                                    ; preds = %if.end29
  %call38 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true
  %.b108 = load i1, ptr @ovs_dp_process_packet.__warned, align 1
  br i1 %.b108, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_dp_process_packet.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 263, ptr noundef nonnull @.str.2) #14
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %if.end29.do.end45_crit_edge
  %call47 = call i32 @ovs_execute_actions(ptr noundef %3, ptr noundef %skb, ptr noundef %35, ptr noundef %key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end45.out_crit_edge, label %do.body56, !prof !209

do.end45.out_crit_edge:                           ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.body56:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ovs_dp_process_packet.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ovs_dp_process_packet, %land.lhs.true66)) #14
          to label %out [label %land.lhs.true66], !srcloc !212

land.lhs.true66:                                  ; preds = %do.body56
  %call67 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.out_crit_edge, label %if.then69

land.lhs.true66.out_crit_edge:                    ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then69:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  %call70 = call ptr @ovs_dp_name(ptr noundef %3)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ovs_dp_process_packet.descriptor, ptr noundef nonnull @.str.6, ptr noundef %call70, i32 noundef %call47) #14
  br label %out

out:                                              ; preds = %if.then69, %land.lhs.true66.out_crit_edge, %do.body56, %do.end45.out_crit_edge, %if.end28
  %stats_counter.0 = phi ptr [ %n_missed, %if.end28 ], [ %15, %land.lhs.true66.out_crit_edge ], [ %15, %if.then69 ], [ %15, %do.end45.out_crit_edge ], [ %15, %do.body56 ]
  %syncp = getelementptr inbounds %struct.dp_stats_percpu, ptr %15, i32 0, i32 5
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %36 = ptrtoint ptr %stats_counter.0 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %stats_counter.0, align 8
  %inc = add i64 %37, 1
  store i64 %inc, ptr %stats_counter.0, align 8
  %38 = ptrtoint ptr %n_mask_hit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_mask_hit, align 4
  %conv = zext i32 %39 to i64
  %n_mask_hit75 = getelementptr inbounds %struct.dp_stats_percpu, ptr %15, i32 0, i32 3
  %40 = ptrtoint ptr %n_mask_hit75 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %n_mask_hit75, align 8
  %add76 = add i64 %41, %conv
  store i64 %add76, ptr %n_mask_hit75, align 8
  %42 = ptrtoint ptr %n_cache_hit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_cache_hit, align 4
  %conv77 = zext i32 %43 to i64
  %n_cache_hit78 = getelementptr inbounds %struct.dp_stats_percpu, ptr %15, i32 0, i32 4
  %44 = ptrtoint ptr %n_cache_hit78 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %n_cache_hit78, align 8
  %add79 = add i64 %45, %conv77
  store i64 %add79, ptr %n_cache_hit78, align 8
  %dep_map.i.i = getelementptr inbounds %struct.dp_stats_percpu, ptr %15, i32 0, i32 5, i32 0, i32 1
  %46 = call ptr @llvm.returnaddress(i32 0) #14
  %47 = ptrtoint ptr %46 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %47) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !213
  %48 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_cache_hit) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n_mask_hit) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_flow_tbl_lookup_stats(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_dp_get_upcall_portid(ptr noundef %dp, i32 noundef %cpu_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %upcall_portids = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 9
  %0 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %upcall_portids, align 4
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @ovs_dp_get_upcall_portid.__warned, align 1
  br i1 %.b42, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_dp_get_upcall_portid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1635, ptr noundef nonnull @.str.2) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %1, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.then10

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10:                                        ; preds = %do.end7
  %n_pids = getelementptr inbounds %struct.dp_nlsk_pids, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %n_pids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cpu_id)
  %cmp = icmp ugt i32 %3, %cpu_id
  br i1 %cmp, label %if.then10.cleanup.sink.split_crit_edge, label %if.else

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %if.else.cleanup_crit_edge, label %if.then17

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then17:                                        ; preds = %if.else
  %call18 = tail call i32 @___ratelimit(ptr noundef nonnull @ovs_dp_get_upcall_portid._rs, ptr noundef nonnull @__func__.ovs_dp_get_upcall_portid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end26_crit_edge, label %do.end23

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

do.end23:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #17
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %if.then17.if.end26_crit_edge
  %4 = ptrtoint ptr %n_pids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_pids, align 4
  %rem = urem i32 %cpu_id, %5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end26, %if.then10.cleanup.sink.split_crit_edge
  %rem.sink = phi i32 [ %rem, %if.end26 ], [ %cpu_id, %if.then10.cleanup.sink.split_crit_edge ]
  %arrayidx29 = getelementptr %struct.dp_nlsk_pids, ptr %1, i32 0, i32 2, i32 %rem.sink
  %6 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx29, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end7.cleanup_crit_edge ], [ %7, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_vport_find_upcall_portid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ovs_dp_upcall(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info, i32 noundef %cutlen) local_unnamed_addr #0 align 64 {
entry:
  %later_key.i = alloca %struct.sw_flow_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_dp_upcall, i32 0, i32 1), ptr blockaddress(@ovs_dp_upcall, %if.then)) #14
          to label %if.end [label %if.then], !srcloc !212

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @trace_ovs_dp_upcall(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %portid = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 4
  %0 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %portid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %if.end2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end2:                                          ; preds = %if.end
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
  br i1 %tobool.i.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call fastcc i32 @queue_userspace_packet(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info, i32 noundef %cutlen)
  br label %if.end7

if.else:                                          ; preds = %if.end2
  %gso_type1.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %gso_type1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gso_type1.i, align 8
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %later_key.i) #14
  %8 = call ptr @memset(ptr %later_key.i, i32 255, i32 464)
  %call2.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef 1, i1 noundef zeroext false) #14
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %call2.i to i32
  br label %queue_gso_packets.exit

if.end.i:                                         ; preds = %if.else
  %cmp.i = icmp eq ptr %call2.i, null
  br i1 %cmp.i, label %if.end.i.queue_gso_packets.exit_crit_edge, label %if.end6.i

if.end.i.queue_gso_packets.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_gso_packets.exit

if.end6.i:                                        ; preds = %if.end.i
  %and.i = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i.for.body.i.preheader_crit_edge, label %if.then7.i

if.end6.i.for.body.i.preheader_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.preheader

if.then7.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = call ptr @memcpy(ptr %later_key.i, ptr %key, i32 464)
  %frag.i = getelementptr inbounds %struct.sw_flow_key, ptr %later_key.i, i32 0, i32 11, i32 0, i32 3
  %11 = ptrtoint ptr %frag.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %frag.i, align 1
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then7.i, %if.end6.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %nskb.078.sink.i = phi ptr [ %13, %for.body.i.for.body.i_crit_edge ], [ %call2.i, %for.body.i.preheader ]
  %key.addr.076.i = phi ptr [ %key.addr.1.i, %for.body.i.for.body.i_crit_edge ], [ %key, %for.body.i.preheader ]
  %12 = ptrtoint ptr %nskb.078.sink.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nskb.078.sink.i, align 8
  %cmp13.not.i = icmp eq ptr %nskb.078.sink.i, %call2.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp13.not.i
  %key.addr.1.i = select i1 %or.cond.i, ptr %key.addr.076.i, ptr %later_key.i
  %call16.i = call fastcc i32 @queue_userspace_packet(ptr noundef %dp, ptr noundef nonnull %nskb.078.sink.i, ptr noundef %key.addr.1.i, ptr noundef %upcall_info, i32 noundef %cutlen) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp ne i32 %call16.i, 0
  %tobool20.not.i = icmp eq ptr %13, null
  %or.cond85.i = select i1 %tobool17.not.i, i1 true, i1 %tobool20.not.i
  br i1 %or.cond85.i, label %for.body34.preheader.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body34.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool35.not.i = icmp eq i32 %call16.i, 0
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.inc38.i.for.body34.i_crit_edge, %for.body34.preheader.i
  %nskb.182.sink.i = phi ptr [ %call2.i, %for.body34.preheader.i ], [ %15, %for.inc38.i.for.body34.i_crit_edge ]
  %14 = ptrtoint ptr %nskb.182.sink.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nskb.182.sink.i, align 8
  br i1 %tobool35.not.i, label %if.else.i, label %if.then36.i

if.then36.i:                                      ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @kfree_skb_reason(ptr noundef nonnull %nskb.182.sink.i, i32 noundef 0) #14
  br label %for.inc38.i

if.else.i:                                        ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @consume_skb(ptr noundef nonnull %nskb.182.sink.i) #14
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %if.else.i, %if.then36.i
  %tobool39.not.i = icmp eq ptr %15, null
  br i1 %tobool39.not.i, label %for.inc38.i.queue_gso_packets.exit_crit_edge, label %for.inc38.i.for.body34.i_crit_edge

for.inc38.i.for.body34.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34.i

for.inc38.i.queue_gso_packets.exit_crit_edge:     ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %queue_gso_packets.exit

queue_gso_packets.exit:                           ; preds = %for.inc38.i.queue_gso_packets.exit_crit_edge, %if.end.i.queue_gso_packets.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %9, %if.then.i ], [ -22, %if.end.i.queue_gso_packets.exit_crit_edge ], [ %call16.i, %for.inc38.i.queue_gso_packets.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %later_key.i) #14
  br label %if.end7

if.end7:                                          ; preds = %queue_gso_packets.exit, %if.then4
  %err.0 = phi i32 [ %retval.0.i, %queue_gso_packets.exit ], [ %call5, %if.then4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end7.do.body_crit_edge

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %if.end.do.body_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end7.do.body_crit_edge ], [ -107, %if.end.do.body_crit_edge ]
  %stats_percpu = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 4
  %16 = ptrtoint ptr %stats_percpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stats_percpu, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i31 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i31 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %add = add i32 %24, %18
  %25 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.dp_stats_percpu, ptr %25, i32 0, i32 5
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %n_lost = getelementptr inbounds %struct.dp_stats_percpu, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %n_lost to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %n_lost, align 8
  %inc = add i64 %27, 1
  store i64 %inc, ptr %n_lost, align 8
  %dep_map.i.i = getelementptr inbounds %struct.dp_stats_percpu, ptr %25, i32 0, i32 5, i32 0, i32 1
  %28 = call ptr @llvm.returnaddress(i32 0) #14
  %29 = ptrtoint ptr %28 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %29) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !213
  %30 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %do.body ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_stats_update(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_execute_actions(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !214
  %5 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !215
  %14 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !216
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !217
  %33 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !209

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !218
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #14
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_ovs_dp_upcall(ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_dp_upcall, i32 0, i32 1), ptr blockaddress(@trace_ovs_dp_upcall, %do.body)) #14
          to label %if.end48 [label %do.body], !srcloc !212

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !199) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !209

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #16
  %9 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !219
  %call42 = tail call i32 @__traceiter_ovs_dp_upcall(ptr noundef null, ptr noundef %dp, ptr noundef %skb, ptr noundef %key, ptr noundef %upcall_info) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !220
  %13 = tail call i32 @llvm.read_register.i32(metadata !199) #14
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !199) #14
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !209

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #14
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_dp_upcall, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_ovs_dp_upcall, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_ovs_dp_upcall.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @trace_ovs_dp_upcall.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 149, ptr noundef nonnull @.str.2) #14
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !222
  %31 = tail call i32 @llvm.read_register.i32(metadata !199) #14
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
define internal fastcc i32 @queue_userspace_packet(ptr nocapture noundef readonly %dp, ptr noundef %skb, ptr noundef %key, ptr nocapture noundef readonly %upcall_info, i32 noundef %cutlen) unnamed_addr #0 align 64 {
entry:
  %tmp.i230 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  %hash = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash) #14
  %0 = ptrtoint ptr %hash to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %hash, align 8, !annotation !211
  %call = tail call fastcc i32 @get_dpifindex(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %1 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool1.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool1.not, label %if.end.if.end11_crit_edge, label %if.then2

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #14
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 9
  %2 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_proto.i, align 8
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 10
  %4 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_tci.i, align 2
  %cloned.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 12
  %6 = ptrtoint ptr %cloned.i.i.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i.i.i.i.i.i = load i8, ptr %cloned.i.i.i.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.i.i

skb_header_cloned.exit.i.i.i.i.i.i:               ; preds = %if.end6
  %end.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i.i.i.i.i.i.i, align 4
  %dataref1.i.i.i.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 10
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i.i.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %dataref1.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dataref1.i.i.i.i.i.i.i, align 4
  %data.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i.i.i.i.i.i, align 4
  %head.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i.i.i.i.i)
  %cmp.i1.i.i.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i.i.i.i.i, 4
  br i1 %cmp.i1.i.i.i.i.i.i, label %skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge, label %if.end.i2.i.i.i.i.i.i

skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread.i.i.i.i.i.i.i

skb_header_cloned.exit.thread.i.i.i.i.i.i:        ; preds = %if.end6
  %data.i.i5.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i5.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i5.i.i.i.i.i.i, align 4
  %head.i.i6.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i6.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i6.i.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i.i.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i8.i.i.i.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i9.i.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i.i.i.i.i, %sub.ptr.rhs.cast.i.i8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i9.i.i.i.i.i.i)
  %cmp.i110.i.i.i.i.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i.i.i.i.i, 4
  br i1 %cmp.i110.i.i.i.i.i.i, label %skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge

skb_header_cloned.exit.thread.i.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__vlan_hwaccel_push_inside.exit

skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.thread.i.i.i.i.i.i.i

if.end.thread.i.i.i.i.i.i.i:                      ; preds = %skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i.i.i.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i.i.i.i.i, %skb_header_cloned.exit.thread.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i.i.i.i.i, %skb_header_cloned.exit.i.i.i.i.i.i.if.end.thread.i.i.i.i.i.i.i_crit_edge ]
  %phi.bo.i.i.i.i.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i.i.i.i.i
  %phi.bo11.i.i.i.i.i.i.i = and i32 %phi.bo.i.i.i.i.i.i.i, -128
  br label %skb_cow_head.exit.i.i.i.i.i

if.end.i2.i.i.i.i.i.i:                            ; preds = %skb_header_cloned.exit.i.i.i.i.i.i
  %and.i.i.i.i.i.i.i = and i32 %10, 65535
  %shr.i.i.i.i.i.i.i = ashr i32 %10, 16
  %sub.i.i.i.i.i.i.i = sub nsw i32 %and.i.i.i.i.i.i.i, %shr.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i.i.i.i)
  %cmp.i.not.i.i.i.i.i.i = icmp eq i32 %sub.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i.i.i.i, label %if.end.i2.i.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge, label %if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge

if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge: ; preds = %if.end.i2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_cow_head.exit.i.i.i.i.i

if.end.i2.i.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge: ; preds = %if.end.i2.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__vlan_hwaccel_push_inside.exit

skb_cow_head.exit.i.i.i.i.i:                      ; preds = %if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge, %if.end.thread.i.i.i.i.i.i.i
  %delta.010.i.i.i.i.i.i.i = phi i32 [ %phi.bo11.i.i.i.i.i.i.i, %if.end.thread.i.i.i.i.i.i.i ], [ 0, %if.end.i2.i.i.i.i.i.i.skb_cow_head.exit.i.i.i.i.i_crit_edge ]
  %call4.i.i.i.i.i.i.i = tail call i32 @pskb_expand_head(ptr noundef nonnull %call3, i32 noundef %delta.010.i.i.i.i.i.i.i, i32 noundef 0, i32 noundef 2592) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call4.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %__vlan_hwaccel_push_inside.exit.thread, label %skb_cow_head.exit.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge

skb_cow_head.exit.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge: ; preds = %skb_cow_head.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__vlan_hwaccel_push_inside.exit

__vlan_hwaccel_push_inside.exit.thread:           ; preds = %skb_cow_head.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call3, i32 noundef 1) #14
  br label %cleanup

__vlan_hwaccel_push_inside.exit:                  ; preds = %skb_cow_head.exit.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge, %if.end.i2.i.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge, %skb_header_cloned.exit.thread.i.i.i.i.i.i.__vlan_hwaccel_push_inside.exit_crit_edge
  %call1.i.i.i.i.i = tail call ptr @skb_push(ptr noundef nonnull %call3, i32 noundef 4) #14
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %20, i32 4
  %21 = call ptr @memmove(ptr %20, ptr %add.ptr.i.i.i.i.i, i32 12)
  %mac_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %mac_header.i.i.i.i.i, align 2
  %sub7.i.i.i.i.i = add i16 %23, -4
  store i16 %sub7.i.i.i.i.i, ptr %mac_header.i.i.i.i.i, align 2
  %24 = load ptr, ptr %data.i.i.i.i.i, align 4
  %h_vlan_proto.i.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %h_vlan_proto.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %3, ptr %h_vlan_proto.i.i.i.i.i, align 2
  %h_vlan_TCI.i.i.i.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %24, i32 0, i32 2
  %26 = ptrtoint ptr %h_vlan_TCI.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %5, ptr %h_vlan_TCI.i.i.i.i.i, align 2
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %3, ptr %protocol.i.i, align 8
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 3
  %28 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.clear.i.i = and i32 %bf.load.i.i, 2147483647
  store i32 %bf.clear.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end11

if.end11:                                         ; preds = %__vlan_hwaccel_push_inside.exit, %if.end.if.end11_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %if.end.if.end11_crit_edge ], [ %call3, %__vlan_hwaccel_push_inside.exit ]
  %nskb.0 = phi ptr [ null, %if.end.if.end11_crit_edge ], [ %call3, %__vlan_hwaccel_push_inside.exit ]
  %len12 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %29 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len12, align 4
  %add.i = add i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %cmp = icmp sgt i32 %add.i, 65535
  br i1 %cmp, label %if.end11.if.then134_crit_edge, label %if.end15

if.end11.if.then134_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end15:                                         ; preds = %if.end11
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %31 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load16 = load i16, ptr %ip_summed, align 8
  %32 = and i16 %bf.load16, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %32)
  %cmp19 = icmp eq i16 %32, 1536
  br i1 %cmp19, label %land.lhs.true, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %call21 = tail call i32 @skb_csum_hwoffload_help(ptr noundef %skb.addr.0, i64 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.if.then134_crit_edge

land.lhs.true.if.then134_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %user_features = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 6
  %33 = ptrtoint ptr %user_features to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %user_features, align 4
  %and = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %call27 = tail call i32 @skb_zerocopy_headlen(ptr noundef %skb.addr.0) #14
  br label %if.end29

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len12, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %hlen.0 = phi i32 [ %call27, %if.then26 ], [ %36, %if.else ]
  %acts_origlen = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 6
  %37 = ptrtoint ptr %acts_origlen to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %acts_origlen, align 2
  %conv30 = zext i16 %38 to i32
  %call1.i = tail call i32 @ovs_key_attr_size() #14
  %sub.i35.i = add i32 %call1.i, 7
  %and.i36.i = and i32 %sub.i35.i, -4
  %sub = sub i32 31, %cutlen
  %39 = add i32 %sub, %hlen.0
  %add3.i = and i32 %39, -4
  %add7.i = add i32 %and.i36.i, %add3.i
  %userdata.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 1
  %40 = ptrtoint ptr %userdata.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %userdata.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end29.if.end.i_crit_edge, label %if.then.i215

if.end29.if.end.i_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i215:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 2
  %conv.i = zext i16 %43 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %and.i = and i32 %sub.i, 131068
  %add10.i = add i32 %and.i, %add7.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i215, %if.end29.if.end.i_crit_edge
  %size.0.i = phi i32 [ %add10.i, %if.then.i215 ], [ %add7.i, %if.end29.if.end.i_crit_edge ]
  %44 = ptrtoint ptr %upcall_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %upcall_info, align 4
  %tobool11.not.i = icmp eq ptr %45, null
  br i1 %tobool11.not.i, label %if.end.i.upcall_msg_size.exit_crit_edge, label %if.then12.i

if.end.i.upcall_msg_size.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %upcall_msg_size.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %call13.i = tail call i32 @ovs_tun_key_attr_size() #14
  %sub.i37.i = add i32 %call13.i, 7
  %and.i38.i = and i32 %sub.i37.i, -4
  %add15.i = add i32 %and.i38.i, %size.0.i
  br label %upcall_msg_size.exit

upcall_msg_size.exit:                             ; preds = %if.then12.i, %if.end.i.upcall_msg_size.exit_crit_edge
  %size.1.i = phi i32 [ %add15.i, %if.then12.i ], [ %size.0.i, %if.end.i.upcall_msg_size.exit_crit_edge ]
  %actions_len.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 3
  %46 = ptrtoint ptr %actions_len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %actions_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool17.not.i = icmp eq i32 %47, 0
  %sub.i39.i = add nuw nsw i32 %conv30, 7
  %and.i40.i = and i32 %sub.i39.i, 131068
  %add20.i = select i1 %tobool17.not.i, i32 0, i32 %and.i40.i
  %size.2.i = add i32 %add20.i, %size.1.i
  %mru.i = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 6
  %48 = ptrtoint ptr %mru.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mru.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool22.not.i = icmp eq i16 %49, 0
  %add25.i = add i32 %size.2.i, 8
  %size.3.i = select i1 %tobool22.not.i, i32 %size.2.i, i32 %add25.i
  %sub.i.i = add i32 %size.3.i, 7
  %and.i.i = and i32 %sub.i.i, -4
  %sub.i.i.i = add i32 %and.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #14
  %tobool33.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool33.not, label %upcall_msg_size.exit.if.then134_crit_edge, label %if.end35

upcall_msg_size.exit.if.then134_crit_edge:        ; preds = %upcall_msg_size.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end35:                                         ; preds = %upcall_msg_size.exit
  %cmd = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 5
  %50 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cmd, align 4
  %call36 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @dp_packet_genl_family, i32 noundef 0, i8 noundef zeroext %51) #14
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.if.then134_crit_edge, label %if.end39

if.end35.if.then134_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end39:                                         ; preds = %if.end35
  %52 = ptrtoint ptr %call36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call, ptr %call36, align 4
  %call41 = tail call i32 @ovs_nla_put_key(ptr noundef %key, ptr noundef %key, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull %call.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end39.if.then134_crit_edge

if.end39.if.then134_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end44:                                         ; preds = %if.end39
  %53 = ptrtoint ptr %userdata.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %userdata.i, align 4
  %tobool45.not = icmp eq ptr %54, null
  br i1 %tobool45.not, label %if.end44.if.end51_crit_edge, label %if.then46

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 2
  %conv.i216 = zext i16 %56 to i32
  %sub.i217 = add nsw i32 %conv.i216, -4
  %add.ptr.i = getelementptr i8, ptr %54, i32 4
  tail call void @__nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef %sub.i217, ptr noundef %add.ptr.i) #14
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end44.if.end51_crit_edge
  %57 = ptrtoint ptr %upcall_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %upcall_info, align 4
  %tobool52.not = icmp eq ptr %58, null
  br i1 %tobool52.not, label %if.end51.if.end64_crit_edge, label %if.then53

if.end51.if.end64_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end64

if.then53:                                        ; preds = %if.end51
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i, align 8
  %call1.i218 = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i218)
  %cmp.i = icmp slt i32 %call1.i218, 0
  %tobool55.not242 = icmp eq ptr %60, null
  %tobool55.not = select i1 %cmp.i, i1 true, i1 %tobool55.not242
  br i1 %tobool55.not, label %if.then53.if.then134_crit_edge, label %if.end57

if.then53.if.then134_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end57:                                         ; preds = %if.then53
  %61 = ptrtoint ptr %upcall_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %upcall_info, align 4
  %call59 = tail call i32 @ovs_nla_put_tunnel_info(ptr noundef nonnull %call.i.i.i, ptr noundef %62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.if.then134_crit_edge

if.end57.if.then134_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %63 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %64 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i220 = trunc i32 %sub.ptr.sub.i to i16
  %65 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i220, ptr %60, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.end62, %if.end51.if.end64_crit_edge
  %66 = ptrtoint ptr %actions_len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %actions_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool65.not = icmp eq i32 %67, 0
  br i1 %tobool65.not, label %if.end64.if.end78_crit_edge, label %if.then66

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end78

if.then66:                                        ; preds = %if.end64
  %tail.i.i221 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i221 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i221, align 8
  %call1.i222 = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i222)
  %cmp.i223 = icmp slt i32 %call1.i222, 0
  %tobool68.not243 = icmp eq ptr %69, null
  %tobool68.not = select i1 %cmp.i223, i1 true, i1 %tobool68.not243
  br i1 %tobool68.not, label %if.then66.if.then134_crit_edge, label %if.end70

if.then66.if.then134_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end70:                                         ; preds = %if.then66
  %actions = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 2
  %70 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %actions, align 4
  %72 = ptrtoint ptr %actions_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %actions_len.i, align 4
  %call72 = tail call i32 @ovs_nla_put_actions(ptr noundef %71, i32 noundef %73, ptr noundef nonnull %call.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.else76

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  %74 = ptrtoint ptr %tail.i.i221 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tail.i.i221, align 8
  %sub.ptr.lhs.cast.i226 = ptrtoint ptr %75 to i32
  %sub.ptr.rhs.cast.i227 = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i228 = sub i32 %sub.ptr.lhs.cast.i226, %sub.ptr.rhs.cast.i227
  %conv.i229 = trunc i32 %sub.ptr.sub.i228 to i16
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i229, ptr %69, align 2
  br label %if.end78

if.else76:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nla_nest_cancel(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %69)
  br label %if.end78

if.end78:                                         ; preds = %if.else76, %if.then74, %if.end64.if.end78_crit_edge
  %77 = ptrtoint ptr %mru.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %mru.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool80.not = icmp eq i16 %78, 0
  br i1 %tobool80.not, label %if.end78.if.end86_crit_edge, label %land.lhs.true81

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

land.lhs.true81:                                  ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %79 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool84.not = icmp eq i32 %call.i, 0
  br i1 %tobool84.not, label %land.lhs.true81.if.end86_crit_edge, label %land.lhs.true81.if.then134_crit_edge

land.lhs.true81.if.then134_crit_edge:             ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

land.lhs.true81.if.end86_crit_edge:               ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.end86:                                         ; preds = %land.lhs.true81.if.end86_crit_edge, %if.end78.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cutlen)
  %cmp87.not = icmp eq i32 %cutlen, 0
  br i1 %cmp87.not, label %if.end86.if.end94_crit_edge, label %land.lhs.true89

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

land.lhs.true89:                                  ; preds = %if.end86
  %80 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i230) #14
  %82 = ptrtoint ptr %tmp.i230 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %tmp.i230, align 4
  %call.i231 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i230) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i230) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool92.not = icmp eq i32 %call.i231, 0
  br i1 %tobool92.not, label %land.lhs.true89.if.end94_crit_edge, label %land.lhs.true89.if.then134_crit_edge

land.lhs.true89.if.then134_crit_edge:             ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

land.lhs.true89.if.end94_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end94

if.end94:                                         ; preds = %land.lhs.true89.if.end94_crit_edge, %if.end86.if.end94_crit_edge
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 8
  %83 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hash.i, align 4
  %conv96 = zext i32 %84 to i64
  %85 = ptrtoint ptr %hash to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv96, ptr %hash, align 8
  %86 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load97 = load i16, ptr %ip_summed, align 8
  %87 = and i16 %bf.load97, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool101.not = icmp eq i16 %87, 0
  br i1 %tobool101.not, label %if.end94.if.end103_crit_edge, label %if.then102

if.end94.if.end103_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end103

if.then102:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  %or = or i64 %conv96, 4294967296
  %88 = ptrtoint ptr %hash to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %or, ptr %hash, align 8
  br label %if.end103

if.end103:                                        ; preds = %if.then102, %if.end94.if.end103_crit_edge
  %89 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load104 = load i16, ptr %ip_summed, align 8
  %90 = and i16 %bf.load104, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool108.not = icmp eq i16 %90, 0
  br i1 %tobool108.not, label %if.end103.if.end111_crit_edge, label %if.then109

if.end103.if.end111_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end111

if.then109:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #16
  %91 = ptrtoint ptr %hash to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %hash, align 8
  %or110 = or i64 %92, 8589934592
  store i64 %or110, ptr %hash, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then109, %if.end103.if.end111_crit_edge
  %call112 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 11, i32 noundef 8, ptr noundef nonnull %hash) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end111.if.then134_crit_edge

if.end111.if.then134_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end115:                                        ; preds = %if.end111
  %call116 = call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 0) #14
  %tobool117.not = icmp eq ptr %call116, null
  br i1 %tobool117.not, label %if.end115.if.then134_crit_edge, label %if.end119

if.end115.if.then134_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

if.end119:                                        ; preds = %if.end115
  %93 = ptrtoint ptr %len12 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len12, align 4
  %sub121 = sub i32 %94, %cutlen
  %95 = trunc i32 %sub121 to i16
  %conv123 = add i16 %95, 4
  %96 = ptrtoint ptr %call116 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv123, ptr %call116, align 2
  %97 = load i32, ptr %len12, align 4
  %sub125 = sub i32 %97, %cutlen
  %call126 = call i32 @skb_zerocopy(ptr noundef nonnull %call.i.i.i, ptr noundef %skb.addr.0, i32 noundef %sub125, i32 noundef %hlen.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %out, label %if.end119.if.then134_crit_edge

if.end119.if.then134_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

out:                                              ; preds = %if.end119
  call fastcc void @pad_packet(ptr noundef %dp, ptr noundef nonnull %call.i.i.i)
  %len130 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 6
  %98 = ptrtoint ptr %len130 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len130, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %100 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %99, ptr %101, align 4
  %net.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 5
  %103 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %net.i, align 4
  %portid = getelementptr inbounds %struct.dp_upcall_info, ptr %upcall_info, i32 0, i32 4
  %105 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %104, i32 0, i32 21
  %107 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i = call i32 @netlink_unicast(ptr noundef %108, ptr noundef nonnull %call.i.i.i, i32 noundef %106, i32 noundef 64) #14
  %109 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool133.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool133.not, label %out.if.end135_crit_edge, label %out.if.then134_crit_edge

out.if.then134_crit_edge:                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then134

out.if.end135_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end135

if.then134:                                       ; preds = %out.if.then134_crit_edge, %if.end119.if.then134_crit_edge, %if.end115.if.then134_crit_edge, %if.end111.if.then134_crit_edge, %land.lhs.true89.if.then134_crit_edge, %land.lhs.true81.if.then134_crit_edge, %if.then66.if.then134_crit_edge, %if.end57.if.then134_crit_edge, %if.then53.if.then134_crit_edge, %if.end39.if.then134_crit_edge, %if.end35.if.then134_crit_edge, %upcall_msg_size.exit.if.then134_crit_edge, %land.lhs.true.if.then134_crit_edge, %if.end11.if.then134_crit_edge
  %err.0240 = phi i32 [ %109, %out.if.then134_crit_edge ], [ -105, %if.end115.if.then134_crit_edge ], [ -105, %if.end111.if.then134_crit_edge ], [ -105, %land.lhs.true89.if.then134_crit_edge ], [ -105, %land.lhs.true81.if.then134_crit_edge ], [ -90, %if.then66.if.then134_crit_edge ], [ -90, %if.then53.if.then134_crit_edge ], [ -22, %if.end35.if.then134_crit_edge ], [ -12, %upcall_msg_size.exit.if.then134_crit_edge ], [ -27, %if.end11.if.then134_crit_edge ], [ %call126, %if.end119.if.then134_crit_edge ], [ %call59, %if.end57.if.then134_crit_edge ], [ %call41, %if.end39.if.then134_crit_edge ], [ %call21, %land.lhs.true.if.then134_crit_edge ]
  %user_skb.0238 = phi ptr [ null, %out.if.then134_crit_edge ], [ %call.i.i.i, %if.end115.if.then134_crit_edge ], [ %call.i.i.i, %if.end111.if.then134_crit_edge ], [ %call.i.i.i, %land.lhs.true89.if.then134_crit_edge ], [ %call.i.i.i, %land.lhs.true81.if.then134_crit_edge ], [ %call.i.i.i, %if.then66.if.then134_crit_edge ], [ %call.i.i.i, %if.then53.if.then134_crit_edge ], [ %call.i.i.i, %if.end35.if.then134_crit_edge ], [ null, %upcall_msg_size.exit.if.then134_crit_edge ], [ null, %if.end11.if.then134_crit_edge ], [ %call.i.i.i, %if.end119.if.then134_crit_edge ], [ %call.i.i.i, %if.end57.if.then134_crit_edge ], [ %call.i.i.i, %if.end39.if.then134_crit_edge ], [ null, %land.lhs.true.if.then134_crit_edge ]
  call void @skb_tx_error(ptr noundef %skb.addr.0) #14
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %out.if.end135_crit_edge
  %err.0241 = phi i32 [ %err.0240, %if.then134 ], [ 0, %out.if.end135_crit_edge ]
  %user_skb.0239 = phi ptr [ %user_skb.0238, %if.then134 ], [ null, %out.if.end135_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %user_skb.0239, i32 noundef 0) #14
  call void @kfree_skb_reason(ptr noundef %nskb.0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end135, %__vlan_hwaccel_push_inside.exit.thread, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0241, %if.end135 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.then2.cleanup_crit_edge ], [ -12, %__vlan_hwaccel_push_inside.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ovs_vport_cmd_build_info(ptr noundef %vport, ptr noundef %net, i32 noundef %portid, i32 noundef %seq, i8 noundef zeroext %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @ovs_vport_cmd_fill_info(ptr noundef %vport, ptr noundef nonnull %call.i.i, ptr noundef %net, i32 noundef %portid, i32 noundef %seq, i32 noundef 0, i8 noundef zeroext %cmd, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.body7, label %if.end.cleanup_crit_edge, !prof !210

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2107, 0\0A.popsection", ""() #14, !srcloc !223
  unreachable

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_vport_cmd_fill_info(ptr noundef %vport, ptr noundef %skb, ptr noundef %net, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, i8 noundef zeroext %cmd, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %tmp.i73 = alloca i32, align 4
  %tmp.i70 = alloca i32, align 4
  %tmp.i67 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %vport_stats = alloca %struct.ovs_vport_stats, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vport_stats) #14
  %0 = call ptr @memset(ptr %vport_stats, i32 255, i32 64)
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @dp_vport_genl_family, i32 noundef %flags, i8 noundef zeroext %cmd) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end:                                           ; preds = %entry
  %dp = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 2
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 4
  %call1 = tail call fastcc i32 @get_dpifindex(ptr noundef %2)
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call1, ptr %call, align 4
  %port_no = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 4
  %4 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port_no, align 4
  %conv = zext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false:                                    ; preds = %if.end
  %ops = getelementptr inbounds %struct.vport, ptr %vport, i32 0, i32 7
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i67) #14
  %11 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i67, align 4
  %call.i68 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i67) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool5.not = icmp eq i32 %call.i68, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then.i_crit_edge

lor.lhs.false.if.then.i_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vport, align 4
  %call.i69 = call i32 @strlen(ptr noundef %13) #18
  %add.i = add i32 %call.i69, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add.i, ptr noundef %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool9.not = icmp eq i32 %call1.i, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false6.if.then.i_crit_edge

lor.lhs.false6.if.then.i_crit_edge:               ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %14 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vport, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i70) #14
  %18 = ptrtoint ptr %tmp.i70 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i70, align 4
  %call.i71 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i70) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool12.not = icmp eq i32 %call.i71, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false10.if.then.i_crit_edge

lor.lhs.false10.if.then.i_crit_edge:              ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end14:                                         ; preds = %lor.lhs.false10
  %19 = ptrtoint ptr %vport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vport, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 127
  %21 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %22, %net
  br i1 %cmp.i.not, label %if.end14.if.end27_crit_edge, label %if.then19

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then19:                                        ; preds = %if.end14
  %call22 = call i32 @peernet2id_alloc(ptr noundef %net, ptr noundef %22, i32 noundef %gfp) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i73) #14
  %23 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call22, ptr %tmp.i73, align 4
  %call.i74 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i73) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool24.not = icmp eq i32 %call.i74, 0
  br i1 %tobool24.not, label %if.then19.if.end27_crit_edge, label %if.then19.if.then.i_crit_edge

if.then19.if.then.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %if.then19.if.end27_crit_edge, %if.end14.if.end27_crit_edge
  call void @ovs_vport_get_stats(ptr noundef %vport, ptr noundef nonnull %vport_stats) #14
  %call28 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 64, ptr noundef nonnull %vport_stats, i32 noundef 7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.if.then.i_crit_edge

if.end27.if.then.i_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @ovs_vport_get_upcall_portids(ptr noundef %vport, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.if.then.i_crit_edge

if.end31.if.then.i_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end35:                                         ; preds = %if.end31
  %call36 = call i32 @ovs_vport_get_options(ptr noundef %vport, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call36)
  %cmp = icmp eq i32 %call36, -90
  br i1 %cmp, label %if.end35.if.then.i_crit_edge, label %if.end39

if.end35.if.then.i_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup40

if.then.i:                                        ; preds = %if.end35.if.then.i_crit_edge, %if.end31.if.then.i_crit_edge, %if.end27.if.then.i_crit_edge, %if.then19.if.then.i_crit_edge, %lor.lhs.false10.if.then.i_crit_edge, %lor.lhs.false6.if.then.i_crit_edge, %lor.lhs.false.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %add.ptr1.i75 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i75, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup40_crit_edge, label %if.then.i.i.i

if.then.i.cleanup40_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %28, %add.ptr1.i75
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !210

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i75 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #14
  br label %cleanup40

cleanup40:                                        ; preds = %if.end.i.i.i, %if.then.i.cleanup40_crit_edge, %if.end39, %entry.cleanup40_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -90, %entry.cleanup40_crit_edge ], [ -90, %if.then.i.cleanup40_crit_edge ], [ -90, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vport_stats) #14
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #17
  %call4 = tail call i32 @action_fifos_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @ovs_internal_dev_rtnl_link_register() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.error_action_fifos_exit_crit_edge

if.end.error_action_fifos_exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_action_fifos_exit

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @ovs_flow_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.error_unreg_rtnl_link_crit_edge

if.end8.error_unreg_rtnl_link_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unreg_rtnl_link

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @ovs_vport_init() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.error_flow_exit_crit_edge

if.end12.error_flow_exit_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_flow_exit

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @register_pernet_device(ptr noundef nonnull @ovs_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.error_vport_exit_crit_edge

if.end16.error_vport_exit_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_vport_exit

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @ovs_dp_device_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.error_netns_exit_crit_edge

if.end20.error_netns_exit_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_netns_exit

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @ovs_netdev_init() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.error_unreg_notifier_crit_edge

if.end24.error_unreg_notifier_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_unreg_notifier

if.end28:                                         ; preds = %if.end24
  %call29 = tail call fastcc i32 @dp_register_genl() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %error_unreg_netdev, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

error_unreg_netdev:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @ovs_netdev_exit() #14
  br label %error_unreg_notifier

error_unreg_notifier:                             ; preds = %error_unreg_netdev, %if.end24.error_unreg_notifier_crit_edge
  %err.0 = phi i32 [ %call25, %if.end24.error_unreg_notifier_crit_edge ], [ %call29, %error_unreg_netdev ]
  %call32 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ovs_dp_device_notifier) #14
  br label %error_netns_exit

error_netns_exit:                                 ; preds = %error_unreg_notifier, %if.end20.error_netns_exit_crit_edge
  %err.1 = phi i32 [ %call21, %if.end20.error_netns_exit_crit_edge ], [ %err.0, %error_unreg_notifier ]
  tail call void @unregister_pernet_device(ptr noundef nonnull @ovs_net_ops) #14
  br label %error_vport_exit

error_vport_exit:                                 ; preds = %error_netns_exit, %if.end16.error_vport_exit_crit_edge
  %err.2 = phi i32 [ %call17, %if.end16.error_vport_exit_crit_edge ], [ %err.1, %error_netns_exit ]
  tail call void @ovs_vport_exit() #14
  br label %error_flow_exit

error_flow_exit:                                  ; preds = %error_vport_exit, %if.end12.error_flow_exit_crit_edge
  %err.3 = phi i32 [ %call13, %if.end12.error_flow_exit_crit_edge ], [ %err.2, %error_vport_exit ]
  tail call void @ovs_flow_exit() #14
  br label %error_unreg_rtnl_link

error_unreg_rtnl_link:                            ; preds = %error_flow_exit, %if.end8.error_unreg_rtnl_link_crit_edge
  %err.4 = phi i32 [ %call9, %if.end8.error_unreg_rtnl_link_crit_edge ], [ %err.3, %error_flow_exit ]
  tail call void @ovs_internal_dev_rtnl_link_unregister() #14
  br label %error_action_fifos_exit

error_action_fifos_exit:                          ; preds = %error_unreg_rtnl_link, %if.end.error_action_fifos_exit_crit_edge
  %err.5 = phi i32 [ %call5, %if.end.error_action_fifos_exit_crit_edge ], [ %err.4, %error_unreg_rtnl_link ]
  tail call void @action_fifos_exit() #14
  br label %cleanup

cleanup:                                          ; preds = %error_action_fifos_exit, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28.cleanup_crit_edge ], [ %call4, %entry.cleanup_crit_edge ], [ %err.5, %error_action_fifos_exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dp_cleanup() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @genl_unregister_family(ptr noundef nonnull @dp_datapath_genl_family) #14
  %call.i.1 = tail call i32 @genl_unregister_family(ptr noundef nonnull @dp_vport_genl_family) #14
  %call.i.2 = tail call i32 @genl_unregister_family(ptr noundef nonnull @dp_flow_genl_family) #14
  %call.i.3 = tail call i32 @genl_unregister_family(ptr noundef nonnull @dp_packet_genl_family) #14
  %call.i.4 = tail call i32 @genl_unregister_family(ptr noundef nonnull @dp_meter_genl_family) #14
  %call.i.5 = tail call i32 @genl_unregister_family(ptr noundef nonnull @dp_ct_limit_genl_family) #14
  tail call void @ovs_netdev_exit() #14
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @ovs_dp_device_notifier) #14
  tail call void @unregister_pernet_device(ptr noundef nonnull @ovs_net_ops) #14
  tail call void @rcu_barrier() #14
  tail call void @ovs_vport_exit() #14
  tail call void @ovs_flow_exit() #14
  tail call void @ovs_internal_dev_rtnl_link_unregister() #14
  tail call void @action_fifos_exit() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_ovs_dp_upcall(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_dpifindex(ptr nocapture noundef readonly %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call.i3 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool.not.i4 = icmp eq i32 %call.i3, 0
  br i1 %tobool.not.i4, label %land.rhs.i, label %rcu_read_lock.exit.ovs_vport_rcu.exit_crit_edge

rcu_read_lock.exit.ovs_vport_rcu.exit_crit_edge:  ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_rcu.exit

land.rhs.i:                                       ; preds = %rcu_read_lock.exit
  %.b40.i = load i1, ptr @ovs_vport_rcu.__already_done, align 1
  br i1 %.b40.i, label %land.rhs.i.ovs_vport_rcu.exit_crit_edge, label %if.then.i5, !prof !209

land.rhs.i.ovs_vport_rcu.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_rcu.exit

if.then.i5:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_vport_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 207, i32 noundef 9, ptr noundef null) #14
  br label %ovs_vport_rcu.exit

ovs_vport_rcu.exit:                               ; preds = %if.then.i5, %land.rhs.i.ovs_vport_rcu.exit_crit_edge, %rcu_read_lock.exit.ovs_vport_rcu.exit_crit_edge
  %call37.i = tail call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext 0) #14
  %tobool.not = icmp eq ptr %call37.i, null
  br i1 %tobool.not, label %ovs_vport_rcu.exit.if.end_crit_edge, label %if.then

ovs_vport_rcu.exit.if.end_crit_edge:              ; preds = %ovs_vport_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %ovs_vport_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %call37.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call37.i, align 4
  %ifindex1 = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %ifindex1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ovs_vport_rcu.exit.if.end_crit_edge
  %ifindex.0 = phi i32 [ %7, %if.then ], [ 0, %ovs_vport_rcu.exit.if.end_crit_edge ]
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i6, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %8 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i13 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret i32 %ifindex.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_csum_hwoffload_help(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy_headlen(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_put_key(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_put_tunnel_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_put_actions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !210

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #14
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pad_packet(ptr nocapture noundef readonly %dp, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %user_features = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 6
  %0 = ptrtoint ptr %user_features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_features, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then:                                          ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %sub = add i32 %3, 3
  %and1 = and i32 %sub, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and1, i32 %3)
  %cmp.not = icmp eq i32 %and1, %3
  br i1 %cmp.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %sub3 = sub i32 %and1, %3
  %call.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub3) #14
  %4 = call ptr @memset(ptr %call.i, i32 0, i32 %sub3)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tx_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovs_vport_rcu(ptr nocapture noundef readonly %dp, i32 noundef %port_no) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b40 = load i1, ptr @ovs_vport_rcu.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !209

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_vport_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 207, i32 noundef 9, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %conv = trunc i32 %port_no to i16
  %call37 = tail call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext %conv)
  ret ptr %call37
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %0 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_key_attr_size() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_tun_key_attr_size() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_packet_cmd_execute(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %tmp.i = alloca i64, align 8
  %acts = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %0 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %userhdr, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %7 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acts) #14
  %9 = ptrtoint ptr %acts to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %acts, align 4, !annotation !211
  %arrayidx = getelementptr ptr, ptr %8, i32 8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %11, null
  %arrayidx1 = getelementptr ptr, ptr %8, i32 1
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr ptr, ptr %8, i32 2
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %arrayidx6 = getelementptr ptr, ptr %8, i32 3
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %13, align 2
  %conv.i = zext i16 %19 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add = add nsw i32 %conv.i, -2
  %call.i200 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 3264) #14
  %tobool11.not = icmp eq ptr %call.i200, null
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %23, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i.not.i = icmp eq i32 %25, 0
  br i1 %tobool.i.not.i, label %__skb_put.exit, label %do.body3.i, !prof !209

do.body3.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !226
  unreachable

__skb_put.exit:                                   ; preds = %if.end13
  %add.ptr.i201 = getelementptr i8, ptr %add.ptr1.i, i32 %sub.i
  %26 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i201, ptr %tail.i, align 8
  %len9.i = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 6
  %27 = ptrtoint ptr %len9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len9.i, align 4
  %add.i = add i32 %28, %sub.i
  store i32 %add.i, ptr %len9.i, align 4
  %29 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1, align 4
  %call16 = tail call i32 @nla_memcpy(ptr noundef %add.ptr1.i, ptr noundef %30, i32 noundef %sub.i) #14
  %arrayidx17 = getelementptr ptr, ptr %8, i32 9
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %32, null
  br i1 %tobool18.not, label %__skb_put.exit.if.end22_crit_edge, label %if.then19

__skb_put.exit.if.end22_crit_edge:                ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then19:                                        ; preds = %__skb_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i, align 2
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 15
  %35 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %__skb_put.exit.if.end22_crit_edge
  %mru.0 = phi i16 [ %34, %if.then19 ], [ 0, %__skb_put.exit.if.end22_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 3
  %mru23 = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %mru23 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %mru.0, ptr %mru23, align 4
  %arrayidx24 = getelementptr ptr, ptr %8, i32 11
  %37 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx24, align 4
  %tobool25.not = icmp eq ptr %38, null
  br i1 %tobool25.not, label %if.end22.if.end37_crit_edge, label %if.then26

if.end22.if.end37_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #14
  %39 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %tmp.i, align 8, !annotation !211
  %call.i202 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %38, i32 noundef 8) #14
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #14
  %conv = trunc i64 %41 to i32
  %l4_hash.i = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 15
  %42 = ptrtoint ptr %l4_hash.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load.i = load i16, ptr %l4_hash.i, align 8
  %and33 = lshr i64 %41, 26
  %43 = trunc i64 %and33 to i16
  %bf.clear.i = and i16 %bf.load.i, -193
  %bf.set.i = and i16 %43, 192
  %bf.set8.i = or i16 %bf.set.i, %bf.clear.i
  store i16 %bf.set8.i, ptr %l4_hash.i, align 8
  %hash10.i = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 15, i32 0, i32 8
  %44 = ptrtoint ptr %hash10.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv, ptr %hash10.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then26, %if.end22.if.end37_crit_edge
  %call38 = call ptr @ovs_flow_alloc() #14
  %45 = ptrtoint ptr %call38 to i32
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end37.err_kfree_skb_crit_edge, label %if.end42

if.end37.err_kfree_skb_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_skb

if.end42:                                         ; preds = %if.end37
  %46 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx3, align 4
  %key = getelementptr inbounds %struct.sw_flow, ptr %call38, i32 0, i32 4
  %call45 = call i32 @ovs_flow_key_extract_userspace(ptr noundef %6, ptr noundef %47, ptr noundef nonnull %call.i200, ptr noundef %key, i1 noundef zeroext %tobool.not) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end42.err_flow_free_crit_edge

if.end42.err_flow_free_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_flow_free

if.end48:                                         ; preds = %if.end42
  %48 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx6, align 4
  %call52 = call i32 @ovs_nla_copy_actions(ptr noundef %6, ptr noundef %49, ptr noundef %key, ptr noundef nonnull %acts, i1 noundef zeroext %tobool.not) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body, label %if.end48.err_flow_free_crit_edge

if.end48.err_flow_free_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_flow_free

do.body:                                          ; preds = %if.end48
  %50 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %acts, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !227
  %sf_acts79 = getelementptr inbounds %struct.sw_flow, ptr %call38, i32 0, i32 8
  %52 = ptrtoint ptr %sf_acts79 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %51, ptr %sf_acts79, align 4
  %phy = getelementptr inbounds %struct.sw_flow, ptr %call38, i32 0, i32 4, i32 3
  %53 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %phy, align 8
  %priority92 = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 15, i32 0, i32 6
  %55 = ptrtoint ptr %priority92 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %priority92, align 4
  %skb_mark = getelementptr inbounds %struct.sw_flow, ptr %call38, i32 0, i32 4, i32 3, i32 1
  %56 = ptrtoint ptr %skb_mark to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %skb_mark, align 4
  %58 = getelementptr inbounds %struct.sk_buff, ptr %call.i200, i32 0, i32 15, i32 0, i32 13
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %58, align 4
  %60 = call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %63, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %do.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.body.rcu_read_lock.exit_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.body.rcu_read_lock.exit_crit_edge
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %1, align 4
  %call95 = call fastcc ptr @get_dp_rcu(ptr noundef %6, i32 noundef %65)
  %tobool96.not = icmp eq ptr %call95, null
  br i1 %tobool96.not, label %rcu_read_lock.exit.err_unlock_crit_edge, label %if.end98

rcu_read_lock.exit.err_unlock_crit_edge:          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock

if.end98:                                         ; preds = %rcu_read_lock.exit
  %in_port = getelementptr inbounds %struct.sw_flow, ptr %call38, i32 0, i32 4, i32 3, i32 2
  %66 = ptrtoint ptr %in_port to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %in_port, align 8
  %conv101 = zext i16 %67 to i32
  %call102 = call fastcc ptr @ovs_vport_rcu(ptr noundef nonnull %call95, i32 noundef %conv101)
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.end106, label %if.end98.if.end109_crit_edge

if.end98.if.end109_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.end106:                                        ; preds = %if.end98
  %call105 = call fastcc ptr @ovs_vport_rcu(ptr noundef nonnull %call95, i32 noundef 0)
  %tobool107.not = icmp eq ptr %call105, null
  br i1 %tobool107.not, label %if.end106.err_unlock_crit_edge, label %if.end106.if.end109_crit_edge

if.end106.if.end109_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

if.end106.err_unlock_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock

if.end109:                                        ; preds = %if.end106.if.end109_crit_edge, %if.end98.if.end109_crit_edge
  %input_vport.0205 = phi ptr [ %call105, %if.end106.if.end109_crit_edge ], [ %call102, %if.end98.if.end109_crit_edge ]
  %68 = ptrtoint ptr %input_vport.0205 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %input_vport.0205, align 4
  %70 = getelementptr inbounds %struct.anon.44, ptr %call.i200, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %70, align 8
  %72 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %input_vport.0205, ptr %cb, align 8
  %73 = ptrtoint ptr %sf_acts79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %sf_acts79, align 4
  %call118 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %land.lhs.true120, label %if.end109.do.end128_crit_edge

if.end109.do.end128_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end128

land.lhs.true120:                                 ; preds = %if.end109
  %call121 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %land.lhs.true120.do.end128_crit_edge, label %land.lhs.true123

land.lhs.true120.do.end128_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end128

land.lhs.true123:                                 ; preds = %land.lhs.true120
  %.b199 = load i1, ptr @ovs_packet_cmd_execute.__warned, align 1
  br i1 %.b199, label %land.lhs.true123.do.end128_crit_edge, label %if.then125

land.lhs.true123.do.end128_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end128

if.then125:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_packet_cmd_execute.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 639, ptr noundef nonnull @.str.2) #14
  br label %do.end128

do.end128:                                        ; preds = %if.then125, %land.lhs.true123.do.end128_crit_edge, %land.lhs.true120.do.end128_crit_edge, %if.end109.do.end128_crit_edge
  call fastcc void @local_bh_disable()
  %call131 = call i32 @ovs_execute_actions(ptr noundef nonnull %call95, ptr noundef nonnull %call.i200, ptr noundef %74, ptr noundef %key) #14
  call fastcc void @local_bh_enable()
  call fastcc void @rcu_read_unlock()
  call void @ovs_flow_free(ptr noundef %call38, i1 noundef zeroext false) #14
  br label %cleanup

err_unlock:                                       ; preds = %if.end106.err_unlock_crit_edge, %rcu_read_lock.exit.err_unlock_crit_edge
  call fastcc void @rcu_read_unlock()
  br label %err_flow_free

err_flow_free:                                    ; preds = %err_unlock, %if.end48.err_flow_free_crit_edge, %if.end42.err_flow_free_crit_edge
  %err.0 = phi i32 [ %call45, %if.end42.err_flow_free_crit_edge ], [ %call52, %if.end48.err_flow_free_crit_edge ], [ -19, %err_unlock ]
  call void @ovs_flow_free(ptr noundef %call38, i1 noundef zeroext false) #14
  br label %err_kfree_skb

err_kfree_skb:                                    ; preds = %err_flow_free, %if.end37.err_kfree_skb_crit_edge
  %err.1 = phi i32 [ %45, %if.end37.err_kfree_skb_crit_edge ], [ %err.0, %err_flow_free ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i200, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %err_kfree_skb, %do.end128, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call131, %do.end128 ], [ %err.1, %err_kfree_skb ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acts) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_flow_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_key_extract_userspace(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_copy_actions(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_dp_rcu(ptr noundef %net, i32 noundef %dp_ifindex) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %dp_ifindex) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup5_crit_edge, label %if.then

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup5

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @ovs_internal_dev_get_vport(ptr noundef nonnull %call) #14
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.cleanup5_crit_edge, label %cleanup

if.then.cleanup5_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup5

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %dp = getelementptr inbounds %struct.vport, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 4
  br label %cleanup5

cleanup5:                                         ; preds = %cleanup, %if.then.cleanup5_crit_edge, %entry.cleanup5_crit_edge
  %retval.1 = phi ptr [ %1, %cleanup ], [ null, %entry.cleanup5_crit_edge ], [ null, %if.then.cleanup5_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_free(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_internal_dev_get_vport(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @peernet2id_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_vport_get_upcall_portids(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_vport_get_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_vport_cmd_new(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  %parms = alloca %struct.vport_parms, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %userhdr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %parms) #14
  %4 = call ptr @memset(ptr %parms, i32 255, i32 24)
  %arrayidx = getelementptr ptr, ptr %1, i32 3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %1, i32 2
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %1, i32 5
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %arrayidx6 = getelementptr ptr, ptr %1, i32 8
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %arrayidx10 = getelementptr ptr, ptr %1, i32 1
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %14, null
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %cond.end

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

cond.end:                                         ; preds = %if.end9
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %16)
  %cmp = icmp ugt i32 %16, 65534
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %cond.end.if.end14_crit_edge

cond.end.if.end14_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %cond.end.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %cond141 = phi i32 [ %16, %cond.end.if.end14_crit_edge ], [ 0, %if.end9.if.end14_crit_edge ]
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool16.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %type = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 1
  %arrayidx42 = getelementptr ptr, ptr %1, i32 4
  %options = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 2
  %dp43 = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 3
  %port_no44 = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 4
  %upcall_portids = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 5
  br label %restart

restart:                                          ; preds = %if.then49.restart_crit_edge, %if.end18
  %port_no.0 = phi i32 [ %cond141, %if.end18 ], [ %port_no.2, %if.then49.restart_crit_edge ]
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skc_net.i, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %call20 = call fastcc ptr @get_dp(ptr noundef %21, i32 noundef %23)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %restart.exit_unlock_free_crit_edge, label %if.end23

restart.exit_unlock_free_crit_edge:               ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

if.end23:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_no.0)
  %tobool24.not = icmp eq i32 %port_no.0, 0
  br i1 %tobool24.not, label %if.end23.if.end32_crit_edge, label %if.then25

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  br label %if.end32

if.then25:                                        ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.then25.ovs_vport_ovsl.exit_crit_edge, label %lockdep_ovsl_is_held.exit.i

if.then25.ovs_vport_ovsl.exit_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl.exit

lockdep_ovsl_is_held.exit.i:                      ; preds = %if.then25
  %call.i.i.i124 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i124)
  %tobool.not.i = icmp eq i32 %call.i.i.i124, 0
  br i1 %tobool.not.i, label %do.end.i, label %lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl.exit_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl.exit_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl.exit

do.end.i:                                         ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 219, i32 noundef 9, ptr noundef null) #14
  br label %ovs_vport_ovsl.exit

ovs_vport_ovsl.exit:                              ; preds = %do.end.i, %lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl.exit_crit_edge, %if.then25.ovs_vport_ovsl.exit_crit_edge
  %conv.i = trunc i32 %port_no.0 to i16
  %call21.i = call ptr @ovs_lookup_vport(ptr noundef nonnull %call20, i16 noundef zeroext %conv.i) #14
  %tobool27.not = icmp eq ptr %call21.i, null
  br i1 %tobool27.not, label %ovs_vport_ovsl.exit.if.end37_crit_edge, label %ovs_vport_ovsl.exit.exit_unlock_free_crit_edge

ovs_vport_ovsl.exit.exit_unlock_free_crit_edge:   ; preds = %ovs_vport_ovsl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

ovs_vport_ovsl.exit.if.end37_crit_edge:           ; preds = %ovs_vport_ovsl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.end32:                                         ; preds = %for.inc.if.end32_crit_edge, %if.end23.if.end32_crit_edge
  %port_no.1149 = phi i32 [ %inc, %for.inc.if.end32_crit_edge ], [ 1, %if.end23.if.end32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i125 = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i125, label %if.end32.ovs_vport_ovsl.exit132_crit_edge, label %lockdep_ovsl_is_held.exit.i128

if.end32.ovs_vport_ovsl.exit132_crit_edge:        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl.exit132

lockdep_ovsl_is_held.exit.i128:                   ; preds = %if.end32
  %call.i.i.i126 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i126)
  %tobool.not.i127 = icmp eq i32 %call.i.i.i126, 0
  br i1 %tobool.not.i127, label %do.end.i129, label %lockdep_ovsl_is_held.exit.i128.ovs_vport_ovsl.exit132_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.i128.ovs_vport_ovsl.exit132_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i128
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl.exit132

do.end.i129:                                      ; preds = %lockdep_ovsl_is_held.exit.i128
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 219, i32 noundef 9, ptr noundef null) #14
  br label %ovs_vport_ovsl.exit132

ovs_vport_ovsl.exit132:                           ; preds = %do.end.i129, %lockdep_ovsl_is_held.exit.i128.ovs_vport_ovsl.exit132_crit_edge, %if.end32.ovs_vport_ovsl.exit132_crit_edge
  %conv.i130 = trunc i32 %port_no.1149 to i16
  %call21.i131 = call ptr @ovs_lookup_vport(ptr noundef nonnull %call20, i16 noundef zeroext %conv.i130) #14
  %tobool34.not = icmp eq ptr %call21.i131, null
  br i1 %tobool34.not, label %if.end37.loopexit, label %for.inc

for.inc:                                          ; preds = %ovs_vport_ovsl.exit132
  %inc = add nuw nsw i32 %port_no.1149, 1
  %exitcond = icmp eq i32 %inc, 65535
  br i1 %exitcond, label %for.inc.exit_unlock_free_crit_edge, label %for.inc.if.end32_crit_edge

for.inc.if.end32_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

for.inc.exit_unlock_free_crit_edge:               ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

if.end37.loopexit:                                ; preds = %ovs_vport_ovsl.exit132
  call void @__sanitizer_cov_trace_pc() #16
  %conv.i130.le = trunc i32 %port_no.1149 to i16
  br label %if.end37

if.end37:                                         ; preds = %if.end37.loopexit, %ovs_vport_ovsl.exit.if.end37_crit_edge
  %conv.pre-phi = phi i16 [ %conv.i, %ovs_vport_ovsl.exit.if.end37_crit_edge ], [ %conv.i130.le, %if.end37.loopexit ]
  %port_no.2 = phi i32 [ %port_no.0, %ovs_vport_ovsl.exit.if.end37_crit_edge ], [ %port_no.1149, %if.end37.loopexit ]
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %parms, align 4
  %29 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i133 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i133 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i133, align 4
  %33 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %type, align 4
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx42, align 4
  %36 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %options, align 4
  %37 = ptrtoint ptr %dp43 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call20, ptr %dp43, align 4
  %38 = ptrtoint ptr %port_no44 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.pre-phi, ptr %port_no44, align 4
  %39 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx4, align 4
  %41 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %upcall_portids, align 4
  %call.i = call ptr @ovs_vport_add(ptr noundef nonnull %parms) #14
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then49, label %if.then.i

if.then.i:                                        ; preds = %if.end37
  %42 = ptrtoint ptr %dp43 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dp43, align 4
  %port_no.i = getelementptr inbounds %struct.vport, ptr %call.i, i32 0, i32 4
  %44 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %port_no.i, align 4
  %ports.i.i = getelementptr inbounds %struct.datapath, ptr %43, i32 0, i32 3
  %46 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ports.i.i, align 4
  %48 = and i16 %45, 1023
  %and.i.i = zext i16 %48 to i32
  %arrayidx.i.i = getelementptr %struct.hlist_head, ptr %47, i32 %and.i.i
  %dp_hash_node.i = getelementptr inbounds %struct.vport, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %51 = ptrtoint ptr %dp_hash_node.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %dp_hash_node.i, align 4
  %pprev.i.i = getelementptr inbounds %struct.vport, ptr %call.i, i32 0, i32 6, i32 1
  %52 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %arrayidx.i.i, ptr %pprev.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !228
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %dp_hash_node.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i134 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i134, label %if.then.i.if.end54_crit_edge, label %do.body49.i.i

if.then.i.if.end54_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

do.body49.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %50, i32 0, i32 1
  %54 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %dp_hash_node.i, ptr %pprev51.i.i, align 4
  br label %if.end54

if.then49:                                        ; preds = %if.end37
  %cmp50 = icmp eq ptr %call.i, inttoptr (i32 -11 to ptr)
  br i1 %cmp50, label %if.then49.restart_crit_edge, label %exit_unlock_free.loopexit145.split.loop.exit152

if.then49.restart_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  br label %restart

if.end54:                                         ; preds = %do.body49.i.i, %if.then.i.if.end54_crit_edge
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %55 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_net.i, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %57 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %snd_portid, align 4
  %59 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %info, align 4
  %call56 = call fastcc i32 @ovs_vport_cmd_fill_info(ptr noundef %call.i, ptr noundef nonnull %call.i.i.i, ptr noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef 0, i8 noundef zeroext 1, i32 noundef 3264)
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 15
  %63 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i135 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i135, label %netdev_get_fwd_headroom.exit, label %netdev_get_fwd_headroom.exit.thread

netdev_get_fwd_headroom.exit.thread:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %max_headroom143 = getelementptr inbounds %struct.datapath, ptr %call20, i32 0, i32 7
  %65 = ptrtoint ptr %max_headroom143 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_headroom143, align 4
  br label %if.else61

netdev_get_fwd_headroom.exit:                     ; preds = %if.end54
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 21
  %67 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %needed_headroom.i, align 8
  %conv.i136 = zext i16 %68 to i32
  %max_headroom = getelementptr inbounds %struct.datapath, ptr %call20, i32 0, i32 7
  %69 = ptrtoint ptr %max_headroom to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_headroom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %conv.i136)
  %cmp58 = icmp ult i32 %70, %conv.i136
  br i1 %cmp58, label %if.then60, label %netdev_get_fwd_headroom.exit.if.else61_crit_edge

netdev_get_fwd_headroom.exit.if.else61_crit_edge: ; preds = %netdev_get_fwd_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else61

if.then60:                                        ; preds = %netdev_get_fwd_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ovs_update_headroom(ptr noundef nonnull %call20, i32 noundef %conv.i136)
  br label %do.body

if.else61:                                        ; preds = %netdev_get_fwd_headroom.exit.if.else61_crit_edge, %netdev_get_fwd_headroom.exit.thread
  %71 = phi i32 [ %66, %netdev_get_fwd_headroom.exit.thread ], [ %70, %netdev_get_fwd_headroom.exit.if.else61_crit_edge ]
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 16
  %72 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_set_rx_headroom.i = getelementptr inbounds %struct.net_device_ops, ptr %73, i32 0, i32 75
  %74 = ptrtoint ptr %ndo_set_rx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ndo_set_rx_headroom.i, align 4
  %tobool.not.i137 = icmp eq ptr %75, null
  br i1 %tobool.not.i137, label %if.else61.do.body_crit_edge, label %if.then.i138

if.else61.do.body_crit_edge:                      ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.then.i138:                                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #16
  call void %75(ptr noundef %62, i32 noundef %71) #14
  br label %do.body

do.body:                                          ; preds = %if.then.i138, %if.else61.do.body_crit_edge, %if.then60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp65 = icmp slt i32 %call56, 0
  br i1 %cmp65, label %do.body70, label %do.end76, !prof !210

do.body70:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2260, 0\0A.popsection", ""() #14, !srcloc !229
  unreachable

do.end76:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @genl_notify(ptr noundef nonnull @dp_vport_genl_family, ptr noundef nonnull %call.i.i.i, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %cleanup

exit_unlock_free.loopexit145.split.loop.exit152:  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %call.i to i32
  br label %exit_unlock_free

exit_unlock_free:                                 ; preds = %exit_unlock_free.loopexit145.split.loop.exit152, %for.inc.exit_unlock_free_crit_edge, %ovs_vport_ovsl.exit.exit_unlock_free_crit_edge, %restart.exit_unlock_free_crit_edge
  %err.0 = phi i32 [ %76, %exit_unlock_free.loopexit145.split.loop.exit152 ], [ -27, %for.inc.exit_unlock_free_crit_edge ], [ -19, %restart.exit_unlock_free_crit_edge ], [ -16, %ovs_vport_ovsl.exit.exit_unlock_free_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock_free, %do.end76, %if.end14.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_unlock_free ], [ 0, %do.end76 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -27, %cond.end.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %parms) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_vport_cmd_del(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %userhdr, align 4
  %call2 = tail call fastcc ptr @lookup_vport(ptr noundef %6, ptr noundef %8, ptr noundef %1)
  %9 = ptrtoint ptr %call2 to i32
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.exit_unlock_free_crit_edge, label %if.end6

if.end.exit_unlock_free_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

if.end6:                                          ; preds = %if.end
  %port_no = getelementptr inbounds %struct.vport, ptr %call2, i32 0, i32 4
  %10 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp = icmp eq i16 %11, 0
  br i1 %cmp, label %if.end6.exit_unlock_free_crit_edge, label %if.end9

if.end6.exit_unlock_free_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

if.end9:                                          ; preds = %if.end6
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %12 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_net.i, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_portid, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info, align 4
  %call11 = tail call fastcc i32 @ovs_vport_cmd_fill_info(ptr noundef %call2, ptr noundef nonnull %call.i.i.i, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef 0, i8 noundef zeroext 2, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.body17, label %do.end23, !prof !210

do.body17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2353, 0\0A.popsection", ""() #14, !srcloc !230
  unreachable

do.end23:                                         ; preds = %if.end9
  %dp24 = getelementptr inbounds %struct.vport, ptr %call2, i32 0, i32 2
  %18 = ptrtoint ptr %dp24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dp24, align 4
  %20 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call2, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %do.end23.netdev_get_fwd_headroom.exit_crit_edge

do.end23.netdev_get_fwd_headroom.exit_crit_edge:  ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_get_fwd_headroom.exit

cond.false.i:                                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #16
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 21
  %24 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %needed_headroom.i, align 8
  %conv.i = zext i16 %25 to i32
  br label %netdev_get_fwd_headroom.exit

netdev_get_fwd_headroom.exit:                     ; preds = %cond.false.i, %do.end23.netdev_get_fwd_headroom.exit_crit_edge
  %cond.i = phi i32 [ %conv.i, %cond.false.i ], [ 0, %do.end23.netdev_get_fwd_headroom.exit_crit_edge ]
  %max_headroom = getelementptr inbounds %struct.datapath, ptr %19, i32 0, i32 7
  %26 = ptrtoint ptr %max_headroom to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_headroom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %27)
  %cmp26 = icmp eq i32 %cond.i, %27
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 16
  %28 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %netdev_ops.i.i, align 8
  %ndo_set_rx_headroom.i.i = getelementptr inbounds %struct.net_device_ops, ptr %29, i32 0, i32 75
  %30 = ptrtoint ptr %ndo_set_rx_headroom.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndo_set_rx_headroom.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.i, label %netdev_get_fwd_headroom.exit.netdev_reset_rx_headroom.exit_crit_edge, label %if.then.i.i

netdev_get_fwd_headroom.exit.netdev_reset_rx_headroom.exit_crit_edge: ; preds = %netdev_get_fwd_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_reset_rx_headroom.exit

if.then.i.i:                                      ; preds = %netdev_get_fwd_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %31(ptr noundef %21, i32 noundef -1) #14
  br label %netdev_reset_rx_headroom.exit

netdev_reset_rx_headroom.exit:                    ; preds = %if.then.i.i, %netdev_get_fwd_headroom.exit.netdev_reset_rx_headroom.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i66 = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i66, label %netdev_reset_rx_headroom.exit.if.end.i_crit_edge, label %lockdep_ovsl_is_held.exit.i

netdev_reset_rx_headroom.exit.if.end.i_crit_edge: ; preds = %netdev_reset_rx_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lockdep_ovsl_is_held.exit.i:                      ; preds = %netdev_reset_rx_headroom.exit
  %call.i.i.i67 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i67)
  %tobool.not.i68 = icmp eq i32 %call.i.i.i67, 0
  br i1 %tobool.not.i68, label %do.end.i, label %lockdep_ovsl_is_held.exit.i.if.end.i_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.i.if.end.i_crit_edge:   ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %lockdep_ovsl_is_held.exit.i.if.end.i_crit_edge, %netdev_reset_rx_headroom.exit.if.end.i_crit_edge
  %dp_hash_node.i = getelementptr inbounds %struct.vport, ptr %call2, i32 0, i32 6
  %33 = ptrtoint ptr %dp_hash_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dp_hash_node.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.vport, ptr %call2, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev2.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %34, ptr %36, align 4
  %tobool.not.i.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i, label %if.end.i.ovs_dp_detach_port.exit_crit_edge, label %do.body13.i.i.i

if.end.i.ovs_dp_detach_port.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_detach_port.exit

do.body13.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %34, i32 0, i32 1
  %38 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %pprev14.i.i.i, align 4
  br label %ovs_dp_detach_port.exit

ovs_dp_detach_port.exit:                          ; preds = %do.body13.i.i.i, %if.end.i.ovs_dp_detach_port.exit_crit_edge
  %39 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @ovs_vport_del(ptr noundef %call2) #14
  br i1 %cmp26, label %if.then32, label %ovs_dp_detach_port.exit.if.end39_crit_edge

ovs_dp_detach_port.exit.if.end39_crit_edge:       ; preds = %ovs_dp_detach_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then32:                                        ; preds = %ovs_dp_detach_port.exit
  %ports.i = getelementptr inbounds %struct.datapath, ptr %19, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc38.i.do.body.i_crit_edge, %if.then32
  %max_headroom.060.i = phi i32 [ 0, %if.then32 ], [ %max_headroom.1.lcssa.i, %for.inc38.i.do.body.i_crit_edge ]
  %i.059.i = phi i32 [ 0, %if.then32 ], [ %inc.i, %for.inc38.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %40 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i69 = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i69, label %do.body.i.do.end.i73_crit_edge, label %lockdep_ovsl_is_held.exit.i72

do.body.i.do.end.i73_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i73

lockdep_ovsl_is_held.exit.i72:                    ; preds = %do.body.i
  %call.i.i.i70 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i70)
  %tobool.not.i71 = icmp eq i32 %call.i.i.i70, 0
  br i1 %tobool.not.i71, label %land.lhs.true.i, label %lockdep_ovsl_is_held.exit.i72.do.end.i73_crit_edge

lockdep_ovsl_is_held.exit.i72.do.end.i73_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i73

land.lhs.true.i:                                  ; preds = %lockdep_ovsl_is_held.exit.i72
  %call1.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.do.end.i73_crit_edge

land.lhs.true.i.do.end.i73_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i73

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true3.i.do.end.i73_crit_edge, label %land.lhs.true6.i

land.lhs.true3.i.do.end.i73_crit_edge:            ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i73

land.lhs.true6.i:                                 ; preds = %land.lhs.true3.i
  %.b49.i = load i1, ptr @ovs_get_max_headroom.__warned, align 1
  br i1 %.b49.i, label %land.lhs.true6.i.do.end.i73_crit_edge, label %if.then.i

land.lhs.true6.i.do.end.i73_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i73

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_get_max_headroom.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2158, ptr noundef nonnull @.str.1) #14
  br label %do.end.i73

do.end.i73:                                       ; preds = %if.then.i, %land.lhs.true6.i.do.end.i73_crit_edge, %land.lhs.true3.i.do.end.i73_crit_edge, %land.lhs.true.i.do.end.i73_crit_edge, %lockdep_ovsl_is_held.exit.i72.do.end.i73_crit_edge, %do.body.i.do.end.i73_crit_edge
  %41 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %42, i32 %i.059.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i = icmp eq ptr %44, null
  %add.ptr.i = getelementptr i8, ptr %44, i32 -28
  %tobool16.not5661.i = icmp eq ptr %add.ptr.i, null
  %tobool16.not56.i = or i1 %tobool13.not.i, %tobool16.not5661.i
  br i1 %tobool16.not56.i, label %do.end.i73.for.inc38.i_crit_edge, label %do.end.i73.for.body17.i_crit_edge

do.end.i73.for.body17.i_crit_edge:                ; preds = %do.end.i73
  br label %for.body17.i

do.end.i73.for.inc38.i_crit_edge:                 ; preds = %do.end.i73
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc38.i

for.body17.i:                                     ; preds = %netdev_get_fwd_headroom.exit.i.for.body17.i_crit_edge, %do.end.i73.for.body17.i_crit_edge
  %max_headroom.158.i = phi i32 [ %51, %netdev_get_fwd_headroom.exit.i.for.body17.i_crit_edge ], [ %max_headroom.060.i, %do.end.i73.for.body17.i_crit_edge ]
  %vport.057.i = phi ptr [ %add.ptr34.i, %netdev_get_fwd_headroom.exit.i.for.body17.i_crit_edge ], [ %add.ptr.i, %do.end.i73.for.body17.i_crit_edge ]
  %45 = ptrtoint ptr %vport.057.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vport.057.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %48, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i51.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i51.i, label %cond.false.i.i, label %for.body17.i.netdev_get_fwd_headroom.exit.i_crit_edge

for.body17.i.netdev_get_fwd_headroom.exit.i_crit_edge: ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_get_fwd_headroom.exit.i

cond.false.i.i:                                   ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #16
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 21
  %49 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %needed_headroom.i.i, align 8
  %conv.i.i = zext i16 %50 to i32
  br label %netdev_get_fwd_headroom.exit.i

netdev_get_fwd_headroom.exit.i:                   ; preds = %cond.false.i.i, %for.body17.i.netdev_get_fwd_headroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ 0, %for.body17.i.netdev_get_fwd_headroom.exit.i_crit_edge ]
  %51 = tail call i32 @llvm.umax.i32(i32 %cond.i.i, i32 %max_headroom.158.i) #14
  %dp_hash_node.i74 = getelementptr inbounds %struct.vport, ptr %vport.057.i, i32 0, i32 6
  %52 = ptrtoint ptr %dp_hash_node.i74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %dp_hash_node.i74, align 4
  %tobool30.not.i = icmp eq ptr %53, null
  %add.ptr34.i = getelementptr i8, ptr %53, i32 -28
  %tobool16.not62.i = icmp eq ptr %add.ptr34.i, null
  %tobool16.not.i = or i1 %tobool30.not.i, %tobool16.not62.i
  br i1 %tobool16.not.i, label %netdev_get_fwd_headroom.exit.i.for.inc38.i_crit_edge, label %netdev_get_fwd_headroom.exit.i.for.body17.i_crit_edge

netdev_get_fwd_headroom.exit.i.for.body17.i_crit_edge: ; preds = %netdev_get_fwd_headroom.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17.i

netdev_get_fwd_headroom.exit.i.for.inc38.i_crit_edge: ; preds = %netdev_get_fwd_headroom.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %netdev_get_fwd_headroom.exit.i.for.inc38.i_crit_edge, %do.end.i73.for.inc38.i_crit_edge
  %max_headroom.1.lcssa.i = phi i32 [ %max_headroom.060.i, %do.end.i73.for.inc38.i_crit_edge ], [ %51, %netdev_get_fwd_headroom.exit.i.for.inc38.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %ovs_get_max_headroom.exit, label %for.inc38.i.do.body.i_crit_edge

for.inc38.i.do.body.i_crit_edge:                  ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

ovs_get_max_headroom.exit:                        ; preds = %for.inc38.i
  %54 = ptrtoint ptr %max_headroom to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_headroom, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %max_headroom.1.lcssa.i, i32 %55)
  %cmp35 = icmp ult i32 %max_headroom.1.lcssa.i, %55
  br i1 %cmp35, label %if.then37, label %ovs_get_max_headroom.exit.if.end39_crit_edge

ovs_get_max_headroom.exit.if.end39_crit_edge:     ; preds = %ovs_get_max_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then37:                                        ; preds = %ovs_get_max_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @ovs_update_headroom(ptr noundef %19, i32 noundef %max_headroom.1.lcssa.i)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %ovs_get_max_headroom.exit.if.end39_crit_edge, %ovs_dp_detach_port.exit.if.end39_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @genl_notify(ptr noundef nonnull @dp_vport_genl_family, ptr noundef nonnull %call.i.i.i, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %cleanup

exit_unlock_free:                                 ; preds = %if.end6.exit_unlock_free_crit_edge, %if.end.exit_unlock_free_crit_edge
  %err.0 = phi i32 [ %9, %if.end.exit_unlock_free_crit_edge ], [ -22, %if.end6.exit_unlock_free_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock_free, %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_unlock_free ], [ 0, %if.end39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_vport_cmd_get(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %userhdr, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
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
  %call2 = tail call fastcc ptr @lookup_vport(ptr noundef %12, ptr noundef %3, ptr noundef %1)
  %13 = ptrtoint ptr %call2 to i32
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %exit_unlock_free, label %if.end6

if.end6:                                          ; preds = %rcu_read_lock.exit
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %14 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_net.i, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %16 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %snd_portid, align 4
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 4
  %call8 = tail call fastcc i32 @ovs_vport_cmd_fill_info(ptr noundef %call2, ptr noundef nonnull %call.i.i.i, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 0, i8 noundef zeroext 3, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.body12, label %do.end18, !prof !210

do.body12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2400, 0\0A.popsection", ""() #14, !srcloc !231
  unreachable

do.end18:                                         ; preds = %if.end6
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i35, label %do.end18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

do.end18.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %do.end18
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %do.end18.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %20 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i42 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %24 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_net.i, align 4
  %26 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i44 = tail call i32 @netlink_unicast(ptr noundef %29, ptr noundef nonnull %call.i.i.i, i32 noundef %27, i32 noundef 64) #14
  %30 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i44, i32 0) #14
  br label %cleanup

exit_unlock_free:                                 ; preds = %rcu_read_lock.exit
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i45, label %exit_unlock_free.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true.i48

exit_unlock_free.rcu_read_unlock.exit55_crit_edge: ; preds = %exit_unlock_free
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit55

land.lhs.true.i48:                                ; preds = %exit_unlock_free
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit55

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit55

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit55

rcu_read_unlock.exit55:                           ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit55_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit55_crit_edge, %exit_unlock_free.rcu_read_unlock.exit55_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %31 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i52 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i54 = add i32 %34, -1
  store volatile i32 %sub.i.i.i54, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit55, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %rcu_read_unlock.exit55 ], [ %30, %rcu_read_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_vport_cmd_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %add.ptr.i82 = getelementptr i8, ptr %1, i32 20
  %2 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %7 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i, align 4
  %16 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i82, align 4
  %call.i83 = tail call ptr @dev_get_by_index_rcu(ptr noundef %15, i32 noundef %17) #14
  %tobool.not.i84 = icmp eq ptr %call.i83, null
  br i1 %tobool.not.i84, label %rcu_read_lock.exit.if.then_crit_edge, label %if.then.i86

rcu_read_lock.exit.if.then_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then.i86:                                      ; preds = %rcu_read_lock.exit
  %call1.i85 = tail call ptr @ovs_internal_dev_get_vport(ptr noundef nonnull %call.i83) #14
  %tobool2.not.i = icmp eq ptr %call1.i85, null
  br i1 %tobool2.not.i, label %if.then.i86.if.then_crit_edge, label %get_dp_rcu.exit

if.then.i86.if.then_crit_edge:                    ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

get_dp_rcu.exit:                                  ; preds = %if.then.i86
  %dp.i = getelementptr inbounds %struct.vport, ptr %call1.i85, i32 0, i32 2
  %18 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dp.i, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %get_dp_rcu.exit.if.then_crit_edge, label %for.cond.preheader

get_dp_rcu.exit.if.then_crit_edge:                ; preds = %get_dp_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond.preheader:                               ; preds = %get_dp_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %4)
  %cmp125 = icmp slt i32 %4, 1024
  br i1 %cmp125, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ports = getelementptr inbounds %struct.datapath, ptr %19, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %get_dp_rcu.exit.if.then_crit_edge, %if.then.i86.if.then_crit_edge, %rcu_read_lock.exit.if.then_crit_edge
  %call.i87 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i87, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i90

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i90:                                ; preds = %if.then
  %call1.i88 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool.not.i89 = icmp eq i32 %call1.i88, 0
  br i1 %tobool.not.i89, label %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i92

land.lhs.true.i90.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i90
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i92:                               ; preds = %land.lhs.true.i90
  %.b4.i91 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i91, label %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, label %if.then.i93

land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i93:                                      ; preds = %land.lhs.true2.i92
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i93, %land.lhs.true2.i92.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i90.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %20 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i94 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i94 to ptr
  %preempt_count.i.i.i.i95 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i95, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i95, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup54

for.body:                                         ; preds = %for.inc49.for.body_crit_edge, %for.body.lr.ph
  %skip.0128 = phi i32 [ %6, %for.body.lr.ph ], [ 0, %for.inc49.for.body_crit_edge ]
  %i.0126 = phi i32 [ %4, %for.body.lr.ph ], [ %inc50, %for.inc49.for.body_crit_edge ]
  %call5 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %for.body.do.end_crit_edge

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %for.body
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true9

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b80 = load i1, ptr @ovs_vport_cmd_dump.__warned, align 1
  br i1 %.b80, label %land.lhs.true9.do.end_crit_edge, label %if.then11

land.lhs.true9.do.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_vport_cmd_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2428, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then11, %land.lhs.true9.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.body.do.end_crit_edge
  %24 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ports, align 4
  %arrayidx16 = getelementptr %struct.hlist_head, ptr %25, i32 %i.0126
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx16, align 4
  %tobool19.not = icmp eq ptr %27, null
  %add.ptr = getelementptr i8, ptr %27, i32 -28
  %tobool22.not120134 = icmp eq ptr %add.ptr, null
  %tobool22.not120 = or i1 %tobool19.not, %tobool22.not120134
  br i1 %tobool22.not120, label %do.end.for.inc49_crit_edge, label %do.end.for.body23_crit_edge

do.end.for.body23_crit_edge:                      ; preds = %do.end
  br label %for.body23

do.end.for.inc49_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc49

for.body23:                                       ; preds = %if.end33.for.body23_crit_edge, %do.end.for.body23_crit_edge
  %j.1123 = phi i32 [ %inc, %if.end33.for.body23_crit_edge ], [ 0, %do.end.for.body23_crit_edge ]
  %vport.0121 = phi ptr [ %add.ptr45, %if.end33.for.body23_crit_edge ], [ %add.ptr, %do.end.for.body23_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1123, i32 %skip.0128)
  %cmp24.not = icmp slt i32 %j.1123, %skip.0128
  br i1 %cmp24.not, label %for.body23.if.end33_crit_edge, label %land.lhs.true25

for.body23.if.end33_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true25:                                  ; preds = %for.body23
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 4
  %skc_net.i96 = getelementptr inbounds %struct.sock_common, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %skc_net.i96 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i96, align 4
  %32 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 3, i32 12
  %34 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %portid, align 4
  %36 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nlmsg_seq, align 4
  %call30 = tail call fastcc i32 @ovs_vport_cmd_fill_info(ptr noundef nonnull %vport.0121, ptr noundef %skb, ptr noundef %31, i32 noundef %35, i32 noundef %39, i32 noundef 2, i8 noundef zeroext 3, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %land.lhs.true25.out_crit_edge, label %land.lhs.true25.if.end33_crit_edge

land.lhs.true25.if.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.lhs.true25.out_crit_edge:                    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end33:                                         ; preds = %land.lhs.true25.if.end33_crit_edge, %for.body23.if.end33_crit_edge
  %inc = add i32 %j.1123, 1
  %dp_hash_node = getelementptr inbounds %struct.vport, ptr %vport.0121, i32 0, i32 6
  %40 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %dp_hash_node, align 4
  %tobool41.not = icmp eq ptr %41, null
  %add.ptr45 = getelementptr i8, ptr %41, i32 -28
  %tobool22.not138 = icmp eq ptr %add.ptr45, null
  %tobool22.not = or i1 %tobool41.not, %tobool22.not138
  br i1 %tobool22.not, label %if.end33.for.inc49_crit_edge, label %if.end33.for.body23_crit_edge

if.end33.for.body23_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body23

if.end33.for.inc49_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc49

for.inc49:                                        ; preds = %if.end33.for.inc49_crit_edge, %do.end.for.inc49_crit_edge
  %j.1.lcssa = phi i32 [ 0, %do.end.for.inc49_crit_edge ], [ %inc, %if.end33.for.inc49_crit_edge ]
  %inc50 = add nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc50, 1024
  br i1 %exitcond.not, label %for.inc49.out_crit_edge, label %for.inc49.for.body_crit_edge

for.inc49.for.body_crit_edge:                     ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc49.out_crit_edge:                          ; preds = %for.inc49
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

out:                                              ; preds = %for.inc49.out_crit_edge, %land.lhs.true25.out_crit_edge, %for.cond.preheader.out_crit_edge
  %i.0118 = phi i32 [ %4, %for.cond.preheader.out_crit_edge ], [ %i.0126, %land.lhs.true25.out_crit_edge ], [ 1024, %for.inc49.out_crit_edge ]
  %j.2 = phi i32 [ 0, %for.cond.preheader.out_crit_edge ], [ %j.1123, %land.lhs.true25.out_crit_edge ], [ %j.1.lcssa, %for.inc49.out_crit_edge ]
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i97, label %out.rcu_read_unlock.exit107_crit_edge, label %land.lhs.true.i100

out.rcu_read_unlock.exit107_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit107

land.lhs.true.i100:                               ; preds = %out
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.rcu_read_unlock.exit107_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.rcu_read_unlock.exit107_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit107

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.rcu_read_unlock.exit107_crit_edge, label %if.then.i103

land.lhs.true2.i102.rcu_read_unlock.exit107_crit_edge: ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit107

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit107

rcu_read_unlock.exit107:                          ; preds = %if.then.i103, %land.lhs.true2.i102.rcu_read_unlock.exit107_crit_edge, %land.lhs.true.i100.rcu_read_unlock.exit107_crit_edge, %out.rcu_read_unlock.exit107_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %42 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i104 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i104 to ptr
  %preempt_count.i.i.i.i105 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i105, align 4
  %sub.i.i.i106 = add i32 %45, -1
  store volatile i32 %sub.i.i.i106, ptr %preempt_count.i.i.i.i105, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.0118, ptr %2, align 4
  %47 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %j.2, ptr %arrayidx2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  br label %cleanup54

cleanup54:                                        ; preds = %rcu_read_unlock.exit107, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %49, %rcu_read_unlock.exit107 ], [ -19, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_vport_cmd_set(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup43_crit_edge, label %if.end

entry.cleanup43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup43

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %userhdr, align 4
  %call2 = tail call fastcc ptr @lookup_vport(ptr noundef %6, ptr noundef %8, ptr noundef %1)
  %9 = ptrtoint ptr %call2 to i32
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.exit_unlock_free_crit_edge, label %if.end6

if.end.exit_unlock_free_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %1, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %land.lhs.true

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %ops = getelementptr inbounds %struct.vport, ptr %call2, i32 0, i32 7
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %17)
  %cmp.not = icmp eq i32 %13, %17
  br i1 %cmp.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.exit_unlock_free_crit_edge

land.lhs.true.exit_unlock_free_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %arrayidx12 = getelementptr ptr, ptr %1, i32 4
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %if.end11.if.end20_crit_edge, label %if.then14

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  %call16 = tail call i32 @ovs_vport_set_options(ptr noundef %call2, ptr noundef nonnull %19) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end20_crit_edge, label %if.then14.exit_unlock_free_crit_edge

if.then14.exit_unlock_free_crit_edge:             ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %arrayidx21 = getelementptr ptr, ptr %1, i32 5
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %21, null
  br i1 %tobool22.not, label %if.end20.if.end29_crit_edge, label %if.then23

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  %call25 = tail call i32 @ovs_vport_set_upcall_portids(ptr noundef %call2, ptr noundef nonnull %21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then23.if.end29_crit_edge, label %if.then23.exit_unlock_free_crit_edge

if.then23.exit_unlock_free_crit_edge:             ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit_unlock_free

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_net.i, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %24 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %snd_portid, align 4
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %info, align 4
  %call31 = tail call fastcc i32 @ovs_vport_cmd_fill_info(ptr noundef %call2, ptr noundef nonnull %call.i.i.i, ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef 0, i8 noundef zeroext 4, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.body36, label %do.end42, !prof !210

do.body36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2313, 0\0A.popsection", ""() #14, !srcloc !232
  unreachable

do.end42:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @genl_notify(ptr noundef nonnull @dp_vport_genl_family, ptr noundef nonnull %call.i.i.i, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %cleanup43

exit_unlock_free:                                 ; preds = %if.then23.exit_unlock_free_crit_edge, %if.then14.exit_unlock_free_crit_edge, %land.lhs.true.exit_unlock_free_crit_edge, %if.end.exit_unlock_free_crit_edge
  %err.0 = phi i32 [ %9, %if.end.exit_unlock_free_crit_edge ], [ %call16, %if.then14.exit_unlock_free_crit_edge ], [ %call25, %if.then23.exit_unlock_free_crit_edge ], [ -22, %land.lhs.true.exit_unlock_free_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #14
  br label %cleanup43

cleanup43:                                        ; preds = %exit_unlock_free, %do.end42, %entry.cleanup43_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_unlock_free ], [ 0, %do.end42 ], [ -12, %entry.cleanup43_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_dp(ptr noundef %net, i32 noundef %dp_ifindex) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end33_crit_edge

entry.if.end33_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.rhs:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i46 = icmp eq i32 %0, 0
  br i1 %tobool.not.i46, label %land.rhs.if.end33_crit_edge, label %lockdep_ovsl_is_held.exit

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

lockdep_ovsl_is_held.exit:                        ; preds = %land.rhs
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %land.rhs6, label %lockdep_ovsl_is_held.exit.if.end33_crit_edge

lockdep_ovsl_is_held.exit.if.end33_crit_edge:     ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

land.rhs6:                                        ; preds = %lockdep_ovsl_is_held.exit
  %.b44 = load i1, ptr @get_dp.__already_done, align 1
  br i1 %.b44, label %land.rhs6.if.end33_crit_edge, label %if.then, !prof !209

land.rhs6.if.end33_crit_edge:                     ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then:                                          ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @get_dp.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 245, i32 noundef 9, ptr noundef null) #14
  br label %if.end33

if.end33:                                         ; preds = %if.then, %land.rhs6.if.end33_crit_edge, %lockdep_ovsl_is_held.exit.if.end33_crit_edge, %land.rhs.if.end33_crit_edge, %entry.if.end33_crit_edge
  %1 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end33.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end33.rcu_read_lock.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end33
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end33.rcu_read_lock.exit_crit_edge
  %call.i48 = tail call ptr @dev_get_by_index_rcu(ptr noundef %net, i32 noundef %dp_ifindex) #14
  %tobool.not.i49 = icmp eq ptr %call.i48, null
  br i1 %tobool.not.i49, label %rcu_read_lock.exit.get_dp_rcu.exit_crit_edge, label %if.then.i51

rcu_read_lock.exit.get_dp_rcu.exit_crit_edge:     ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_dp_rcu.exit

if.then.i51:                                      ; preds = %rcu_read_lock.exit
  %call1.i50 = tail call ptr @ovs_internal_dev_get_vport(ptr noundef nonnull %call.i48) #14
  %tobool2.not.i = icmp eq ptr %call1.i50, null
  br i1 %tobool2.not.i, label %if.then.i51.get_dp_rcu.exit_crit_edge, label %cleanup.i

if.then.i51.get_dp_rcu.exit_crit_edge:            ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_dp_rcu.exit

cleanup.i:                                        ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #16
  %dp.i = getelementptr inbounds %struct.vport, ptr %call1.i50, i32 0, i32 2
  %5 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp.i, align 4
  br label %get_dp_rcu.exit

get_dp_rcu.exit:                                  ; preds = %cleanup.i, %if.then.i51.get_dp_rcu.exit_crit_edge, %rcu_read_lock.exit.get_dp_rcu.exit_crit_edge
  %retval.1.i = phi ptr [ %6, %cleanup.i ], [ null, %rcu_read_lock.exit.get_dp_rcu.exit_crit_edge ], [ null, %if.then.i51.get_dp_rcu.exit_crit_edge ]
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i52, label %get_dp_rcu.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

get_dp_rcu.exit.rcu_read_unlock.exit_crit_edge:   ; preds = %get_dp_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %get_dp_rcu.exit
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %get_dp_rcu.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %7 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i59 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @new_vport(ptr noundef %parms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ovs_vport_add(ptr noundef %parms) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %dp2 = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 3
  %0 = ptrtoint ptr %dp2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp2, align 4
  %port_no = getelementptr inbounds %struct.vport, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_no, align 4
  %ports.i = getelementptr inbounds %struct.datapath, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %6 = and i16 %3, 1023
  %and.i = zext i16 %6 to i32
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %5, i32 %and.i
  %dp_hash_node = getelementptr inbounds %struct.vport, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %dp_hash_node, align 4
  %pprev.i = getelementptr inbounds %struct.vport, ptr %call, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !228
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %dp_hash_node, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.body49.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body49.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %dp_hash_node, ptr %pprev51.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body49.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovs_update_headroom(ptr nocapture noundef %dp, i32 noundef %new_headroom) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_headroom = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 7
  %0 = ptrtoint ptr %max_headroom to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_headroom, ptr %max_headroom, align 4
  %ports = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %for.inc33.do.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc, %for.inc33.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body.do.end_crit_edge, label %lockdep_ovsl_is_held.exit

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lockdep_ovsl_is_held.exit:                        ; preds = %do.body
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %lockdep_ovsl_is_held.exit.do.end_crit_edge

lockdep_ovsl_is_held.exit.do.end_crit_edge:       ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %lockdep_ovsl_is_held.exit
  %call1 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.do.end_crit_edge, label %land.lhs.true6

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %.b44 = load i1, ptr @ovs_update_headroom.__warned, align 1
  br i1 %.b44, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_update_headroom.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 2178, ptr noundef nonnull @.str.1) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lockdep_ovsl_is_held.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %3, i32 %i.054
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %5, null
  %add.ptr = getelementptr i8, ptr %5, i32 -28
  %tobool16.not5255 = icmp eq ptr %add.ptr, null
  %tobool16.not52 = or i1 %tobool13.not, %tobool16.not5255
  br i1 %tobool16.not52, label %do.end.for.inc33_crit_edge, label %do.end.for.body17_crit_edge

do.end.for.body17_crit_edge:                      ; preds = %do.end
  br label %for.body17

do.end.for.inc33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc33

for.body17:                                       ; preds = %netdev_set_rx_headroom.exit.for.body17_crit_edge, %do.end.for.body17_crit_edge
  %vport.053 = phi ptr [ %add.ptr29, %netdev_set_rx_headroom.exit.for.body17_crit_edge ], [ %add.ptr, %do.end.for.body17_crit_edge ]
  %6 = ptrtoint ptr %vport.053 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vport.053, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_set_rx_headroom.i = getelementptr inbounds %struct.net_device_ops, ptr %9, i32 0, i32 75
  %10 = ptrtoint ptr %ndo_set_rx_headroom.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndo_set_rx_headroom.i, align 4
  %tobool.not.i46 = icmp eq ptr %11, null
  br i1 %tobool.not.i46, label %for.body17.netdev_set_rx_headroom.exit_crit_edge, label %if.then.i47

for.body17.netdev_set_rx_headroom.exit_crit_edge: ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_set_rx_headroom.exit

if.then.i47:                                      ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %11(ptr noundef %7, i32 noundef %new_headroom) #14
  br label %netdev_set_rx_headroom.exit

netdev_set_rx_headroom.exit:                      ; preds = %if.then.i47, %for.body17.netdev_set_rx_headroom.exit_crit_edge
  %dp_hash_node = getelementptr inbounds %struct.vport, ptr %vport.053, i32 0, i32 6
  %12 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %dp_hash_node, align 4
  %tobool25.not = icmp eq ptr %13, null
  %add.ptr29 = getelementptr i8, ptr %13, i32 -28
  %tobool16.not56 = icmp eq ptr %add.ptr29, null
  %tobool16.not = or i1 %tobool25.not, %tobool16.not56
  br i1 %tobool16.not, label %netdev_set_rx_headroom.exit.for.inc33_crit_edge, label %netdev_set_rx_headroom.exit.for.body17_crit_edge

netdev_set_rx_headroom.exit.for.body17_crit_edge: ; preds = %netdev_set_rx_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17

netdev_set_rx_headroom.exit.for.inc33_crit_edge:  ; preds = %netdev_set_rx_headroom.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc33

for.inc33:                                        ; preds = %netdev_set_rx_headroom.exit.for.inc33_crit_edge, %do.end.for.inc33_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end34, label %for.inc33.do.body_crit_edge

for.inc33.do.body_crit_edge:                      ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end34:                                        ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_vport_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @genl_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lookup_vport(ptr noundef %net, ptr nocapture noundef readonly %ovs_header, ptr nocapture noundef readonly %a) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %a, i32 8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %a, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %call6 = tail call ptr @ovs_vport_locate(ptr noundef %net, ptr noundef %add.ptr.i) #14
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.then3.cleanup40_crit_edge, label %if.end10

if.then3.cleanup40_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end10:                                         ; preds = %if.then3
  %4 = ptrtoint ptr %ovs_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ovs_header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.end10.cleanup40_crit_edge, label %land.lhs.true

if.end10.cleanup40_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

land.lhs.true:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %dp13 = getelementptr inbounds %struct.vport, ptr %call6, i32 0, i32 2
  %6 = ptrtoint ptr %dp13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dp13, align 4
  %call14 = tail call fastcc i32 @get_dpifindex(ptr noundef %7)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call14)
  %cmp.not = icmp eq i32 %5, %call14
  %spec.select = select i1 %cmp.not, ptr %call6, ptr inttoptr (i32 -19 to ptr)
  br label %cleanup40

if.else:                                          ; preds = %if.end
  %arrayidx18 = getelementptr ptr, ptr %a, i32 1
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.else.cleanup40_crit_edge, label %if.then20

if.else.cleanup40_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.then20:                                        ; preds = %if.else
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %11)
  %cmp23 = icmp ugt i32 %11, 65534
  br i1 %cmp23, label %if.then20.cleanup40_crit_edge, label %if.end26

if.then20.cleanup40_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end26:                                         ; preds = %if.then20
  %12 = ptrtoint ptr %ovs_header to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ovs_header, align 4
  %call28 = tail call fastcc ptr @get_dp(ptr noundef %net, i32 noundef %13)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.cleanup40_crit_edge, label %if.end32

if.end26.cleanup40_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end32:                                         ; preds = %if.end26
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end32.ovs_vport_ovsl_rcu.exit_crit_edge

if.end32.ovs_vport_ovsl_rcu.exit_crit_edge:       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

land.rhs.i:                                       ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.ovs_vport_ovsl_rcu.exit_crit_edge, label %lockdep_ovsl_is_held.exit.i

land.rhs.i.ovs_vport_ovsl_rcu.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

lockdep_ovsl_is_held.exit.i:                      ; preds = %land.rhs.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %land.rhs6.i, label %lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl_rcu.exit_crit_edge

lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl_rcu.exit_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

land.rhs6.i:                                      ; preds = %lockdep_ovsl_is_held.exit.i
  %.b44.i = load i1, ptr @ovs_vport_ovsl_rcu.__already_done, align 1
  br i1 %.b44.i, label %land.rhs6.i.ovs_vport_ovsl_rcu.exit_crit_edge, label %if.then.i, !prof !209

land.rhs6.i.ovs_vport_ovsl_rcu.exit_crit_edge:    ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl_rcu.exit

if.then.i:                                        ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_vport_ovsl_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %ovs_vport_ovsl_rcu.exit

ovs_vport_ovsl_rcu.exit:                          ; preds = %if.then.i, %land.rhs6.i.ovs_vport_ovsl_rcu.exit_crit_edge, %lockdep_ovsl_is_held.exit.i.ovs_vport_ovsl_rcu.exit_crit_edge, %land.rhs.i.ovs_vport_ovsl_rcu.exit_crit_edge, %if.end32.ovs_vport_ovsl_rcu.exit_crit_edge
  %conv.i = trunc i32 %11 to i16
  %call41.i = tail call ptr @ovs_lookup_vport(ptr noundef nonnull %call28, i16 noundef zeroext %conv.i) #14
  %tobool34.not = icmp eq ptr %call41.i, null
  %spec.select57 = select i1 %tobool34.not, ptr inttoptr (i32 -19 to ptr), ptr %call41.i
  br label %cleanup40

cleanup40:                                        ; preds = %ovs_vport_ovsl_rcu.exit, %if.end26.cleanup40_crit_edge, %if.then20.cleanup40_crit_edge, %if.else.cleanup40_crit_edge, %land.lhs.true, %if.end10.cleanup40_crit_edge, %if.then3.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.1 = phi ptr [ %call6, %if.end10.cleanup40_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup40_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then3.cleanup40_crit_edge ], [ inttoptr (i32 -27 to ptr), %if.then20.cleanup40_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end26.cleanup40_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.cleanup40_crit_edge ], [ %spec.select, %land.lhs.true ], [ %spec.select57, %ovs_vport_ovsl_rcu.exit ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_vport_locate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_vport_set_options(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_vport_set_upcall_portids(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @action_fifos_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_internal_dev_rtnl_link_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_vport_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @ovs_netdev_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dp_register_genl() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.08 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [6 x ptr], ptr @dp_genl_families, i32 0, i32 %i.08
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @genl_register_family(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %error

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

error:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.08)
  %cmp3.i.not = icmp eq i32 %i.08, 0
  br i1 %cmp3.i.not, label %error.cleanup_crit_edge, label %error.for.body.i_crit_edge

error.for.body.i_crit_edge:                       ; preds = %error
  br label %for.body.i

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %error.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %error.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x ptr], ptr @dp_genl_families, i32 0, i32 %i.04.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @genl_unregister_family(ptr noundef %3) #14
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.08
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %error.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_netdev_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_vport_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_internal_dev_rtnl_link_unregister() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @action_fifos_exit() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ovs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  %dp_notify_work = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 1
  tail call void @__init_work(ptr noundef %dp_notify_work, i32 noundef 0) #14
  %3 = ptrtoint ptr %dp_notify_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %dp_notify_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @ovs_init_net.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry4 = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i49 = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry4, ptr %prev.i49, align 4
  %func = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ovs_dp_notify_wq, ptr %func, align 4
  %masks_rebalance = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 2
  tail call void @__init_work(ptr noundef %masks_rebalance, i32 noundef 0) #14
  %7 = ptrtoint ptr %masks_rebalance to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %masks_rebalance, align 4
  %lockdep_map15 = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map15, ptr noundef nonnull @.str.23, ptr noundef nonnull @ovs_init_net.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry18 = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i50 = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 2, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i50 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry18, ptr %prev.i50, align 4
  %func21 = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 2, i32 0, i32 2
  %10 = ptrtoint ptr %func21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @ovs_dp_masks_rebalance, ptr %func21, align 4
  %timer = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.25, ptr noundef nonnull @ovs_init_net.__key.24) #14
  %call30 = tail call i32 @ovs_ct_init(ptr noundef %net) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool.not = icmp eq i32 %call30, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %masks_rebalance, i32 noundef 400) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovs_exit_net(ptr noundef %dnet) #0 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ovs_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %dnet, i32 noundef %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #14
  %1 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %head, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %1, align 4
  call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  call void @ovs_ct_exit(ptr noundef %dnet) #14
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %cmp.not73 = icmp eq ptr %5, %call
  br i1 %cmp.not73, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in74 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %dp.0 = getelementptr i8, ptr %.pn.in74, i32 -8
  %6 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in74, align 4
  call fastcc void @__dp_destroy(ptr noundef %dp.0)
  %cmp.not = icmp eq ptr %.pn, %call
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @down_read(ptr noundef nonnull @net_rwsem) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @net_namespace_list to i32))
  %.pn6475 = load ptr, ptr @net_namespace_list, align 4
  %cmp17.not76 = icmp eq ptr %.pn6475, @net_namespace_list
  br i1 %cmp17.not76, label %for.end.for.end26_crit_edge, label %for.end.for.body19_crit_edge

for.end.for.body19_crit_edge:                     ; preds = %for.end
  br label %for.body19

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end26

for.body19:                                       ; preds = %list_vports_from_net.exit.for.body19_crit_edge, %for.end.for.body19_crit_edge
  %.pn6477 = phi ptr [ %.pn64, %list_vports_from_net.exit.for.body19_crit_edge ], [ %.pn6475, %for.end.for.body19_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn6477, i32 -108
  %7 = load i32, ptr @ovs_net_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %net.0, i32 noundef %7) #14
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn56.i = load ptr, ptr %call.i, align 4
  %cmp.not57.i = icmp eq ptr %.pn56.i, %call.i
  br i1 %cmp.not57.i, label %for.body19.list_vports_from_net.exit_crit_edge, label %for.body19.for.cond2.preheader.i_crit_edge

for.body19.for.cond2.preheader.i_crit_edge:       ; preds = %for.body19
  br label %for.cond2.preheader.i

for.body19.list_vports_from_net.exit_crit_edge:   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_vports_from_net.exit

for.cond.loopexit.i:                              ; preds = %for.end.i
  %9 = ptrtoint ptr %.pn58.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn58.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %call.i
  br i1 %cmp.not.i, label %for.cond.loopexit.i.list_vports_from_net.exit_crit_edge, label %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge

for.cond.loopexit.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader.i

for.cond.loopexit.i.list_vports_from_net.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_vports_from_net.exit

for.cond2.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge, %for.body19.for.cond2.preheader.i_crit_edge
  %.pn58.i = phi ptr [ %.pn.i, %for.cond.loopexit.i.for.cond2.preheader.i_crit_edge ], [ %.pn56.i, %for.body19.for.cond2.preheader.i_crit_edge ]
  %ports.i = getelementptr i8, ptr %.pn58.i, i32 36
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.end.i.for.body4.i_crit_edge, %for.cond2.preheader.i
  %i.055.i = phi i32 [ 0, %for.cond2.preheader.i ], [ %inc.i, %for.end.i.for.body4.i_crit_edge ]
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %11, i32 %i.055.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %add.ptr8.i = getelementptr i8, ptr %13, i32 -28
  %tobool10.not5259.i = icmp eq ptr %add.ptr8.i, null
  %tobool10.not52.i = or i1 %tobool.not.i, %tobool10.not5259.i
  br i1 %tobool10.not52.i, label %for.body4.i.for.end.i_crit_edge, label %for.body4.i.for.body11.i_crit_edge

for.body4.i.for.body11.i_crit_edge:               ; preds = %for.body4.i
  br label %for.body11.i

for.body4.i.for.end.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body4.i.for.body11.i_crit_edge
  %vport.053.i = phi ptr [ %add.ptr24.i, %for.inc.i.for.body11.i_crit_edge ], [ %add.ptr8.i, %for.body4.i.for.body11.i_crit_edge ]
  %ops.i = getelementptr inbounds %struct.vport, ptr %vport.053.i, i32 0, i32 7
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp12.not.i = icmp eq i32 %17, 2
  br i1 %cmp12.not.i, label %if.end.i, label %for.body11.i.for.inc.i_crit_edge

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body11.i
  %18 = ptrtoint ptr %vport.053.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vport.053.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 127
  %20 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nd_net.i.i, align 4
  %cmp14.i = icmp eq ptr %21, %dnet
  br i1 %cmp14.i, label %if.then15.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.then15.i:                                      ; preds = %if.end.i
  %detach_list.i = getelementptr inbounds %struct.vport, ptr %vport.053.i, i32 0, i32 8
  %22 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %detach_list.i, ptr noundef nonnull %head, ptr noundef %23) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.i.for.inc.i_crit_edge

if.then15.i.for.inc.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %detach_list.i, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %detach_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %detach_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vport, ptr %vport.053.i, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %head, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %detach_list.i, ptr %head, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i, %if.then15.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %dp_hash_node.i = getelementptr inbounds %struct.vport, ptr %vport.053.i, i32 0, i32 6
  %28 = ptrtoint ptr %dp_hash_node.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dp_hash_node.i, align 4
  %tobool20.not.i = icmp eq ptr %29, null
  %add.ptr24.i = getelementptr i8, ptr %29, i32 -28
  %tobool10.not60.i = icmp eq ptr %add.ptr24.i, null
  %tobool10.not.i = or i1 %tobool20.not.i, %tobool10.not60.i
  br i1 %tobool10.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body11.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body4.i.for.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.end.i.for.body4.i_crit_edge

for.end.i.for.body4.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.i

list_vports_from_net.exit:                        ; preds = %for.cond.loopexit.i.list_vports_from_net.exit_crit_edge, %for.body19.list_vports_from_net.exit_crit_edge
  %30 = ptrtoint ptr %.pn6477 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn64 = load ptr, ptr %.pn6477, align 4
  %cmp17.not = icmp eq ptr %.pn64, @net_namespace_list
  br i1 %cmp17.not, label %list_vports_from_net.exit.for.end26_crit_edge, label %list_vports_from_net.exit.for.body19_crit_edge

list_vports_from_net.exit.for.body19_crit_edge:   ; preds = %list_vports_from_net.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

list_vports_from_net.exit.for.end26_crit_edge:    ; preds = %list_vports_from_net.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end26

for.end26:                                        ; preds = %list_vports_from_net.exit.for.end26_crit_edge, %for.end.for.end26_crit_edge
  call void @up_read(ptr noundef nonnull @net_rwsem) #14
  %31 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head, align 4
  %cmp37.not78 = icmp eq ptr %32, %head
  br i1 %cmp37.not78, label %for.end26.for.end47_crit_edge, label %for.end26.for.body39_crit_edge

for.end26.for.body39_crit_edge:                   ; preds = %for.end26
  br label %for.body39

for.end26.for.end47_crit_edge:                    ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

for.body39:                                       ; preds = %ovs_dp_detach_port.exit.for.body39_crit_edge, %for.end26.for.body39_crit_edge
  %.pn65.in79 = phi ptr [ %.pn65, %ovs_dp_detach_port.exit.for.body39_crit_edge ], [ %32, %for.end26.for.body39_crit_edge ]
  %vport.0 = getelementptr i8, ptr %.pn65.in79, i32 -40
  %33 = ptrtoint ptr %.pn65.in79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn65 = load ptr, ptr %.pn65.in79, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn65.in79) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.body39.list_del.exit_crit_edge

for.body39.list_del.exit_crit_edge:               ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn65.in79, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %.pn65.in79 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn65.in79, align 4
  %prev1.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i68 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i68, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body39.list_del.exit_crit_edge
  %40 = ptrtoint ptr %.pn65.in79 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn65.in79, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn65.in79, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %42 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i, label %list_del.exit.if.end.i72_crit_edge, label %lockdep_ovsl_is_held.exit.i

list_del.exit.if.end.i72_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i72

lockdep_ovsl_is_held.exit.i:                      ; preds = %list_del.exit
  %call.i.i.i69 = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i69)
  %tobool.not.i70 = icmp eq i32 %call.i.i.i69, 0
  br i1 %tobool.not.i70, label %do.end.i, label %lockdep_ovsl_is_held.exit.i.if.end.i72_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.i.if.end.i72_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i72

do.end.i:                                         ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i72

if.end.i72:                                       ; preds = %do.end.i, %lockdep_ovsl_is_held.exit.i.if.end.i72_crit_edge, %list_del.exit.if.end.i72_crit_edge
  %dp_hash_node.i71 = getelementptr i8, ptr %.pn65.in79, i32 -12
  %43 = ptrtoint ptr %dp_hash_node.i71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dp_hash_node.i71, align 4
  %pprev2.i.i.i = getelementptr i8, ptr %.pn65.in79, i32 -8
  %45 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pprev2.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %44, ptr %46, align 4
  %tobool.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i, label %if.end.i72.ovs_dp_detach_port.exit_crit_edge, label %do.body13.i.i.i

if.end.i72.ovs_dp_detach_port.exit_crit_edge:     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_detach_port.exit

do.body13.i.i.i:                                  ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %44, i32 0, i32 1
  %48 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %pprev14.i.i.i, align 4
  br label %ovs_dp_detach_port.exit

ovs_dp_detach_port.exit:                          ; preds = %do.body13.i.i.i, %if.end.i72.ovs_dp_detach_port.exit_crit_edge
  %49 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @ovs_vport_del(ptr noundef %vport.0) #14
  %cmp37.not = icmp eq ptr %.pn65, %head
  br i1 %cmp37.not, label %ovs_dp_detach_port.exit.for.end47_crit_edge, label %ovs_dp_detach_port.exit.for.body39_crit_edge

ovs_dp_detach_port.exit.for.body39_crit_edge:     ; preds = %ovs_dp_detach_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body39

ovs_dp_detach_port.exit.for.end47_crit_edge:      ; preds = %ovs_dp_detach_port.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end47

for.end47:                                        ; preds = %ovs_dp_detach_port.exit.for.end47_crit_edge, %for.end26.for.end47_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  %masks_rebalance = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 2
  %call48 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %masks_rebalance) #14
  %dp_notify_work = getelementptr inbounds %struct.ovs_net, ptr %call, i32 0, i32 1
  %call49 = call zeroext i1 @cancel_work_sync(ptr noundef %dp_notify_work) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 45, ptr noundef nonnull @.str.2) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %8 = tail call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_dp_notify_wq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ovs_dp_masks_rebalance(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn15 = load ptr, ptr %add.ptr, align 4
  %cmp.not16 = icmp eq ptr %.pn15, %add.ptr
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn17 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn15, %entry.for.body_crit_edge ]
  %table = getelementptr i8, ptr %.pn17, i32 8
  tail call void @ovs_flow_masks_rebalance(ptr noundef %table) #14
  %1 = ptrtoint ptr %.pn17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn17, align 4
  %cmp.not = icmp eq ptr %.pn, %add.ptr
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 400) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_ct_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_masks_rebalance(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_ct_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dp_destroy(ptr noundef %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.096 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.hlist_head, ptr %1, i32 %i.096
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  %add.ptr = getelementptr i8, ptr %3, i32 -28
  %tobool4.not9497 = icmp eq ptr %add.ptr, null
  %tobool4.not94 = or i1 %tobool.not, %tobool4.not9497
  br i1 %tobool4.not94, label %for.body.for.end_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  br label %land.rhs

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %vport.095 = phi ptr [ %add.ptr16, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %for.body.land.rhs_crit_edge ]
  %dp_hash_node = getelementptr inbounds %struct.vport, ptr %vport.095, i32 0, i32 6
  %4 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dp_hash_node, align 4
  %port_no = getelementptr inbounds %struct.vport, ptr %vport.095, i32 0, i32 4
  %6 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %port_no, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp8.not = icmp eq i16 %7, 0
  br i1 %cmp8.not, label %land.rhs.for.inc_crit_edge, label %if.then

land.rhs.for.inc_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %if.then.if.end.i_crit_edge, label %lockdep_ovsl_is_held.exit.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lockdep_ovsl_is_held.exit.i:                      ; preds = %if.then
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %lockdep_ovsl_is_held.exit.i.if.end.i_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.i.if.end.i_crit_edge:   ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %lockdep_ovsl_is_held.exit.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %9 = ptrtoint ptr %dp_hash_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dp_hash_node, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.vport, ptr %vport.095, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev2.i.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %12, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.ovs_dp_detach_port.exit_crit_edge, label %do.body13.i.i.i

if.end.i.ovs_dp_detach_port.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_detach_port.exit

do.body13.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %pprev14.i.i.i, align 4
  br label %ovs_dp_detach_port.exit

ovs_dp_detach_port.exit:                          ; preds = %do.body13.i.i.i, %if.end.i.ovs_dp_detach_port.exit_crit_edge
  %15 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  tail call void @ovs_vport_del(ptr noundef nonnull %vport.095) #14
  br label %for.inc

for.inc:                                          ; preds = %ovs_dp_detach_port.exit, %land.rhs.for.inc_crit_edge
  %tobool12.not = icmp eq ptr %5, null
  %add.ptr16 = getelementptr i8, ptr %5, i32 -28
  %tobool4.not98 = icmp eq ptr %add.ptr16, null
  %tobool4.not = or i1 %tobool12.not, %tobool4.not98
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.end21, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end21:                                        ; preds = %for.end
  %table1 = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 2
  %list_node = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_node) #14
  br i1 %call.i.i, label %if.end.i.i, label %for.end21.list_del_rcu.exit_crit_edge

for.end21.list_del_rcu.exit_crit_edge:            ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %list_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.end21.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %23 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i62 = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i62, label %list_del_rcu.exit.ovs_vport_ovsl.exit_crit_edge, label %lockdep_ovsl_is_held.exit.i65

list_del_rcu.exit.ovs_vport_ovsl.exit_crit_edge:  ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl.exit

lockdep_ovsl_is_held.exit.i65:                    ; preds = %list_del_rcu.exit
  %call.i.i.i63 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i63)
  %tobool.not.i64 = icmp eq i32 %call.i.i.i63, 0
  br i1 %tobool.not.i64, label %do.end.i66, label %lockdep_ovsl_is_held.exit.i65.ovs_vport_ovsl.exit_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.i65.ovs_vport_ovsl.exit_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_vport_ovsl.exit

do.end.i66:                                       ; preds = %lockdep_ovsl_is_held.exit.i65
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 219, i32 noundef 9, ptr noundef null) #14
  br label %ovs_vport_ovsl.exit

ovs_vport_ovsl.exit:                              ; preds = %do.end.i66, %lockdep_ovsl_is_held.exit.i65.ovs_vport_ovsl.exit_crit_edge, %list_del_rcu.exit.ovs_vport_ovsl.exit_crit_edge
  %call21.i = tail call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext 0) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i68 = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i68, label %ovs_vport_ovsl.exit.if.end.i76_crit_edge, label %lockdep_ovsl_is_held.exit.i71

ovs_vport_ovsl.exit.if.end.i76_crit_edge:         ; preds = %ovs_vport_ovsl.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i76

lockdep_ovsl_is_held.exit.i71:                    ; preds = %ovs_vport_ovsl.exit
  %call.i.i.i69 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i69)
  %tobool.not.i70 = icmp eq i32 %call.i.i.i69, 0
  br i1 %tobool.not.i70, label %do.end.i72, label %lockdep_ovsl_is_held.exit.i71.if.end.i76_crit_edge, !prof !210

lockdep_ovsl_is_held.exit.i71.if.end.i76_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i76

do.end.i72:                                       ; preds = %lockdep_ovsl_is_held.exit.i71
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i76

if.end.i76:                                       ; preds = %do.end.i72, %lockdep_ovsl_is_held.exit.i71.if.end.i76_crit_edge, %ovs_vport_ovsl.exit.if.end.i76_crit_edge
  %dp_hash_node.i73 = getelementptr inbounds %struct.vport, ptr %call21.i, i32 0, i32 6
  %25 = ptrtoint ptr %dp_hash_node.i73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dp_hash_node.i73, align 4
  %pprev2.i.i.i74 = getelementptr inbounds %struct.vport, ptr %call21.i, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %pprev2.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev2.i.i.i74, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %26, ptr %28, align 4
  %tobool.not.i.i.i75 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i75, label %if.end.i76.ovs_dp_detach_port.exit79_crit_edge, label %do.body13.i.i.i78

if.end.i76.ovs_dp_detach_port.exit79_crit_edge:   ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_detach_port.exit79

do.body13.i.i.i78:                                ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i.i77 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %pprev14.i.i.i77, align 4
  br label %ovs_dp_detach_port.exit79

ovs_dp_detach_port.exit79:                        ; preds = %do.body13.i.i.i78, %if.end.i76.ovs_dp_detach_port.exit79_crit_edge
  %31 = ptrtoint ptr %pprev2.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i74, align 4
  tail call void @ovs_vport_del(ptr noundef %call21.i) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %32 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i80 = icmp eq i32 %32, 0
  br i1 %tobool.not.i80, label %do.end.thread, label %lockdep_ovsl_is_held.exit

do.end.thread:                                    ; preds = %ovs_dp_detach_port.exit79
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %table1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %table1, align 4
  br label %do.end42

lockdep_ovsl_is_held.exit:                        ; preds = %ovs_dp_detach_port.exit79
  %call.i.i81 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool23.not = icmp eq i32 %call.i.i81, 0
  br i1 %tobool23.not, label %land.lhs.true, label %lockdep_ovsl_is_held.exit.do.end_crit_edge

lockdep_ovsl_is_held.exit.do.end_crit_edge:       ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %lockdep_ovsl_is_held.exit
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true26

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true26:                                  ; preds = %land.lhs.true
  %.b60 = load i1, ptr @__dp_destroy.__warned, align 1
  br i1 %.b60, label %land.lhs.true26.do.end_crit_edge, label %if.then28

land.lhs.true26.do.end_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__dp_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1862, ptr noundef nonnull @.str.27) #14
  br label %do.end

do.end:                                           ; preds = %if.then28, %land.lhs.true26.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lockdep_ovsl_is_held.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  %35 = ptrtoint ptr %table1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %table1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i82 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i82, label %do.end.do.end42_crit_edge, label %lockdep_ovsl_is_held.exit86

do.end.do.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

lockdep_ovsl_is_held.exit86:                      ; preds = %do.end
  %call.i.i83 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %tobool33.not = icmp eq i32 %call.i.i83, 0
  br i1 %tobool33.not, label %land.lhs.true34, label %lockdep_ovsl_is_held.exit86.do.end42_crit_edge

lockdep_ovsl_is_held.exit86.do.end42_crit_edge:   ; preds = %lockdep_ovsl_is_held.exit86
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

land.lhs.true34:                                  ; preds = %lockdep_ovsl_is_held.exit86
  %call35 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true34.do.end42_crit_edge, label %land.lhs.true37

land.lhs.true34.do.end42_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %.b5859 = load i1, ptr @__dp_destroy.__warned.28, align 1
  br i1 %.b5859, label %land.lhs.true37.do.end42_crit_edge, label %if.then39

land.lhs.true37.do.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end42

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__dp_destroy.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1863, ptr noundef nonnull @.str.27) #14
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %land.lhs.true37.do.end42_crit_edge, %land.lhs.true34.do.end42_crit_edge, %lockdep_ovsl_is_held.exit86.do.end42_crit_edge, %do.end.do.end42_crit_edge, %do.end.thread
  %37 = phi ptr [ %36, %if.then39 ], [ %36, %land.lhs.true37.do.end42_crit_edge ], [ %36, %land.lhs.true34.do.end42_crit_edge ], [ %36, %lockdep_ovsl_is_held.exit86.do.end42_crit_edge ], [ %34, %do.end.thread ], [ %36, %do.end.do.end42_crit_edge ]
  %ufid_ti = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %ufid_ti to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ufid_ti, align 4
  tail call void @table_instance_flow_flush(ptr noundef %table1, ptr noundef %37, ptr noundef %39) #14
  tail call void @call_rcu(ptr noundef %dp, ptr noundef nonnull @destroy_dp_rcu) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @table_instance_flow_flush(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @destroy_dp_rcu(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.datapath, ptr %rcu, i32 0, i32 2
  tail call void @ovs_flow_tbl_destroy(ptr noundef %table) #14
  %stats_percpu = getelementptr inbounds %struct.datapath, ptr %rcu, i32 0, i32 4
  %0 = ptrtoint ptr %stats_percpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats_percpu, align 4
  tail call void @free_percpu(ptr noundef %1) #14
  %ports = getelementptr inbounds %struct.datapath, ptr %rcu, i32 0, i32 3
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  tail call void @kfree(ptr noundef %3) #14
  tail call void @ovs_meters_exit(ptr noundef %rcu) #14
  %upcall_portids = getelementptr inbounds %struct.datapath, ptr %rcu, i32 0, i32 9
  %4 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %upcall_portids, align 4
  tail call void @kfree(ptr noundef %5) #14
  tail call void @kfree(ptr noundef %rcu) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_tbl_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_meters_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_dp_cmd_new(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  %parms = alloca %struct.vport_parms, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %parms) #14
  %2 = call ptr @memset(ptr %parms, i32 255, i32 24)
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %1, i32 2
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 132, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 80) #20
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end5.err_destroy_reply_crit_edge, label %if.end8

if.end5.err_destroy_reply_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_reply

if.end8:                                          ; preds = %if.end5
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %net1.i = getelementptr inbounds %struct.datapath, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %net1.i, align 4
  %table = getelementptr inbounds %struct.datapath, ptr %call7.i.i, i32 0, i32 2
  %call10 = tail call i32 @ovs_flow_tbl_init(ptr noundef %table) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.err_destroy_dp_crit_edge

if.end8.err_destroy_dp_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_dp

if.end13:                                         ; preds = %if.end8
  %call.i = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 72, i32 noundef 8, i32 noundef 3264) #21
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %ovs_dp_stats_init.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end13
  %call116.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call116.i, i32 %14)
  %cmp17.i = icmp ult i32 %call116.i, %14
  br i1 %cmp17.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end17_crit_edge

for.cond.preheader.i.if.end17_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %15 = ptrtoint ptr %call.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call118.i = phi i32 [ %call116.i, %for.body.lr.ph.i ], [ %call1.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call118.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %15
  %18 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.dp_stats_percpu, ptr %18, i32 0, i32 5
  %dep_map.i.i = getelementptr inbounds %struct.dp_stats_percpu, ptr %18, i32 0, i32 5, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @ovs_dp_stats_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %19 = ptrtoint ptr %syncp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %syncp.i, align 4
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call118.i, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call1.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end17_crit_edge

for.body.i.if.end17_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

ovs_dp_stats_init.exit:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %stats_percpu.i = getelementptr inbounds %struct.datapath, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %stats_percpu.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %stats_percpu.i, align 8
  br label %err_destroy_table

if.end17:                                         ; preds = %for.body.i.if.end17_crit_edge, %for.cond.preheader.i.if.end17_crit_edge
  %stats_percpu.i114 = getelementptr inbounds %struct.datapath, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %stats_percpu.i114 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %stats_percpu.i114, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 4096) #20
  %ports.i = getelementptr inbounds %struct.datapath, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %ports.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i, ptr %ports.i, align 4
  %tobool.not.i109 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i109, label %if.end17.err_destroy_stats_crit_edge, label %if.end17.for.body.i111_crit_edge

if.end17.for.body.i111_crit_edge:                 ; preds = %if.end17
  br label %for.body.i111

if.end17.err_destroy_stats_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_stats

for.body.i111:                                    ; preds = %for.body.i111.for.body.i111_crit_edge, %if.end17.for.body.i111_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i111.for.body.i111_crit_edge ], [ 0, %if.end17.for.body.i111_crit_edge ]
  %25 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ports.i, align 4
  %arrayidx.i110 = getelementptr %struct.hlist_head, ptr %26, i32 %i.07.i
  %27 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i110, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %if.end21, label %for.body.i111.for.body.i111_crit_edge

for.body.i111.for.body.i111_crit_edge:            ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i111

if.end21:                                         ; preds = %for.body.i111
  %call22 = tail call i32 @ovs_meters_init(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.err_destroy_ports_crit_edge

if.end21.err_destroy_ports_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_destroy_ports

if.end25:                                         ; preds = %if.end21
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 4
  %30 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %parms, align 4
  %type = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 1
  %31 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %type, align 4
  %options = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 2
  %32 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %options, align 4
  %dp28 = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 3
  %33 = ptrtoint ptr %dp28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %dp28, align 4
  %port_no = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 4
  %34 = ptrtoint ptr %port_no to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %port_no, align 4
  %35 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx1, align 4
  %upcall_portids = getelementptr inbounds %struct.vport_parms, ptr %parms, i32 0, i32 5
  %37 = ptrtoint ptr %upcall_portids to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %upcall_portids, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %call30 = tail call fastcc i32 @ovs_dp_change(ptr noundef nonnull %call7.i.i, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end25.err_unlock_and_destroy_meters_crit_edge

if.end25.err_unlock_and_destroy_meters_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_and_destroy_meters

if.end33:                                         ; preds = %if.end25
  %call34 = call fastcc ptr @new_vport(ptr noundef nonnull %parms)
  %cmp.i112 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then36, label %if.end48

if.then36:                                        ; preds = %if.end33
  %38 = ptrtoint ptr %call34 to i32
  %magicptr.off = add i32 %38, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %magicptr.off)
  %switch = icmp ult i32 %magicptr.off, 2
  br i1 %switch, label %if.then42, label %if.then36.err_unlock_and_destroy_meters_crit_edge

if.then36.err_unlock_and_destroy_meters_crit_edge: ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_and_destroy_meters

if.then42:                                        ; preds = %if.then36
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %39 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %genlhdr, align 4
  %version = getelementptr inbounds %struct.genlmsghdr, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp43 = icmp ult i8 %42, 2
  br i1 %cmp43, label %if.then45, label %if.then42.err_unlock_and_destroy_meters_crit_edge

if.then42.err_unlock_and_destroy_meters_crit_edge: ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_and_destroy_meters

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @ovs_dp_reset_user_features(ptr noundef %skb, ptr noundef %info)
  br label %err_unlock_and_destroy_meters

if.end48:                                         ; preds = %if.end33
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %43 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %snd_portid, align 4
  %45 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %info, align 4
  %call49 = call fastcc i32 @ovs_dp_cmd_fill_info(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %44, i32 noundef %46, i32 noundef 0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %do.body55, label %do.end61, !prof !210

do.body55:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1809, 0\0A.popsection", ""() #14, !srcloc !233
  unreachable

do.end61:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %net1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net1.i, align 4
  %49 = load i32, ptr @ovs_net_id, align 4
  %call63 = call fastcc ptr @net_generic(ptr noundef %48, i32 noundef %49)
  %list_node = getelementptr inbounds %struct.datapath, ptr %call7.i.i, i32 0, i32 1
  call fastcc void @list_add_tail_rcu(ptr noundef %list_node, ptr noundef %call63)
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @genl_notify(ptr noundef nonnull @dp_datapath_genl_family, ptr noundef nonnull %call.i.i.i.i, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %cleanup

err_unlock_and_destroy_meters:                    ; preds = %if.then45, %if.then42.err_unlock_and_destroy_meters_crit_edge, %if.then36.err_unlock_and_destroy_meters_crit_edge, %if.end25.err_unlock_and_destroy_meters_crit_edge
  %err.0 = phi i32 [ %call30, %if.end25.err_unlock_and_destroy_meters_crit_edge ], [ -17, %if.then45 ], [ -17, %if.then42.err_unlock_and_destroy_meters_crit_edge ], [ %38, %if.then36.err_unlock_and_destroy_meters_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @ovs_meters_exit(ptr noundef nonnull %call7.i.i) #14
  br label %err_destroy_ports

err_destroy_ports:                                ; preds = %err_unlock_and_destroy_meters, %if.end21.err_destroy_ports_crit_edge
  %err.1 = phi i32 [ %call22, %if.end21.err_destroy_ports_crit_edge ], [ %err.0, %err_unlock_and_destroy_meters ]
  %50 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ports.i, align 4
  call void @kfree(ptr noundef %51) #14
  br label %err_destroy_stats

err_destroy_stats:                                ; preds = %err_destroy_ports, %if.end17.err_destroy_stats_crit_edge
  %err.2 = phi i32 [ %err.1, %err_destroy_ports ], [ -12, %if.end17.err_destroy_stats_crit_edge ]
  %52 = ptrtoint ptr %stats_percpu.i114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stats_percpu.i114, align 8
  call void @free_percpu(ptr noundef %53) #14
  br label %err_destroy_table

err_destroy_table:                                ; preds = %err_destroy_stats, %ovs_dp_stats_init.exit
  %err.3 = phi i32 [ -12, %ovs_dp_stats_init.exit ], [ %err.2, %err_destroy_stats ]
  call void @ovs_flow_tbl_destroy(ptr noundef %table) #14
  br label %err_destroy_dp

err_destroy_dp:                                   ; preds = %err_destroy_table, %if.end8.err_destroy_dp_crit_edge
  %err.4 = phi i32 [ %call10, %if.end8.err_destroy_dp_crit_edge ], [ %err.3, %err_destroy_table ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %err_destroy_reply

err_destroy_reply:                                ; preds = %err_destroy_dp, %if.end5.err_destroy_reply_crit_edge
  %err.5 = phi i32 [ -12, %if.end5.err_destroy_reply_crit_edge ], [ %err.4, %err_destroy_dp ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_reply, %do.end61, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end61 ], [ -12, %if.end.cleanup_crit_edge ], [ %err.5, %err_destroy_reply ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %parms) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_dp_cmd_del(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 132, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %userhdr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call.i = tail call fastcc ptr @get_dp(ptr noundef %4, i32 noundef %12) #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %call3.i = tail call ptr @ovs_vport_locate(ptr noundef %4, ptr noundef %add.ptr.i.i) #14
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.else.i.err_unlock_free_crit_edge, label %land.lhs.true.i

if.else.i.err_unlock_free_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

land.lhs.true.i:                                  ; preds = %if.else.i
  %port_no.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 4
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i = icmp eq i16 %14, 0
  br i1 %cmp.i, label %cond.true.i, label %land.lhs.true.i.err_unlock_free_crit_edge

land.lhs.true.i.err_unlock_free_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dp6.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 2
  %15 = ptrtoint ptr %dp6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true.i, %if.then.i
  %dp.0.i = phi ptr [ %call.i, %if.then.i ], [ %16, %cond.true.i ]
  %tobool7.not.i = icmp eq ptr %dp.0.i, null
  br i1 %tobool7.not.i, label %if.end.i.err_unlock_free_crit_edge, label %lookup_datapath.exit

if.end.i.err_unlock_free_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

lookup_datapath.exit:                             ; preds = %if.end.i
  %17 = ptrtoint ptr %dp.0.i to i32
  %cmp.i31 = icmp ugt ptr %dp.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %lookup_datapath.exit.err_unlock_free_crit_edge, label %if.end6

lookup_datapath.exit.err_unlock_free_crit_edge:   ; preds = %lookup_datapath.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

if.end6:                                          ; preds = %lookup_datapath.exit
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %snd_portid, align 4
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %info, align 4
  %call7 = tail call fastcc i32 @ovs_dp_cmd_fill_info(ptr noundef nonnull %dp.0.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %19, i32 noundef %21, i32 noundef 0, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.body11, label %do.end17, !prof !210

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1887, 0\0A.popsection", ""() #14, !srcloc !234
  unreachable

do.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @__dp_destroy(ptr noundef nonnull %dp.0.i)
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @genl_notify(ptr noundef nonnull @dp_datapath_genl_family, ptr noundef nonnull %call.i.i.i.i, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %cleanup

err_unlock_free:                                  ; preds = %lookup_datapath.exit.err_unlock_free_crit_edge, %if.end.i.err_unlock_free_crit_edge, %land.lhs.true.i.err_unlock_free_crit_edge, %if.else.i.err_unlock_free_crit_edge
  %22 = phi i32 [ %17, %lookup_datapath.exit.err_unlock_free_crit_edge ], [ -19, %if.else.i.err_unlock_free_crit_edge ], [ -19, %land.lhs.true.i.err_unlock_free_crit_edge ], [ -19, %if.end.i.err_unlock_free_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %err_unlock_free, %do.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %err_unlock_free ], [ 0, %do.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_dp_cmd_get(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 132, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %userhdr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call.i = tail call fastcc ptr @get_dp(ptr noundef %4, i32 noundef %12) #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %call3.i = tail call ptr @ovs_vport_locate(ptr noundef %4, ptr noundef %add.ptr.i.i) #14
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.else.i.if.then4_crit_edge, label %land.lhs.true.i

if.else.i.if.then4_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

land.lhs.true.i:                                  ; preds = %if.else.i
  %port_no.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 4
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i = icmp eq i16 %14, 0
  br i1 %cmp.i, label %cond.true.i, label %land.lhs.true.i.if.then4_crit_edge

land.lhs.true.i.if.then4_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dp6.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 2
  %15 = ptrtoint ptr %dp6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true.i, %if.then.i
  %dp.0.i = phi ptr [ %call.i, %if.then.i ], [ %16, %cond.true.i ]
  %tobool7.not.i = icmp eq ptr %dp.0.i, null
  br i1 %tobool7.not.i, label %if.end.i.if.then4_crit_edge, label %lookup_datapath.exit

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

lookup_datapath.exit:                             ; preds = %if.end.i
  %cmp.i31 = icmp ugt ptr %dp.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %lookup_datapath.exit.if.then4_crit_edge, label %if.end6

lookup_datapath.exit.if.then4_crit_edge:          ; preds = %lookup_datapath.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then4

if.then4:                                         ; preds = %lookup_datapath.exit.if.then4_crit_edge, %if.end.i.if.then4_crit_edge, %land.lhs.true.i.if.then4_crit_edge, %if.else.i.if.then4_crit_edge
  %cond12.i34 = phi ptr [ %dp.0.i, %lookup_datapath.exit.if.then4_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.else.i.if.then4_crit_edge ], [ inttoptr (i32 -19 to ptr), %land.lhs.true.i.if.then4_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end.i.if.then4_crit_edge ]
  %17 = ptrtoint ptr %cond12.i34 to i32
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #14
  br label %cleanup

if.end6:                                          ; preds = %lookup_datapath.exit
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %snd_portid, align 4
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %info, align 4
  %call7 = tail call fastcc i32 @ovs_dp_cmd_fill_info(ptr noundef nonnull %dp.0.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %19, i32 noundef %21, i32 noundef 0, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.body11, label %do.end17, !prof !210

do.body11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1955, 0\0A.popsection", ""() #14, !srcloc !235
  unreachable

do.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %22 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %_net.i.i, align 4
  %24 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 21
  %26 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %27, ptr noundef nonnull %call.i.i.i.i, i32 noundef %25, i32 noundef 64) #14
  %28 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then4 ], [ %28, %do.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_dp_cmd_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = load i32, ptr @ovs_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5)
  %6 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn24 = load ptr, ptr %call1, align 4
  %cmp.not26 = icmp eq ptr %.pn24, %call1
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn29 = phi ptr [ %.pn24, %for.body.lr.ph ], [ %.pn, %if.end.for.body_crit_edge ]
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.027, i32 %8)
  %cmp3.not = icmp slt i32 %i.027, %8
  br i1 %cmp3.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %dp.030 = getelementptr i8, ptr %.pn29, i32 -8
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  %12 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %portid, align 4
  %14 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nlmsg_seq, align 4
  %call6 = tail call fastcc i32 @ovs_dp_cmd_fill_info(ptr noundef %dp.030, ptr noundef %skb, i32 noundef %13, i32 noundef %17, i32 noundef 2, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add i32 %i.027, 1
  %18 = ptrtoint ptr %.pn29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn29, align 4
  %cmp.not = icmp eq ptr %.pn, %call1
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.027, %land.lhs.true.for.end_crit_edge ], [ %inc, %if.end.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.0.lcssa, ptr %6, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_dp_cmd_set(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef 132, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %userhdr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call.i = tail call fastcc ptr @get_dp(ptr noundef %4, i32 noundef %12) #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %call3.i = tail call ptr @ovs_vport_locate(ptr noundef %4, ptr noundef %add.ptr.i.i) #14
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.else.i.err_unlock_free_crit_edge, label %land.lhs.true.i

if.else.i.err_unlock_free_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

land.lhs.true.i:                                  ; preds = %if.else.i
  %port_no.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 4
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i = icmp eq i16 %14, 0
  br i1 %cmp.i, label %cond.true.i, label %land.lhs.true.i.err_unlock_free_crit_edge

land.lhs.true.i.err_unlock_free_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dp6.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 2
  %15 = ptrtoint ptr %dp6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true.i, %if.then.i
  %dp.0.i = phi ptr [ %call.i, %if.then.i ], [ %16, %cond.true.i ]
  %tobool7.not.i = icmp eq ptr %dp.0.i, null
  br i1 %tobool7.not.i, label %if.end.i.err_unlock_free_crit_edge, label %lookup_datapath.exit

if.end.i.err_unlock_free_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

lookup_datapath.exit:                             ; preds = %if.end.i
  %17 = ptrtoint ptr %dp.0.i to i32
  %cmp.i38 = icmp ugt ptr %dp.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %lookup_datapath.exit.err_unlock_free_crit_edge, label %if.end6

lookup_datapath.exit.err_unlock_free_crit_edge:   ; preds = %lookup_datapath.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

if.end6:                                          ; preds = %lookup_datapath.exit
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %call8 = tail call fastcc i32 @ovs_dp_change(ptr noundef nonnull %dp.0.i, ptr noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.err_unlock_free_crit_edge

if.end6.err_unlock_free_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_free

if.end11:                                         ; preds = %if.end6
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %20 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %snd_portid, align 4
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %info, align 4
  %call12 = tail call fastcc i32 @ovs_dp_cmd_fill_info(ptr noundef nonnull %dp.0.i, ptr noundef nonnull %call.i.i.i.i, i32 noundef %21, i32 noundef %23, i32 noundef 0, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %do.body16, label %do.end22, !prof !210

do.body16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1924, 0\0A.popsection", ""() #14, !srcloc !236
  unreachable

do.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @genl_notify(ptr noundef nonnull @dp_datapath_genl_family, ptr noundef nonnull %call.i.i.i.i, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %cleanup

err_unlock_free:                                  ; preds = %if.end6.err_unlock_free_crit_edge, %lookup_datapath.exit.err_unlock_free_crit_edge, %if.end.i.err_unlock_free_crit_edge, %land.lhs.true.i.err_unlock_free_crit_edge, %if.else.i.err_unlock_free_crit_edge
  %err.0 = phi i32 [ %17, %lookup_datapath.exit.err_unlock_free_crit_edge ], [ %call8, %if.end6.err_unlock_free_crit_edge ], [ -19, %if.else.i.err_unlock_free_crit_edge ], [ -19, %land.lhs.true.i.err_unlock_free_crit_edge ], [ -19, %if.end.i.err_unlock_free_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %err_unlock_free, %do.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_unlock_free ], [ 0, %do.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_tbl_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_meters_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_dp_change(ptr noundef %dp, ptr nocapture noundef readonly %a) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %a, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %tobool2.not = icmp ult i32 %3, 16
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup35_crit_edge

if.then.cleanup35_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %user_features.0 = phi i32 [ %3, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %arrayidx5 = getelementptr ptr, ptr %a, i32 7
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end4.if.end16_crit_edge, label %if.then7

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then7:                                         ; preds = %if.end4
  %add.ptr.i.i51 = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i51 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i51, align 4
  %table = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 2
  %call11 = tail call i32 @ovs_flow_tbl_masks_cache_resize(ptr noundef %table, i32 noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then7.if.end16_crit_edge, label %if.then7.cleanup35_crit_edge

if.then7.cleanup35_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end16:                                         ; preds = %if.then7.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %user_features17 = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 6
  %8 = ptrtoint ptr %user_features17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %user_features.0, ptr %user_features17, align 4
  %and19 = and i32 %user_features.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end16.if.end29_crit_edge, label %land.lhs.true

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end16
  %arrayidx21 = getelementptr ptr, ptr %a, i32 8
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %land.lhs.true.if.end29_crit_edge, label %if.then23

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then23:                                        ; preds = %land.lhs.true
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %tobool.not.i = icmp ne i16 %12, 4
  %13 = and i16 %12, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not.i = icmp eq i16 %13, 0
  %or.cond.i = and i1 %tobool.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %do.body.i, label %if.then23.cleanup35_crit_edge

if.then23.cleanup35_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35

do.body.i:                                        ; preds = %if.then23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %14 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %do.body.i.do.end.i_crit_edge, label %lockdep_ovsl_is_held.exit.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

lockdep_ovsl_is_held.exit.i:                      ; preds = %do.body.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lockdep_ovsl_is_held.exit.i.do.end.i_crit_edge

lockdep_ovsl_is_held.exit.i.do.end.i_crit_edge:   ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %lockdep_ovsl_is_held.exit.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b78.i = load i1, ptr @ovs_dp_set_upcall_portids.__warned, align 1
  br i1 %.b78.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %if.then9.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

if.then9.i:                                       ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_dp_set_upcall_portids.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1614, ptr noundef nonnull @.str.27) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %land.lhs.true7.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %lockdep_ovsl_is_held.exit.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %upcall_portids.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 9
  %15 = ptrtoint ptr %upcall_portids.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %upcall_portids.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %10, align 2
  %conv.i82.i = zext i16 %18 to i32
  %add.i = add nuw nsw i32 %conv.i82.i, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #21
  %tobool13.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool13.not.i, label %do.end.i.cleanup35_crit_edge, label %if.end15.i

do.end.i.cleanup35_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35

if.end15.i:                                       ; preds = %do.end.i
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %10, align 2
  %conv.i84.i = zext i16 %20 to i32
  %sub.i85.i = add nsw i32 %conv.i84.i, -4
  %div77.i = lshr i32 %sub.i85.i, 2
  %n_pids.i = getelementptr inbounds %struct.dp_nlsk_pids, ptr %call9.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %n_pids.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div77.i, ptr %n_pids.i, align 8
  %pids.i = getelementptr inbounds %struct.dp_nlsk_pids, ptr %call9.i.i, i32 0, i32 2
  %call18.i = tail call i32 @nla_memcpy(ptr noundef %pids.i, ptr noundef nonnull %10, i32 noundef %sub.i85.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !237
  %22 = ptrtoint ptr %upcall_portids.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call9.i.i, ptr %upcall_portids.i, align 4
  %tobool58.not.i = icmp eq ptr %16, null
  br i1 %tobool58.not.i, label %if.end15.i.if.end29_crit_edge, label %do.end62.i

if.end15.i.if.end29_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

do.end62.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kvfree_call_rcu(ptr noundef nonnull %16, ptr noundef null) #14
  br label %if.end29

if.end29:                                         ; preds = %do.end62.i, %if.end15.i.if.end29_crit_edge, %land.lhs.true.if.end29_crit_edge, %if.end16.if.end29_crit_edge
  %23 = ptrtoint ptr %user_features17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %user_features17, align 4
  %and31 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @static_key_enable(ptr noundef nonnull @tc_recirc_sharing_support) #14
  br label %cleanup35

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @static_key_disable(ptr noundef nonnull @tc_recirc_sharing_support) #14
  br label %cleanup35

cleanup35:                                        ; preds = %if.else, %if.then33, %do.end.i.cleanup35_crit_edge, %if.then23.cleanup35_crit_edge, %if.then7.cleanup35_crit_edge, %if.then.cleanup35_crit_edge
  %retval.1 = phi i32 [ %call11, %if.then7.cleanup35_crit_edge ], [ -95, %if.then.cleanup35_crit_edge ], [ 0, %if.else ], [ 0, %if.then33 ], [ -22, %if.then23.cleanup35_crit_edge ], [ -12, %do.end.i.cleanup35_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ovs_dp_reset_user_features(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %userhdr, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %call.i = tail call fastcc ptr @get_dp(ptr noundef %4, i32 noundef %12) #14
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %call3.i = tail call ptr @ovs_vport_locate(ptr noundef %4, ptr noundef %add.ptr.i.i) #14
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.else.i.cleanup_crit_edge, label %land.lhs.true.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.else.i
  %port_no.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 4
  %13 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %port_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i = icmp eq i16 %14, 0
  br i1 %cmp.i, label %cond.true.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %dp6.i = getelementptr inbounds %struct.vport, ptr %call3.i, i32 0, i32 2
  %15 = ptrtoint ptr %dp6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dp6.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %cond.true.i, %if.then.i
  %dp.0.i = phi ptr [ %call.i, %if.then.i ], [ %16, %cond.true.i ]
  %tobool7.not.i = icmp eq ptr %dp.0.i, null
  %cmp.i29 = icmp ugt ptr %dp.0.i, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool7.not.i, %cmp.i29
  br i1 %or.cond, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %user_features = getelementptr inbounds %struct.datapath, ptr %dp.0.i, i32 0, i32 6
  %17 = ptrtoint ptr %user_features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %user_features, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !209

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1600, i32 noundef 9, ptr noundef nonnull @.str.31) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %19 = ptrtoint ptr %user_features to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %user_features, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_dp_cmd_fill_info(ptr noundef %dp, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, i8 noundef zeroext %cmd) unnamed_addr #0 align 64 {
entry:
  %tmp.i45 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %dp_stats = alloca %struct.ovs_dp_stats, align 8
  %dp_megaflow_stats = alloca %struct.ovs_dp_megaflow_stats, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dp_stats) #14
  %0 = getelementptr inbounds %struct.ovs_dp_stats, ptr %dp_stats, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ovs_dp_stats, ptr %dp_stats, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ovs_dp_stats, ptr %dp_stats, i32 0, i32 3
  %3 = call ptr @memset(ptr %dp_stats, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dp_megaflow_stats) #14
  %4 = getelementptr inbounds %struct.ovs_dp_megaflow_stats, ptr %dp_megaflow_stats, i32 0, i32 1
  %5 = getelementptr inbounds %struct.ovs_dp_megaflow_stats, ptr %dp_megaflow_stats, i32 0, i32 3
  %6 = call ptr @memset(ptr %dp_megaflow_stats, i32 255, i32 32)
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @dp_datapath_genl_family, i32 noundef %flags, i8 noundef zeroext %cmd) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @get_dpifindex(ptr noundef %dp)
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1, ptr %call, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.end.ovs_dp_name.exit_crit_edge

if.end.ovs_dp_name.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_name.exit

land.rhs.i.i:                                     ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.ovs_dp_name.exit_crit_edge, label %lockdep_ovsl_is_held.exit.i.i

land.rhs.i.i.ovs_dp_name.exit_crit_edge:          ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_name.exit

lockdep_ovsl_is_held.exit.i.i:                    ; preds = %land.rhs.i.i
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i, label %land.rhs6.i.i, label %lockdep_ovsl_is_held.exit.i.i.ovs_dp_name.exit_crit_edge

lockdep_ovsl_is_held.exit.i.i.ovs_dp_name.exit_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_name.exit

land.rhs6.i.i:                                    ; preds = %lockdep_ovsl_is_held.exit.i.i
  %.b44.i.i = load i1, ptr @ovs_vport_ovsl_rcu.__already_done, align 1
  br i1 %.b44.i.i, label %land.rhs6.i.i.ovs_dp_name.exit_crit_edge, label %if.then.i.i, !prof !209

land.rhs6.i.i.ovs_dp_name.exit_crit_edge:         ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_dp_name.exit

if.then.i.i:                                      ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_vport_ovsl_rcu.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 213, i32 noundef 9, ptr noundef null) #14
  br label %ovs_dp_name.exit

ovs_dp_name.exit:                                 ; preds = %if.then.i.i, %land.rhs6.i.i.ovs_dp_name.exit_crit_edge, %lockdep_ovsl_is_held.exit.i.i.ovs_dp_name.exit_crit_edge, %land.rhs.i.i.ovs_dp_name.exit_crit_edge, %if.end.ovs_dp_name.exit_crit_edge
  %call41.i.i = tail call ptr @ovs_lookup_vport(ptr noundef %dp, i16 noundef zeroext 0) #14
  %9 = ptrtoint ptr %call41.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call41.i.i, align 4
  %call.i = tail call i32 @strlen(ptr noundef %10) #18
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %10) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not, label %if.end6, label %ovs_dp_name.exit.if.then.i_crit_edge

ovs_dp_name.exit.if.then.i_crit_edge:             ; preds = %ovs_dp_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end6:                                          ; preds = %ovs_dp_name.exit
  %11 = call ptr @memset(ptr %dp_megaflow_stats, i32 0, i32 32)
  %table.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 2
  %call.i41 = tail call i32 @ovs_flow_tbl_count(ptr noundef %table.i) #14
  %conv.i = sext i32 %call.i41 to i64
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %2, align 8
  %call2.i = tail call i32 @ovs_flow_tbl_num_masks(ptr noundef %table.i) #14
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i, ptr %4, align 8
  %14 = call ptr @memset(ptr %dp_stats, i32 0, i32 24)
  %call340.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call340.i, i32 %15)
  %cmp41.i = icmp ult i32 %call340.i, %15
  br i1 %cmp41.i, label %for.body.lr.ph.i, label %if.end6.get_dp_stats.exit_crit_edge

if.end6.get_dp_stats.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_dp_stats.exit

for.body.lr.ph.i:                                 ; preds = %if.end6
  %stats_percpu.i = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %do.end11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call342.i = phi i32 [ %call340.i, %for.body.lr.ph.i ], [ %call3.i, %do.end11.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %stats_percpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stats_percpu.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call342.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i42 = add i32 %20, %18
  %21 = inttoptr i32 %add.i42 to ptr
  %syncp.i = getelementptr inbounds %struct.dp_stats_percpu, ptr %21, i32 0, i32 5
  %dep_map.c48.i.i.i.i = getelementptr inbounds %struct.dp_stats_percpu, ptr %21, i32 0, i32 5, i32 0, i32 1
  %local_stats.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %21, i32 8
  %local_stats.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %21, i32 16
  %local_stats.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %21, i32 24
  %local_stats.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %21, i32 32
  br label %do.body6.i

do.body6.i:                                       ; preds = %u64_stats_fetch_begin_irq.exit.i.do.body6.i_crit_edge, %for.body.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !238
  %and.i.i.i.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %do.body24.critedge.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @trace_hardirqs_off() #14
  %23 = tail call ptr @llvm.returnaddress(i32 0) #14
  %24 = ptrtoint ptr %23 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %24) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %24) #14
  tail call void @trace_hardirqs_on() #14
  br label %do.body24.i.i.i.i

do.body24.critedge.i.i.i.i:                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  %25 = tail call ptr @llvm.returnaddress(i32 0) #14
  %26 = ptrtoint ptr %25 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %26) #14
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %26) #14
  br label %do.body24.i.i.i.i

do.body24.i.i.i.i:                                ; preds = %do.body24.critedge.i.i.i.i, %if.then.i.i.i.i
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !239
  %and.i.i.i.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge, !prof !210

do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %seqcount_lockdep_reader_access.exit.i.i.i

if.then36.i.i.i.i:                                ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %seqcount_lockdep_reader_access.exit.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i:        ; preds = %if.then36.i.i.i.i, %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #14, !srcloc !240
  %28 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %syncp.i, align 4
  %and18.i.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i)
  %tobool.not19.i.i.i = icmp eq i32 %and18.i.i.i, 0
  br i1 %tobool.not19.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  br label %do.end.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_fetch_begin_irq.exit.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !242
  %30 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %syncp.i, align 4
  %and.i.i.i = and i32 %31, 1
  %tobool.not.i.i.i43 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i43, label %do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i.i.i

do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge: ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %u64_stats_fetch_begin_irq.exit.i

u64_stats_fetch_begin_irq.exit.i:                 ; preds = %do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %29, %seqcount_lockdep_reader_access.exit.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge ], [ %31, %do.end.i.i.i.u64_stats_fetch_begin_irq.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !243
  %32 = ptrtoint ptr %21 to i32
  call void @__asan_load8_noabort(i32 %32)
  %local_stats.sroa.0.0.copyload.i = load i64, ptr %21, align 8
  %33 = ptrtoint ptr %local_stats.sroa.5.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %local_stats.sroa.5.0.copyload.i = load i64, ptr %local_stats.sroa.5.0..sroa_idx.i, align 8
  %34 = ptrtoint ptr %local_stats.sroa.6.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %local_stats.sroa.6.0.copyload.i = load i64, ptr %local_stats.sroa.6.0..sroa_idx.i, align 8
  %35 = ptrtoint ptr %local_stats.sroa.7.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %local_stats.sroa.7.0.copyload.i = load i64, ptr %local_stats.sroa.7.0..sroa_idx.i, align 8
  %36 = ptrtoint ptr %local_stats.sroa.8.0..sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %local_stats.sroa.8.0.copyload.i = load i64, ptr %local_stats.sroa.8.0..sroa_idx.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !244
  %37 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %syncp.i, align 4
  %cmp.i.i.i.i.not.i = icmp eq i32 %38, %.lcssa.i.i.i
  br i1 %cmp.i.i.i.i.not.i, label %do.end11.i, label %u64_stats_fetch_begin_irq.exit.i.do.body6.i_crit_edge

u64_stats_fetch_begin_irq.exit.i.do.body6.i_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body6.i

do.end11.i:                                       ; preds = %u64_stats_fetch_begin_irq.exit.i
  %39 = ptrtoint ptr %dp_stats to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dp_stats, align 8
  %add14.i = add i64 %40, %local_stats.sroa.0.0.copyload.i
  store i64 %add14.i, ptr %dp_stats, align 8
  %41 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %0, align 8
  %add17.i = add i64 %42, %local_stats.sroa.5.0.copyload.i
  store i64 %add17.i, ptr %0, align 8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %1, align 8
  %add20.i = add i64 %44, %local_stats.sroa.6.0.copyload.i
  store i64 %add20.i, ptr %1, align 8
  %45 = ptrtoint ptr %dp_megaflow_stats to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %dp_megaflow_stats, align 8
  %add22.i = add i64 %46, %local_stats.sroa.7.0.copyload.i
  store i64 %add22.i, ptr %dp_megaflow_stats, align 8
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %5, align 8
  %add24.i = add i64 %48, %local_stats.sroa.8.0.copyload.i
  store i64 %add24.i, ptr %5, align 8
  %call3.i = tail call i32 @cpumask_next(i32 noundef %call342.i, ptr noundef nonnull @__cpu_possible_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call3.i, %49
  br i1 %cmp.i, label %do.end11.i.for.body.i_crit_edge, label %do.end11.i.get_dp_stats.exit_crit_edge

do.end11.i.get_dp_stats.exit_crit_edge:           ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %get_dp_stats.exit

do.end11.i.for.body.i_crit_edge:                  ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

get_dp_stats.exit:                                ; preds = %do.end11.i.get_dp_stats.exit_crit_edge, %if.end6.get_dp_stats.exit_crit_edge
  %call7 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 32, ptr noundef nonnull %dp_stats, i32 noundef 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %get_dp_stats.exit.if.then.i_crit_edge

get_dp_stats.exit.if.then.i_crit_edge:            ; preds = %get_dp_stats.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end10:                                         ; preds = %get_dp_stats.exit
  %call11 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 4, i32 noundef 32, ptr noundef nonnull %dp_megaflow_stats, i32 noundef 6) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.then.i_crit_edge

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end14:                                         ; preds = %if.end10
  %user_features = getelementptr inbounds %struct.datapath, ptr %dp, i32 0, i32 6
  %50 = ptrtoint ptr %user_features to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %user_features, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %52 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tmp.i, align 4
  %call.i44 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool16.not = icmp eq i32 %call.i44, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.if.then.i_crit_edge

if.end14.if.then.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @ovs_flow_tbl_masks_cache_size(ptr noundef %table.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i45) #14
  %53 = ptrtoint ptr %tmp.i45 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call19, ptr %tmp.i45, align 4
  %call.i46 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i45) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i45) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool21.not = icmp eq i32 %call.i46, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.if.then.i_crit_edge

if.end18.if.then.i_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %56 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end18.if.then.i_crit_edge, %if.end14.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge, %get_dp_stats.exit.if.then.i_crit_edge, %ovs_dp_name.exit.if.then.i_crit_edge
  %add.ptr1.i47 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i48 = icmp eq ptr %add.ptr1.i47, null
  br i1 %tobool.not.i.i.i48, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %58, %add.ptr1.i47
  br i1 %cmp.i.i.i, label %do.end.i.i.i49, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !210

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

do.end.i.i.i49:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i49, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %59 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i47 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.then.i.cleanup_crit_edge ], [ -90, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dp_megaflow_stats) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dp_stats) #14
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #14
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !245
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_tbl_masks_cache_resize(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_tbl_masks_cache_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_tbl_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_tbl_num_masks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_flow_cmd_new(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  %mask = alloca %struct.sw_flow_mask, align 8
  %acts = alloca ptr, align 4
  %match = alloca %struct.sw_flow_match, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %userhdr, align 4
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %mask) #14
  %9 = call ptr @memset(ptr %mask, i32 255, i32 480)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acts) #14
  %10 = ptrtoint ptr %acts to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %acts, align 4, !annotation !211
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %match) #14
  %arrayidx = getelementptr ptr, ptr %6, i32 10
  %11 = call ptr @memset(ptr %match, i32 255, i32 12)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @ovs_nla_get_ufid_flags(ptr noundef %13) #14
  %arrayidx2 = getelementptr ptr, ptr %6, i32 8
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %15, null
  %arrayidx3 = getelementptr ptr, ptr %6, i32 1
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %do.body, label %if.end13

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %land.lhs.true, label %do.body.cleanup317_crit_edge

do.body.cleanup317_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup317

land.lhs.true:                                    ; preds = %do.body
  %call6 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup317_crit_edge, label %do.end

land.lhs.true.cleanup317_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup317

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #17
  br label %cleanup317

if.end13:                                         ; preds = %entry
  %arrayidx14 = getelementptr ptr, ptr %6, i32 2
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %do.body17, label %if.end31

do.body17:                                        ; preds = %if.end13
  br i1 %tobool.not, label %land.lhs.true19, label %do.body17.cleanup317_crit_edge

do.body17.cleanup317_crit_edge:                   ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup317

land.lhs.true19:                                  ; preds = %do.body17
  %call20 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true19.cleanup317_crit_edge, label %do.end25

land.lhs.true19.cleanup317_crit_edge:             ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup317

do.end25:                                         ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #16
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #17
  br label %cleanup317

if.end31:                                         ; preds = %if.end13
  %call32 = tail call ptr @ovs_flow_alloc() #14
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %call32 to i32
  br label %cleanup317

if.end36:                                         ; preds = %if.end31
  %key = getelementptr inbounds %struct.sw_flow, ptr %call32, i32 0, i32 4
  call void @ovs_match_init(ptr noundef nonnull %match, ptr noundef %key, i1 noundef zeroext false, ptr noundef nonnull %mask) #14
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3, align 4
  %arrayidx38 = getelementptr ptr, ptr %6, i32 7
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx38, align 4
  %call40 = call i32 @ovs_nla_get_match(ptr noundef %4, ptr noundef nonnull %match, ptr noundef %22, ptr noundef %24, i1 noundef zeroext %tobool.not) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end36.err_kfree_flow_crit_edge

if.end36.err_kfree_flow_crit_edge:                ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_flow

if.end43:                                         ; preds = %if.end36
  %id = getelementptr inbounds %struct.sw_flow, ptr %call32, i32 0, i32 5
  %arrayidx44 = getelementptr ptr, ptr %6, i32 9
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx44, align 4
  %call47 = call i32 @ovs_nla_get_identifier(ptr noundef %id, ptr noundef %26, ptr noundef %key, i1 noundef zeroext %tobool.not) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end43.err_kfree_flow_crit_edge

if.end43.err_kfree_flow_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_flow

if.end50:                                         ; preds = %if.end43
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.i = icmp eq i32 %28, 0
  br i1 %tobool.i.not.i, label %if.then53, label %if.end50.if.end56_crit_edge

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  %29 = getelementptr inbounds %struct.sw_flow, ptr %call32, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %match, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  call void @ovs_flow_mask_key(ptr noundef %key, ptr noundef %key, i1 noundef zeroext true, ptr noundef nonnull %mask) #14
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx14, align 4
  %call62 = call i32 @ovs_nla_copy_actions(ptr noundef %4, ptr noundef %34, ptr noundef %key, ptr noundef nonnull %acts, i1 noundef zeroext %tobool.not) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end79, label %do.body65

do.body65:                                        ; preds = %if.end56
  br i1 %tobool.not, label %land.lhs.true67, label %do.body65.err_kfree_flow_crit_edge

do.body65.err_kfree_flow_crit_edge:               ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_flow

land.lhs.true67:                                  ; preds = %do.body65
  %call68 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.err_kfree_flow_crit_edge, label %do.end73

land.lhs.true67.err_kfree_flow_crit_edge:         ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_kfree_flow

do.end73:                                         ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #16
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #17
  br label %err_kfree_flow

if.end79:                                         ; preds = %if.end56
  %35 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %acts, align 4
  %call81 = call fastcc ptr @ovs_flow_cmd_alloc_info(ptr noundef %36, ptr noundef %id, ptr noundef %info, i1 noundef zeroext false, i32 noundef %call1)
  %cmp.i400 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i400, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %call81 to i32
  br label %err_kfree_acts

if.end85:                                         ; preds = %if.end79
  call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %38 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %8, align 4
  %call86 = call fastcc ptr @get_dp(ptr noundef %4, i32 noundef %39)
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end85.err_unlock_ovs_crit_edge, label %if.end93, !prof !210

if.end85.err_unlock_ovs_crit_edge:                ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_ovs

if.end93:                                         ; preds = %if.end85
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not = icmp eq i32 %41, 0
  br i1 %tobool.i.not, label %if.end93.if.end105_crit_edge, label %if.end99

if.end93.if.end105_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.end99:                                         ; preds = %if.end93
  %table = getelementptr inbounds %struct.datapath, ptr %call86, i32 0, i32 2
  %call98 = call ptr @ovs_flow_tbl_lookup_ufid(ptr noundef %table, ptr noundef %id) #14
  %tobool100.not = icmp eq ptr %call98, null
  br i1 %tobool100.not, label %if.end99.if.end105_crit_edge, label %if.end99.if.else193_crit_edge

if.end99.if.else193_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else193

if.end99.if.end105_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.end105:                                        ; preds = %if.end99.if.end105_crit_edge, %if.end93.if.end105_crit_edge
  %table102 = getelementptr inbounds %struct.datapath, ptr %call86, i32 0, i32 2
  %call104 = call ptr @ovs_flow_tbl_lookup(ptr noundef %table102, ptr noundef %key) #14
  %tobool106.not = icmp eq ptr %call104, null
  br i1 %tobool106.not, label %do.body116, label %if.end105.if.else193_crit_edge, !prof !209

if.end105.if.else193_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else193

do.body116:                                       ; preds = %if.end105
  %42 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %acts, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !246
  %sf_acts141 = getelementptr inbounds %struct.sw_flow, ptr %call32, i32 0, i32 8
  %44 = ptrtoint ptr %sf_acts141 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %43, ptr %sf_acts141, align 4
  %call154 = call i32 @ovs_flow_tbl_insert(ptr noundef %table102, ptr noundef %call32, ptr noundef nonnull %mask) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end163, label %if.then162, !prof !209

if.then162:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %acts to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %acts, align 4
  br label %err_unlock_ovs

if.end163:                                        ; preds = %do.body116
  %tobool164.not = icmp eq ptr %call81, null
  br i1 %tobool164.not, label %if.end163.if.end192_crit_edge, label %if.then171, !prof !209

if.end163.if.end192_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end192

if.then171:                                       ; preds = %if.end163
  %46 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %8, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %48 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %snd_portid, align 4
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %info, align 4
  %call173 = call fastcc i32 @ovs_flow_cmd_fill_info(ptr noundef %call32, i32 noundef %47, ptr noundef nonnull %call81, i32 noundef %49, i32 noundef %51, i32 noundef 0, i8 noundef zeroext 1, i32 noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173)
  %cmp175 = icmp slt i32 %call173, 0
  br i1 %cmp175, label %do.body183, label %if.then171.if.end192_crit_edge, !prof !210

if.then171.if.end192_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end192

do.body183:                                       ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1030, 0\0A.popsection", ""() #14, !srcloc !247
  unreachable

if.end192:                                        ; preds = %if.then171.if.end192_crit_edge, %if.end163.if.end192_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  br label %if.end312

if.else193:                                       ; preds = %if.end105.if.else193_crit_edge, %if.end99.if.else193_crit_edge
  %flow.1406 = phi ptr [ %call104, %if.end105.if.else193_crit_edge ], [ %call98, %if.end99.if.else193_crit_edge ]
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %52 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nlhdr, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nlmsg_flags, align 2
  %56 = and i16 %55, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool194.not = icmp eq i16 %56, 0
  br i1 %tobool194.not, label %if.end202, label %if.else193.err_unlock_ovs_crit_edge, !prof !209

if.else193.err_unlock_ovs_crit_edge:              ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_ovs

if.end202:                                        ; preds = %if.else193
  %call203 = call zeroext i1 @ovs_flow_cmp(ptr noundef nonnull %flow.1406, ptr noundef nonnull %match) #14
  br i1 %call203, label %if.end202.do.body224_crit_edge, label %if.then212, !prof !209

if.end202.do.body224_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body224

if.then212:                                       ; preds = %if.end202
  %id213 = getelementptr inbounds %struct.sw_flow, ptr %flow.1406, i32 0, i32 5
  %57 = ptrtoint ptr %id213 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.i401 = icmp eq i32 %58, 0
  br i1 %tobool.i.not.i401, label %if.end219, label %if.then212.err_unlock_ovs_crit_edge

if.then212.err_unlock_ovs_crit_edge:              ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_ovs

if.end219:                                        ; preds = %if.then212
  %table216 = getelementptr inbounds %struct.datapath, ptr %call86, i32 0, i32 2
  %call217 = call ptr @ovs_flow_tbl_lookup_exact(ptr noundef %table216, ptr noundef nonnull %match) #14
  %tobool220.not = icmp eq ptr %call217, null
  br i1 %tobool220.not, label %if.end219.err_unlock_ovs_crit_edge, label %if.end219.do.body224_crit_edge

if.end219.do.body224_crit_edge:                   ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body224

if.end219.err_unlock_ovs_crit_edge:               ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_ovs

do.body224:                                       ; preds = %if.end219.do.body224_crit_edge, %if.end202.do.body224_crit_edge
  %flow.3 = phi ptr [ %call217, %if.end219.do.body224_crit_edge ], [ %flow.1406, %if.end202.do.body224_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %59 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i, label %do.body224.do.end235_crit_edge, label %lockdep_ovsl_is_held.exit

do.body224.do.end235_crit_edge:                   ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end235

lockdep_ovsl_is_held.exit:                        ; preds = %do.body224
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool226.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool226.not, label %land.lhs.true227, label %lockdep_ovsl_is_held.exit.do.end235_crit_edge

lockdep_ovsl_is_held.exit.do.end235_crit_edge:    ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end235

land.lhs.true227:                                 ; preds = %lockdep_ovsl_is_held.exit
  %call228 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %land.lhs.true227.do.end235_crit_edge, label %land.lhs.true230

land.lhs.true227.do.end235_crit_edge:             ; preds = %land.lhs.true227
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end235

land.lhs.true230:                                 ; preds = %land.lhs.true227
  %.b399 = load i1, ptr @ovs_flow_cmd_new.__warned, align 1
  br i1 %.b399, label %land.lhs.true230.do.end235_crit_edge, label %if.then232

land.lhs.true230.do.end235_crit_edge:             ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end235

if.then232:                                       ; preds = %land.lhs.true230
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_cmd_new.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1062, ptr noundef nonnull @.str.27) #14
  br label %do.end235

do.end235:                                        ; preds = %if.then232, %land.lhs.true230.do.end235_crit_edge, %land.lhs.true227.do.end235_crit_edge, %lockdep_ovsl_is_held.exit.do.end235_crit_edge, %do.body224.do.end235_crit_edge
  %sf_acts237 = getelementptr inbounds %struct.sw_flow, ptr %flow.3, i32 0, i32 8
  %60 = ptrtoint ptr %sf_acts237 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sf_acts237, align 4
  %62 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %acts, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !248
  %64 = ptrtoint ptr %sf_acts237 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %63, ptr %sf_acts237, align 4
  %tobool280.not = icmp eq ptr %call81, null
  br i1 %tobool280.not, label %do.end235.cleanup_crit_edge, label %if.then287, !prof !209

do.end235.cleanup_crit_edge:                      ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then287:                                       ; preds = %do.end235
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %8, align 4
  %snd_portid289 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %67 = ptrtoint ptr %snd_portid289 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %snd_portid289, align 4
  %69 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %info, align 4
  %call291 = call fastcc i32 @ovs_flow_cmd_fill_info(ptr noundef nonnull %flow.3, i32 noundef %66, ptr noundef nonnull %call81, i32 noundef %68, i32 noundef %70, i32 noundef 0, i8 noundef zeroext 1, i32 noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %cmp293 = icmp slt i32 %call291, 0
  br i1 %cmp293, label %do.body302, label %if.then287.cleanup_crit_edge, !prof !210

if.then287.cleanup_crit_edge:                     ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body302:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1072, 0\0A.popsection", ""() #14, !srcloc !249
  unreachable

cleanup:                                          ; preds = %if.then287.cleanup_crit_edge, %do.end235.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @ovs_nla_free_flow_actions_rcu(ptr noundef %61) #14
  call void @ovs_flow_free(ptr noundef %call32, i1 noundef zeroext false) #14
  br label %if.end312

if.end312:                                        ; preds = %cleanup, %if.end192
  %tobool313.not = icmp eq ptr %call81, null
  br i1 %tobool313.not, label %if.end312.cleanup317_crit_edge, label %if.then314

if.end312.cleanup317_crit_edge:                   ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup317

if.then314:                                       ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #16
  call void @genl_notify(ptr noundef nonnull @dp_flow_genl_family, ptr noundef nonnull %call81, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %cleanup317

err_unlock_ovs:                                   ; preds = %if.end219.err_unlock_ovs_crit_edge, %if.then212.err_unlock_ovs_crit_edge, %if.else193.err_unlock_ovs_crit_edge, %if.then162, %if.end85.err_unlock_ovs_crit_edge
  %error.2 = phi i32 [ %call154, %if.then162 ], [ -19, %if.end85.err_unlock_ovs_crit_edge ], [ -2, %if.end219.err_unlock_ovs_crit_edge ], [ -17, %if.else193.err_unlock_ovs_crit_edge ], [ -2, %if.then212.err_unlock_ovs_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @kfree_skb_reason(ptr noundef %call81, i32 noundef 0) #14
  br label %err_kfree_acts

err_kfree_acts:                                   ; preds = %err_unlock_ovs, %if.then83
  %error.3 = phi i32 [ %37, %if.then83 ], [ %error.2, %err_unlock_ovs ]
  %71 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %acts, align 4
  call void @ovs_nla_free_flow_actions(ptr noundef %72) #14
  br label %err_kfree_flow

err_kfree_flow:                                   ; preds = %err_kfree_acts, %do.end73, %land.lhs.true67.err_kfree_flow_crit_edge, %do.body65.err_kfree_flow_crit_edge, %if.end43.err_kfree_flow_crit_edge, %if.end36.err_kfree_flow_crit_edge
  %error.4 = phi i32 [ %call40, %if.end36.err_kfree_flow_crit_edge ], [ %call47, %if.end43.err_kfree_flow_crit_edge ], [ %call62, %do.end73 ], [ %call62, %land.lhs.true67.err_kfree_flow_crit_edge ], [ %call62, %do.body65.err_kfree_flow_crit_edge ], [ %error.3, %err_kfree_acts ]
  call void @ovs_flow_free(ptr noundef %call32, i1 noundef zeroext false) #14
  br label %cleanup317

cleanup317:                                       ; preds = %err_kfree_flow, %if.then314, %if.end312.cleanup317_crit_edge, %if.then34, %do.end25, %land.lhs.true19.cleanup317_crit_edge, %do.body17.cleanup317_crit_edge, %do.end, %land.lhs.true.cleanup317_crit_edge, %do.body.cleanup317_crit_edge
  %retval.0 = phi i32 [ 0, %if.then314 ], [ 0, %if.end312.cleanup317_crit_edge ], [ %20, %if.then34 ], [ %error.4, %err_kfree_flow ], [ -22, %do.end25 ], [ -22, %land.lhs.true19.cleanup317_crit_edge ], [ -22, %do.body17.cleanup317_crit_edge ], [ -22, %do.end ], [ -22, %land.lhs.true.cleanup317_crit_edge ], [ -22, %do.body.cleanup317_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %match) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acts) #14
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %mask) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_flow_cmd_del(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  %key = alloca %struct.sw_flow_key, align 8
  %match = alloca %struct.sw_flow_match, align 4
  %ufid = alloca %struct.sw_flow_id, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %userhdr, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %key) #14
  %9 = call ptr @memset(ptr %key, i32 255, i32 464)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %match) #14
  %10 = call ptr @memset(ptr %match, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ufid) #14
  %arrayidx = getelementptr ptr, ptr %1, i32 10
  %11 = call ptr @memset(ptr %ufid, i32 255, i32 20)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @ovs_nla_get_ufid_flags(ptr noundef %13) #14
  %arrayidx2 = getelementptr ptr, ptr %1, i32 8
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %15, null
  %arrayidx3 = getelementptr ptr, ptr %1, i32 9
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %call5 = call zeroext i1 @ovs_nla_get_ufid(ptr noundef nonnull %ufid, ptr noundef %17, i1 noundef zeroext %tobool.not) #14
  %arrayidx7 = getelementptr ptr, ptr %1, i32 1
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @ovs_match_init(ptr noundef nonnull %match, ptr noundef nonnull %key, i1 noundef zeroext true, ptr noundef null) #14
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  %call11 = call i32 @ovs_nla_get_match(ptr noundef %8, ptr noundef nonnull %match, ptr noundef %21, ptr noundef null, i1 noundef zeroext %tobool.not) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then.if.end17_crit_edge, label %if.then.cleanup_crit_edge, !prof !209

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %skc_net.i182 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i182 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i182, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %call19 = call fastcc ptr @get_dp(ptr noundef %25, i32 noundef %27)
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end17.unlock_crit_edge, label %if.end30, !prof !210

if.end17.unlock_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end30:                                         ; preds = %if.end17
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx7, align 4
  %tobool32.not = icmp eq ptr %29, null
  %lnot34 = xor i1 %call5, true
  %spec.select = select i1 %tobool32.not, i1 %lnot34, i1 false
  %table = getelementptr inbounds %struct.datapath, ptr %call19, i32 0, i32 2
  br i1 %spec.select, label %if.then42, label %if.end44, !prof !210

if.then42:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = call i32 @ovs_flow_tbl_flush(ptr noundef %table) #14
  br label %unlock

if.end44:                                         ; preds = %if.end30
  br i1 %call5, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %call48 = call ptr @ovs_flow_tbl_lookup_ufid(ptr noundef %table, ptr noundef nonnull %ufid) #14
  br label %if.end51

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #16
  %call50 = call ptr @ovs_flow_tbl_lookup_exact(ptr noundef %table, ptr noundef nonnull %match) #14
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then46
  %flow.0 = phi ptr [ %call48, %if.then46 ], [ %call50, %if.else ]
  %tobool52.not = icmp eq ptr %flow.0, null
  br i1 %tobool52.not, label %if.end51.unlock_crit_edge, label %if.end62, !prof !210

if.end51.unlock_crit_edge:                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end62:                                         ; preds = %if.end51
  %table63 = getelementptr inbounds %struct.datapath, ptr %call19, i32 0, i32 2
  call void @ovs_flow_tbl_remove(ptr noundef %table63, ptr noundef nonnull %flow.0) #14
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  %sf_acts = getelementptr inbounds %struct.sw_flow, ptr %flow.0, i32 0, i32 8
  %30 = ptrtoint ptr %sf_acts to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sf_acts, align 4
  %id = getelementptr inbounds %struct.sw_flow, ptr %flow.0, i32 0, i32 5
  %call64 = call fastcc ptr @ovs_flow_cmd_alloc_info(ptr noundef %31, ptr noundef %id, ptr noundef %info, i1 noundef zeroext false, i32 noundef %call1)
  %tobool65.not = icmp eq ptr %call64, null
  br i1 %tobool65.not, label %if.end62.out_free_crit_edge, label %if.then72, !prof !210

if.end62.out_free_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_free

if.then72:                                        ; preds = %if.end62
  %cmp.i = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else127, label %if.then74

if.then74:                                        ; preds = %if.then72
  %32 = call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.then74.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then74.rcu_read_lock.exit_crit_edge:           ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then74
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then74.rcu_read_lock.exit_crit_edge
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %3, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %38 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %snd_portid, align 4
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %info, align 4
  %call76 = call fastcc i32 @ovs_flow_cmd_fill_info(ptr noundef nonnull %flow.0, i32 noundef %37, ptr noundef nonnull %call64, i32 noundef %39, i32 noundef %41, i32 noundef 0, i8 noundef zeroext 2, i32 noundef %call1)
  %call.i183 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i183, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i186

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i186:                               ; preds = %rcu_read_lock.exit
  %call1.i184 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i184)
  %tobool.not.i185 = icmp eq i32 %call1.i184, 0
  br i1 %tobool.not.i185, label %land.lhs.true.i186.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i188

land.lhs.true.i186.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i188:                              ; preds = %land.lhs.true.i186
  %.b4.i187 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i187, label %land.lhs.true2.i188.rcu_read_unlock.exit_crit_edge, label %if.then.i189

land.lhs.true2.i188.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i189:                                     ; preds = %land.lhs.true2.i188
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i189, %land.lhs.true2.i188.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i186.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %42 = call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i190 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i190 to ptr
  %preempt_count.i.i.i.i191 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i191 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i191, align 4
  %sub.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i191, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp = icmp slt i32 %call76, 0
  br i1 %cmp, label %land.rhs83, label %if.end126

land.rhs83:                                       ; preds = %rcu_read_unlock.exit
  %.b180 = load i1, ptr @ovs_flow_cmd_del.__already_done, align 1
  br i1 %.b180, label %land.rhs83.if.then125_crit_edge, label %if.then94, !prof !209

land.rhs83.if.then125_crit_edge:                  ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then125

if.then94:                                        ; preds = %land.rhs83
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_cmd_del.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1393, i32 noundef 9, ptr noundef null) #14
  br label %if.then125

if.then125:                                       ; preds = %if.then94, %land.rhs83.if.then125_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call64, i32 noundef 0) #14
  br label %out_free

if.end126:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @genl_notify(ptr noundef nonnull @dp_flow_genl_family, ptr noundef nonnull %call64, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %out_free

if.else127:                                       ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %4, align 4
  %skc_net.i192 = getelementptr inbounds %struct.sock_common, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %skc_net.i192 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skc_net.i192, align 4
  %genl_sock = getelementptr inbounds %struct.net, ptr %49, i32 0, i32 21
  %50 = ptrtoint ptr %genl_sock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %genl_sock, align 4
  %52 = ptrtoint ptr %call64 to i32
  %call130 = call i32 @netlink_set_err(ptr noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef %52) #14
  br label %out_free

out_free:                                         ; preds = %if.else127, %if.end126, %if.then125, %if.end62.out_free_crit_edge
  call void @ovs_flow_free(ptr noundef nonnull %flow.0, i1 noundef zeroext true) #14
  br label %cleanup

unlock:                                           ; preds = %if.end51.unlock_crit_edge, %if.then42, %if.end17.unlock_crit_edge
  %err.0 = phi i32 [ %call43, %if.then42 ], [ -19, %if.end17.unlock_crit_edge ], [ -2, %if.end51.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock, %out_free, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ 0, %out_free ], [ %call11, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ufid) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %match) #14
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_flow_cmd_get(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %key = alloca %struct.sw_flow_key, align 8
  %match = alloca %struct.sw_flow_match, align 4
  %ufid = alloca %struct.sw_flow_id, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %2 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %userhdr, align 4
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %key) #14
  %9 = call ptr @memset(ptr %key, i32 255, i32 464)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %match) #14
  %10 = call ptr @memset(ptr %match, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ufid) #14
  %arrayidx = getelementptr ptr, ptr %1, i32 10
  %11 = call ptr @memset(ptr %ufid, i32 255, i32 20)
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @ovs_nla_get_ufid_flags(ptr noundef %13) #14
  %arrayidx2 = getelementptr ptr, ptr %1, i32 8
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %15, null
  %arrayidx3 = getelementptr ptr, ptr %1, i32 9
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %call5 = call zeroext i1 @ovs_nla_get_ufid(ptr noundef nonnull %ufid, ptr noundef %17, i1 noundef zeroext %tobool.not) #14
  %arrayidx7 = getelementptr ptr, ptr %1, i32 1
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @ovs_match_init(ptr noundef nonnull %match, ptr noundef nonnull %key, i1 noundef zeroext true, ptr noundef null) #14
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  %call11 = call i32 @ovs_nla_get_match(ptr noundef %8, ptr noundef nonnull %match, ptr noundef %21, ptr noundef null, i1 noundef zeroext %tobool.not) #14
  br label %if.end23

if.else:                                          ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = or i1 %call5, %tobool.not.not
  %.mux = select i1 %call5, i32 0, i32 -22
  br i1 %brmerge, label %if.else.if.end23_crit_edge, label %land.lhs.true

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true:                                    ; preds = %if.else
  %call15 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #17
  br label %cleanup

if.end23:                                         ; preds = %if.else.if.end23_crit_edge, %if.then
  %err.0 = phi i32 [ %call11, %if.then ], [ %.mux, %if.else.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool24.not = icmp eq i32 %err.0, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %skc_net.i80 = getelementptr inbounds %struct.sock_common, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %skc_net.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skc_net.i80, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  %call28 = call fastcc ptr @get_dp(ptr noundef %25, i32 noundef %27)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.unlock_crit_edge, label %if.end31

if.end26.unlock_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end31:                                         ; preds = %if.end26
  %table = getelementptr inbounds %struct.datapath, ptr %call28, i32 0, i32 2
  br i1 %call5, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %call34 = call ptr @ovs_flow_tbl_lookup_ufid(ptr noundef %table, ptr noundef nonnull %ufid) #14
  br label %if.end38

if.else35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %call37 = call ptr @ovs_flow_tbl_lookup_exact(ptr noundef %table, ptr noundef nonnull %match) #14
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then33
  %flow.0 = phi ptr [ %call34, %if.then33 ], [ %call37, %if.else35 ]
  %tobool39.not = icmp eq ptr %flow.0, null
  br i1 %tobool39.not, label %if.end38.unlock_crit_edge, label %if.end41

if.end38.unlock_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %unlock

if.end41:                                         ; preds = %if.end38
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %call43 = call fastcc ptr @ovs_flow_cmd_build_info(ptr noundef nonnull %flow.0, i32 noundef %29, ptr noundef %info, i8 noundef zeroext 3, i1 noundef zeroext true, i32 noundef %call1)
  %cmp.i = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %call43 to i32
  br label %unlock

if.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %31 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_net.i.i, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %33 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 21
  %35 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %36, ptr noundef %call43, i32 noundef %34, i32 noundef 64) #14
  %37 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #14
  br label %cleanup

unlock:                                           ; preds = %if.then45, %if.end38.unlock_crit_edge, %if.end26.unlock_crit_edge
  %err.1 = phi i32 [ %30, %if.then45 ], [ -19, %if.end26.unlock_crit_edge ], [ -2, %if.end38.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end47, %if.end23.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %unlock ], [ %37, %if.end47 ], [ %err.0, %if.end23.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ufid) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %match) #14
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_flow_cmd_dump(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %a = alloca [12 x ptr], align 4
  %bucket = alloca i32, align 4
  %obj = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %a) #14
  %0 = call ptr @memset(ptr %a, i32 255, i32 48)
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %1 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nlh, align 4
  %add.ptr.i60 = getelementptr i8, ptr %2, i32 20
  %3 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @dp_flow_genl_family, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  %add.i.i.i61 = add i32 %3, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i.i.i61)
  %cmp.i.i = icmp ult i32 %5, %add.i.i.i61
  br i1 %cmp.i.i, label %genlmsg_parse_deprecated.exit.thread, label %genlmsg_parse_deprecated.exit

genlmsg_parse_deprecated.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  br label %cleanup40

genlmsg_parse_deprecated.exit:                    ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %2, i32 16
  %sub.i.i.i = add i32 %3, 7
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %and.i.i.i
  %sub.i.i.i.i = add i32 %5, -16
  %sub1.i.i.i = sub i32 %sub.i.i.i.i, %and.i.i.i
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %a, i32 noundef 11, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @flow_policy, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not, label %if.end, label %genlmsg_parse_deprecated.exit.cleanup40_crit_edge

genlmsg_parse_deprecated.exit.cleanup40_crit_edge: ; preds = %genlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup40

if.end:                                           ; preds = %genlmsg_parse_deprecated.exit
  %arrayidx = getelementptr inbounds [12 x ptr], ptr %a, i32 0, i32 10
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call4 = call i32 @ovs_nla_get_ufid_flags(ptr noundef %7) #14
  %8 = call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !224
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i, align 4
  %17 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i60, align 4
  %call.i62 = call ptr @dev_get_by_index_rcu(ptr noundef %16, i32 noundef %18) #14
  %tobool.not.i63 = icmp eq ptr %call.i62, null
  br i1 %tobool.not.i63, label %rcu_read_lock.exit.if.then8_crit_edge, label %if.then.i65

rcu_read_lock.exit.if.then8_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then.i65:                                      ; preds = %rcu_read_lock.exit
  %call1.i64 = call ptr @ovs_internal_dev_get_vport(ptr noundef nonnull %call.i62) #14
  %tobool2.not.i = icmp eq ptr %call1.i64, null
  br i1 %tobool2.not.i, label %if.then.i65.if.then8_crit_edge, label %get_dp_rcu.exit

if.then.i65.if.then8_crit_edge:                   ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

get_dp_rcu.exit:                                  ; preds = %if.then.i65
  %dp.i = getelementptr inbounds %struct.vport, ptr %call1.i64, i32 0, i32 2
  %19 = ptrtoint ptr %dp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dp.i, align 4
  %tobool7.not = icmp eq ptr %20, null
  br i1 %tobool7.not, label %get_dp_rcu.exit.if.then8_crit_edge, label %if.end9

get_dp_rcu.exit.if.then8_crit_edge:               ; preds = %get_dp_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then8

if.then8:                                         ; preds = %get_dp_rcu.exit.if.then8_crit_edge, %if.then.i65.if.then8_crit_edge, %rcu_read_lock.exit.if.then8_crit_edge
  %call.i66 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i66, label %if.then8.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

if.then8.rcu_read_unlock.exit_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %if.then8
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %if.then8.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %21 = call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i73 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %24, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  br label %cleanup40

if.end9:                                          ; preds = %get_dp_rcu.exit
  %table = getelementptr inbounds %struct.datapath, ptr %20, i32 0, i32 2
  %25 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %table, align 4
  %call12 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %if.end9.do.end21_crit_edge

if.end9.do.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

land.lhs.true:                                    ; preds = %if.end9
  %call14 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b59 = load i1, ptr @ovs_flow_cmd_dump.__warned, align 1
  br i1 %.b59, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_cmd_dump.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1435, ptr noundef nonnull @.str.2) #14
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %if.end9.do.end21_crit_edge
  %27 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %arrayidx24 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bucket) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obj) #14
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %bucket, align 4
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx24, align 4
  %33 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %obj, align 4
  %call2593 = call ptr @ovs_flow_tbl_dump_next(ptr noundef %26, ptr noundef nonnull %bucket, ptr noundef nonnull %obj) #14
  %tobool26.not94 = icmp eq ptr %call2593, null
  br i1 %tobool26.not94, label %do.end21.for.end_crit_edge, label %do.end21.if.end28_crit_edge

do.end21.if.end28_crit_edge:                      ; preds = %do.end21
  br label %if.end28

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end28:                                         ; preds = %cleanup.if.end28_crit_edge, %do.end21.if.end28_crit_edge
  %call2595 = phi ptr [ %call25, %cleanup.if.end28_crit_edge ], [ %call2593, %do.end21.if.end28_crit_edge ]
  %34 = ptrtoint ptr %add.ptr.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i60, align 4
  %36 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 3, i32 12
  %38 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %portid, align 4
  %40 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nlmsg_seq, align 4
  %call33 = call fastcc i32 @ovs_flow_cmd_fill_info(ptr noundef nonnull %call2595, i32 noundef %35, ptr noundef %skb, i32 noundef %39, i32 noundef %43, i32 noundef 2, i8 noundef zeroext 3, i32 noundef %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %if.end28.for.end_crit_edge, label %cleanup

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup:                                          ; preds = %if.end28
  %44 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bucket, align 4
  %46 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %27, align 4
  %47 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %obj, align 4
  %49 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx24, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obj) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bucket) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bucket) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %obj) #14
  %50 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %45, ptr %bucket, align 4
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %obj, align 4
  %call25 = call ptr @ovs_flow_tbl_dump_next(ptr noundef %26, ptr noundef nonnull %bucket, ptr noundef nonnull %obj) #14
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end28_crit_edge

cleanup.if.end28_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end28.for.end_crit_edge, %do.end21.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %obj) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bucket) #14
  %call.i76 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i76, label %for.end.rcu_read_unlock.exit86_crit_edge, label %land.lhs.true.i79

for.end.rcu_read_unlock.exit86_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit86

land.lhs.true.i79:                                ; preds = %for.end
  %call1.i77 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77)
  %tobool.not.i78 = icmp eq i32 %call1.i77, 0
  br i1 %tobool.not.i78, label %land.lhs.true.i79.rcu_read_unlock.exit86_crit_edge, label %land.lhs.true2.i81

land.lhs.true.i79.rcu_read_unlock.exit86_crit_edge: ; preds = %land.lhs.true.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit86

land.lhs.true2.i81:                               ; preds = %land.lhs.true.i79
  %.b4.i80 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i80, label %land.lhs.true2.i81.rcu_read_unlock.exit86_crit_edge, label %if.then.i82

land.lhs.true2.i81.rcu_read_unlock.exit86_crit_edge: ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit86

if.then.i82:                                      ; preds = %land.lhs.true2.i81
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #14
  br label %rcu_read_unlock.exit86

rcu_read_unlock.exit86:                           ; preds = %if.then.i82, %land.lhs.true2.i81.rcu_read_unlock.exit86_crit_edge, %land.lhs.true.i79.rcu_read_unlock.exit86_crit_edge, %for.end.rcu_read_unlock.exit86_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !225
  %52 = call i32 @llvm.read_register.i32(metadata !199) #14
  %and.i.i.i.i.i83 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i83 to ptr
  %preempt_count.i.i.i.i84 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i84, align 4
  %sub.i.i.i85 = add i32 %55, -1
  store volatile i32 %sub.i.i.i85, ptr %preempt_count.i.i.i.i84, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  br label %cleanup40

cleanup40:                                        ; preds = %rcu_read_unlock.exit86, %rcu_read_unlock.exit, %genlmsg_parse_deprecated.exit.cleanup40_crit_edge, %genlmsg_parse_deprecated.exit.thread
  %retval.0 = phi i32 [ %57, %rcu_read_unlock.exit86 ], [ -19, %rcu_read_unlock.exit ], [ %call5.i.i, %genlmsg_parse_deprecated.exit.cleanup40_crit_edge ], [ -22, %genlmsg_parse_deprecated.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %a) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ovs_flow_cmd_set(ptr nocapture noundef readonly %skb, ptr noundef %info) #0 align 64 {
entry:
  %key = alloca %struct.sw_flow_key, align 8
  %acts = alloca ptr, align 4
  %match = alloca %struct.sw_flow_match, align 4
  %sfid = alloca %struct.sw_flow_id, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %5 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %attrs, align 4
  %userhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 4
  %7 = ptrtoint ptr %userhdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %userhdr, align 4
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %key) #14
  %9 = call ptr @memset(ptr %key, i32 255, i32 464)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acts) #14
  %10 = ptrtoint ptr %acts to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %acts, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %match) #14
  %11 = call ptr @memset(ptr %match, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sfid) #14
  %arrayidx = getelementptr ptr, ptr %6, i32 10
  %12 = call ptr @memset(ptr %sfid, i32 255, i32 20)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @ovs_nla_get_ufid_flags(ptr noundef %14) #14
  %arrayidx2 = getelementptr ptr, ptr %6, i32 8
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %16, null
  %arrayidx3 = getelementptr ptr, ptr %6, i32 9
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3, align 4
  %call5 = call zeroext i1 @ovs_nla_get_ufid(ptr noundef nonnull %sfid, ptr noundef %18, i1 noundef zeroext %tobool.not) #14
  %arrayidx7 = getelementptr ptr, ptr %6, i32 1
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp ne ptr %20, null
  %brmerge = select i1 %tobool8.not, i1 true, i1 %call5
  br i1 %brmerge, label %if.end19, label %do.body

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %land.lhs.true11, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true11:                                  ; preds = %do.body
  %call12 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.cleanup_crit_edge, label %do.end

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #17
  br label %cleanup

if.end19:                                         ; preds = %entry
  %call21 = call fastcc i32 @ovs_nla_init_match_and_action(ptr noundef %4, ptr noundef nonnull %match, ptr noundef nonnull %key, ptr noundef %6, ptr noundef nonnull %acts, i1 noundef zeroext %tobool.not)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %21 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %acts, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %if.then26

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  %call27 = call fastcc ptr @ovs_flow_cmd_alloc_info(ptr noundef nonnull %22, ptr noundef nonnull %sfid, ptr noundef %info, i1 noundef zeroext false, i32 noundef %call1)
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %call27 to i32
  br label %err_kfree_acts

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.end24.if.end32_crit_edge
  %reply.0 = phi ptr [ %call27, %if.then26.if.end32_crit_edge ], [ null, %if.end24.if.end32_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @ovs_mutex, i32 noundef 0) #14
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %call33 = call fastcc ptr @get_dp(ptr noundef %4, i32 noundef %25)
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.end32.err_unlock_ovs_crit_edge, label %if.end40, !prof !210

if.end32.err_unlock_ovs_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_ovs

if.end40:                                         ; preds = %if.end32
  %table = getelementptr inbounds %struct.datapath, ptr %call33, i32 0, i32 2
  br i1 %call5, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %call43 = call ptr @ovs_flow_tbl_lookup_ufid(ptr noundef %table, ptr noundef nonnull %sfid) #14
  br label %if.end46

if.else:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = call ptr @ovs_flow_tbl_lookup_exact(ptr noundef %table, ptr noundef nonnull %match) #14
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then42
  %flow.0 = phi ptr [ %call43, %if.then42 ], [ %call45, %if.else ]
  %tobool47.not = icmp eq ptr %flow.0, null
  br i1 %tobool47.not, label %if.end46.err_unlock_ovs_crit_edge, label %if.end57, !prof !210

if.end46.err_unlock_ovs_crit_edge:                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_unlock_ovs

if.end57:                                         ; preds = %if.end46
  br i1 %tobool25.not, label %if.else147, label %do.body66, !prof !210

do.body66:                                        ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %do.body66.do.end77_crit_edge, label %lockdep_ovsl_is_held.exit

do.body66.do.end77_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end77

lockdep_ovsl_is_held.exit:                        ; preds = %do.body66
  %call.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool68.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool68.not, label %land.lhs.true69, label %lockdep_ovsl_is_held.exit.do.end77_crit_edge

lockdep_ovsl_is_held.exit.do.end77_crit_edge:     ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end77

land.lhs.true69:                                  ; preds = %lockdep_ovsl_is_held.exit
  %call70 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true69.do.end77_crit_edge, label %land.lhs.true72

land.lhs.true69.do.end77_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end77

land.lhs.true72:                                  ; preds = %land.lhs.true69
  %.b217 = load i1, ptr @ovs_flow_cmd_set.__warned, align 1
  br i1 %.b217, label %land.lhs.true72.do.end77_crit_edge, label %if.then74

land.lhs.true72.do.end77_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end77

if.then74:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_cmd_set.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1229, ptr noundef nonnull @.str.27) #14
  br label %do.end77

do.end77:                                         ; preds = %if.then74, %land.lhs.true72.do.end77_crit_edge, %land.lhs.true69.do.end77_crit_edge, %lockdep_ovsl_is_held.exit.do.end77_crit_edge, %do.body66.do.end77_crit_edge
  %sf_acts = getelementptr inbounds %struct.sw_flow, ptr %flow.0, i32 0, i32 8
  %27 = ptrtoint ptr %sf_acts to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sf_acts, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !250
  %29 = ptrtoint ptr %sf_acts to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %22, ptr %sf_acts, align 4
  %tobool118.not = icmp eq ptr %reply.0, null
  br i1 %tobool118.not, label %do.end77.if.end154_crit_edge, label %if.then125, !prof !209

do.end77.if.end154_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

if.then125:                                       ; preds = %do.end77
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %8, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %32 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %snd_portid, align 4
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %info, align 4
  %call127 = call fastcc i32 @ovs_flow_cmd_fill_info(ptr noundef nonnull %flow.0, i32 noundef %31, ptr noundef nonnull %reply.0, i32 noundef %33, i32 noundef %35, i32 noundef 0, i8 noundef zeroext 4, i32 noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp129 = icmp slt i32 %call127, 0
  br i1 %cmp129, label %do.body137, label %if.then125.if.end154_crit_edge, !prof !210

if.then125.if.end154_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

do.body137:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/openvswitch/datapath.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1239, 0\0A.popsection", ""() #14, !srcloc !251
  unreachable

if.else147:                                       ; preds = %if.end57
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %8, align 4
  %call149 = call fastcc ptr @ovs_flow_cmd_build_info(ptr noundef nonnull %flow.0, i32 noundef %37, ptr noundef %info, i8 noundef zeroext 4, i1 noundef zeroext false, i32 noundef %call1)
  %cmp.i218 = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %if.then151, label %if.else147.if.end154_crit_edge

if.else147.if.end154_crit_edge:                   ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end154

if.then151:                                       ; preds = %if.else147
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %call149 to i32
  br label %err_unlock_ovs

if.end154:                                        ; preds = %if.else147.if.end154_crit_edge, %if.then125.if.end154_crit_edge, %do.end77.if.end154_crit_edge
  %reply.1 = phi ptr [ %reply.0, %if.then125.if.end154_crit_edge ], [ null, %do.end77.if.end154_crit_edge ], [ %call149, %if.else147.if.end154_crit_edge ]
  %old_acts.0 = phi ptr [ %28, %if.then125.if.end154_crit_edge ], [ %28, %do.end77.if.end154_crit_edge ], [ null, %if.else147.if.end154_crit_edge ]
  %arrayidx155 = getelementptr ptr, ptr %6, i32 6
  %39 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx155, align 4
  %tobool156.not = icmp eq ptr %40, null
  br i1 %tobool156.not, label %if.end154.if.end158_crit_edge, label %if.then157

if.end154.if.end158_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end158

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #16
  call void @ovs_flow_stats_clear(ptr noundef nonnull %flow.0) #14
  br label %if.end158

if.end158:                                        ; preds = %if.then157, %if.end154.if.end158_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  %tobool159.not = icmp eq ptr %reply.1, null
  br i1 %tobool159.not, label %if.end158.if.end161_crit_edge, label %if.then160

if.end158.if.end161_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end161

if.then160:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #16
  call void @genl_notify(ptr noundef nonnull @dp_flow_genl_family, ptr noundef nonnull %reply.1, ptr noundef %info, i32 noundef 0, i32 noundef 3264) #14
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end158.if.end161_crit_edge
  %tobool162.not = icmp eq ptr %old_acts.0, null
  br i1 %tobool162.not, label %if.end161.cleanup_crit_edge, label %if.then163

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then163:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #16
  call void @ovs_nla_free_flow_actions_rcu(ptr noundef nonnull %old_acts.0) #14
  br label %cleanup

err_unlock_ovs:                                   ; preds = %if.then151, %if.end46.err_unlock_ovs_crit_edge, %if.end32.err_unlock_ovs_crit_edge
  %reply.2 = phi ptr [ %call149, %if.then151 ], [ %reply.0, %if.end32.err_unlock_ovs_crit_edge ], [ %reply.0, %if.end46.err_unlock_ovs_crit_edge ]
  %error.0 = phi i32 [ %38, %if.then151 ], [ -19, %if.end32.err_unlock_ovs_crit_edge ], [ -2, %if.end46.err_unlock_ovs_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @ovs_mutex) #14
  call void @kfree_skb_reason(ptr noundef %reply.2, i32 noundef 0) #14
  br label %err_kfree_acts

err_kfree_acts:                                   ; preds = %err_unlock_ovs, %if.then29
  %error.1 = phi i32 [ %23, %if.then29 ], [ %error.0, %err_unlock_ovs ]
  call void @ovs_nla_free_flow_actions(ptr noundef %22) #14
  br label %cleanup

cleanup:                                          ; preds = %err_kfree_acts, %if.then163, %if.end161.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end, %land.lhs.true11.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %land.lhs.true11.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.then163 ], [ 0, %if.end161.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %error.1, %err_kfree_acts ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sfid) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %match) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acts) #14
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %key) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_get_ufid_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_match_init(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_get_match(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_get_identifier(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_mask_key(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovs_flow_cmd_alloc_info(ptr nocapture noundef readonly %acts, ptr noundef readonly %sfid, ptr nocapture noundef readonly %info, i1 noundef zeroext %always, i32 noundef %ufid_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %always, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %nlhdr.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %nlhdr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlhdr.i, align 4
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %nlmsg_flags.i, align 2
  %4 = and i16 %3, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

lor.rhs.i:                                        ; preds = %land.lhs.true
  %5 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @dp_flow_genl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i = icmp eq i8 %5, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %ovs_must_notify.exit

land.rhs.i.i:                                     ; preds = %lor.rhs.i
  %.b1.i.i = load i1, ptr @genl_has_listeners.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.end_crit_edge, label %if.then.i.i, !prof !209

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @genl_has_listeners.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.40, i32 noundef 437, i32 noundef 9, ptr noundef null) #14
  br label %if.end

ovs_must_notify.exit:                             ; preds = %lor.rhs.i
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_net.i.i, align 4
  %8 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @dp_flow_genl_family, i32 0, i32 5), align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 21
  %9 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i = tail call i32 @netlink_has_listeners(ptr noundef %10, i32 noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %phi.cmp.i.not = icmp eq i32 %call.i.i, 0
  br i1 %phi.cmp.i.not, label %ovs_must_notify.exit.cleanup_crit_edge, label %ovs_must_notify.exit.if.end_crit_edge

ovs_must_notify.exit.if.end_crit_edge:            ; preds = %ovs_must_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

ovs_must_notify.exit.cleanup_crit_edge:           ; preds = %ovs_must_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %ovs_must_notify.exit.if.end_crit_edge, %if.then.i.i, %land.rhs.i.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i9 = icmp eq ptr %sfid, null
  br i1 %tobool.not.i9, label %if.end.thread57.i, label %land.lhs.true.i

if.end.thread57.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call258.i = tail call i32 @ovs_key_attr_size() #14
  %11 = add i32 %call258.i, 11
  %len.059.i = and i32 %11, -4
  br label %if.then7.i

land.lhs.true.i:                                  ; preds = %if.end
  %12 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sfid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false.i

if.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i = tail call i32 @ovs_key_attr_size() #14
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end.i, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  %call2.sink.i = phi i32 [ %call2.i, %if.end.i ], [ %13, %land.lhs.true.i.lor.lhs.false.i_crit_edge ]
  %14 = add i32 %call2.sink.i, 11
  %len.0.i = and i32 %14, -4
  %15 = ptrtoint ptr %sfid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sfid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.i.i = icmp ne i32 %16, 0
  %and.i42.i = and i32 %ufid_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42.i)
  %tobool.not.i.i = icmp eq i32 %and.i42.i, 0
  %17 = and i1 %tobool.not.i.i, %tobool.i.i.i
  br i1 %17, label %lor.lhs.false.i.if.then7.i_crit_edge, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

lor.lhs.false.i.if.then7.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then7.i

if.then7.i:                                       ; preds = %lor.lhs.false.i.if.then7.i_crit_edge, %if.end.thread57.i
  %len.056.i = phi i32 [ %len.0.i, %lor.lhs.false.i.if.then7.i_crit_edge ], [ %len.059.i, %if.end.thread57.i ]
  %call8.i = tail call i32 @ovs_key_attr_size() #14
  %sub.i43.i = add i32 %call8.i, 7
  %and.i44.i = and i32 %sub.i43.i, -4
  %add10.i = add i32 %and.i44.i, %len.056.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %lor.lhs.false.i.if.end11.i_crit_edge
  %len.1.i = phi i32 [ %add10.i, %if.then7.i ], [ %len.0.i, %lor.lhs.false.i.if.end11.i_crit_edge ]
  %and.i45.i = and i32 %ufid_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool.not.i46.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool.not.i46.i, label %if.then13.i, label %if.end11.i.if.end17.i_crit_edge

if.end11.i.if.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  %call14.i = tail call i32 @ovs_key_attr_size() #14
  %sub.i47.i = add i32 %call14.i, 7
  %and.i48.i = and i32 %sub.i47.i, -4
  %add16.i = add i32 %and.i48.i, %len.1.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end17.i_crit_edge
  %len.2.i = phi i32 [ %add16.i, %if.then13.i ], [ %len.1.i, %if.end11.i.if.end17.i_crit_edge ]
  %and.i49.i = and i32 %ufid_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49.i)
  %tobool.not.i50.i = icmp eq i32 %and.i49.i, 0
  br i1 %tobool.not.i50.i, label %if.then19.i, label %if.end17.i.ovs_flow_cmd_msg_size.exit_crit_edge

if.end17.i.ovs_flow_cmd_msg_size.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_flow_cmd_msg_size.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %orig_len.i = getelementptr inbounds %struct.sw_flow_actions, ptr %acts, i32 0, i32 1
  %18 = ptrtoint ptr %orig_len.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %orig_len.i, align 4
  %sub.i51.i = add i32 %19, 7
  %and.i52.i = and i32 %sub.i51.i, -4
  %add21.i = add i32 %and.i52.i, %len.2.i
  br label %ovs_flow_cmd_msg_size.exit

ovs_flow_cmd_msg_size.exit:                       ; preds = %if.then19.i, %if.end17.i.ovs_flow_cmd_msg_size.exit_crit_edge
  %len.3.i = phi i32 [ %add21.i, %if.then19.i ], [ %len.2.i, %if.end17.i.ovs_flow_cmd_msg_size.exit_crit_edge ]
  %sub.i.i = add i32 %len.3.i, 47
  %and.i.i = and i32 %sub.i.i, -4
  %sub.i.i.i = add i32 %and.i.i, 19
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool3.not = icmp eq ptr %call.i.i.i, null
  %spec.select = select i1 %tobool3.not, ptr inttoptr (i32 -12 to ptr), ptr %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %ovs_flow_cmd_msg_size.exit, %ovs_must_notify.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %ovs_must_notify.exit.cleanup_crit_edge ], [ %spec.select, %ovs_flow_cmd_msg_size.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_flow_tbl_lookup_ufid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_flow_tbl_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_tbl_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_flow_cmd_fill_info(ptr noundef %flow, i32 noundef %dp_ifindex, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %flags, i8 noundef zeroext %cmd, i32 noundef %ufid_flags) unnamed_addr #0 align 64 {
entry:
  %tmp.i21.i = alloca i8, align 1
  %tmp.i.i = alloca i64, align 8
  %stats.i = alloca %struct.ovs_flow_stats, align 8
  %tcp_flags.i = alloca i16, align 2
  %used.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @dp_flow_genl_family, i32 noundef %flags, i8 noundef zeroext %cmd) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dp_ifindex, ptr %call, align 4
  %call2 = tail call i32 @ovs_nla_put_identifier(ptr noundef %flow, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.if.then.i71_crit_edge

if.end.if.then.i71_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i71

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.i = icmp ne i32 %4, 0
  %and.i = and i32 %ufid_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %5 = and i1 %tobool.not.i, %tobool.i.i
  br i1 %5, label %if.then7, label %if.end5.if.end12_crit_edge

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32 @ovs_nla_put_masked_key(ptr noundef %flow, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %if.then7.if.then.i71_crit_edge

if.then7.if.then.i71_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i71

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end12:                                         ; preds = %if.then7.if.end12_crit_edge, %if.end5.if.end12_crit_edge
  %and.i56 = and i32 %ufid_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i56)
  %tobool.not.i57 = icmp eq i32 %and.i56, 0
  br i1 %tobool.not.i57, label %if.then14, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @ovs_nla_put_mask(ptr noundef %flow, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then14.if.end19_crit_edge, label %if.then14.if.then.i71_crit_edge

if.then14.if.then.i71_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i71

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stats.i) #14
  %6 = call ptr @memset(ptr %stats.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tcp_flags.i) #14
  %7 = ptrtoint ptr %tcp_flags.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %tcp_flags.i, align 2, !annotation !211
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %used.i) #14
  %8 = ptrtoint ptr %used.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %used.i, align 4, !annotation !211
  call void @ovs_flow_stats_get(ptr noundef %flow, ptr noundef nonnull %stats.i, ptr noundef nonnull %used.i, ptr noundef nonnull %tcp_flags.i) #14
  %9 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i58 = icmp eq i32 %10, 0
  br i1 %tobool.not.i58, label %if.end19.if.end.i_crit_edge, label %land.lhs.true.i

if.end19.if.end.i_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end19
  %call.i = call i64 @ovs_flow_used_time(i32 noundef %10) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #14
  %11 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i, ptr %tmp.i.i, align 8
  %call.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i.i, i32 noundef 11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge

land.lhs.true.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_flow_cmd_fill_stats.exit.thread

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end19.if.end.i_crit_edge
  %12 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %stats.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool3.not.i = icmp eq i64 %13, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end8.i_crit_edge, label %land.lhs.true4.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

land.lhs.true4.i:                                 ; preds = %if.end.i
  %call5.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 3, i32 noundef 16, ptr noundef nonnull %stats.i, i32 noundef 11) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.if.end8.i_crit_edge, label %land.lhs.true4.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge

land.lhs.true4.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_flow_cmd_fill_stats.exit.thread

land.lhs.true4.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8.i

if.end8.i:                                        ; preds = %land.lhs.true4.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %14 = ptrtoint ptr %tcp_flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tcp_flags.i, align 2
  %conv.mask.i = and i16 %15, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.mask.i)
  %tobool10.not.i = icmp eq i16 %conv.mask.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end23_crit_edge, label %land.lhs.true11.i

if.end8.i.if.end23_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

land.lhs.true11.i:                                ; preds = %if.end8.i
  %conv.i = trunc i16 %15 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i21.i) #14
  %16 = ptrtoint ptr %tmp.i21.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i, ptr %tmp.i21.i, align 1
  %call.i22.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i21.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i21.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool14.not.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true11.i.if.end23_crit_edge, label %land.lhs.true11.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge

land.lhs.true11.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ovs_flow_cmd_fill_stats.exit.thread

land.lhs.true11.i.if.end23_crit_edge:             ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

ovs_flow_cmd_fill_stats.exit.thread:              ; preds = %land.lhs.true11.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge, %land.lhs.true4.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge, %land.lhs.true.i.ovs_flow_cmd_fill_stats.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcp_flags.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i) #14
  br label %if.then.i71

if.end23:                                         ; preds = %land.lhs.true11.i.if.end23_crit_edge, %if.end8.i.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %used.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tcp_flags.i) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stats.i) #14
  %and.i59 = and i32 %ufid_flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %if.then25, label %if.end23.if.end30_crit_edge

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not42.i = icmp eq ptr %18, null
  %tobool.not.i61 = select i1 %cmp.i.i, i1 true, i1 %tobool.not42.i
  br i1 %tobool.not.i61, label %if.else23.i, label %if.then.i

if.then.i:                                        ; preds = %if.then25
  %sf_acts1.i = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 8
  %19 = ptrtoint ptr %sf_acts1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %sf_acts1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %21 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i.i, label %if.then.i.do.end13.i_crit_edge, label %lockdep_ovsl_is_held.exit.i

if.then.i.do.end13.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

lockdep_ovsl_is_held.exit.i:                      ; preds = %if.then.i
  %call.i.i.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false.i, label %lockdep_ovsl_is_held.exit.i.do.end13.i_crit_edge

lockdep_ovsl_is_held.exit.i.do.end13.i_crit_edge: ; preds = %lockdep_ovsl_is_held.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

lor.lhs.false.i:                                  ; preds = %lockdep_ovsl_is_held.exit.i
  %call5.i62 = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i62)
  %tobool6.not.i63 = icmp eq i32 %call5.i62, 0
  br i1 %tobool6.not.i63, label %land.lhs.true.i64, label %lor.lhs.false.i.do.end13.i_crit_edge

lor.lhs.false.i.do.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

land.lhs.true.i64:                                ; preds = %lor.lhs.false.i
  %call7.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i64.do.end13.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i64.do.end13.i_crit_edge:           ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i64
  %.b38.i = load i1, ptr @ovs_flow_cmd_fill_actions.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true9.i.do.end13.i_crit_edge, label %if.then11.i

land.lhs.true9.i.do.end13.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13.i

if.then11.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_cmd_fill_actions.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 818, ptr noundef nonnull @.str.2) #14
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then11.i, %land.lhs.true9.i.do.end13.i_crit_edge, %land.lhs.true.i64.do.end13.i_crit_edge, %lor.lhs.false.i.do.end13.i_crit_edge, %lockdep_ovsl_is_held.exit.i.do.end13.i_crit_edge, %if.then.i.do.end13.i_crit_edge
  %actions.i = getelementptr inbounds %struct.sw_flow_actions, ptr %20, i32 0, i32 3
  %actions_len.i = getelementptr inbounds %struct.sw_flow_actions, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %actions_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %actions_len.i, align 4
  %call15.i = call i32 @ovs_nla_put_actions(ptr noundef %actions.i, i32 noundef %23, ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i.i, ptr %18, align 2
  br label %if.end30

if.else.i:                                        ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool19.not.i = icmp eq i32 %1, 0
  br i1 %tobool19.not.i, label %if.then.i.i.i, label %if.else.i.if.then.i71_crit_edge

if.else.i.if.then.i71_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i71

if.then.i.i.i:                                    ; preds = %if.else.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %28, %18
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !210

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %29 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #14
  br label %if.end30

if.else23.i:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool24.not.i = icmp eq i32 %1, 0
  br i1 %tobool24.not.i, label %if.else23.i.if.end30_crit_edge, label %if.else23.i.if.then.i71_crit_edge

if.else23.i.if.then.i71_crit_edge:                ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i71

if.else23.i.if.end30_crit_edge:                   ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.end30:                                         ; preds = %if.else23.i.if.end30_crit_edge, %nla_nest_cancel.exit.i, %if.then17.i, %if.end23.if.end30_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %call, i32 -20
  %tail.i.i.i65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i.i65, align 8
  %sub.ptr.lhs.cast.i.i66 = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i67 = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i68 = sub i32 %sub.ptr.lhs.cast.i.i66, %sub.ptr.rhs.cast.i.i67
  %33 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.ptr.sub.i.i68, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i71:                                      ; preds = %if.else23.i.if.then.i71_crit_edge, %if.else.i.if.then.i71_crit_edge, %ovs_flow_cmd_fill_stats.exit.thread, %if.then14.if.then.i71_crit_edge, %if.then7.if.then.i71_crit_edge, %if.end.if.then.i71_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.if.then.i71_crit_edge ], [ %call8, %if.then7.if.then.i71_crit_edge ], [ %call15, %if.then14.if.then.i71_crit_edge ], [ -90, %ovs_flow_cmd_fill_stats.exit.thread ], [ %call15.i, %if.else.i.if.then.i71_crit_edge ], [ -90, %if.else23.i.if.then.i71_crit_edge ]
  %add.ptr1.i70 = getelementptr i8, ptr %call, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i70, null
  br i1 %tobool.not.i.i.i, label %if.then.i71.cleanup_crit_edge, label %if.then.i.i.i74

if.then.i71.cleanup_crit_edge:                    ; preds = %if.then.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i74:                                  ; preds = %if.then.i71
  %data.i.i.i72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i.i72, align 4
  %cmp.i.i.i73 = icmp ugt ptr %35, %add.ptr1.i70
  br i1 %cmp.i.i.i73, label %do.end.i.i.i75, label %if.then.i.i.i74.if.end.i.i.i_crit_edge, !prof !210

if.then.i.i.i74.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i74
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i

do.end.i.i.i75:                                   ; preds = %if.then.i.i.i74
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i75, %if.then.i.i.i74.if.end.i.i.i_crit_edge
  %36 = ptrtoint ptr %data.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i.i.i72, align 4
  %sub.ptr.lhs.cast.i.i.i76 = ptrtoint ptr %add.ptr1.i70 to i32
  %sub.ptr.rhs.cast.i.i.i77 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i.i78 = sub i32 %sub.ptr.lhs.cast.i.i.i76, %sub.ptr.rhs.cast.i.i.i77
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i78) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i71.cleanup_crit_edge, %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -90, %entry.cleanup_crit_edge ], [ %err.0, %if.then.i71.cleanup_crit_edge ], [ %err.0, %if.end.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovs_flow_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_flow_tbl_lookup_exact(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_nla_free_flow_actions_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_nla_free_flow_actions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_put_identifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_put_masked_key(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_nla_put_mask(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_stats_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ovs_flow_used_time(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ovs_nla_get_ufid(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovs_flow_tbl_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_tbl_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_set_err(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ovs_flow_cmd_build_info(ptr noundef %flow, i32 noundef %dp_ifindex, ptr nocapture noundef readonly %info, i8 noundef zeroext %cmd, i1 noundef zeroext %always, i32 noundef %ufid_flags) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lockdep_ovsl_is_held.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

lockdep_ovsl_is_held.exit:                        ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @ovs_mutex, i32 0, i32 5), i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %lockdep_ovsl_is_held.exit.do.end_crit_edge

lockdep_ovsl_is_held.exit.do.end_crit_edge:       ; preds = %lockdep_ovsl_is_held.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %lockdep_ovsl_is_held.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b73 = load i1, ptr @ovs_flow_cmd_build_info.__warned, align 1
  br i1 %.b73, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_cmd_build_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 917, ptr noundef nonnull @.str.27) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lockdep_ovsl_is_held.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %sf_acts = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 8
  %1 = ptrtoint ptr %sf_acts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sf_acts, align 4
  %id = getelementptr inbounds %struct.sw_flow, ptr %flow, i32 0, i32 5
  %call7 = tail call fastcc ptr @ovs_flow_cmd_alloc_info(ptr noundef %2, ptr noundef %id, ptr noundef %info, i1 noundef zeroext %always, i32 noundef %ufid_flags)
  %tobool.not.i75 = icmp eq ptr %call7, null
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i75, %cmp.i
  br i1 %spec.select.i, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %3 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %snd_portid, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info, align 4
  %call11 = tail call fastcc i32 @ovs_flow_cmd_fill_info(ptr noundef %flow, i32 noundef %dp_ifindex, ptr noundef nonnull %call7, i32 noundef %4, i32 noundef %6, i32 noundef 0, i8 noundef zeroext %cmd, i32 noundef %ufid_flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %land.rhs, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs:                                         ; preds = %if.end10
  %.b7172 = load i1, ptr @ovs_flow_cmd_build_info.__already_done, align 1
  br i1 %.b7172, label %land.rhs.if.then55_crit_edge, label %if.then20, !prof !209

land.rhs.if.then55_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then55

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ovs_flow_cmd_build_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 925, i32 noundef 9, ptr noundef null) #14
  br label %if.then55

if.then55:                                        ; preds = %if.then20, %land.rhs.if.then55_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call7, i32 noundef 0) #14
  %7 = inttoptr i32 %call11 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %do.end.cleanup_crit_edge ], [ %7, %if.then55 ], [ %call7, %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ovs_flow_tbl_dump_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ovs_nla_init_match_and_action(ptr noundef %net, ptr noundef %match, ptr noundef %key, ptr nocapture noundef readonly %a, ptr nocapture noundef %acts, i1 noundef zeroext %log) unnamed_addr #12 align 64 {
entry:
  %mask = alloca %struct.sw_flow_mask, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %mask) #14
  %0 = call ptr @memset(ptr %mask, i32 255, i32 480)
  %arrayidx = getelementptr ptr, ptr %a, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @ovs_match_init(ptr noundef %match, ptr noundef %key, i1 noundef zeroext true, ptr noundef nonnull %mask) #14
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %a, i32 7
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %call = call i32 @ovs_nla_get_match(ptr noundef %net, ptr noundef %match, ptr noundef %4, ptr noundef %6, i1 noundef zeroext %log) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.error31_crit_edge

if.then.error31_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %error31

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %arrayidx7 = getelementptr ptr, ptr %a, i32 2
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %if.end6.error31_crit_edge, label %if.then9

if.end6.error31_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %error31

if.then9:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %do.body, label %if.end22

do.body:                                          ; preds = %if.then9
  br i1 %log, label %land.lhs.true, label %do.body.error31_crit_edge

do.body.error31_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %error31

land.lhs.true:                                    ; preds = %do.body
  %call14 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.error31_crit_edge, label %do.end

land.lhs.true.error31_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %error31

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #17
  br label %error31

if.end22:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #16
  %call25 = call fastcc ptr @get_flow_actions(ptr noundef %net, ptr noundef nonnull %8, ptr noundef %key, ptr noundef nonnull %mask, i1 noundef zeroext %log)
  %11 = ptrtoint ptr %acts to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %acts, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call25 to i32
  %spec.select = select i1 %cmp.i, i32 %12, i32 0
  br label %error31

error31:                                          ; preds = %if.end22, %do.end, %land.lhs.true.error31_crit_edge, %do.body.error31_crit_edge, %if.end6.error31_crit_edge, %if.then.error31_crit_edge
  %error.1 = phi i32 [ %call, %if.then.error31_crit_edge ], [ 0, %if.end6.error31_crit_edge ], [ -22, %do.end ], [ -22, %land.lhs.true.error31_crit_edge ], [ -22, %do.body.error31_crit_edge ], [ %spec.select, %if.end22 ]
  %mask32 = getelementptr inbounds %struct.sw_flow_match, ptr %match, i32 0, i32 2
  %13 = ptrtoint ptr %mask32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mask32, align 4
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %mask) #14
  ret i32 %error.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovs_flow_stats_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_flow_actions(ptr noundef %net, ptr noundef %a, ptr noundef %key, ptr noundef %mask, i1 noundef zeroext %log) unnamed_addr #12 align 64 {
entry:
  %acts = alloca ptr, align 4
  %masked_key = alloca %struct.sw_flow_key, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acts) #14
  %0 = ptrtoint ptr %acts to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %acts, align 4, !annotation !211
  call void @llvm.lifetime.start.p0(i64 464, ptr nonnull %masked_key) #14
  %1 = call ptr @memset(ptr %masked_key, i32 255, i32 464)
  call void @ovs_flow_mask_key(ptr noundef nonnull %masked_key, ptr noundef %key, i1 noundef zeroext true, ptr noundef %mask) #14
  %call = call i32 @ovs_nla_copy_actions(ptr noundef %net, ptr noundef %a, ptr noundef nonnull %masked_key, ptr noundef nonnull %acts, i1 noundef zeroext %log) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  br i1 %log, label %land.lhs.true, label %do.body.do.end9_crit_edge

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

land.lhs.true:                                    ; preds = %do.body
  %call3 = call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %do.end

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end9

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #17
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.lhs.true.do.end9_crit_edge, %do.body.do.end9_crit_edge
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %acts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9
  %retval.0 = phi ptr [ %2, %do.end9 ], [ %4, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 464, ptr nonnull %masked_key) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acts) #14
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { cold }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !108, !109, !111, !112, !113, !114, !116, !117, !119, !120, !122, !124, !126, !128, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !162, !163, !165, !167, !169, !170, !171, !172, !174, !176, !178, !180, !182, !183, !184, !185, !187, !189, !190, !191, !192, !194, !195, !196, !197}
!llvm.named.register.sp = !{!199}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/openvswitch/datapath.c", i32 188, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../net/openvswitch/datapath.c", i32 263, i32 12}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/openvswitch/datapath.c", i32 266, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ovs_dp_process_packet.descriptor, !8, !"descriptor", i1 false, i1 false}
!12 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tc_recirc_sharing_support, !14, !"tc_recirc_sharing_support", i1 false, i1 false}
!14 = !{!"../net/openvswitch/datapath.c", i32 1604, i32 1}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/openvswitch/datapath.c", i32 1635, i32 17}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/openvswitch/datapath.c", i32 1647, i32 4}
!19 = !{ptr @ovs_dp_get_upcall_portid._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.ovs_dp_get_upcall_portid, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ovs_dp_get_upcall_portid._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @ovs_dp_get_upcall_portid._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @dp_vport_genl_family, !25, !"dp_vport_genl_family", i1 false, i1 false}
!25 = !{!"../net/openvswitch/datapath.c", i32 2504, i32 20}
!26 = !{ptr @__initcall__kmod_openvswitch__630_2711_dp_init6, !27, !"__initcall__kmod_openvswitch__630_2711_dp_init6", i1 false, i1 false}
!27 = !{!"../net/openvswitch/datapath.c", i32 2711, i32 1}
!28 = !{ptr @__exitcall_dp_cleanup, !29, !"__exitcall_dp_cleanup", i1 false, i1 false}
!29 = !{!"../net/openvswitch/datapath.c", i32 2712, i32 1}
!30 = !{ptr @__UNIQUE_ID_description631, !31, !"__UNIQUE_ID_description631", i1 false, i1 false}
!31 = !{!"../net/openvswitch/datapath.c", i32 2714, i32 1}
!32 = !{ptr @__UNIQUE_ID_file632, !33, !"__UNIQUE_ID_file632", i1 false, i1 false}
!33 = !{!"../net/openvswitch/datapath.c", i32 2715, i32 1}
!34 = !{ptr @__UNIQUE_ID_license633, !33, !"__UNIQUE_ID_license633", i1 false, i1 false}
!35 = !{ptr @__UNIQUE_ID_alias634, !36, !"__UNIQUE_ID_alias634", i1 false, i1 false}
!36 = !{!"../net/openvswitch/datapath.c", i32 2716, i32 1}
!37 = !{ptr @__UNIQUE_ID_alias635, !38, !"__UNIQUE_ID_alias635", i1 false, i1 false}
!38 = !{!"../net/openvswitch/datapath.c", i32 2717, i32 1}
!39 = !{ptr @__UNIQUE_ID_alias636, !40, !"__UNIQUE_ID_alias636", i1 false, i1 false}
!40 = !{!"../net/openvswitch/datapath.c", i32 2718, i32 1}
!41 = !{ptr @__UNIQUE_ID_alias637, !42, !"__UNIQUE_ID_alias637", i1 false, i1 false}
!42 = !{!"../net/openvswitch/datapath.c", i32 2719, i32 1}
!43 = !{ptr @__UNIQUE_ID_alias638, !44, !"__UNIQUE_ID_alias638", i1 false, i1 false}
!44 = !{!"../net/openvswitch/datapath.c", i32 2720, i32 1}
!45 = !{ptr @__UNIQUE_ID_alias639, !46, !"__UNIQUE_ID_alias639", i1 false, i1 false}
!46 = !{!"../net/openvswitch/datapath.c", i32 2721, i32 1}
!47 = !{ptr @ovs_net_id, !48, !"ovs_net_id", i1 false, i1 false}
!48 = !{!"../net/openvswitch/datapath.c", i32 50, i32 14}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/openvswitch/datapath.c", i32 102, i32 8}
!51 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ovs_mutex, !50, !"ovs_mutex", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../net/openvswitch/datapath.h", i32 213, i32 2}
!55 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!58 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../net/openvswitch/openvswitch_trace.h", i32 82, i32 1}
!61 = !{ptr @.str.13, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!65 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!68 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../net/openvswitch/datapath.h", i32 207, i32 2}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!74 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dp_packet_genl_family, !76, !"dp_packet_genl_family", i1 false, i1 false}
!76 = !{!"../net/openvswitch/datapath.c", i32 676, i32 27}
!77 = !{ptr @packet_policy, !78, !"packet_policy", i1 false, i1 false}
!78 = !{!"../net/openvswitch/datapath.c", i32 659, i32 32}
!79 = !{ptr @dp_packet_genl_ops, !80, !"dp_packet_genl_ops", i1 false, i1 false}
!80 = !{!"../net/openvswitch/datapath.c", i32 668, i32 36}
!81 = distinct !{null, !82, !"__warned", i1 false, i1 false}
!82 = !{!"../net/openvswitch/datapath.c", i32 639, i32 12}
!83 = !{ptr @.str.18, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/net/netlink.h", i32 991, i32 3}
!85 = !{ptr @vport_policy, !86, !"vport_policy", i1 false, i1 false}
!86 = !{!"../net/openvswitch/datapath.c", i32 2469, i32 32}
!87 = !{ptr @dp_vport_genl_ops, !88, !"dp_vport_genl_ops", i1 false, i1 false}
!88 = !{!"../net/openvswitch/datapath.c", i32 2480, i32 36}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../net/openvswitch/datapath.h", i32 245, i32 2}
!91 = distinct !{null, !92, !"__warned", i1 false, i1 false}
!92 = !{!"../net/openvswitch/datapath.c", i32 2177, i32 3}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../net/openvswitch/datapath.c", i32 2157, i32 3}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/openvswitch/datapath.c", i32 2428, i32 3}
!97 = !{ptr @ovs_dp_vport_multicast_group, !98, !"ovs_dp_vport_multicast_group", i1 false, i1 false}
!98 = !{!"../net/openvswitch/datapath.c", i32 66, i32 42}
!99 = !{ptr @.str.19, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/openvswitch/datapath.c", i32 2644, i32 2}
!101 = !{ptr @.str.20, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @dp_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @dp_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @ovs_net_ops, !105, !"ovs_net_ops", i1 false, i1 false}
!105 = !{!"../net/openvswitch/datapath.c", i32 2630, i32 33}
!106 = !{ptr @ovs_init_net.__key, !107, !"__key", i1 false, i1 false}
!107 = !{!"../net/openvswitch/datapath.c", i32 2563, i32 2}
!108 = !{ptr @.str.21, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ovs_init_net.__key.22, !110, !"__key", i1 false, i1 false}
!110 = !{!"../net/openvswitch/datapath.c", i32 2564, i32 2}
!111 = !{ptr @.str.23, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ovs_init_net.__key.24, !110, !"__key", i1 false, i1 false}
!113 = !{ptr @.str.25, !110, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!115 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!116 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !118, !"__warned", i1 false, i1 false}
!118 = !{!"../net/openvswitch/datapath.c", i32 1862, i32 35}
!119 = !{ptr @.str.27, !118, !"<string literal>", i1 false, i1 false}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../net/openvswitch/datapath.c", i32 1863, i32 7}
!122 = !{ptr @dp_genl_families, !123, !"dp_genl_families", i1 false, i1 false}
!123 = !{!"../net/openvswitch/datapath.c", i32 2519, i32 35}
!124 = !{ptr @dp_datapath_genl_family, !125, !"dp_datapath_genl_family", i1 false, i1 false}
!125 = !{!"../net/openvswitch/datapath.c", i32 2021, i32 27}
!126 = !{ptr @datapath_policy, !127, !"datapath_policy", i1 false, i1 false}
!127 = !{!"../net/openvswitch/datapath.c", i32 1989, i32 32}
!128 = !{ptr @dp_datapath_genl_ops, !129, !"dp_datapath_genl_ops", i1 false, i1 false}
!129 = !{!"../net/openvswitch/datapath.c", i32 1997, i32 36}
!130 = !{ptr @ovs_dp_stats_init.__key, !131, !"__key", i1 false, i1 false}
!131 = !{!"../net/openvswitch/datapath.c", i32 1709, i32 21}
!132 = !{ptr @.str.30, !131, !"<string literal>", i1 false, i1 false}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../net/openvswitch/datapath.c", i32 1614, i32 8}
!135 = !{ptr @.str.31, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/openvswitch/datapath.c", i32 1600, i32 2}
!137 = !{ptr @ovs_dp_datapath_multicast_group, !138, !"ovs_dp_datapath_multicast_group", i1 false, i1 false}
!138 = !{!"../net/openvswitch/datapath.c", i32 62, i32 42}
!139 = !{ptr @dp_flow_genl_family, !140, !"dp_flow_genl_family", i1 false, i1 false}
!140 = !{!"../net/openvswitch/datapath.c", i32 1493, i32 27}
!141 = !{ptr @flow_policy, !142, !"flow_policy", i1 false, i1 false}
!142 = !{!"../net/openvswitch/datapath.c", i32 1459, i32 32}
!143 = !{ptr @dp_flow_genl_ops, !144, !"dp_flow_genl_ops", i1 false, i1 false}
!144 = !{!"../net/openvswitch/datapath.c", i32 1469, i32 36}
!145 = !{ptr @.str.32, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/openvswitch/datapath.c", i32 950, i32 3}
!147 = !{ptr @.str.33, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @ovs_flow_cmd_new._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @ovs_flow_cmd_new._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.35, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/openvswitch/datapath.c", i32 954, i32 3}
!152 = !{ptr @ovs_flow_cmd_new._entry.34, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ovs_flow_cmd_new._entry_ptr.36, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.38, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/openvswitch/datapath.c", i32 990, i32 3}
!156 = !{ptr @ovs_flow_cmd_new._entry.37, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @ovs_flow_cmd_new._entry_ptr.39, !155, !"_entry_ptr", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../net/openvswitch/datapath.c", i32 1062, i32 14}
!160 = distinct !{null, !161, !"__already_done", i1 false, i1 false}
!161 = !{!"../include/net/genetlink.h", i32 437, i32 6}
!162 = !{ptr @.str.40, !161, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../net/openvswitch/datapath.c", i32 818, i32 13}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../net/openvswitch/datapath.c", i32 1393, i32 8}
!167 = !{ptr @.str.41, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/openvswitch/datapath.c", i32 1296, i32 3}
!169 = !{ptr @.str.42, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ovs_flow_cmd_get._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @ovs_flow_cmd_get._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = distinct !{null, !173, !"__warned", i1 false, i1 false}
!173 = !{!"../net/openvswitch/datapath.c", i32 917, i32 32}
!174 = distinct !{null, !175, !"__already_done", i1 false, i1 false}
!175 = !{!"../net/openvswitch/datapath.c", i32 925, i32 6}
!176 = distinct !{null, !177, !"__warned", i1 false, i1 false}
!177 = !{!"../net/openvswitch/datapath.c", i32 1435, i32 7}
!178 = !{ptr @__nlmsg_parse.__msg, !179, !"__msg", i1 false, i1 false}
!179 = !{!"../include/net/netlink.h", i32 729, i32 3}
!180 = !{ptr @.str.43, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/openvswitch/datapath.c", i32 1191, i32 3}
!182 = !{ptr @.str.44, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @ovs_flow_cmd_set._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @ovs_flow_cmd_set._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = distinct !{null, !186, !"__warned", i1 false, i1 false}
!186 = !{!"../net/openvswitch/datapath.c", i32 1229, i32 14}
!187 = !{ptr @.str.45, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/openvswitch/datapath.c", i32 1152, i32 4}
!189 = !{ptr @.str.46, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @ovs_nla_init_match_and_action._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @ovs_nla_init_match_and_action._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.47, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/openvswitch/datapath.c", i32 1110, i32 3}
!194 = !{ptr @.str.48, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @get_flow_actions._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @get_flow_actions._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @ovs_dp_flow_multicast_group, !198, !"ovs_dp_flow_multicast_group", i1 false, i1 false}
!198 = !{!"../net/openvswitch/datapath.c", i32 58, i32 42}
!199 = !{!"sp"}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{!"branch_weights", i32 1, i32 2000}
!211 = !{!"auto-init"}
!212 = !{i64 2149019439, i64 2149019444, i64 2149019457, i64 2149019501, i64 2149019535, i64 2149019556}
!213 = !{i64 2150038538}
!214 = !{i64 2149930220}
!215 = !{i64 2149935152}
!216 = !{i64 2149956864}
!217 = !{i64 2149961756}
!218 = !{i64 2150038213}
!219 = !{i64 2158436494}
!220 = !{i64 2158436733}
!221 = !{i64 2149430780}
!222 = !{i64 2149431816}
!223 = !{i64 2158606518, i64 2158607010, i64 2158606555, i64 2158606611, i64 2158606645, i64 2158606669, i64 2158606710, i64 2158606731, i64 2158606759, i64 2158606793}
!224 = !{i64 2149422221}
!225 = !{i64 2149422487}
!226 = !{i64 2154629485, i64 2154629973, i64 2154629522, i64 2154629578, i64 2154629612, i64 2154629636, i64 2154629677, i64 2154629698, i64 2154629726, i64 2154629760}
!227 = !{i64 2158494532}
!228 = !{i64 2152015699}
!229 = !{i64 2158654042, i64 2158654534, i64 2158654079, i64 2158654135, i64 2158654169, i64 2158654193, i64 2158654234, i64 2158654255, i64 2158654283, i64 2158654317}
!230 = !{i64 2158657615, i64 2158658107, i64 2158657652, i64 2158657708, i64 2158657742, i64 2158657766, i64 2158657807, i64 2158657828, i64 2158657856, i64 2158657890}
!231 = !{i64 2158659378, i64 2158659870, i64 2158659415, i64 2158659471, i64 2158659505, i64 2158659529, i64 2158659570, i64 2158659591, i64 2158659619, i64 2158659653}
!232 = !{i64 2158655823, i64 2158656315, i64 2158655860, i64 2158655916, i64 2158655950, i64 2158655974, i64 2158656015, i64 2158656036, i64 2158656064, i64 2158656098}
!233 = !{i64 2158587672, i64 2158588164, i64 2158587709, i64 2158587765, i64 2158587799, i64 2158587823, i64 2158587864, i64 2158587885, i64 2158587913, i64 2158587947}
!234 = !{i64 2158594103, i64 2158594595, i64 2158594140, i64 2158594196, i64 2158594230, i64 2158594254, i64 2158594295, i64 2158594316, i64 2158594344, i64 2158594378}
!235 = !{i64 2158597297, i64 2158597789, i64 2158597334, i64 2158597390, i64 2158597424, i64 2158597448, i64 2158597489, i64 2158597510, i64 2158597538, i64 2158597572}
!236 = !{i64 2158595700, i64 2158596192, i64 2158595737, i64 2158595793, i64 2158595827, i64 2158595851, i64 2158595892, i64 2158595913, i64 2158595941, i64 2158595975}
!237 = !{i64 2158572043}
!238 = !{i64 822246, i64 822307}
!239 = !{i64 824978}
!240 = !{i64 825263}
!241 = !{i64 2154959582}
!242 = !{i64 2154959424}
!243 = !{i64 2154959752}
!244 = !{i64 2150037888}
!245 = !{i64 2151935263}
!246 = !{i64 2158521116}
!247 = !{i64 2158524073, i64 2158524565, i64 2158524110, i64 2158524166, i64 2158524200, i64 2158524224, i64 2158524265, i64 2158524286, i64 2158524314, i64 2158524348}
!248 = !{i64 2158531433}
!249 = !{i64 2158534229, i64 2158534721, i64 2158534266, i64 2158534322, i64 2158534356, i64 2158534380, i64 2158534421, i64 2158534442, i64 2158534470, i64 2158534504}
!250 = !{i64 2158552189}
!251 = !{i64 2158554985, i64 2158555477, i64 2158555022, i64 2158555078, i64 2158555112, i64 2158555136, i64 2158555177, i64 2158555198, i64 2158555226, i64 2158555260}
