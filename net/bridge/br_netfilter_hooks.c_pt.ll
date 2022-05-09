; ModuleID = '/llk/IR_all_yes/net/bridge/br_netfilter_hooks.c_pt.bc'
source_filename = "../net/bridge/br_netfilter_hooks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.brnf_frag_data = type { [22 x i8], i8, i8, i16, i16 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.101, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.101 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
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
%struct.nf_br_ops = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.173, %union.anon.174, [48 x i8], %union.anon.175, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.177, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.173 = type { ptr }
%union.anon.174 = type { i64 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, ptr }
%union.anon.177 = type { %struct.anon.178 }
%struct.anon.178 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.179, i32, i32, i32, i16, i16, %union.anon.181, i32, %union.anon.182, %union.anon.183, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.179 = type { i32 }
%union.anon.181 = type { i32 }
%union.anon.182 = type { i32 }
%union.anon.183 = type { i16 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.172, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.172 = type { ptr }
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
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.195, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.195 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.196, %union.anon.197, i16, i16 }
%union.anon.196 = type { %struct.in6_addr }
%union.anon.197 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.nf_bridge_info = type { i16, i16, ptr, ptr, %union.anon.194 }
%union.anon.194 = type { %struct.in6_addr }
%struct.brnf_net = type { i8, ptr, i32, i32, i32, i32, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nf_hook_entries = type { i16, [0 x %struct.nf_hook_entry] }
%struct.nf_hook_entry = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vlan_ethhdr = type { %union.anon.201, i16, i16, i16 }
%union.anon.201 = type { %struct.anon.202 }
%struct.anon.202 = type { [6 x i8], [6 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sock_common = type { %union.anon.142, %union.anon.144, %union.anon.145, i16, i8, i8, i32, %union.anon.147, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.150, [0 x i32], %union.anon.151, i16, i16, %union.anon.152, %struct.refcount_struct, [0 x i32], %union.anon.153 }
%union.anon.142 = type { i64 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.147 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.150 = type { i32 }
%union.anon.151 = type { %struct.hlist_node }
%union.anon.152 = type { i32 }
%union.anon.153 = type { i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.154, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.155, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.156, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.154 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.155 = type { ptr }
%union.anon.156 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.23 }
%union.anon.23 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.100, i32, %struct.list_head, ptr }
%union.anon.100 = type { %struct.in6_addr }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.nf_ipv6_ops = type { ptr, ptr, ptr }

@br_nf_hook_thresh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/bridge/br_netfilter_hooks.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_br_ops = external dso_local global ptr, align 4
@brnf_notifier = internal global %struct.notifier_block { ptr @brnf_device_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@brnf_net_ops = internal global %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @brnf_init_net, ptr null, ptr @brnf_exit_net, ptr null, ptr @brnf_net_id, i32 32 }, section ".data..read_mostly", align 4
@__initcall__kmod_br_netfilter__702_1191_br_netfilter_init6 = internal global ptr @br_netfilter_init, section ".initcall6.init", align 4
@__exitcall_br_netfilter_fini = internal global ptr @br_netfilter_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file703 = internal constant [42 x i8] c"br_netfilter.file=net/bridge/br_netfilter\00", section ".modinfo", align 1
@__UNIQUE_ID_license704 = internal constant [25 x i8] c"br_netfilter.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author705 = internal constant [56 x i8] c"br_netfilter.author=Lennert Buytenhek <buytenh@gnu.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author706 = internal constant [59 x i8] c"br_netfilter.author=Bart De Schuymer <bdschuym@pandora.be>\00", section ".modinfo", align 1
@__UNIQUE_ID_description707 = internal constant [66 x i8] c"br_netfilter.description=Linux ethernet netfilter firewall bridge\00", section ".modinfo", align 1
@__pcpu_unique_brnf_frag_data_storage = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@brnf_frag_data_storage = weak dso_local global %struct.brnf_frag_data zeroinitializer, section ".data..percpu", align 2
@br_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"include/net/netfilter/../../../net/bridge/br_private.h\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@dst_neigh_lookup_skb.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@brnf_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@brnf_device_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@br_nf_ops = internal constant { [6 x %struct.nf_hook_ops], [48 x i8] } { [6 x %struct.nf_hook_ops] [%struct.nf_hook_ops { ptr @br_nf_pre_routing, ptr null, ptr null, i8 7, i8 0, i32 0, i32 0 }, %struct.nf_hook_ops { ptr @br_nf_forward_ip, ptr null, ptr null, i8 7, i8 0, i32 2, i32 -1 }, %struct.nf_hook_ops { ptr @br_nf_forward_arp, ptr null, ptr null, i8 7, i8 0, i32 2, i32 0 }, %struct.nf_hook_ops { ptr @br_nf_post_routing, ptr null, ptr null, i8 7, i8 0, i32 4, i32 2147483647 }, %struct.nf_hook_ops { ptr @ip_sabotage_in, ptr null, ptr null, i8 2, i8 0, i32 0, i32 -2147483648 }, %struct.nf_hook_ops { ptr @ip_sabotage_in, ptr null, ptr null, i8 10, i8 0, i32 0, i32 -2147483648 }], [48 x i8] zeroinitializer }, align 32
@br_nf_pre_routing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@br_nf_pre_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014Module ipv6 is disabled, so call_ip6tables is not supported.\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"br_nf_pre_routing\00", [46 x i8] zeroinitializer }, align 32
@br_nf_pre_routing._entry_ptr = internal global ptr @br_nf_pre_routing._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@nf_hook.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nf_hook.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nf_hook.__already_done.18 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nf_ipv6_ops = external dso_local global ptr, align 4
@nf_get_ipv6_ops.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/linux/netfilter_ipv6.h\00", [33 x i8] zeroinitializer }, align 32
@brnf_table = internal global { [7 x %struct.ctl_table], [36 x i8] } { [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.22, ptr null, i32 4, i16 420, ptr null, ptr @brnf_sysctl_call_tables, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr null, i32 4, i16 420, ptr null, ptr @brnf_sysctl_call_tables, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr null, i32 4, i16 420, ptr null, ptr @brnf_sysctl_call_tables, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.25, ptr null, i32 4, i16 420, ptr null, ptr @brnf_sysctl_call_tables, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr null, i32 4, i16 420, ptr null, ptr @brnf_sysctl_call_tables, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr null, i32 4, i16 420, ptr null, ptr @brnf_sysctl_call_tables, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [36 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"net/bridge\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bridge-nf-call-arptables\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bridge-nf-call-iptables\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bridge-nf-call-ip6tables\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bridge-nf-filter-vlan-tagged\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bridge-nf-filter-pppoe-tagged\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bridge-nf-pass-vlan-input-dev\00", [34 x i8] zeroinitializer }, align 32
@br_ops = internal constant { %struct.nf_br_ops, [28 x i8] } { %struct.nf_br_ops { ptr @br_nf_dev_xmit }, [28 x i8] zeroinitializer }, align 32
@br_netfilter_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 1180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015Bridge firewalling registered\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"br_netfilter_init\00", [46 x i8] zeroinitializer }, align 32
@br_netfilter_init._entry_ptr = internal global ptr @br_netfilter_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 3, i64 7, i64 10]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 33024]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1010, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 416, i32 9 }
@___asan_gen_.48 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1011, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 411, i32 6 }
@___asan_gen_.54 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 45, i32 7 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 973, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"br_nf_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 923, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 500, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 271, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 229, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 232, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant [34 x i8] c"../include/linux/netfilter_ipv6.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 76, i32 9 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"brnf_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1043, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1114, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1045, i32 15 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1051, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1057, i32 15 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1063, i32 15 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1069, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1075, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"br_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 917, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [35 x i8] c"../net/bridge/br_netfilter_hooks.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1180, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author705, ptr @__UNIQUE_ID_author706, ptr @__UNIQUE_ID_description707, ptr @__UNIQUE_ID_file703, ptr @__UNIQUE_ID_license704, ptr @__exitcall_br_netfilter_fini, ptr @__initcall__kmod_br_netfilter__702_1191_br_netfilter_init6, ptr @br_netfilter_fini, ptr @br_netfilter_init._entry, ptr @br_netfilter_init._entry_ptr, ptr @br_nf_pre_routing._entry, ptr @br_nf_pre_routing._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @br_nf_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.19, ptr @.str.20, ptr @brnf_table, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @br_ops, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_nf_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_nf_pre_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brnf_table to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_netfilter_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nf_bridge_encap_header_len(ptr nocapture noundef readonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %1)
  %switch.selectcmp = icmp eq i16 %1, -30620
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %1)
  %switch.selectcmp2 = icmp eq i16 %1, -32512
  %switch.select3 = select i1 %switch.selectcmp2, i32 4, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nf_bridge_update_protocol(ptr nocapture noundef %skb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

entry.nf_bridge_info_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %entry.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %entry.nf_bridge_info_get.exit_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %retval.0.i.i, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %trunc = trunc i16 %bf.lshr to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %nf_bridge_info_get.exit.sw.epilog_crit_edge [
    i8 1, label %nf_bridge_info_get.exit.sw.epilog.sink.split_crit_edge
    i8 2, label %sw.bb1
  ]

nf_bridge_info_get.exit.sw.epilog.sink.split_crit_edge: ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

nf_bridge_info_get.exit.sw.epilog_crit_edge:      ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %nf_bridge_info_get.exit.sw.epilog.sink.split_crit_edge
  %.sink = phi i16 [ -30620, %sw.bb1 ], [ -32512, %nf_bridge_info_get.exit.sw.epilog.sink.split_crit_edge ]
  %protocol2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %protocol2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %nf_bridge_info_get.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_nf_pre_routing_finish_bridge(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 95
  %3 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.br_port_get_rcu.exit.i_crit_edge

entry.br_port_get_rcu.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %entry.br_port_get_rcu.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %bridge_parent.exit.thread, label %bridge_parent.exit

bridge_parent.exit.thread:                        ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %0, align 8
  br label %free_skb

bridge_parent.exit:                               ; preds = %br_port_get_rcu.exit.i
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 8
  %dev1.i = getelementptr inbounds %struct.net_bridge, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %0, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %bridge_parent.exit.free_skb_crit_edge, label %if.end

bridge_parent.exit.free_skb_crit_edge:            ; preds = %bridge_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

if.end:                                           ; preds = %bridge_parent.exit
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i35 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i35, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !114

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 8
  %and25.i = and i32 %15, -2
  %16 = inttoptr i32 %and25.i to ptr
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %neigh_lookup.i, align 8
  %tobool.not.i36 = icmp eq ptr %20, null
  br i1 %tobool.not.i36, label %land.rhs.i37, label %if.end39.i

land.rhs.i37:                                     ; preds = %skb_dst.exit
  %.b48.i = load i1, ptr @dst_neigh_lookup_skb.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i37.free_skb_crit_edge, label %if.then.i, !prof !115

land.rhs.i37.free_skb_crit_edge:                  ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

if.then.i:                                        ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dst_neigh_lookup_skb.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 411, i32 noundef 9, ptr noundef null) #12
  br label %free_skb

if.end39.i:                                       ; preds = %skb_dst.exit
  %call.i38 = tail call ptr %20(ptr noundef %16, ptr noundef %skb, ptr noundef null) #12
  %cmp.i.i = icmp ugt ptr %call.i38, inttoptr (i32 -4096 to ptr)
  %tobool3.not = icmp eq ptr %call.i38, null
  %or.cond = or i1 %cmp.i.i, %tobool3.not
  br i1 %or.cond, label %if.end39.i.free_skb_crit_edge, label %if.then4

if.end39.i.free_skb_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

if.then4:                                         ; preds = %if.end39.i
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %21 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active_extensions.i.i.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.i.not.i.i = icmp eq i8 %23, 0
  br i1 %tobool.i.not.i.i, label %if.then4.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i39

if.then4.nf_bridge_info_get.exit_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit

if.then.i.i39:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %24 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %27 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i39, %if.then4.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i39 ], [ null, %if.then4.nf_bridge_info_get.exit_crit_edge ]
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 12
  %28 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nud_state, align 8
  %30 = and i8 %29, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool6.not = icmp eq i8 %30, 0
  br i1 %tobool6.not, label %nf_bridge_info_get.exit.if.else_crit_edge, label %land.lhs.true

nf_bridge_info_get.exit.if.else_crit_edge:        ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %nf_bridge_info_get.exit
  %hh = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 19
  %31 = ptrtoint ptr %hh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hh, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool7.not = icmp eq i32 %32, 0
  br i1 %tobool7.not, label %land.lhs.true.if.else_crit_edge, label %if.then8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  %hh_lock.i = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 19, i32 1
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %hh_data.i = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 19, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %read_seqbegin.exit.i.do.body.i_crit_edge, %if.then8
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !116
  %and.i.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %34 = tail call ptr @llvm.returnaddress(i32 0) #12
  %35 = ptrtoint ptr %34 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %35) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %35) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = tail call ptr @llvm.returnaddress(i32 0) #12
  %37 = ptrtoint ptr %36 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %37) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %37) #12
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !117
  %and.i.i.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !114

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #12, !srcloc !118
  %39 = ptrtoint ptr %hh_lock.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %hh_lock.i, align 4
  %and18.i.i = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !119
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !120
  %41 = ptrtoint ptr %hh_lock.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %hh_lock.i, align 4
  %and.i.i = and i32 %42, 1
  %tobool.not.i.i40 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i40, label %do.end.i.i.read_seqbegin.exit.i_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i

do.end.i.i.read_seqbegin.exit.i_crit_edge:        ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i

read_seqbegin.exit.i:                             ; preds = %do.end.i.i.read_seqbegin.exit.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %40, %seqcount_lockdep_reader_access.exit.i.i.read_seqbegin.exit.i_crit_edge ], [ %42, %do.end.i.i.read_seqbegin.exit.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 -16
  %45 = ptrtoint ptr %hh_data.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %hh_data.i, align 4
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 8)
  store i64 %46, ptr %add.ptr.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !122
  %48 = ptrtoint ptr %hh_lock.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %hh_lock.i, align 4
  %cmp.i.i.i.not.i = icmp eq i32 %49, %.lcssa.i.i
  br i1 %cmp.i.i.i.not.i, label %neigh_hh_bridge.exit, label %read_seqbegin.exit.i.do.body.i_crit_edge

read_seqbegin.exit.i.do.body.i_crit_edge:         ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

neigh_hh_bridge.exit:                             ; preds = %read_seqbegin.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %physindev = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %physindev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %physindev, align 4
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %0, align 8
  %call11 = tail call i32 @br_handle_frame_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %nf_bridge_info_get.exit.if.else_crit_edge
  %53 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 4
  %data.i42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i42, align 4
  %add.ptr.i43 = getelementptr i8, ptr %55, i32 -8
  %56 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %add.ptr.i43, align 1
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %57, ptr %53, align 1
  %59 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load = load i16, ptr %retval.0.i.i, align 4
  %bf.set = or i16 %bf.load, 32
  store i16 %bf.set, ptr %retval.0.i.i, align 4
  %output = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 20
  %60 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %output, align 4
  %call12 = tail call i32 %61(ptr noundef nonnull %call.i38, ptr noundef %skb) #12
  br label %if.end13

if.end13:                                         ; preds = %if.else, %neigh_hh_bridge.exit
  %ret.0 = phi i32 [ %call11, %neigh_hh_bridge.exit ], [ %call12, %if.else ]
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %call.i38, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %62 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !124
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i44, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !115

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %cleanup

if.then.i44:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @neigh_destroy(ptr noundef %call.i38) #12
  br label %cleanup

free_skb:                                         ; preds = %if.end39.i.free_skb_crit_edge, %if.then.i, %land.rhs.i37.free_skb_crit_edge, %bridge_parent.exit.free_skb_crit_edge, %bridge_parent.exit.thread
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %if.then.i44, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %free_skb ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i44 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_handle_frame_finish(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @setup_pre_routing(ptr noundef %skb, ptr noundef %net) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

entry.nf_bridge_info_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %entry.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %entry.nf_bridge_info_get.exit_crit_edge ]
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 24576
  br i1 %cmp, label %if.then, label %nf_bridge_info_get.exit.if.end_crit_edge

nf_bridge_info_get.exit.if.end_crit_edge:         ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear = and i16 %bf.load, 8191
  %8 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %bf.clear, ptr %pkt_type, align 8
  %9 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load4 = load i16, ptr %retval.0.i.i, align 4
  %bf.set6 = or i16 %bf.load4, 128
  store i16 %bf.set6, ptr %retval.0.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nf_bridge_info_get.exit.if.end_crit_edge
  %10 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load7 = load i16, ptr %retval.0.i.i, align 4
  %bf.set9 = or i16 %bf.load7, 64
  store i16 %bf.set9, ptr %retval.0.i.i, align 4
  %11 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %physindev = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %physindev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %physindev, align 4
  %15 = load ptr, ptr %11, align 8
  %call10 = tail call fastcc ptr @brnf_get_logical_dev(ptr noundef %skb, ptr noundef %15, ptr noundef %net)
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call10, ptr %11, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %17 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol, align 8
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %18, label %if.end.if.end27_crit_edge [
    i16 -32512, label %if.end.if.end27.sink.split_crit_edge
    i16 -30620, label %if.then22
  ]

if.end.if.end27.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.sink.split

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.then22, %if.end.if.end27.sink.split_crit_edge
  %.sink = phi i16 [ 512, %if.then22 ], [ 256, %if.end.if.end27.sink.split_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load23 = load i16, ptr %retval.0.i.i, align 4
  %bf.clear24 = and i16 %bf.load23, 255
  %bf.set25 = or i16 %bf.clear24, %.sink
  store i16 %bf.set25, ptr %retval.0.i.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.end.if.end27_crit_edge
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %22(ptr noundef %skb) #12
  %23 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %destructor.i, align 4
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %24, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end27
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool3.not.i = icmp eq ptr %28, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !115

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #12, !srcloc !126
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %11, align 8
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @brnf_get_logical_dev(ptr nocapture noundef readonly %skb, ptr noundef %dev, ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @brnf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 95
  %1 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.br_port_get_rcu.exit.i_crit_edge

entry.br_port_get_rcu.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %entry.br_port_get_rcu.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge, label %cond.true.i

br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge: ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bridge_parent.exit

cond.true.i:                                      ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %dev1.i = getelementptr inbounds %struct.net_bridge, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1.i, align 4
  br label %bridge_parent.exit

bridge_parent.exit:                               ; preds = %cond.true.i, %br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge
  %cond.i = phi ptr [ %6, %cond.true.i ], [ null, %br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge ]
  %pass_vlan_indev = getelementptr inbounds %struct.brnf_net, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %pass_vlan_indev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pass_vlan_indev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %bridge_parent.exit.cleanup_crit_edge, label %lor.lhs.false

bridge_parent.exit.cleanup_crit_edge:             ; preds = %bridge_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %bridge_parent.exit
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %9 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %10 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_proto, align 8
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %12 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_tci, align 2
  %14 = and i16 %13, 4095
  %call3 = tail call ptr @__vlan_find_dev_deep_rcu(ptr noundef %cond.i, i16 noundef zeroext %11, i16 noundef zeroext %14) #12
  %tobool4.not = icmp eq ptr %call3, null
  %call1.call3 = select i1 %tobool4.not, ptr %cond.i, ptr %call3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %bridge_parent.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.call3, %if.end ], [ %cond.i, %lor.lhs.false.cleanup_crit_edge ], [ %cond.i, %bridge_parent.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_nf_hook_thresh(i32 noundef %hook, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) local_unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4
  %arrayidx = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 %hook
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
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
  %.b45 = load i1, ptr @br_nf_hook_thresh.__warned, align 1
  br i1 %.b45, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_nf_hook_thresh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1010, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %2, null
  br i1 %tobool9.not, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = tail call i32 %okfn(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 4
  %conv.i = zext i16 %4 to i32
  %arrayidx.i = getelementptr %struct.nf_hook_entries, ptr %2, i32 0, i32 1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp47.not = icmp eq i16 %4, 0
  br i1 %cmp47.not, label %if.end12.for.end_crit_edge, label %if.end12.land.rhs_crit_edge

if.end12.land.rhs_crit_edge:                      ; preds = %if.end12
  br label %land.rhs

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %if.end12.land.rhs_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %if.end12.land.rhs_crit_edge ]
  %arrayidx15 = getelementptr ptr, ptr %arrayidx.i, i32 %i.048
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx15, align 4
  %priority = getelementptr inbounds %struct.nf_hook_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp16 = icmp slt i32 %8, 1
  br i1 %cmp16, label %for.inc, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %conv.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end12.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %conv.i, %for.inc.for.end_crit_edge ], [ %i.048, %land.rhs.for.end_crit_edge ]
  %conv.i46 = trunc i32 %hook to i8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i46, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %11 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %13 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %14 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %15 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call18 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %2, i32 noundef %i.0.lcssa) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %if.then21, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %call22 = call i32 %okfn(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %for.end.cleanup_crit_edge, %if.then10
  %retval.0 = phi i32 [ %call11, %if.then10 ], [ %call22, %if.then21 ], [ %call18, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @br_netfilter_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_br_ops to i32))
  store volatile ptr null, ptr @nf_br_ops, align 4
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @brnf_notifier) #12
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @brnf_net_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @br_netfilter_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @brnf_net_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @brnf_notifier) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %do.body7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @brnf_net_ops) #12
  br label %cleanup

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_br_ops to i32))
  store volatile ptr @br_ops, ptr @nf_br_ops, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body7, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %do.body7 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.1) #12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %8 = tail call i32 @llvm.read_register.i32(metadata !104) #12
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
declare dso_local ptr @__vlan_find_dev_deep_rcu(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brnf_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event)
  %cmp.not = icmp eq i32 %event, 5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call2 = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

land.rhs:                                         ; preds = %if.end
  %.b59 = load i1, ptr @brnf_device_event.__already_done, align 1
  br i1 %.b59, label %land.rhs.if.end33_crit_edge, label %if.then11, !prof !115

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @brnf_device_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 973, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 973) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then11, %land.rhs.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %6 = load i32, ptr @brnf_net_id, align 4
  %call42 = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6)
  %7 = ptrtoint ptr %call42 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call42, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool43.not = icmp eq i8 %8, 0
  br i1 %tobool43.not, label %if.end45, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  %call46 = tail call i32 @nf_register_net_hooks(ptr noundef %5, ptr noundef nonnull @br_nf_ops, i32 noundef 6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call42 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %call42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end45.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end49 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end33.cleanup_crit_edge ], [ 32770, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_pre_routing(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %1)
  %switch.selectcmp.i = icmp eq i16 %1, -30620
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %1)
  %switch.selectcmp2.i = icmp eq i16 %1, -32512
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 4, i32 %switch.select.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.select3.i, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %switch.select3.i, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !114

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %switch.select3.i)
  %cmp3.i = icmp ult i32 %3, %switch.select3.i
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !114

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %switch.select3.i, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge, !prof !114

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %in, align 4
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 95
  %8 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.br_port_get_rcu.exit_crit_edge

if.end.br_port_get_rcu.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %if.end.br_port_get_rcu.exit_crit_edge
  %cmp = icmp eq ptr %9, null
  br i1 %cmp, label %br_port_get_rcu.exit.cleanup_crit_edge, label %if.end6

br_port_get_rcu.exit.cleanup_crit_edge:           ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %br_port_get_rcu.exit
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = load i32, ptr @brnf_net_id, align 4
  %call8 = tail call fastcc ptr @net_generic(ptr noundef %13, i32 noundef %14)
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool9.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool9.not, label %land.lhs.true, label %if.end6.lor.lhs.false_crit_edge

if.end6.lor.lhs.false_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end6
  %16 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %17)
  %cmp10 = icmp eq i16 %17, -31011
  br i1 %cmp10, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end6.lor.lhs.false_crit_edge
  %18 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net, align 4
  %20 = load i32, ptr @brnf_net_id, align 4
  %call.i142 = tail call fastcc ptr @net_generic(ptr noundef %19, i32 noundef %20) #12
  %21 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  %22 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %protocol.i, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %lor.lhs.false.vlan_proto.exit.i_crit_edge

lor.lhs.false.vlan_proto.exit.i_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %23)
  %cmp.i.i = icmp eq i16 %23, -32512
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.i.i.lor.lhs.false15_crit_edge

if.else.i.i.lor.lhs.false15_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false15

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %26 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %27 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 %conv.i.i.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %vlan_proto.exit.i

vlan_proto.exit.i:                                ; preds = %if.then3.i.i, %lor.lhs.false.vlan_proto.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %29, %if.then3.i.i ], [ %23, %lor.lhs.false.vlan_proto.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.0.i.i)
  %cmp.i = icmp eq i16 %retval.0.i.i, -31011
  br i1 %cmp.i, label %is_vlan_ipv6.exit, label %vlan_proto.exit.i.lor.lhs.false15_crit_edge

vlan_proto.exit.i.lor.lhs.false15_crit_edge:      ; preds = %vlan_proto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false15

is_vlan_ipv6.exit:                                ; preds = %vlan_proto.exit.i
  %filter_vlan_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i142, i32 0, i32 5
  %30 = ptrtoint ptr %filter_vlan_tagged.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %filter_vlan_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not = icmp eq i32 %31, 0
  br i1 %tobool.i.not, label %is_vlan_ipv6.exit.lor.lhs.false15_crit_edge, label %is_vlan_ipv6.exit.if.then19_crit_edge

is_vlan_ipv6.exit.if.then19_crit_edge:            ; preds = %is_vlan_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

is_vlan_ipv6.exit.lor.lhs.false15_crit_edge:      ; preds = %is_vlan_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %is_vlan_ipv6.exit.lor.lhs.false15_crit_edge, %vlan_proto.exit.i.lor.lhs.false15_crit_edge, %if.else.i.i.lor.lhs.false15_crit_edge
  %32 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net, align 4
  %34 = load i32, ptr @brnf_net_id, align 4
  %call.i143 = tail call fastcc ptr @net_generic(ptr noundef %33, i32 noundef %34) #12
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %36)
  %cmp.i145 = icmp eq i16 %36, -30620
  br i1 %cmp.i145, label %land.lhs.true.i146, label %lor.lhs.false15.if.end51_crit_edge

lor.lhs.false15.if.end51_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

land.lhs.true.i146:                               ; preds = %lor.lhs.false15
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %39 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %40 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %42)
  %cmp4.i = icmp eq i16 %42, 87
  br i1 %cmp4.i, label %is_pppoe_ipv6.exit, label %land.lhs.true.i146.if.end51_crit_edge

land.lhs.true.i146.if.end51_crit_edge:            ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

is_pppoe_ipv6.exit:                               ; preds = %land.lhs.true.i146
  %filter_pppoe_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i143, i32 0, i32 6
  %43 = ptrtoint ptr %filter_pppoe_tagged.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %filter_pppoe_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i147.not = icmp eq i32 %44, 0
  br i1 %tobool.i147.not, label %is_pppoe_ipv6.exit.if.end51_crit_edge, label %is_pppoe_ipv6.exit.if.then19_crit_edge

is_pppoe_ipv6.exit.if.then19_crit_edge:           ; preds = %is_pppoe_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then19

is_pppoe_ipv6.exit.if.end51_crit_edge:            ; preds = %is_pppoe_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then19:                                        ; preds = %is_pppoe_ipv6.exit.if.then19_crit_edge, %is_vlan_ipv6.exit.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  %call_ip6tables = getelementptr inbounds %struct.brnf_net, ptr %call8, i32 0, i32 3
  %45 = ptrtoint ptr %call_ip6tables to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call_ip6tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool20.not = icmp eq i32 %46, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.then19.if.end25_crit_edge

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.then19
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %11, i32 0, i32 4
  %47 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %options.i, align 4
  %49 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool23.not = icmp eq i32 %49, 0
  br i1 %tobool23.not, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %if.then19.if.end25_crit_edge
  %call26 = tail call zeroext i1 @ipv6_mod_enabled() #12
  br i1 %call26, label %if.end49, label %land.end

land.end:                                         ; preds = %if.end25
  %.b141 = load i1, ptr @br_nf_pre_routing.__already_done, align 1
  br i1 %.b141, label %land.end.cleanup_crit_edge, label %if.then39, !prof !115

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then39:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_nf_pre_routing.__already_done, align 1
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end49:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %51)
  %switch.selectcmp.i.i = icmp eq i16 %51, -30620
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %51)
  %switch.selectcmp2.i.i = icmp eq i16 %51, -32512
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 4, i32 %switch.select.i.i
  %call1.i = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %switch.select3.i.i) #12
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %52 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i, align 4
  %54 = trunc i32 %switch.select3.i.i to i16
  %conv2.i = add i16 %53, %54
  store i16 %conv2.i, ptr %network_header.i, align 4
  %call50 = tail call i32 @br_nf_pre_routing_ipv6(ptr noundef %priv, ptr noundef %skb, ptr noundef %state) #12
  br label %cleanup

if.end51:                                         ; preds = %is_pppoe_ipv6.exit.if.end51_crit_edge, %land.lhs.true.i146.if.end51_crit_edge, %lor.lhs.false15.if.end51_crit_edge
  %call_iptables = getelementptr inbounds %struct.brnf_net, ptr %call8, i32 0, i32 2
  %55 = ptrtoint ptr %call_iptables to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call_iptables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool52.not = icmp eq i32 %56, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.end51.if.end57_crit_edge

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true53:                                  ; preds = %if.end51
  %options.i149 = getelementptr inbounds %struct.net_bridge, ptr %11, i32 0, i32 4
  %57 = ptrtoint ptr %options.i149 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %options.i149, align 4
  %59 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool55.not = icmp eq i32 %59, 0
  br i1 %tobool55.not, label %land.lhs.true53.cleanup_crit_edge, label %land.lhs.true53.if.end57_crit_edge

land.lhs.true53.if.end57_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end57:                                         ; preds = %land.lhs.true53.if.end57_crit_edge, %if.end51.if.end57_crit_edge
  %60 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %bf.load59 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load59)
  %tobool62.not = icmp sgt i32 %bf.load59, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %36)
  %cmp66 = icmp eq i16 %36, 2048
  %or.cond = select i1 %tobool62.not, i1 %cmp66, i1 false
  br i1 %or.cond, label %if.end57.if.end75_crit_edge, label %land.lhs.true68

if.end57.if.end75_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

land.lhs.true68:                                  ; preds = %if.end57
  %61 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %net, align 4
  %63 = load i32, ptr @brnf_net_id, align 4
  %call.i152 = tail call fastcc ptr @net_generic(ptr noundef %62, i32 noundef %63) #12
  %64 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %bf.load.i.i154 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i154)
  %tobool.not.i.i155 = icmp sgt i32 %bf.load.i.i154, -1
  %65 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %protocol.i, align 8
  br i1 %tobool.not.i.i155, label %if.else.i.i158, label %land.lhs.true68.vlan_proto.exit.i167_crit_edge

land.lhs.true68.vlan_proto.exit.i167_crit_edge:   ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i167

if.else.i.i158:                                   ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %66)
  %cmp.i.i157 = icmp eq i16 %66, -32512
  br i1 %cmp.i.i157, label %if.then3.i.i164, label %if.else.i.i158.land.lhs.true71_crit_edge

if.else.i.i158.land.lhs.true71_crit_edge:         ; preds = %if.else.i.i158
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71

if.then3.i.i164:                                  ; preds = %if.else.i.i158
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i.i159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %67 = ptrtoint ptr %head.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i.i.i.i159, align 8
  %mac_header.i.i.i.i160 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %69 = ptrtoint ptr %mac_header.i.i.i.i160 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %mac_header.i.i.i.i160, align 2
  %conv.i.i.i.i161 = zext i16 %70 to i32
  %add.ptr.i.i.i.i162 = getelementptr i8, ptr %68, i32 %conv.i.i.i.i161
  %h_vlan_encapsulated_proto.i.i163 = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i162, i32 0, i32 3
  %71 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i163 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %h_vlan_encapsulated_proto.i.i163, align 2
  br label %vlan_proto.exit.i167

vlan_proto.exit.i167:                             ; preds = %if.then3.i.i164, %land.lhs.true68.vlan_proto.exit.i167_crit_edge
  %retval.0.i.i165 = phi i16 [ %72, %if.then3.i.i164 ], [ %66, %land.lhs.true68.vlan_proto.exit.i167_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.0.i.i165)
  %cmp.i166 = icmp eq i16 %retval.0.i.i165, 2048
  br i1 %cmp.i166, label %is_vlan_ip.exit, label %vlan_proto.exit.i167.land.lhs.true71_crit_edge

vlan_proto.exit.i167.land.lhs.true71_crit_edge:   ; preds = %vlan_proto.exit.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71

is_vlan_ip.exit:                                  ; preds = %vlan_proto.exit.i167
  %filter_vlan_tagged.i168 = getelementptr inbounds %struct.brnf_net, ptr %call.i152, i32 0, i32 5
  %73 = ptrtoint ptr %filter_vlan_tagged.i168 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %filter_vlan_tagged.i168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i169.not = icmp eq i32 %74, 0
  br i1 %tobool.i169.not, label %is_vlan_ip.exit.land.lhs.true71_crit_edge, label %is_vlan_ip.exit.if.end75_crit_edge

is_vlan_ip.exit.if.end75_crit_edge:               ; preds = %is_vlan_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

is_vlan_ip.exit.land.lhs.true71_crit_edge:        ; preds = %is_vlan_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true71

land.lhs.true71:                                  ; preds = %is_vlan_ip.exit.land.lhs.true71_crit_edge, %vlan_proto.exit.i167.land.lhs.true71_crit_edge, %if.else.i.i158.land.lhs.true71_crit_edge
  %75 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net, align 4
  %77 = load i32, ptr @brnf_net_id, align 4
  %call.i171 = tail call fastcc ptr @net_generic(ptr noundef %76, i32 noundef %77) #12
  %78 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %79)
  %cmp.i173 = icmp eq i16 %79, -30620
  br i1 %cmp.i173, label %land.lhs.true.i180, label %land.lhs.true71.cleanup_crit_edge

land.lhs.true71.cleanup_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.i180:                               ; preds = %land.lhs.true71
  %head.i.i.i174 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %80 = ptrtoint ptr %head.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %head.i.i.i174, align 8
  %mac_header.i.i.i175 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %82 = ptrtoint ptr %mac_header.i.i.i175 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %mac_header.i.i.i175, align 2
  %conv.i.i.i176 = zext i16 %83 to i32
  %add.ptr.i.i.i177 = getelementptr i8, ptr %81, i32 %conv.i.i.i176
  %add.ptr1.i.i178 = getelementptr i8, ptr %add.ptr.i.i.i177, i32 20
  %84 = ptrtoint ptr %add.ptr1.i.i178 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr1.i.i178, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %85)
  %cmp4.i179 = icmp eq i16 %85, 33
  br i1 %cmp4.i179, label %is_pppoe_ip.exit, label %land.lhs.true.i180.cleanup_crit_edge

land.lhs.true.i180.cleanup_crit_edge:             ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_pppoe_ip.exit:                                 ; preds = %land.lhs.true.i180
  %filter_pppoe_tagged.i181 = getelementptr inbounds %struct.brnf_net, ptr %call.i171, i32 0, i32 6
  %86 = ptrtoint ptr %filter_pppoe_tagged.i181 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %filter_pppoe_tagged.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.i182.not = icmp eq i32 %87, 0
  br i1 %tobool.i182.not, label %is_pppoe_ip.exit.cleanup_crit_edge, label %is_pppoe_ip.exit.if.end75_crit_edge

is_pppoe_ip.exit.if.end75_crit_edge:              ; preds = %is_pppoe_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

is_pppoe_ip.exit.cleanup_crit_edge:               ; preds = %is_pppoe_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end75:                                         ; preds = %is_pppoe_ip.exit.if.end75_crit_edge, %is_vlan_ip.exit.if.end75_crit_edge, %if.end57.if.end75_crit_edge
  %88 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %89)
  %switch.selectcmp.i.i185 = icmp eq i16 %89, -30620
  %switch.select.i.i186 = select i1 %switch.selectcmp.i.i185, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %89)
  %switch.selectcmp2.i.i187 = icmp eq i16 %89, -32512
  %switch.select3.i.i188 = select i1 %switch.selectcmp2.i.i187, i32 4, i32 %switch.select.i.i186
  %call1.i189 = tail call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %switch.select3.i.i188) #12
  %network_header.i190 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %90 = ptrtoint ptr %network_header.i190 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %network_header.i190, align 4
  %92 = trunc i32 %switch.select3.i.i188 to i16
  %conv2.i191 = add i16 %91, %92
  store i16 %conv2.i191, ptr %network_header.i190, align 4
  %93 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net, align 4
  %call77 = tail call fastcc i32 @br_validate_ipv4(ptr noundef %94, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %call.i192 = tail call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 0) #12
  %tobool.not.i193 = icmp eq ptr %call.i192, null
  br i1 %tobool.not.i193, label %if.end80.cleanup_crit_edge, label %if.end84

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %95 = call ptr @memset(ptr %call.i192, i32 0, i32 28)
  %96 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %net, align 4
  %call86 = tail call ptr @setup_pre_routing(ptr noundef %skb, ptr noundef %97)
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end84.cleanup_crit_edge, label %if.end89

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end89:                                         ; preds = %if.end84
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %98 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %active_extensions.i.i.i, align 1
  %100 = and i8 %99, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.i.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool.i.not.i.i, label %if.end89.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

if.end89.nf_bridge_info_get.exit_crit_edge:       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %101 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %104 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %102, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %if.end89.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i196 = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %if.end89.nf_bridge_info_get.exit_crit_edge ]
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %105 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %head.i.i, align 8
  %107 = ptrtoint ptr %network_header.i190 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %network_header.i190, align 4
  %conv.i.i197 = zext i16 %108 to i32
  %add.ptr.i.i198 = getelementptr i8, ptr %106, i32 %conv.i.i197
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i198, i32 0, i32 9
  %109 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %daddr, align 4
  %111 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i196, i32 0, i32 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %110, ptr %111, align 4
  %113 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 2048, ptr %protocol.i, align 8
  %114 = load i16, ptr %network_header.i190, align 4
  %115 = load ptr, ptr %head.i.i, align 8
  %conv.i.i201 = zext i16 %114 to i32
  %add.ptr.i.i202 = getelementptr i8, ptr %115, i32 %conv.i.i201
  %116 = ptrtoint ptr %add.ptr.i.i202 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load95 = load i8, ptr %add.ptr.i.i202, align 4
  %bf.clear = shl i8 %bf.load95, 2
  %117 = and i8 %bf.clear, 60
  %mul = zext i8 %117 to i16
  %add = add i16 %114, %mul
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %118 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %add, ptr %transport_header, align 2
  %119 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %121 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sk, align 4
  %123 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %call.i203 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 2, i32 noundef 0, ptr noundef %120, ptr noundef %122, ptr noundef %skb, ptr noundef %125, ptr noundef null, ptr noundef nonnull @br_nf_pre_routing_finish) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i203)
  %cmp.i204 = icmp eq i32 %call.i203, 1
  br i1 %cmp.i204, label %if.then.i206, label %nf_bridge_info_get.exit.cleanup_crit_edge

nf_bridge_info_get.exit.cleanup_crit_edge:        ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i206:                                     ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i205 = tail call i32 @br_nf_pre_routing_finish(ptr noundef %120, ptr noundef %122, ptr noundef %skb) #12, !callees !130
  br label %cleanup

cleanup:                                          ; preds = %if.then.i206, %nf_bridge_info_get.exit.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %is_pppoe_ip.exit.cleanup_crit_edge, %land.lhs.true.i180.cleanup_crit_edge, %land.lhs.true71.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %if.end49, %if.then39, %land.end.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %br_port_get_rcu.exit.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end49 ], [ 0, %pskb_may_pull.exit.cleanup_crit_edge ], [ 0, %br_port_get_rcu.exit.cleanup_crit_edge ], [ 1, %land.lhs.true21.cleanup_crit_edge ], [ 0, %if.then39 ], [ 0, %land.end.cleanup_crit_edge ], [ 1, %land.lhs.true53.cleanup_crit_edge ], [ 1, %is_pppoe_ip.exit.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ], [ 0, %if.end84.cleanup_crit_edge ], [ 2, %nf_bridge_info_get.exit.cleanup_crit_edge ], [ 2, %if.then.i206 ], [ 0, %if.end.i.cleanup_crit_edge ], [ 1, %land.lhs.true.i180.cleanup_crit_edge ], [ 1, %land.lhs.true71.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_forward_ip(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.cleanup_crit_edge, label %nf_bridge_info_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_bridge_info_get.exit:                          ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_bridge_info_get.exit.cleanup_crit_edge, label %if.end

nf_bridge_info_get.exit.cleanup_crit_edge:        ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nf_bridge_info_get.exit
  %call.i = tail call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 0) #12
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active_extensions.i.i.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i.i137 = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i.i137, label %if.end4.cleanup_crit_edge, label %nf_bridge_info_get.exit145

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_bridge_info_get.exit145:                       ; preds = %if.end4
  %10 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i139 = getelementptr inbounds %struct.skb_ext, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i.i139 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offset.i.i139, align 1
  %conv.i.i140 = zext i8 %13 to i32
  %shl.i.i141 = shl nuw nsw i32 %conv.i.i140, 3
  %add.ptr.i.i142 = getelementptr i8, ptr %11, i32 %shl.i.i141
  %tobool6.not = icmp eq ptr %add.ptr.i.i142, null
  br i1 %tobool6.not, label %nf_bridge_info_get.exit145.cleanup_crit_edge, label %if.end8

nf_bridge_info_get.exit145.cleanup_crit_edge:     ; preds = %nf_bridge_info_get.exit145
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %nf_bridge_info_get.exit145
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %14 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %out, align 4
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 95
  %16 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end8.br_port_get_rcu.exit.i_crit_edge

if.end8.br_port_get_rcu.exit.i_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %if.end8
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i146

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

if.then.i.i146:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i146, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %if.end8.br_port_get_rcu.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %br_port_get_rcu.exit.i.cleanup_crit_edge, label %bridge_parent.exit

br_port_get_rcu.exit.i.cleanup_crit_edge:         ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

bridge_parent.exit:                               ; preds = %br_port_get_rcu.exit.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %dev1.i = getelementptr inbounds %struct.net_bridge, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 4
  %tobool10.not = icmp eq ptr %21, null
  br i1 %tobool10.not, label %bridge_parent.exit.cleanup_crit_edge, label %if.end12

bridge_parent.exit.cleanup_crit_edge:             ; preds = %bridge_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %bridge_parent.exit
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %22 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool13.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool13.not, label %land.lhs.true, label %if.end12.lor.lhs.false_crit_edge

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %24)
  %cmp = icmp eq i16 %24, 2048
  br i1 %cmp, label %land.lhs.true.if.end43_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end12.lor.lhs.false_crit_edge
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %25 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net, align 4
  %27 = load i32, ptr @brnf_net_id, align 4
  %call.i147 = tail call fastcc ptr @net_generic(ptr noundef %26, i32 noundef %27) #12
  %28 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i148 = icmp sgt i32 %bf.load.i.i, -1
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %protocol1.i.i, align 8
  br i1 %tobool.not.i.i148, label %if.else.i.i, label %lor.lhs.false.vlan_proto.exit.i_crit_edge

lor.lhs.false.vlan_proto.exit.i_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %30)
  %cmp.i.i = icmp eq i16 %30, -32512
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.i.i.lor.lhs.false17_crit_edge

if.else.i.i.lor.lhs.false17_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %33 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %34 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 %conv.i.i.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %vlan_proto.exit.i

vlan_proto.exit.i:                                ; preds = %if.then3.i.i, %lor.lhs.false.vlan_proto.exit.i_crit_edge
  %retval.0.i.i149 = phi i16 [ %36, %if.then3.i.i ], [ %30, %lor.lhs.false.vlan_proto.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.0.i.i149)
  %cmp.i = icmp eq i16 %retval.0.i.i149, 2048
  br i1 %cmp.i, label %is_vlan_ip.exit, label %vlan_proto.exit.i.lor.lhs.false17_crit_edge

vlan_proto.exit.i.lor.lhs.false17_crit_edge:      ; preds = %vlan_proto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

is_vlan_ip.exit:                                  ; preds = %vlan_proto.exit.i
  %filter_vlan_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i147, i32 0, i32 5
  %37 = ptrtoint ptr %filter_vlan_tagged.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %filter_vlan_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not = icmp eq i32 %38, 0
  br i1 %tobool.i.not, label %is_vlan_ip.exit.lor.lhs.false17_crit_edge, label %is_vlan_ip.exit.if.end43_crit_edge

is_vlan_ip.exit.if.end43_crit_edge:               ; preds = %is_vlan_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

is_vlan_ip.exit.lor.lhs.false17_crit_edge:        ; preds = %is_vlan_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %is_vlan_ip.exit.lor.lhs.false17_crit_edge, %vlan_proto.exit.i.lor.lhs.false17_crit_edge, %if.else.i.i.lor.lhs.false17_crit_edge
  %39 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net, align 4
  %41 = load i32, ptr @brnf_net_id, align 4
  %call.i150 = tail call fastcc ptr @net_generic(ptr noundef %40, i32 noundef %41) #12
  %42 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %protocol1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %43)
  %cmp.i151 = icmp eq i16 %43, -30620
  br i1 %cmp.i151, label %land.lhs.true.i, label %if.else

land.lhs.true.i:                                  ; preds = %lor.lhs.false17
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %44 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %46 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %47 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %45, i32 %conv.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  %48 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %49)
  %cmp4.i = icmp eq i16 %49, 33
  br i1 %cmp4.i, label %is_pppoe_ip.exit, label %land.lhs.true.i.lor.lhs.false32_crit_edge

land.lhs.true.i.lor.lhs.false32_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false32

is_pppoe_ip.exit:                                 ; preds = %land.lhs.true.i
  %filter_pppoe_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i150, i32 0, i32 6
  %50 = ptrtoint ptr %filter_pppoe_tagged.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %filter_pppoe_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.i152.not = icmp eq i32 %51, 0
  br i1 %tobool.i152.not, label %is_pppoe_ip.exit.lor.lhs.false32_crit_edge, label %is_pppoe_ip.exit.if.end43_crit_edge

is_pppoe_ip.exit.if.end43_crit_edge:              ; preds = %is_pppoe_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

is_pppoe_ip.exit.lor.lhs.false32_crit_edge:       ; preds = %is_pppoe_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false32

if.else:                                          ; preds = %lor.lhs.false17
  %52 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %bf.load23 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load23)
  %tobool26.not = icmp sgt i32 %bf.load23, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %43)
  %cmp30 = icmp eq i16 %43, -31011
  %or.cond = select i1 %tobool26.not, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.else.if.end43_crit_edge, label %if.else.lor.lhs.false32_crit_edge

if.else.lor.lhs.false32_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false32

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false32:                                  ; preds = %if.else.lor.lhs.false32_crit_edge, %is_pppoe_ip.exit.lor.lhs.false32_crit_edge, %land.lhs.true.i.lor.lhs.false32_crit_edge
  %53 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %net, align 4
  %call34 = tail call fastcc zeroext i1 @is_vlan_ipv6(ptr noundef %skb, ptr noundef %54)
  br i1 %call34, label %lor.lhs.false32.if.end43_crit_edge, label %lor.lhs.false36

lor.lhs.false32.if.end43_crit_edge:               ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %55 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %net, align 4
  %call38 = tail call fastcc zeroext i1 @is_pppoe_ipv6(ptr noundef %skb, ptr noundef %56)
  br i1 %call38, label %lor.lhs.false36.if.end43_crit_edge, label %lor.lhs.false36.cleanup_crit_edge

lor.lhs.false36.cleanup_crit_edge:                ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false36.if.end43_crit_edge:               ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.end43:                                         ; preds = %lor.lhs.false36.if.end43_crit_edge, %lor.lhs.false32.if.end43_crit_edge, %if.else.if.end43_crit_edge, %is_pppoe_ip.exit.if.end43_crit_edge, %is_vlan_ip.exit.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge
  %cmp58 = phi i1 [ true, %is_pppoe_ip.exit.if.end43_crit_edge ], [ true, %is_vlan_ip.exit.if.end43_crit_edge ], [ true, %land.lhs.true.if.end43_crit_edge ], [ false, %lor.lhs.false36.if.end43_crit_edge ], [ false, %lor.lhs.false32.if.end43_crit_edge ], [ false, %if.else.if.end43_crit_edge ]
  %cmp69 = phi i1 [ false, %is_pppoe_ip.exit.if.end43_crit_edge ], [ false, %is_vlan_ip.exit.if.end43_crit_edge ], [ false, %land.lhs.true.if.end43_crit_edge ], [ true, %lor.lhs.false36.if.end43_crit_edge ], [ true, %lor.lhs.false32.if.end43_crit_edge ], [ true, %if.else.if.end43_crit_edge ]
  %pf.0 = phi i8 [ 2, %is_pppoe_ip.exit.if.end43_crit_edge ], [ 2, %is_vlan_ip.exit.if.end43_crit_edge ], [ 2, %land.lhs.true.if.end43_crit_edge ], [ 10, %lor.lhs.false36.if.end43_crit_edge ], [ 10, %lor.lhs.false32.if.end43_crit_edge ], [ 10, %if.else.if.end43_crit_edge ]
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %57 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %58)
  %switch.selectcmp.i.i = icmp eq i16 %58, -30620
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %58)
  %switch.selectcmp2.i.i = icmp eq i16 %58, -32512
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 4, i32 %switch.select.i.i
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %switch.select3.i.i) #12
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %59 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %network_header.i, align 4
  %61 = trunc i32 %switch.select3.i.i to i16
  %conv2.i = add i16 %60, %61
  store i16 %conv2.i, ptr %network_header.i, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %62 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load44 = load i16, ptr %pkt_type, align 8
  %bf.lshr45.mask = and i16 %bf.load44, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr45.mask)
  %cmp48 = icmp eq i16 %bf.lshr45.mask, 24576
  br i1 %cmp48, label %if.then50, label %if.end43.if.end56_crit_edge

if.end43.if.end56_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear = and i16 %bf.load44, 8191
  %63 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %bf.clear, ptr %pkt_type, align 8
  %64 = ptrtoint ptr %add.ptr.i.i142 to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load53 = load i16, ptr %add.ptr.i.i142, align 4
  %bf.set55 = or i16 %bf.load53, 128
  store i16 %bf.set55, ptr %add.ptr.i.i142, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.end43.if.end56_crit_edge
  br i1 %cmp58, label %if.then60, label %if.end56.if.end67_crit_edge

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then60:                                        ; preds = %if.end56
  %net61 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %65 = ptrtoint ptr %net61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net61, align 4
  %call62 = tail call fastcc i32 @br_validate_ipv4(ptr noundef %66, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.then60.cleanup_crit_edge

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %frag_max_size = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i142, i32 0, i32 1
  %67 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %frag_max_size, align 2
  %frag_max_size66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %69 = ptrtoint ptr %frag_max_size66 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %frag_max_size66, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.end65, %if.end56.if.end67_crit_edge
  br i1 %cmp69, label %if.then71, label %if.end67.if.end81_crit_edge

if.end67.if.end81_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then71:                                        ; preds = %if.end67
  %net72 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %70 = ptrtoint ptr %net72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %net72, align 4
  %call73 = tail call i32 @br_validate_ipv6(ptr noundef %71, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then71.cleanup_crit_edge

if.then71.cleanup_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end76:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  %frag_max_size77 = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i142, i32 0, i32 1
  %72 = ptrtoint ptr %frag_max_size77 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %frag_max_size77, align 2
  %frag_max_size80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %74 = ptrtoint ptr %frag_max_size80 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %frag_max_size80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.end76, %if.end67.if.end81_crit_edge
  %75 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %physoutdev = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i142, i32 0, i32 3
  %78 = ptrtoint ptr %physoutdev to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %physoutdev, align 4
  %. = select i1 %cmp58, i16 2048, i16 -31011
  %79 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %., ptr %protocol.i.i, align 8
  %net90 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %80 = ptrtoint ptr %net90 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %net90, align 4
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %82 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %in, align 4
  %call92 = tail call fastcc ptr @brnf_get_logical_dev(ptr noundef %skb, ptr noundef %83, ptr noundef %81)
  %call.i154 = tail call fastcc i32 @nf_hook(i8 noundef zeroext %pf.0, i32 noundef 2, ptr noundef %81, ptr noundef null, ptr noundef %skb, ptr noundef %call92, ptr noundef nonnull %21, ptr noundef nonnull @br_nf_forward_finish) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i154)
  %cmp.i155 = icmp eq i32 %call.i154, 1
  br i1 %cmp.i155, label %if.then.i, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i156 = tail call i32 @br_nf_forward_finish(ptr noundef %81, ptr noundef null, ptr noundef %skb) #12, !callees !130
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end81.cleanup_crit_edge, %if.then71.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %lor.lhs.false36.cleanup_crit_edge, %bridge_parent.exit.cleanup_crit_edge, %br_port_get_rcu.exit.i.cleanup_crit_edge, %nf_bridge_info_get.exit145.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nf_bridge_info_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %nf_bridge_info_get.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %nf_bridge_info_get.exit145.cleanup_crit_edge ], [ 0, %bridge_parent.exit.cleanup_crit_edge ], [ 1, %lor.lhs.false36.cleanup_crit_edge ], [ 0, %if.then60.cleanup_crit_edge ], [ 0, %if.then71.cleanup_crit_edge ], [ 2, %if.end81.cleanup_crit_edge ], [ 2, %if.then.i ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %br_port_get_rcu.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_forward_arp(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out, align 4
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.br_port_get_rcu.exit_crit_edge

entry.br_port_get_rcu.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.br_port_get_rcu.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.br_port_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %br_port_get_rcu.exit

br_port_get_rcu.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.br_port_get_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rcu.exit_crit_edge, %entry.br_port_get_rcu.exit_crit_edge
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %br_port_get_rcu.exit.cleanup_crit_edge, label %if.end

br_port_get_rcu.exit.cleanup_crit_edge:           ; preds = %br_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %br_port_get_rcu.exit
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %6 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net, align 4
  %8 = load i32, ptr @brnf_net_id, align 4
  %call2 = tail call fastcc ptr @net_generic(ptr noundef %7, i32 noundef %8)
  %call_arptables = getelementptr inbounds %struct.brnf_net, ptr %call2, i32 0, i32 4
  %9 = ptrtoint ptr %call_arptables to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call_arptables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %options.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %14 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool7.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool7.not, label %land.lhs.true8, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

land.lhs.true8:                                   ; preds = %if.end6
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %16)
  %cmp9 = icmp eq i16 %16, 2054
  br i1 %cmp9, label %land.lhs.true8.if.end16_crit_edge, label %land.lhs.true8.if.then11_crit_edge

land.lhs.true8.if.then11_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11

land.lhs.true8.if.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then11:                                        ; preds = %land.lhs.true8.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %19 = load i32, ptr @brnf_net_id, align 4
  %call.i58 = tail call fastcc ptr @net_generic(ptr noundef %18, i32 noundef %19) #12
  %20 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %21 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol1.i.i, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then11.vlan_proto.exit.i_crit_edge

if.then11.vlan_proto.exit.i_crit_edge:            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i

if.else.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %22)
  %cmp.i.i = icmp eq i16 %22, -32512
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.i.i.cleanup_crit_edge

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %25 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %26 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 %conv.i.i.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %vlan_proto.exit.i

vlan_proto.exit.i:                                ; preds = %if.then3.i.i, %if.then11.vlan_proto.exit.i_crit_edge
  %retval.0.i.i = phi i16 [ %28, %if.then3.i.i ], [ %22, %if.then11.vlan_proto.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %retval.0.i.i)
  %cmp.i = icmp eq i16 %retval.0.i.i, 2054
  br i1 %cmp.i, label %is_vlan_arp.exit, label %vlan_proto.exit.i.cleanup_crit_edge

vlan_proto.exit.i.cleanup_crit_edge:              ; preds = %vlan_proto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_vlan_arp.exit:                                 ; preds = %vlan_proto.exit.i
  %filter_vlan_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i58, i32 0, i32 5
  %29 = ptrtoint ptr %filter_vlan_tagged.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %filter_vlan_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not = icmp eq i32 %30, 0
  br i1 %tobool.i.not, label %is_vlan_arp.exit.cleanup_crit_edge, label %if.end15

is_vlan_arp.exit.cleanup_crit_edge:               ; preds = %is_vlan_arp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %is_vlan_arp.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %22)
  %switch.selectcmp.i.i = icmp eq i16 %22, -30620
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %22)
  %switch.selectcmp2.i.i = icmp eq i16 %22, -32512
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 4, i32 %switch.select.i.i
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %switch.select3.i.i) #12
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %31 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i, align 4
  %33 = trunc i32 %switch.select3.i.i to i16
  %conv2.i = add i16 %32, %33
  store i16 %conv2.i, ptr %network_header.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %land.lhs.true8.if.end16_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %36 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %35, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 8
  br i1 %cmp.not.i, label %if.end.i, label %if.end16.if.end22_crit_edge, !prof !114

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp3.i = icmp ult i32 %35, 8
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !114

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 8, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end22_crit_edge, !prof !114

pskb_may_pull.exit.if.end22_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %pskb_may_pull.exit.if.end22_crit_edge, %if.end16.if.end22_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %41 to i32
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %conv.i.i
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %43)
  %cmp25.not = icmp eq i8 %43, 4
  br i1 %cmp25.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %if.end22
  %44 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %net, align 4
  %46 = load i32, ptr @brnf_net_id, align 4
  %call.i59 = tail call fastcc ptr @net_generic(ptr noundef %45, i32 noundef %46) #12
  %47 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %bf.load.i.i61 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i61)
  %tobool.not.i.i62 = icmp sgt i32 %bf.load.i.i61, -1
  %protocol1.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %48 = ptrtoint ptr %protocol1.i.i63 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %protocol1.i.i63, align 8
  br i1 %tobool.not.i.i62, label %if.else.i.i65, label %if.then27.vlan_proto.exit.i74_crit_edge

if.then27.vlan_proto.exit.i74_crit_edge:          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i74

if.else.i.i65:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %49)
  %cmp.i.i64 = icmp eq i16 %49, -32512
  br i1 %cmp.i.i64, label %if.then3.i.i71, label %if.else.i.i65.cleanup_crit_edge

if.else.i.i65.cleanup_crit_edge:                  ; preds = %if.else.i.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.i.i71:                                   ; preds = %if.else.i.i65
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %52 = ptrtoint ptr %mac_header.i.i.i.i67 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mac_header.i.i.i.i67, align 2
  %conv.i.i.i.i68 = zext i16 %53 to i32
  %add.ptr.i.i.i.i69 = getelementptr i8, ptr %51, i32 %conv.i.i.i.i68
  %h_vlan_encapsulated_proto.i.i70 = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i69, i32 0, i32 3
  %54 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i70 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %h_vlan_encapsulated_proto.i.i70, align 2
  br label %vlan_proto.exit.i74

vlan_proto.exit.i74:                              ; preds = %if.then3.i.i71, %if.then27.vlan_proto.exit.i74_crit_edge
  %retval.0.i.i72 = phi i16 [ %55, %if.then3.i.i71 ], [ %49, %if.then27.vlan_proto.exit.i74_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %retval.0.i.i72)
  %cmp.i73 = icmp eq i16 %retval.0.i.i72, 2054
  br i1 %cmp.i73, label %is_vlan_arp.exit78, label %vlan_proto.exit.i74.cleanup_crit_edge

vlan_proto.exit.i74.cleanup_crit_edge:            ; preds = %vlan_proto.exit.i74
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_vlan_arp.exit78:                               ; preds = %vlan_proto.exit.i74
  %filter_vlan_tagged.i75 = getelementptr inbounds %struct.brnf_net, ptr %call.i59, i32 0, i32 5
  %56 = ptrtoint ptr %filter_vlan_tagged.i75 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %filter_vlan_tagged.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.i76.not = icmp eq i32 %57, 0
  br i1 %tobool.i76.not, label %is_vlan_arp.exit78.cleanup_crit_edge, label %if.then30

is_vlan_arp.exit78.cleanup_crit_edge:             ; preds = %is_vlan_arp.exit78
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then30:                                        ; preds = %is_vlan_arp.exit78
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %49)
  %switch.selectcmp.i.i80 = icmp eq i16 %49, -30620
  %switch.select.i.i81 = select i1 %switch.selectcmp.i.i80, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %49)
  %switch.selectcmp2.i.i82 = icmp eq i16 %49, -32512
  %switch.select3.i.i83 = select i1 %switch.selectcmp2.i.i82, i32 4, i32 %switch.select.i.i81
  %call1.i84 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %switch.select3.i.i83) #12
  %58 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i.i, align 4
  %60 = trunc i32 %switch.select3.i.i83 to i16
  %conv2.i86 = sub i16 %59, %60
  store i16 %conv2.i86, ptr %network_header.i.i, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %61 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %in, align 4
  %63 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %cb, align 4
  %64 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %66 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sk, align 4
  %68 = load ptr, ptr %in, align 4
  %69 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %out, align 4
  %call.i87 = tail call fastcc i32 @nf_hook(i8 noundef zeroext 3, i32 noundef 2, ptr noundef %65, ptr noundef %67, ptr noundef %skb, ptr noundef %68, ptr noundef %70, ptr noundef nonnull @br_nf_forward_finish) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i87)
  %cmp.i88 = icmp eq i32 %call.i87, 1
  br i1 %cmp.i88, label %if.then.i90, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i90:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i89 = tail call i32 @br_nf_forward_finish(ptr noundef %65, ptr noundef %67, ptr noundef %skb) #12, !callees !130
  br label %cleanup

cleanup:                                          ; preds = %if.then.i90, %if.end32.cleanup_crit_edge, %if.then30, %is_vlan_arp.exit78.cleanup_crit_edge, %vlan_proto.exit.i74.cleanup_crit_edge, %if.else.i.i65.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %is_vlan_arp.exit.cleanup_crit_edge, %vlan_proto.exit.i.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %br_port_get_rcu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %br_port_get_rcu.exit.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %is_vlan_arp.exit.cleanup_crit_edge ], [ 0, %pskb_may_pull.exit.cleanup_crit_edge ], [ 1, %if.then30 ], [ 1, %is_vlan_arp.exit78.cleanup_crit_edge ], [ 2, %if.end32.cleanup_crit_edge ], [ 2, %if.then.i90 ], [ 1, %vlan_proto.exit.i.cleanup_crit_edge ], [ 1, %if.else.i.i.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 1, %vlan_proto.exit.i74.cleanup_crit_edge ], [ 1, %if.else.i.i65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_post_routing(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

entry.nf_bridge_info_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %entry.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %entry.nf_bridge_info_get.exit_crit_edge ]
  %7 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 95
  %10 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %nf_bridge_info_get.exit.br_port_get_rcu.exit.i_crit_edge

nf_bridge_info_get.exit.br_port_get_rcu.exit.i_crit_edge: ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %nf_bridge_info_get.exit
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i87

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

if.then.i.i87:                                    ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i87, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.br_port_get_rcu.exit.i_crit_edge, %nf_bridge_info_get.exit.br_port_get_rcu.exit.i_crit_edge
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge, label %cond.true.i

br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge: ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bridge_parent.exit

cond.true.i:                                      ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %dev1.i = getelementptr inbounds %struct.net_bridge, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  br label %bridge_parent.exit

bridge_parent.exit:                               ; preds = %cond.true.i, %br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge
  %cond.i = phi ptr [ %15, %cond.true.i ], [ null, %br_port_get_rcu.exit.i.bridge_parent.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %bridge_parent.exit.cleanup_crit_edge, label %lor.lhs.false

bridge_parent.exit.cleanup_crit_edge:             ; preds = %bridge_parent.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %bridge_parent.exit
  %physoutdev = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %physoutdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %physoutdev, align 4
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tobool3.not = icmp eq ptr %cond.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %18 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool6.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool6.not, label %land.lhs.true, label %if.end5.lor.lhs.false8_crit_edge

if.end5.lor.lhs.false8_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false8

land.lhs.true:                                    ; preds = %if.end5
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %19 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %20)
  %cmp = icmp eq i16 %20, 2048
  br i1 %cmp, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true.lor.lhs.false8_crit_edge

land.lhs.true.lor.lhs.false8_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false8

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

lor.lhs.false8:                                   ; preds = %land.lhs.true.lor.lhs.false8_crit_edge, %if.end5.lor.lhs.false8_crit_edge
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 4
  %23 = load i32, ptr @brnf_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %22, i32 noundef %23) #12
  %24 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i88 = icmp sgt i32 %bf.load.i.i, -1
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %25 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %protocol1.i.i, align 8
  br i1 %tobool.not.i.i88, label %if.else.i.i, label %lor.lhs.false8.vlan_proto.exit.i_crit_edge

lor.lhs.false8.vlan_proto.exit.i_crit_edge:       ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i

if.else.i.i:                                      ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %26)
  %cmp.i.i = icmp eq i16 %26, -32512
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.else.i.i.lor.lhs.false11_crit_edge

if.else.i.i.lor.lhs.false11_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %29 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %vlan_proto.exit.i

vlan_proto.exit.i:                                ; preds = %if.then3.i.i, %lor.lhs.false8.vlan_proto.exit.i_crit_edge
  %retval.0.i.i89 = phi i16 [ %32, %if.then3.i.i ], [ %26, %lor.lhs.false8.vlan_proto.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %retval.0.i.i89)
  %cmp.i = icmp eq i16 %retval.0.i.i89, 2048
  br i1 %cmp.i, label %is_vlan_ip.exit, label %vlan_proto.exit.i.lor.lhs.false11_crit_edge

vlan_proto.exit.i.lor.lhs.false11_crit_edge:      ; preds = %vlan_proto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11

is_vlan_ip.exit:                                  ; preds = %vlan_proto.exit.i
  %filter_vlan_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %filter_vlan_tagged.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %filter_vlan_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not = icmp eq i32 %34, 0
  br i1 %tobool.i.not, label %is_vlan_ip.exit.lor.lhs.false11_crit_edge, label %is_vlan_ip.exit.if.end37_crit_edge

is_vlan_ip.exit.if.end37_crit_edge:               ; preds = %is_vlan_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

is_vlan_ip.exit.lor.lhs.false11_crit_edge:        ; preds = %is_vlan_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %is_vlan_ip.exit.lor.lhs.false11_crit_edge, %vlan_proto.exit.i.lor.lhs.false11_crit_edge, %if.else.i.i.lor.lhs.false11_crit_edge
  %35 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %net, align 4
  %37 = load i32, ptr @brnf_net_id, align 4
  %call.i90 = tail call fastcc ptr @net_generic(ptr noundef %36, i32 noundef %37) #12
  %38 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %39)
  %cmp.i91 = icmp eq i16 %39, -30620
  br i1 %cmp.i91, label %land.lhs.true.i, label %if.else

land.lhs.true.i:                                  ; preds = %lor.lhs.false11
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %42 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %43 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %conv.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  %44 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %45)
  %cmp4.i = icmp eq i16 %45, 33
  br i1 %cmp4.i, label %is_pppoe_ip.exit, label %land.lhs.true.i.lor.lhs.false26_crit_edge

land.lhs.true.i.lor.lhs.false26_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false26

is_pppoe_ip.exit:                                 ; preds = %land.lhs.true.i
  %filter_pppoe_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i90, i32 0, i32 6
  %46 = ptrtoint ptr %filter_pppoe_tagged.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %filter_pppoe_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i92.not = icmp eq i32 %47, 0
  br i1 %tobool.i92.not, label %is_pppoe_ip.exit.lor.lhs.false26_crit_edge, label %is_pppoe_ip.exit.if.end37_crit_edge

is_pppoe_ip.exit.if.end37_crit_edge:              ; preds = %is_pppoe_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

is_pppoe_ip.exit.lor.lhs.false26_crit_edge:       ; preds = %is_pppoe_ip.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false26

if.else:                                          ; preds = %lor.lhs.false11
  %48 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %bf.load17 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load17)
  %tobool20.not = icmp sgt i32 %bf.load17, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %39)
  %cmp24 = icmp eq i16 %39, -31011
  %or.cond = select i1 %tobool20.not, i1 %cmp24, i1 false
  br i1 %or.cond, label %if.else.if.end37_crit_edge, label %if.else.lor.lhs.false26_crit_edge

if.else.lor.lhs.false26_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false26

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

lor.lhs.false26:                                  ; preds = %if.else.lor.lhs.false26_crit_edge, %is_pppoe_ip.exit.lor.lhs.false26_crit_edge, %land.lhs.true.i.lor.lhs.false26_crit_edge
  %49 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %net, align 4
  %51 = load i32, ptr @brnf_net_id, align 4
  %call.i94 = tail call fastcc ptr @net_generic(ptr noundef %50, i32 noundef %51) #12
  %52 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %bf.load.i.i96 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i96)
  %tobool.not.i.i97 = icmp sgt i32 %bf.load.i.i96, -1
  %53 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %protocol1.i.i, align 8
  br i1 %tobool.not.i.i97, label %if.else.i.i100, label %lor.lhs.false26.vlan_proto.exit.i109_crit_edge

lor.lhs.false26.vlan_proto.exit.i109_crit_edge:   ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i109

if.else.i.i100:                                   ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %54)
  %cmp.i.i99 = icmp eq i16 %54, -32512
  br i1 %cmp.i.i99, label %if.then3.i.i106, label %if.else.i.i100.lor.lhs.false30_crit_edge

if.else.i.i100.lor.lhs.false30_crit_edge:         ; preds = %if.else.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false30

if.then3.i.i106:                                  ; preds = %if.else.i.i100
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %55 = ptrtoint ptr %head.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i.i.i101, align 8
  %mac_header.i.i.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %57 = ptrtoint ptr %mac_header.i.i.i.i102 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mac_header.i.i.i.i102, align 2
  %conv.i.i.i.i103 = zext i16 %58 to i32
  %add.ptr.i.i.i.i104 = getelementptr i8, ptr %56, i32 %conv.i.i.i.i103
  %h_vlan_encapsulated_proto.i.i105 = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i104, i32 0, i32 3
  %59 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i105 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %h_vlan_encapsulated_proto.i.i105, align 2
  br label %vlan_proto.exit.i109

vlan_proto.exit.i109:                             ; preds = %if.then3.i.i106, %lor.lhs.false26.vlan_proto.exit.i109_crit_edge
  %retval.0.i.i107 = phi i16 [ %60, %if.then3.i.i106 ], [ %54, %lor.lhs.false26.vlan_proto.exit.i109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.0.i.i107)
  %cmp.i108 = icmp eq i16 %retval.0.i.i107, -31011
  br i1 %cmp.i108, label %is_vlan_ipv6.exit, label %vlan_proto.exit.i109.lor.lhs.false30_crit_edge

vlan_proto.exit.i109.lor.lhs.false30_crit_edge:   ; preds = %vlan_proto.exit.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false30

is_vlan_ipv6.exit:                                ; preds = %vlan_proto.exit.i109
  %filter_vlan_tagged.i110 = getelementptr inbounds %struct.brnf_net, ptr %call.i94, i32 0, i32 5
  %61 = ptrtoint ptr %filter_vlan_tagged.i110 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %filter_vlan_tagged.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.i111.not = icmp eq i32 %62, 0
  br i1 %tobool.i111.not, label %is_vlan_ipv6.exit.lor.lhs.false30_crit_edge, label %is_vlan_ipv6.exit.if.end37_crit_edge

is_vlan_ipv6.exit.if.end37_crit_edge:             ; preds = %is_vlan_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

is_vlan_ipv6.exit.lor.lhs.false30_crit_edge:      ; preds = %is_vlan_ipv6.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %is_vlan_ipv6.exit.lor.lhs.false30_crit_edge, %vlan_proto.exit.i109.lor.lhs.false30_crit_edge, %if.else.i.i100.lor.lhs.false30_crit_edge
  %63 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %net, align 4
  %call32 = tail call fastcc zeroext i1 @is_pppoe_ipv6(ptr noundef %skb, ptr noundef %64)
  br i1 %call32, label %lor.lhs.false30.if.end37_crit_edge, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false30.if.end37_crit_edge:               ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %lor.lhs.false30.if.end37_crit_edge, %is_vlan_ipv6.exit.if.end37_crit_edge, %if.else.if.end37_crit_edge, %is_pppoe_ip.exit.if.end37_crit_edge, %is_vlan_ip.exit.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge
  %cmp52 = phi i16 [ 2048, %is_pppoe_ip.exit.if.end37_crit_edge ], [ 2048, %is_vlan_ip.exit.if.end37_crit_edge ], [ 2048, %land.lhs.true.if.end37_crit_edge ], [ -31011, %lor.lhs.false30.if.end37_crit_edge ], [ -31011, %is_vlan_ipv6.exit.if.end37_crit_edge ], [ -31011, %if.else.if.end37_crit_edge ]
  %pf.0 = phi i8 [ 2, %is_pppoe_ip.exit.if.end37_crit_edge ], [ 2, %is_vlan_ip.exit.if.end37_crit_edge ], [ 2, %land.lhs.true.if.end37_crit_edge ], [ 10, %lor.lhs.false30.if.end37_crit_edge ], [ 10, %is_vlan_ipv6.exit.if.end37_crit_edge ], [ 10, %if.else.if.end37_crit_edge ]
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %65 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load38 = load i16, ptr %pkt_type, align 8
  %bf.lshr39.mask = and i16 %bf.load38, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 24576, i16 %bf.lshr39.mask)
  %cmp42 = icmp eq i16 %bf.lshr39.mask, 24576
  br i1 %cmp42, label %if.then44, label %if.end37.if.end50_crit_edge

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear = and i16 %bf.load38, 8191
  %66 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %bf.clear, ptr %pkt_type, align 8
  %67 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load47 = load i16, ptr %retval.0.i.i, align 4
  %bf.set49 = or i16 %bf.load47, 128
  store i16 %bf.set49, ptr %retval.0.i.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then44, %if.end37.if.end50_crit_edge
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %68 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %69)
  %switch.selectcmp.i.i = icmp eq i16 %69, -30620
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %69)
  %switch.selectcmp2.i.i = icmp eq i16 %69, -32512
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 4, i32 %switch.select.i.i
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %switch.select3.i.i) #12
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %70 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i, align 4
  %72 = trunc i32 %switch.select3.i.i to i16
  %conv2.i = add i16 %71, %72
  store i16 %conv2.i, ptr %network_header.i, align 4
  %73 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %cmp52, ptr %protocol.i.i, align 8
  %net59 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %74 = ptrtoint ptr %net59 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %net59, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %76 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sk, align 4
  %call.i113 = tail call fastcc i32 @nf_hook(i8 noundef zeroext %pf.0, i32 noundef 4, ptr noundef %75, ptr noundef %77, ptr noundef %skb, ptr noundef null, ptr noundef nonnull %cond.i, ptr noundef nonnull @br_nf_dev_queue_xmit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i113)
  %cmp.i114 = icmp eq i32 %call.i113, 1
  br i1 %cmp.i114, label %if.then.i, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i115 = tail call i32 @br_nf_dev_queue_xmit(ptr noundef %75, ptr noundef %77, ptr noundef %skb) #12, !callees !130
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end50.cleanup_crit_edge, %lor.lhs.false30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %bridge_parent.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %bridge_parent.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %lor.lhs.false30.cleanup_crit_edge ], [ 2, %if.end50.cleanup_crit_edge ], [ 2, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_sabotage_in(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.cleanup_crit_edge, label %nf_bridge_info_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_bridge_info_get.exit:                          ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_bridge_info_get.exit.cleanup_crit_edge, label %land.lhs.true

nf_bridge_info_get.exit.cleanup_crit_edge:        ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %nf_bridge_info_get.exit
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %add.ptr.i.i, align 4
  %8 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not = icmp eq i16 %8, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true2:                                   ; preds = %land.lhs.true
  %9 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags.i, align 16
  %14 = and i64 %13, 2359296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %.not = icmp eq i64 %14, 0
  br i1 %.not, label %if.then, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  %okfn = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %15 = ptrtoint ptr %okfn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %okfn, align 4
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %17 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net, align 4
  %sk = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %19 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sk, align 4
  %call6 = tail call i32 %16(ptr noundef %18, ptr noundef %20, ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %nf_bridge_info_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then ], [ 1, %land.lhs.true2.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %nf_bridge_info_get.exit.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_vlan_ipv6(ptr nocapture noundef readonly %skb, ptr noundef %net) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load i32, ptr @brnf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %1 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  %protocol1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol1.i, align 8
  br i1 %tobool.not.i, label %if.else.i, label %entry.vlan_proto.exit_crit_edge

entry.vlan_proto.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %3)
  %cmp.i = icmp eq i16 %3, -32512
  br i1 %cmp.i, label %if.then3.i, label %if.else.i.land.end_crit_edge

if.else.i.land.end_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %7 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %conv.i.i.i
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  br label %vlan_proto.exit

vlan_proto.exit:                                  ; preds = %if.then3.i, %entry.vlan_proto.exit_crit_edge
  %retval.0.i = phi i16 [ %9, %if.then3.i ], [ %3, %entry.vlan_proto.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %retval.0.i)
  %cmp = icmp eq i16 %retval.0.i, -31011
  br i1 %cmp, label %land.rhs, label %vlan_proto.exit.land.end_crit_edge

vlan_proto.exit.land.end_crit_edge:               ; preds = %vlan_proto.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %vlan_proto.exit
  call void @__sanitizer_cov_trace_pc() #14
  %filter_vlan_tagged = getelementptr inbounds %struct.brnf_net, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %filter_vlan_tagged to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter_vlan_tagged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool = icmp ne i32 %11, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %vlan_proto.exit.land.end_crit_edge, %if.else.i.land.end_crit_edge
  %12 = phi i1 [ false, %vlan_proto.exit.land.end_crit_edge ], [ %tobool, %land.rhs ], [ false, %if.else.i.land.end_crit_edge ]
  ret i1 %12
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @is_pppoe_ipv6(ptr nocapture noundef readonly %skb, ptr noundef %net) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load i32, ptr @brnf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %2)
  %cmp = icmp eq i16 %2, -30620
  br i1 %cmp, label %land.lhs.true, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.lhs.true:                                    ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %5 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 87, i16 %8)
  %cmp4 = icmp eq i16 %8, 87
  br i1 %cmp4, label %land.rhs, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %filter_pppoe_tagged = getelementptr inbounds %struct.brnf_net, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %filter_pppoe_tagged to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %filter_pppoe_tagged, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool = icmp ne i32 %10, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.land.end_crit_edge, %entry.land.end_crit_edge
  %11 = phi i1 [ false, %land.lhs.true.land.end_crit_edge ], [ false, %entry.land.end_crit_edge ], [ %tobool, %land.rhs ]
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipv6_mod_enabled() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_nf_pre_routing_ipv6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_validate_ipv4(ptr nocapture noundef readonly %net, ptr noundef %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !114

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp3.i = icmp ult i32 %1, 20
  br i1 %cmp3.i, label %if.end.i.do.body103_crit_edge, label %pskb_may_pull.exit, !prof !114

if.end.i.do.body103_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body103_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pskb_may_pull.exit.do.body103_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %cmp = icmp ugt i8 %bf.clear, 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp5.not = icmp eq i8 %bf.lshr.mask, 64
  %or.cond = and i1 %cmp, %cmp5.not
  br i1 %or.cond, label %if.end8, label %if.end.do.body103_crit_edge

if.end.do.body103_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.end8:                                          ; preds = %if.end
  %9 = shl nuw nsw i8 %bf.clear, 2
  %mul = zext i8 %9 to i32
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i156 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i156, i32 %mul)
  %cmp.not.i157 = icmp ult i32 %sub.i.i156, %mul
  br i1 %cmp.not.i157, label %if.end.i159, label %if.end8.if.end14_crit_edge, !prof !114

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end.i159:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul)
  %cmp3.i158 = icmp ult i32 %11, %mul
  br i1 %cmp3.i158, label %if.end.i159.do.body103_crit_edge, label %pskb_may_pull.exit165, !prof !114

if.end.i159.do.body103_crit_edge:                 ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

pskb_may_pull.exit165:                            ; preds = %if.end.i159
  %sub.i160 = sub i32 %mul, %sub.i.i156
  %call13.i161 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i160) #12
  %cmp14.i162.not = icmp eq ptr %call13.i161, null
  br i1 %cmp14.i162.not, label %pskb_may_pull.exit165.do.body103_crit_edge, label %pskb_may_pull.exit165.if.end14_crit_edge

pskb_may_pull.exit165.if.end14_crit_edge:         ; preds = %pskb_may_pull.exit165
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

pskb_may_pull.exit165.do.body103_crit_edge:       ; preds = %pskb_may_pull.exit165
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.end14:                                         ; preds = %pskb_may_pull.exit165.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i168 = zext i16 %17 to i32
  %add.ptr.i.i169 = getelementptr i8, ptr %15, i32 %conv.i.i168
  %18 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load16 = load i8, ptr %add.ptr.i.i169, align 4
  %bf.clear17 = and i8 %bf.load16, 15
  %conv18 = zext i8 %bf.clear17 to i32
  %19 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i169, i32 %conv18) #12, !srcloc !131
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %19, 0
  %20 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #16, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %20)
  %tobool.not = icmp ugt i32 %20, -65537
  br i1 %tobool.not, label %if.end23, label %do.body78, !prof !115

if.end23:                                         ; preds = %if.end14
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i169, i32 0, i32 2
  %21 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tot_len, align 2
  %conv24 = zext i16 %22 to i32
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv24)
  %cmp26 = icmp ult i32 %24, %conv24
  br i1 %cmp26, label %do.body, label %if.else

do.body:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %25 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mib, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %add = add i32 %33, %27
  %34 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %34, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx33 = getelementptr [37 x i64], ptr %34, i32 0, i32 12
  %35 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx33, align 8
  %add34 = add i64 %36, 1
  store i64 %add34, ptr %arrayidx33, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %34, i32 0, i32 1, i32 0, i32 1
  %37 = tail call ptr @llvm.returnaddress(i32 0) #12
  %38 = ptrtoint ptr %37 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  %39 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %40, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %41 = ptrtoint ptr %add.ptr.i.i169 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load40 = load i8, ptr %add.ptr.i.i169, align 4
  %bf.clear41 = shl i8 %bf.load40, 2
  %42 = and i8 %bf.clear41, 60
  %43 = zext i8 %42 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %43)
  %cmp44 = icmp ult i16 %22, %43
  br i1 %cmp44, label %if.else.do.body103_crit_edge, label %if.end48

if.else.do.body103_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body103

if.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv24)
  %cmp.not.i171 = icmp ugt i32 %24, %conv24
  br i1 %cmp.not.i171, label %pskb_trim_rcsum.exit, label %if.end48.if.end77_crit_edge, !prof !114

if.end48.if.end77_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

pskb_trim_rcsum.exit:                             ; preds = %if.end48
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %conv24) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool50.not = icmp eq i32 %call.i, 0
  br i1 %tobool50.not, label %pskb_trim_rcsum.exit.if.end77_crit_edge, label %do.body52

pskb_trim_rcsum.exit.if.end77_crit_edge:          ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

do.body52:                                        ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %mib61 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %44 = ptrtoint ptr %mib61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mib61, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i174 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i174 to ptr
  %cpu65 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu65, align 4
  %arrayidx66 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx66, align 4
  %add67 = add i32 %52, %46
  %53 = inttoptr i32 %add67 to ptr
  %syncp68 = getelementptr inbounds %struct.ipstats_mib, ptr %53, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp68)
  %arrayidx70 = getelementptr [37 x i64], ptr %53, i32 0, i32 13
  %54 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx70, align 8
  %add71 = add i64 %55, 1
  store i64 %add71, ptr %arrayidx70, align 8
  %dep_map.i.i175 = getelementptr inbounds %struct.ipstats_mib, ptr %53, i32 0, i32 1, i32 0, i32 1
  %56 = tail call ptr @llvm.returnaddress(i32 0) #12
  %57 = ptrtoint ptr %56 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i175, i32 noundef %57) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  %58 = ptrtoint ptr %syncp68 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp68, align 4
  %inc.i.i.i176 = add i32 %59, 1
  store i32 %inc.i.i.i176, ptr %syncp68, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

if.end77:                                         ; preds = %pskb_trim_rcsum.exit.if.end77_crit_edge, %if.end48.if.end77_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %60 = call ptr @memset(ptr %cb, i32 0, i32 24)
  br label %cleanup

do.body78:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %mib87 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %61 = ptrtoint ptr %mib87 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mib87, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i177 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i177 to ptr
  %cpu91 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu91 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu91, align 4
  %arrayidx92 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx92, align 4
  %add93 = add i32 %69, %63
  %70 = inttoptr i32 %add93 to ptr
  %syncp94 = getelementptr inbounds %struct.ipstats_mib, ptr %70, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp94)
  %arrayidx96 = getelementptr [37 x i64], ptr %70, i32 0, i32 31
  %71 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx96, align 8
  %add97 = add i64 %72, 1
  store i64 %add97, ptr %arrayidx96, align 8
  %dep_map.i.i178 = getelementptr inbounds %struct.ipstats_mib, ptr %70, i32 0, i32 1, i32 0, i32 1
  %73 = tail call ptr @llvm.returnaddress(i32 0) #12
  %74 = ptrtoint ptr %73 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i178, i32 noundef %74) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  %75 = ptrtoint ptr %syncp94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %syncp94, align 4
  %inc.i.i.i179 = add i32 %76, 1
  store i32 %inc.i.i.i179, ptr %syncp94, align 4
  tail call fastcc void @local_bh_enable()
  br label %do.body103

do.body103:                                       ; preds = %do.body78, %if.else.do.body103_crit_edge, %pskb_may_pull.exit165.do.body103_crit_edge, %if.end.i159.do.body103_crit_edge, %if.end.do.body103_crit_edge, %pskb_may_pull.exit.do.body103_crit_edge, %if.end.i.do.body103_crit_edge
  tail call fastcc void @local_bh_disable()
  %mib112 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %77 = ptrtoint ptr %mib112 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mib112, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i180 = and i32 %80, -16384
  %81 = inttoptr i32 %and.i180 to ptr
  %cpu116 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %cpu116 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu116, align 4
  %arrayidx117 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx117, align 4
  %add118 = add i32 %85, %79
  %86 = inttoptr i32 %add118 to ptr
  %syncp119 = getelementptr inbounds %struct.ipstats_mib, ptr %86, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp119)
  %arrayidx121 = getelementptr [37 x i64], ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx121, align 8
  %add122 = add i64 %88, 1
  store i64 %add122, ptr %arrayidx121, align 8
  %dep_map.i.i181 = getelementptr inbounds %struct.ipstats_mib, ptr %86, i32 0, i32 1, i32 0, i32 1
  %89 = tail call ptr @llvm.returnaddress(i32 0) #12
  %90 = ptrtoint ptr %89 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i181, i32 noundef %90) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  %91 = ptrtoint ptr %syncp119 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %syncp119, align 4
  %inc.i.i.i182 = add i32 %92, 1
  store i32 %inc.i.i.i182, ptr %syncp119, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %do.body103, %if.end77, %do.body52, %do.body
  %retval.0 = phi i32 [ 0, %if.end77 ], [ -1, %do.body103 ], [ -1, %do.body52 ], [ -1, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_pre_routing_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  %state.i = alloca %struct.nf_hook_state, align 4
  %fl4.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %7 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %active_extensions.i.i.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.i.not.i.i, label %entry.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

entry.nf_bridge_info_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %10 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offset.i.i, align 1
  %conv.i.i112 = zext i8 %13 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i112, 3
  %add.ptr.i.i113 = getelementptr i8, ptr %11, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %entry.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i113, %if.then.i.i ], [ null, %entry.nf_bridge_info_get.exit_crit_edge ]
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %14 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %frag_max_size, align 2
  %frag_max_size2 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %frag_max_size2 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %frag_max_size2, align 2
  %17 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %retval.0.i.i, align 4
  %18 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not = icmp eq i16 %18, 0
  br i1 %tobool.not, label %nf_bridge_info_get.exit.if.end_crit_edge, label %if.then

nf_bridge_info_get.exit.if.end_crit_edge:         ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %19 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load3 = load i16, ptr %pkt_type, align 8
  %bf.clear4 = and i16 %bf.load3, 8191
  %bf.set = or i16 %bf.clear4, 24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %20 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load5 = load i16, ptr %retval.0.i.i, align 4
  %bf.clear6 = and i16 %bf.load5, -129
  store i16 %bf.clear6, ptr %retval.0.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nf_bridge_info_get.exit.if.end_crit_edge
  %21 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load8 = load i16, ptr %retval.0.i.i, align 4
  %bf.clear9 = and i16 %bf.load8, -65
  store i16 %bf.clear9, ptr %retval.0.i.i, align 4
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %25 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %26 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %daddr.i, align 4
  %28 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %30)
  %cmp.i.not = icmp eq i32 %27, %30
  br i1 %cmp.i.not, label %if.else50, label %if.then12

if.then12:                                        ; preds = %if.end
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %33 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saddr, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tos, align 1
  %37 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then12.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then12.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then12
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i114

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i114:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i114, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then12.rcu_read_lock.exit.i_crit_edge
  %call.i = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %32, i32 noundef %34, i8 noundef zeroext %36, ptr noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %rcu_read_lock.exit.i.if.end5.i_crit_edge

rcu_read_lock.exit.i.if.end5.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then.i:                                        ; preds = %rcu_read_lock.exit.i
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %and.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.skb_dst_force.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.skb_dst_force.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_force.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i
  %call.i.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_is_noref.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, !prof !114

land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_is_noref.exit.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst_is_noref.exit.i.i

skb_dst_is_noref.exit.i.i:                        ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %tobool1.i.i.i = icmp ugt i32 %45, 1
  br i1 %tobool1.i.i.i, label %if.then.i9.i, label %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge

skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge: ; preds = %skb_dst_is_noref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_force.exit.i

if.then.i9.i:                                     ; preds = %skb_dst_is_noref.exit.i.i
  %and.i2.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.then.i9.i.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i9.i.skb_dst.exit.i.i_crit_edge:          ; preds = %if.then.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i9.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !114

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then.i9.i.skb_dst.exit.i.i_crit_edge
  %46 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %41, align 8
  %and25.i.i.i = and i32 %47, -2
  %48 = inttoptr i32 %and25.i.i.i to ptr
  %call2.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i10.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i10.i, label %do.end.i.i, label %skb_dst.exit.i.i.if.end.i.i_crit_edge, !prof !114

skb_dst.exit.i.i.if.end.i.i_crit_edge:            ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 316, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %skb_dst.exit.i.i.if.end.i.i_crit_edge
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %48, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #12
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #12, !srcloc !135
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.end.i.i.dst_hold_safe.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_hold_safe.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  br label %dst_hold_safe.exit.i.i

dst_hold_safe.exit.i.i:                           ; preds = %do.end11.i.i.i.i.i.i.i, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge
  %spec.select.i.i = phi ptr [ null, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge ], [ %48, %do.end11.i.i.i.i.i.i.i ]
  %50 = ptrtoint ptr %spec.select.i.i to i32
  %51 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %41, align 8
  %tobool27.not.i.i = icmp eq ptr %spec.select.i.i, null
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %52 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool27.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear34.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear34.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  br label %skb_dst_force.exit.i

skb_dst_force.exit.i:                             ; preds = %dst_hold_safe.exit.i.i, %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge, %if.then.i.skb_dst_force.exit.i_crit_edge
  %53 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %41, align 8
  %and.i.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i11.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i11.i, label %skb_dst_force.exit.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i13.i

skb_dst_force.exit.i.skb_dst.exit.i_crit_edge:    ; preds = %skb_dst_force.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.lhs.true.i13.i:                              ; preds = %skb_dst_force.exit.i
  %call.i12.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i)
  %tobool1.not.i.i = icmp eq i32 %call.i12.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i13.i.skb_dst.exit.i_crit_edge

land.lhs.true.i13.i.skb_dst.exit.i_crit_edge:     ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i13.i
  %call2.i14.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i14.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i14.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i15.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !114

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

do.end.i15.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i15.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i13.i.skb_dst.exit.i_crit_edge, %skb_dst_force.exit.i.skb_dst.exit.i_crit_edge
  %55 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %tobool3.not.i = icmp ult i32 %56, 2
  %spec.select.i = select i1 %tobool3.not.i, i32 -22, i32 0
  br label %if.end5.i

if.end5.i:                                        ; preds = %skb_dst.exit.i, %rcu_read_lock.exit.i.if.end5.i_crit_edge
  %err.0.i = phi i32 [ %call.i, %rcu_read_lock.exit.i.if.end5.i_crit_edge ], [ %spec.select.i, %skb_dst.exit.i ]
  %call.i17.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i17.i, label %if.end5.i.ip_route_input.exit_crit_edge, label %land.lhs.true.i20.i

if.end5.i.ip_route_input.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_route_input.exit

land.lhs.true.i20.i:                              ; preds = %if.end5.i
  %call1.i18.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18.i)
  %tobool.not.i19.i = icmp eq i32 %call1.i18.i, 0
  br i1 %tobool.not.i19.i, label %land.lhs.true.i20.i.ip_route_input.exit_crit_edge, label %land.lhs.true2.i22.i

land.lhs.true.i20.i.ip_route_input.exit_crit_edge: ; preds = %land.lhs.true.i20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_route_input.exit

land.lhs.true2.i22.i:                             ; preds = %land.lhs.true.i20.i
  %.b4.i21.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21.i, label %land.lhs.true2.i22.i.ip_route_input.exit_crit_edge, label %if.then.i23.i

land.lhs.true2.i22.i.ip_route_input.exit_crit_edge: ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_route_input.exit

if.then.i23.i:                                    ; preds = %land.lhs.true2.i22.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %ip_route_input.exit

ip_route_input.exit:                              ; preds = %if.then.i23.i, %land.lhs.true2.i22.i.ip_route_input.exit_crit_edge, %land.lhs.true.i20.i.ip_route_input.exit_crit_edge, %if.end5.i.ip_route_input.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %57 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i.i.i.i24.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i24.i to ptr
  %preempt_count.i.i.i.i25.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i25.i, align 4
  %sub.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i25.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool14.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %ip_route_input.exit
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 78
  %61 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i115 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool.not.i116 = icmp eq i32 %call.i115, 0
  br i1 %tobool.not.i116, label %land.lhs.true.i, label %if.then15.__in_dev_get_rcu.exit_crit_edge

if.then15.__in_dev_get_rcu.exit_crit_edge:        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true.i:                                  ; preds = %if.then15
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i117 = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i117, label %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i118

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__in_dev_get_rcu.exit

if.then.i118:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 232, ptr noundef nonnull @.str.1) #12
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i118, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i.__in_dev_get_rcu.exit_crit_edge, %if.then15.__in_dev_get_rcu.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -113, i32 %err.0.i)
  %cmp.not = icmp ne i32 %err.0.i, -113
  %tobool17.not = icmp eq ptr %62, null
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %__in_dev_get_rcu.exit.free_skb_crit_edge, label %lor.lhs.false18

__in_dev_get_rcu.exit.free_skb_crit_edge:         ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

lor.lhs.false18:                                  ; preds = %__in_dev_get_rcu.exit
  %data.i = getelementptr inbounds %struct.in_device, ptr %62, i32 0, i32 21, i32 1
  %63 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool20.not = icmp eq i32 %64, 0
  br i1 %tobool20.not, label %if.end22, label %lor.lhs.false18.free_skb_crit_edge

lor.lhs.false18.free_skb_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

if.end22:                                         ; preds = %lor.lhs.false18
  %65 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %daddr, align 4
  %67 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tos, align 1
  %69 = and i8 %68, 30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #12
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %70 = call ptr @memset(ptr %fl4.i, i32 0, i32 56)
  %71 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %69, ptr %flowic_tos.i, align 4
  %daddr2.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %72 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %66, ptr %daddr2.i, align 4
  %call.i.i119 = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4.i, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #12
  %cmp.i120 = icmp ugt ptr %call.i.i119, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.end22.free_skb_crit_edge, label %if.then28

if.end22.free_skb_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_skb

if.then28:                                        ; preds = %if.end22
  %73 = ptrtoint ptr %call.i.i119 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i.i119, align 4
  %cmp30 = icmp eq ptr %74, %2
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not.i121 = icmp eq ptr %call.i.i119, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %75 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i121, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %76 = ptrtoint ptr %call.i.i119 to i32
  %77 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %76, ptr %77, align 8
  br label %bridged_dnat

if.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  call void @dst_release(ptr noundef %call.i.i119) #12
  br label %free_skb

free_skb:                                         ; preds = %if.end34, %if.end22.free_skb_crit_edge, %lor.lhs.false18.free_skb_crit_edge, %__in_dev_get_rcu.exit.free_skb_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup60

if.else:                                          ; preds = %ip_route_input.exit
  %79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 8
  %and.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i122 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i122, label %if.else.skb_dst.exit_crit_edge, label %land.lhs.true.i124

if.else.skb_dst.exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i124:                               ; preds = %if.else
  %call.i123 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool1.not.i = icmp eq i32 %call.i123, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i124.skb_dst.exit_crit_edge

land.lhs.true.i124.skb_dst.exit_crit_edge:        ; preds = %land.lhs.true.i124
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i124
  %call2.i125 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i125)
  %tobool3.not.i126 = icmp eq i32 %call2.i125, 0
  br i1 %tobool3.not.i126, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !114

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i124.skb_dst.exit_crit_edge, %if.else.skb_dst.exit_crit_edge
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %79, align 8
  %and25.i = and i32 %83, -2
  %84 = inttoptr i32 %and25.i to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %cmp38 = icmp eq ptr %86, %2
  br i1 %cmp38, label %skb_dst.exit.bridged_dnat_crit_edge, label %if.end42

skb_dst.exit.bridged_dnat_crit_edge:              ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %bridged_dnat

bridged_dnat:                                     ; preds = %skb_dst.exit.bridged_dnat_crit_edge, %if.then32
  %physindev = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %physindev to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %physindev, align 4
  %89 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %0, align 8
  %90 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %active_extensions.i.i.i, align 1
  %92 = and i8 %91, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.i.not.i.i.i = icmp eq i8 %92, 0
  br i1 %tobool.i.not.i.i.i, label %bridged_dnat.nf_bridge_info_get.exit.i_crit_edge, label %if.then.i.i.i

bridged_dnat.nf_bridge_info_get.exit.i_crit_edge: ; preds = %bridged_dnat
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit.i

if.then.i.i.i:                                    ; preds = %bridged_dnat
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %93 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %extensions.i.i.i, align 8
  %offset.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i127 = zext i8 %96 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i127, 3
  %add.ptr.i.i.i128 = getelementptr i8, ptr %94, i32 %shl.i.i.i
  br label %nf_bridge_info_get.exit.i

nf_bridge_info_get.exit.i:                        ; preds = %if.then.i.i.i, %bridged_dnat.nf_bridge_info_get.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i128, %if.then.i.i.i ], [ null, %bridged_dnat.nf_bridge_info_get.exit.i_crit_edge ]
  %97 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i129 = load i16, ptr %retval.0.i.i.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i129, 8
  %trunc.i = trunc i16 %bf.lshr.i to i8
  %98 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %trunc.i, label %nf_bridge_info_get.exit.i.nf_bridge_update_protocol.exit_crit_edge [
    i8 1, label %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge
    i8 2, label %sw.bb1.i
  ]

nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

nf_bridge_info_get.exit.i.nf_bridge_update_protocol.exit_crit_edge: ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_update_protocol.exit

sw.bb1.i:                                         ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ -30620, %sw.bb1.i ], [ -32512, %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge ]
  %protocol2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %99 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %.sink.i, ptr %protocol2.i, align 8
  br label %nf_bridge_update_protocol.exit

nf_bridge_update_protocol.exit:                   ; preds = %sw.epilog.sink.split.i, %nf_bridge_info_get.exit.i.nf_bridge_update_protocol.exit_crit_edge
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %100 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %101)
  %switch.selectcmp.i.i = icmp eq i16 %101, -30620
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %101)
  %switch.selectcmp2.i.i = icmp eq i16 %101, -32512
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 4, i32 %switch.select.i.i
  %call1.i = call ptr @skb_push(ptr noundef %skb, i32 noundef %switch.select3.i.i) #12
  %102 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %network_header.i.i, align 4
  %104 = trunc i32 %switch.select3.i.i to i16
  %conv2.i = sub i16 %103, %104
  store i16 %conv2.i, ptr %network_header.i.i, align 4
  %105 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %0, align 8
  %call41 = call i32 @br_nf_hook_thresh(i32 noundef 0, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %106, ptr noundef null, ptr noundef nonnull @br_nf_pre_routing_finish_bridge)
  br label %cleanup60

if.end42:                                         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %109 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i131 = zext i16 %110 to i32
  %add.ptr.i.i132 = getelementptr i8, ptr %108, i32 %conv.i.i131
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %111 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev_addr, align 64
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %115 = ptrtoint ptr %add.ptr.i.i132 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %add.ptr.i.i132, align 4
  %add.ptr.i = getelementptr i8, ptr %112, i32 4
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i132, i32 4
  %118 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %add.ptr1.i, align 2
  %pkt_type45 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %119 = ptrtoint ptr %pkt_type45 to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load46 = load i16, ptr %pkt_type45, align 8
  %bf.clear47 = and i16 %bf.load46, 8191
  store i16 %bf.clear47, ptr %pkt_type45, align 8
  br label %if.end57

if.else50:                                        ; preds = %if.end
  %physindev51 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %120 = ptrtoint ptr %physindev51 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %physindev51, align 4
  %rx_handler_data.i.i = getelementptr inbounds %struct.net_device, ptr %121, i32 0, i32 95
  %122 = ptrtoint ptr %rx_handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile ptr, ptr %rx_handler_data.i.i, align 4
  %call.i.i133 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133)
  %tobool.not.i.i134 = icmp eq i32 %call.i.i133, 0
  br i1 %tobool.not.i.i134, label %land.lhs.true.i.i137, label %if.else50.br_port_get_rcu.exit.i_crit_edge

if.else50.br_port_get_rcu.exit.i_crit_edge:       ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true.i.i137:                             ; preds = %if.else50
  %call2.i.i135 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i135)
  %tobool3.not.i.i136 = icmp eq i32 %call2.i.i135, 0
  br i1 %tobool3.not.i.i136, label %land.lhs.true.i.i137.br_port_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i137.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i137
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i137
  %.b9.i.i = load i1, ptr @br_port_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, label %if.then.i.i138

land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_port_get_rcu.exit.i

if.then.i.i138:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 416, ptr noundef nonnull @.str.1) #12
  br label %br_port_get_rcu.exit.i

br_port_get_rcu.exit.i:                           ; preds = %if.then.i.i138, %land.lhs.true4.i.i.br_port_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i137.br_port_get_rcu.exit.i_crit_edge, %if.else50.br_port_get_rcu.exit.i_crit_edge
  %tobool.not.i139 = icmp eq ptr %123, null
  br i1 %tobool.not.i139, label %br_port_get_rcu.exit.i.if.then54_crit_edge, label %bridge_parent_rtable.exit

br_port_get_rcu.exit.i.if.then54_crit_edge:       ; preds = %br_port_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

bridge_parent_rtable.exit:                        ; preds = %br_port_get_rcu.exit.i
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 8
  %126 = getelementptr inbounds %struct.net_bridge, ptr %125, i32 0, i32 10
  %tobool53.not = icmp eq ptr %126, null
  br i1 %tobool53.not, label %bridge_parent_rtable.exit.if.then54_crit_edge, label %if.end55

bridge_parent_rtable.exit.if.then54_crit_edge:    ; preds = %bridge_parent_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then54

if.then54:                                        ; preds = %bridge_parent_rtable.exit.if.then54_crit_edge, %br_port_get_rcu.exit.i.if.then54_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup60

if.end55:                                         ; preds = %bridge_parent_rtable.exit
  %call.i140 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool.not.i141 = icmp eq i32 %call.i140, 0
  br i1 %tobool.not.i141, label %land.rhs.i143, label %if.end55.skb_dst_set_noref.exit_crit_edge

if.end55.skb_dst_set_noref.exit_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_set_noref.exit

land.rhs.i143:                                    ; preds = %if.end55
  %call1.i142 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i142)
  %tobool2.not.i = icmp eq i32 %call1.i142, 0
  br i1 %tobool2.not.i, label %do.end.i144, label %land.rhs.i143.skb_dst_set_noref.exit_crit_edge, !prof !114

land.rhs.i143.skb_dst_set_noref.exit_crit_edge:   ; preds = %land.rhs.i143
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_set_noref.exit

do.end.i144:                                      ; preds = %land.rhs.i143
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1043, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i144, %land.rhs.i143.skb_dst_set_noref.exit_crit_edge, %if.end55.skb_dst_set_noref.exit_crit_edge
  %slow_gro.i145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %127 = ptrtoint ptr %slow_gro.i145 to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %bf.load.i146 = load i32, ptr %slow_gro.i145, align 2
  %bf.set.i149 = or i32 %bf.load.i146, 4096
  store i32 %bf.set.i149, ptr %slow_gro.i145, align 2
  %128 = ptrtoint ptr %126 to i32
  %or31.i = or i32 %128, 1
  %129 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or31.i, ptr %129, align 8
  br label %if.end57

if.end57:                                         ; preds = %skb_dst_set_noref.exit, %if.end42
  %physindev58 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %131 = ptrtoint ptr %physindev58 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %physindev58, align 4
  %133 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %0, align 8
  %134 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %active_extensions.i.i.i, align 1
  %136 = and i8 %135, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.i.not.i.i.i151 = icmp eq i8 %136, 0
  br i1 %tobool.i.not.i.i.i151, label %if.end57.nf_bridge_info_get.exit.i162_crit_edge, label %if.then.i.i.i157

if.end57.nf_bridge_info_get.exit.i162_crit_edge:  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit.i162

if.then.i.i.i157:                                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %137 = ptrtoint ptr %extensions.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %extensions.i.i.i152, align 8
  %offset.i.i.i153 = getelementptr inbounds %struct.skb_ext, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %offset.i.i.i153 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %offset.i.i.i153, align 1
  %conv.i.i.i154 = zext i8 %140 to i32
  %shl.i.i.i155 = shl nuw nsw i32 %conv.i.i.i154, 3
  %add.ptr.i.i.i156 = getelementptr i8, ptr %138, i32 %shl.i.i.i155
  br label %nf_bridge_info_get.exit.i162

nf_bridge_info_get.exit.i162:                     ; preds = %if.then.i.i.i157, %if.end57.nf_bridge_info_get.exit.i162_crit_edge
  %retval.0.i.i.i158 = phi ptr [ %add.ptr.i.i.i156, %if.then.i.i.i157 ], [ null, %if.end57.nf_bridge_info_get.exit.i162_crit_edge ]
  %141 = ptrtoint ptr %retval.0.i.i.i158 to i32
  call void @__asan_load2_noabort(i32 %141)
  %bf.load.i159 = load i16, ptr %retval.0.i.i.i158, align 4
  %bf.lshr.i160 = lshr i16 %bf.load.i159, 8
  %trunc.i161 = trunc i16 %bf.lshr.i160 to i8
  %142 = zext i8 %trunc.i161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %trunc.i161, label %nf_bridge_info_get.exit.i162.nf_bridge_update_protocol.exit167_crit_edge [
    i8 1, label %nf_bridge_info_get.exit.i162.sw.epilog.sink.split.i166_crit_edge
    i8 2, label %sw.bb1.i163
  ]

nf_bridge_info_get.exit.i162.sw.epilog.sink.split.i166_crit_edge: ; preds = %nf_bridge_info_get.exit.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i166

nf_bridge_info_get.exit.i162.nf_bridge_update_protocol.exit167_crit_edge: ; preds = %nf_bridge_info_get.exit.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_update_protocol.exit167

sw.bb1.i163:                                      ; preds = %nf_bridge_info_get.exit.i162
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i166

sw.epilog.sink.split.i166:                        ; preds = %sw.bb1.i163, %nf_bridge_info_get.exit.i162.sw.epilog.sink.split.i166_crit_edge
  %.sink.i164 = phi i16 [ -30620, %sw.bb1.i163 ], [ -32512, %nf_bridge_info_get.exit.i162.sw.epilog.sink.split.i166_crit_edge ]
  %protocol2.i165 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %143 = ptrtoint ptr %protocol2.i165 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %.sink.i164, ptr %protocol2.i165, align 8
  br label %nf_bridge_update_protocol.exit167

nf_bridge_update_protocol.exit167:                ; preds = %sw.epilog.sink.split.i166, %nf_bridge_info_get.exit.i162.nf_bridge_update_protocol.exit167_crit_edge
  %protocol.i.i168 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %144 = ptrtoint ptr %protocol.i.i168 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %protocol.i.i168, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %145)
  %switch.selectcmp.i.i169 = icmp eq i16 %145, -30620
  %switch.select.i.i170 = select i1 %switch.selectcmp.i.i169, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %145)
  %switch.selectcmp2.i.i171 = icmp eq i16 %145, -32512
  %switch.select3.i.i172 = select i1 %switch.selectcmp2.i.i171, i32 4, i32 %switch.select.i.i170
  %call1.i173 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %switch.select3.i.i172) #12
  %146 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %network_header.i.i, align 4
  %148 = trunc i32 %switch.select3.i.i172 to i16
  %conv2.i175 = sub i16 %147, %148
  store i16 %conv2.i175, ptr %network_header.i.i, align 4
  %149 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #12
  %151 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 524287, ptr %state.i, align 4
  %arrayidx.i = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 0
  %152 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i176 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176)
  %tobool.not.i177 = icmp eq i32 %call.i176, 0
  br i1 %tobool.not.i177, label %land.lhs.true.i180, label %nf_bridge_update_protocol.exit167.do.end7.i_crit_edge

nf_bridge_update_protocol.exit167.do.end7.i_crit_edge: ; preds = %nf_bridge_update_protocol.exit167
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i180:                               ; preds = %nf_bridge_update_protocol.exit167
  %call2.i178 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i178)
  %tobool3.not.i179 = icmp eq i32 %call2.i178, 0
  br i1 %tobool3.not.i179, label %land.lhs.true.i180.do.end7.i_crit_edge, label %land.lhs.true4.i181

land.lhs.true.i180.do.end7.i_crit_edge:           ; preds = %land.lhs.true.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i181:                              ; preds = %land.lhs.true.i180
  %.b45.i = load i1, ptr @br_nf_hook_thresh.__warned, align 1
  br i1 %.b45.i, label %land.lhs.true4.i181.do.end7.i_crit_edge, label %if.then.i182

land.lhs.true4.i181.do.end7.i_crit_edge:          ; preds = %land.lhs.true4.i181
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i182:                                     ; preds = %land.lhs.true4.i181
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_nf_hook_thresh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1010, ptr noundef nonnull @.str.1) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i182, %land.lhs.true4.i181.do.end7.i_crit_edge, %land.lhs.true.i180.do.end7.i_crit_edge, %nf_bridge_update_protocol.exit167.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %153, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 @br_handle_frame_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %br_nf_hook_thresh.exit

if.end12.i:                                       ; preds = %do.end7.i
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %153, align 4
  %conv.i.i183 = zext i16 %155 to i32
  %arrayidx.i.i = getelementptr %struct.nf_hook_entries, ptr %153, i32 0, i32 1, i32 %conv.i.i183
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %cmp47.not.i = icmp eq i16 %155, 0
  br i1 %cmp47.not.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.land.rhs.i184_crit_edge

if.end12.i.land.rhs.i184_crit_edge:               ; preds = %if.end12.i
  br label %land.rhs.i184

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

land.rhs.i184:                                    ; preds = %for.inc.i.land.rhs.i184_crit_edge, %if.end12.i.land.rhs.i184_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.land.rhs.i184_crit_edge ], [ 0, %if.end12.i.land.rhs.i184_crit_edge ]
  %arrayidx15.i = getelementptr ptr, ptr %arrayidx.i.i, i32 %i.048.i
  %156 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx15.i, align 4
  %priority.i = getelementptr inbounds %struct.nf_hook_ops, ptr %157, i32 0, i32 6
  %158 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %159)
  %cmp16.i = icmp slt i32 %159, 1
  br i1 %cmp16.i, label %for.inc.i, label %land.rhs.i184.for.end.i_crit_edge

land.rhs.i184.for.end.i_crit_edge:                ; preds = %land.rhs.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %land.rhs.i184
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i.i183
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i184_crit_edge

for.inc.i.land.rhs.i184_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i184

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i184.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end12.i.for.end.i_crit_edge ], [ %i.048.i, %land.rhs.i184.for.end.i_crit_edge ], [ %conv.i.i183, %for.inc.i.for.end.i_crit_edge ]
  %in.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 2
  %160 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %150, ptr %in.i.i, align 4
  %out.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 3
  %161 = ptrtoint ptr %out.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %out.i.i, align 4
  %sk3.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 4
  %162 = ptrtoint ptr %sk3.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %sk, ptr %sk3.i.i, align 4
  %net4.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 5
  %163 = ptrtoint ptr %net4.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %net, ptr %net4.i.i, align 4
  %okfn5.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 6
  %164 = ptrtoint ptr %okfn5.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @br_handle_frame_finish, ptr %okfn5.i.i, align 4
  %call18.i = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state.i, ptr noundef nonnull %153, i32 noundef %i.0.lcssa.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 1
  br i1 %cmp19.i, label %if.then21.i, label %for.end.i.br_nf_hook_thresh.exit_crit_edge

for.end.i.br_nf_hook_thresh.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_nf_hook_thresh.exit

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = call i32 @br_handle_frame_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %br_nf_hook_thresh.exit

br_nf_hook_thresh.exit:                           ; preds = %if.then21.i, %for.end.i.br_nf_hook_thresh.exit_crit_edge, %if.then10.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #12
  br label %cleanup60

cleanup60:                                        ; preds = %br_nf_hook_thresh.exit, %if.then54, %nf_bridge_update_protocol.exit, %free_skb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !137
  %5 = tail call i32 @llvm.read_register.i32(metadata !104) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !138
  %14 = tail call i32 @llvm.read_register.i32(metadata !104) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !104) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !139
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !140
  %33 = tail call i32 @llvm.read_register.i32(metadata !104) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !115

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i8 noundef zeroext %pf, i32 noundef %hook, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #8 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !127
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %4 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %pf, label %land.end149 [
    i8 2, label %sw.bb
    i8 10, label %sw.bb16
    i8 3, label %sw.bb36
    i8 7, label %sw.bb102
  ]

sw.bb:                                            ; preds = %rcu_read_lock.exit
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 %hook
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %sw.bb
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b226 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b226, label %land.lhs.true9.sw.epilog_crit_edge, label %land.lhs.true9.sw.epilog.sink.split_crit_edge

land.lhs.true9.sw.epilog.sink.split_crit_edge:    ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb16:                                          ; preds = %rcu_read_lock.exit
  %arrayidx22 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 %hook
  %7 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx22, align 4
  %call24 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %sw.bb16.sw.epilog_crit_edge

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true26:                                  ; preds = %sw.bb16
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.sw.epilog_crit_edge, label %land.lhs.true29

land.lhs.true26.sw.epilog_crit_edge:              ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b217225 = load i1, ptr @nf_hook.__warned.14, align 1
  br i1 %.b217225, label %land.lhs.true29.sw.epilog_crit_edge, label %land.lhs.true29.sw.epilog.sink.split_crit_edge

land.lhs.true29.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

land.lhs.true29.sw.epilog_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb36:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hook)
  %cmp = icmp ugt i32 %hook, 2
  br i1 %cmp, label %land.rhs, label %if.end82.critedge

land.rhs:                                         ; preds = %sw.bb36
  %.b218224 = load i1, ptr @nf_hook.__already_done, align 1
  br i1 %.b218224, label %land.rhs.if.end194_crit_edge, label %if.then46, !prof !115

land.rhs.if.end194_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then46:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_hook.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 236, i32 noundef 9, ptr noundef null) #12
  br label %if.end194

if.end82.critedge:                                ; preds = %sw.bb36
  %arrayidx88 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 5, i32 %hook
  %9 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx88, align 4
  %call90 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %land.lhs.true92, label %if.end82.critedge.sw.epilog_crit_edge

if.end82.critedge.sw.epilog_crit_edge:            ; preds = %if.end82.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true92:                                  ; preds = %if.end82.critedge
  %call93 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %land.lhs.true92.sw.epilog_crit_edge, label %land.lhs.true95

land.lhs.true92.sw.epilog_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true95:                                  ; preds = %land.lhs.true92
  %.b219223 = load i1, ptr @nf_hook.__warned.15, align 1
  br i1 %.b219223, label %land.lhs.true95.sw.epilog_crit_edge, label %land.lhs.true95.sw.epilog.sink.split_crit_edge

land.lhs.true95.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

land.lhs.true95.sw.epilog_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb102:                                         ; preds = %rcu_read_lock.exit
  %arrayidx108 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 %hook
  %11 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx108, align 4
  %call110 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true112, label %sw.bb102.sw.epilog_crit_edge

sw.bb102.sw.epilog_crit_edge:                     ; preds = %sw.bb102
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true112:                                 ; preds = %sw.bb102
  %call113 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.lhs.true112.sw.epilog_crit_edge, label %land.lhs.true115

land.lhs.true112.sw.epilog_crit_edge:             ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true115:                                 ; preds = %land.lhs.true112
  %.b220222 = load i1, ptr @nf_hook.__warned.16, align 1
  br i1 %.b220222, label %land.lhs.true115.sw.epilog_crit_edge, label %land.lhs.true115.sw.epilog.sink.split_crit_edge

land.lhs.true115.sw.epilog.sink.split_crit_edge:  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

land.lhs.true115.sw.epilog_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.end149:                                      ; preds = %rcu_read_lock.exit
  %.b221227 = load i1, ptr @nf_hook.__already_done.18, align 1
  br i1 %.b221227, label %land.end149.if.end194_crit_edge, label %if.then156, !prof !115

land.end149.if.end194_crit_edge:                  ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then156:                                       ; preds = %land.end149
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_hook.__already_done.18, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 252, i32 noundef 9, ptr noundef null) #12
  br label %if.end194

sw.epilog.sink.split:                             ; preds = %land.lhs.true115.sw.epilog.sink.split_crit_edge, %land.lhs.true95.sw.epilog.sink.split_crit_edge, %land.lhs.true29.sw.epilog.sink.split_crit_edge, %land.lhs.true9.sw.epilog.sink.split_crit_edge
  %nf_hook.__warned.16.sink = phi ptr [ @nf_hook.__warned, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.14, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.15, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ @nf_hook.__warned.16, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i32 [ 229, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ 232, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ 238, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ 243, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %hook_head.0.ph = phi ptr [ %6, %land.lhs.true9.sw.epilog.sink.split_crit_edge ], [ %8, %land.lhs.true29.sw.epilog.sink.split_crit_edge ], [ %10, %land.lhs.true95.sw.epilog.sink.split_crit_edge ], [ %12, %land.lhs.true115.sw.epilog.sink.split_crit_edge ]
  %13 = ptrtoint ptr %nf_hook.__warned.16.sink to i32
  call void @__asan_store1_noabort(i32 %13)
  store i1 true, ptr %nf_hook.__warned.16.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef %.sink, ptr noundef nonnull @.str.1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true115.sw.epilog_crit_edge, %land.lhs.true112.sw.epilog_crit_edge, %sw.bb102.sw.epilog_crit_edge, %land.lhs.true95.sw.epilog_crit_edge, %land.lhs.true92.sw.epilog_crit_edge, %if.end82.critedge.sw.epilog_crit_edge, %land.lhs.true29.sw.epilog_crit_edge, %land.lhs.true26.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %hook_head.0 = phi ptr [ %6, %land.lhs.true9.sw.epilog_crit_edge ], [ %6, %land.lhs.true6.sw.epilog_crit_edge ], [ %6, %sw.bb.sw.epilog_crit_edge ], [ %8, %land.lhs.true29.sw.epilog_crit_edge ], [ %8, %land.lhs.true26.sw.epilog_crit_edge ], [ %8, %sw.bb16.sw.epilog_crit_edge ], [ %10, %land.lhs.true95.sw.epilog_crit_edge ], [ %10, %land.lhs.true92.sw.epilog_crit_edge ], [ %10, %if.end82.critedge.sw.epilog_crit_edge ], [ %12, %land.lhs.true115.sw.epilog_crit_edge ], [ %12, %land.lhs.true112.sw.epilog_crit_edge ], [ %12, %sw.bb102.sw.epilog_crit_edge ], [ %hook_head.0.ph, %sw.epilog.sink.split ]
  %tobool191.not = icmp eq ptr %hook_head.0, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #12
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %15 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %pf, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %17 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %18 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %19 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %20 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %hook_head.0, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #12
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge, %if.then156, %land.end149.if.end194_crit_edge, %if.then46, %land.rhs.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ], [ 1, %if.then46 ], [ 1, %if.then156 ], [ 1, %land.end149.if.end194_crit_edge ], [ 1, %land.rhs.if.end194_crit_edge ]
  %call.i229 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i229, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i232

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i232:                               ; preds = %if.end194
  %call1.i230 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i230)
  %tobool.not.i231 = icmp eq i32 %call1.i230, 0
  br i1 %tobool.not.i231, label %land.lhs.true.i232.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i234

land.lhs.true.i232.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i232
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i234:                              ; preds = %land.lhs.true.i232
  %.b4.i233 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i233, label %land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge, label %if.then.i235

land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i234
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i235:                                     ; preds = %land.lhs.true2.i234
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i235, %land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i232.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !128
  %21 = call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i.i.i.i236 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i236 to ptr
  %preempt_count.i.i.i.i237 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i237, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i237, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_validate_ipv6(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_forward_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  %state.i = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.nf_bridge_info_get.exit_crit_edge, label %if.then.i.i

entry.nf_bridge_info_get.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  br label %nf_bridge_info_get.exit

nf_bridge_info_get.exit:                          ; preds = %if.then.i.i, %entry.nf_bridge_info_get.exit_crit_edge
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %entry.nf_bridge_info_get.exit_crit_edge ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %7 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true, label %nf_bridge_info_get.exit.land.lhs.true2_crit_edge

nf_bridge_info_get.exit.land.lhs.true2_crit_edge: ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true2

land.lhs.true:                                    ; preds = %nf_bridge_info_get.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %9)
  %cmp = icmp eq i16 %9, 2054
  br i1 %cmp, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.land.lhs.true2_crit_edge

land.lhs.true.land.lhs.true2_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true2

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true.land.lhs.true2_crit_edge, %nf_bridge_info_get.exit.land.lhs.true2_crit_edge
  %10 = load i32, ptr @brnf_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %10) #12
  %11 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol1.i.i, align 8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %land.lhs.true2.vlan_proto.exit.i_crit_edge

land.lhs.true2.vlan_proto.exit.i_crit_edge:       ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_proto.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true2
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %13, label %if.else.i.i.if.end_crit_edge [
    i16 -32512, label %if.then3.i.i
    i16 2048, label %if.else.i.i.if.then8_crit_edge
  ]

if.else.i.i.if.then8_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i.i, align 8
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %17 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %mac_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %18 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 %conv.i.i.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %vlan_proto.exit.i

vlan_proto.exit.i:                                ; preds = %if.then3.i.i, %land.lhs.true2.vlan_proto.exit.i_crit_edge
  %retval.0.i.i53 = phi i16 [ %20, %if.then3.i.i ], [ %13, %land.lhs.true2.vlan_proto.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2054, i16 %retval.0.i.i53)
  %cmp.i = icmp eq i16 %retval.0.i.i53, 2054
  br i1 %cmp.i, label %is_vlan_arp.exit, label %vlan_proto.exit.i.if.then_crit_edge

vlan_proto.exit.i.if.then_crit_edge:              ; preds = %vlan_proto.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

is_vlan_arp.exit:                                 ; preds = %vlan_proto.exit.i
  %filter_vlan_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call.i, i32 0, i32 5
  %21 = ptrtoint ptr %filter_vlan_tagged.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %filter_vlan_tagged.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  br i1 %tobool.i.not, label %is_vlan_arp.exit.if.then_crit_edge, label %is_vlan_arp.exit.if.else_crit_edge

is_vlan_arp.exit.if.else_crit_edge:               ; preds = %is_vlan_arp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

is_vlan_arp.exit.if.then_crit_edge:               ; preds = %is_vlan_arp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %is_vlan_arp.exit.if.then_crit_edge, %vlan_proto.exit.i.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %13)
  %cmp6 = icmp eq i16 %13, 2048
  br i1 %cmp6, label %if.then.if.then8_crit_edge, label %if.then.if.endthread-pre-split_crit_edge

if.then.if.endthread-pre-split_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.endthread-pre-split

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then8:                                         ; preds = %if.then.if.then8_crit_edge, %if.else.i.i.if.then8_crit_edge
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %23 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frag_max_size, align 2
  %frag_max_size9 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %frag_max_size9 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %frag_max_size9, align 2
  br label %if.endthread-pre-split

if.endthread-pre-split:                           ; preds = %if.then8, %if.then.if.endthread-pre-split_crit_edge
  %26 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %.pr = load i16, ptr %protocol1.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %if.else.i.i.if.end_crit_edge
  %27 = phi i16 [ %.pr, %if.endthread-pre-split ], [ %13, %if.else.i.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %27)
  %cmp12 = icmp eq i16 %27, -31011
  br i1 %cmp12, label %if.then14, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %frag_max_size17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %28 = ptrtoint ptr %frag_max_size17 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %frag_max_size17, align 4
  %frag_max_size18 = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %frag_max_size18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %frag_max_size18, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.end.if.end19_crit_edge
  %physindev = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %physindev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %physindev, align 4
  %33 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load20 = load i16, ptr %retval.0.i.i, align 4
  %34 = and i16 %bf.load20, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool23.not = icmp eq i16 %34, 0
  br i1 %tobool23.not, label %if.end19.if.end30_crit_edge, label %if.then24

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %35 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load25 = load i16, ptr %pkt_type, align 8
  %bf.clear26 = and i16 %bf.load25, 8191
  %bf.set = or i16 %bf.clear26, 24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %36 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load27 = load i16, ptr %retval.0.i.i, align 4
  %bf.clear28 = and i16 %bf.load27, -129
  store i16 %bf.clear28, ptr %retval.0.i.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end19.if.end30_crit_edge
  %37 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %active_extensions.i.i.i, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i.not.i.i.i = icmp eq i8 %39, 0
  br i1 %tobool.i.not.i.i.i, label %if.end30.nf_bridge_info_get.exit.i_crit_edge, label %if.then.i.i.i

if.end30.nf_bridge_info_get.exit.i_crit_edge:     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit.i

if.then.i.i.i:                                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %40 = ptrtoint ptr %extensions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %extensions.i.i.i, align 8
  %offset.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %43 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %shl.i.i.i
  br label %nf_bridge_info_get.exit.i

nf_bridge_info_get.exit.i:                        ; preds = %if.then.i.i.i, %if.end30.nf_bridge_info_get.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.i ], [ null, %if.end30.nf_bridge_info_get.exit.i_crit_edge ]
  %44 = ptrtoint ptr %retval.0.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load.i = load i16, ptr %retval.0.i.i.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %trunc.i = trunc i16 %bf.lshr.i to i8
  %45 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %trunc.i, label %nf_bridge_info_get.exit.i.if.end33_crit_edge [
    i8 1, label %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge
    i8 2, label %sw.bb1.i
  ]

nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

nf_bridge_info_get.exit.i.if.end33_crit_edge:     ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

sw.bb1.i:                                         ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ -30620, %sw.bb1.i ], [ -32512, %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge ]
  %46 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %.sink.i, ptr %protocol1.i.i, align 8
  br label %if.end33

if.else:                                          ; preds = %is_vlan_arp.exit.if.else_crit_edge, %land.lhs.true.if.else_crit_edge
  %cb31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %47 = ptrtoint ptr %cb31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cb31, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.else, %sw.epilog.sink.split.i, %nf_bridge_info_get.exit.i.if.end33_crit_edge
  %in.0 = phi ptr [ %48, %if.else ], [ %32, %nf_bridge_info_get.exit.i.if.end33_crit_edge ], [ %32, %sw.epilog.sink.split.i ]
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %49 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %50)
  %switch.selectcmp.i.i = icmp eq i16 %50, -30620
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %50)
  %switch.selectcmp2.i.i = icmp eq i16 %50, -32512
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 4, i32 %switch.select.i.i
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %switch.select3.i.i) #12
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %51 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i, align 4
  %53 = trunc i32 %switch.select3.i.i to i16
  %conv2.i = sub i16 %52, %53
  store i16 %conv2.i, ptr %network_header.i, align 4
  %54 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #12
  %57 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 34078719, ptr %state.i, align 4
  %arrayidx.i = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 2
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %arrayidx.i, align 4
  %call.i54 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end33.do.end7.i_crit_edge

if.end33.do.end7.i_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %if.end33
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b45.i = load i1, ptr @br_nf_hook_thresh.__warned, align 1
  br i1 %.b45.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @br_nf_hook_thresh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1010, ptr noundef nonnull @.str.1) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %if.end33.do.end7.i_crit_edge
  %tobool9.not.i = icmp eq ptr %59, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end12.i

if.then10.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = tail call i32 @br_forward_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %br_nf_hook_thresh.exit

if.end12.i:                                       ; preds = %do.end7.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %59, align 4
  %conv.i.i55 = zext i16 %61 to i32
  %arrayidx.i.i = getelementptr %struct.nf_hook_entries, ptr %59, i32 0, i32 1, i32 %conv.i.i55
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %cmp47.not.i = icmp eq i16 %61, 0
  br i1 %cmp47.not.i, label %if.end12.i.for.end.i_crit_edge, label %if.end12.i.land.rhs.i56_crit_edge

if.end12.i.land.rhs.i56_crit_edge:                ; preds = %if.end12.i
  br label %land.rhs.i56

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

land.rhs.i56:                                     ; preds = %for.inc.i.land.rhs.i56_crit_edge, %if.end12.i.land.rhs.i56_crit_edge
  %i.048.i = phi i32 [ %inc.i, %for.inc.i.land.rhs.i56_crit_edge ], [ 0, %if.end12.i.land.rhs.i56_crit_edge ]
  %arrayidx15.i = getelementptr ptr, ptr %arrayidx.i.i, i32 %i.048.i
  %62 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx15.i, align 4
  %priority.i = getelementptr inbounds %struct.nf_hook_ops, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp16.i = icmp slt i32 %65, 1
  br i1 %cmp16.i, label %for.inc.i, label %land.rhs.i56.for.end.i_crit_edge

land.rhs.i56.for.end.i_crit_edge:                 ; preds = %land.rhs.i56
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i:                                        ; preds = %land.rhs.i56
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i.i55
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i56_crit_edge

for.inc.i.land.rhs.i56_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i56

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.rhs.i56.for.end.i_crit_edge, %if.end12.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end12.i.for.end.i_crit_edge ], [ %i.048.i, %land.rhs.i56.for.end.i_crit_edge ], [ %conv.i.i55, %for.inc.i.for.end.i_crit_edge ]
  %in.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 2
  %66 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %in.0, ptr %in.i.i, align 4
  %out.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 3
  %67 = ptrtoint ptr %out.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %56, ptr %out.i.i, align 4
  %sk3.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 4
  %68 = ptrtoint ptr %sk3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %sk, ptr %sk3.i.i, align 4
  %net4.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 5
  %69 = ptrtoint ptr %net4.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %net, ptr %net4.i.i, align 4
  %okfn5.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %state.i, i32 0, i32 6
  %70 = ptrtoint ptr %okfn5.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @br_forward_finish, ptr %okfn5.i.i, align 4
  %call18.i = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state.i, ptr noundef nonnull %59, i32 noundef %i.0.lcssa.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18.i)
  %cmp19.i = icmp eq i32 %call18.i, 1
  br i1 %cmp19.i, label %if.then21.i, label %for.end.i.br_nf_hook_thresh.exit_crit_edge

for.end.i.br_nf_hook_thresh.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_nf_hook_thresh.exit

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call22.i = call i32 @br_forward_finish(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %br_nf_hook_thresh.exit

br_nf_hook_thresh.exit:                           ; preds = %if.then21.i, %for.end.i.br_nf_hook_thresh.exit_crit_edge, %if.then10.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_forward_finish(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_dev_queue_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.nf_bridge_mtu_reduction.exit_crit_edge, label %if.then.i.i.i

entry.nf_bridge_mtu_reduction.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_mtu_reduction.exit

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  br label %nf_bridge_mtu_reduction.exit

nf_bridge_mtu_reduction.exit:                     ; preds = %if.then.i.i.i, %entry.nf_bridge_mtu_reduction.exit_crit_edge
  %retval.0.i.i208 = phi ptr [ %add.ptr.i.i, %if.then.i.i.i ], [ null, %entry.nf_bridge_mtu_reduction.exit_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i.i208 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %retval.0.i.i208, align 4
  %bf.lshr.mask.i = and i16 %bf.load.i, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, 512
  %..i = select i1 %cmp.i, i32 8, i32 0
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %mtu2 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %mtu2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu2, align 4
  %13 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not = icmp eq i16 %13, 0
  br i1 %tobool.not, label %nf_bridge_mtu_reduction.exit.if.end_crit_edge, label %if.then

nf_bridge_mtu_reduction.exit.if.end_crit_edge:    ; preds = %nf_bridge_mtu_reduction.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %nf_bridge_mtu_reduction.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %14 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load3 = load i16, ptr %pkt_type, align 8
  %bf.clear4 = and i16 %bf.load3, 8191
  %bf.set = or i16 %bf.clear4, 24576
  store i16 %bf.set, ptr %pkt_type, align 8
  %15 = ptrtoint ptr %retval.0.i.i208 to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load5 = load i16, ptr %retval.0.i.i208, align 4
  %bf.clear6 = and i16 %bf.load5, -129
  store i16 %bf.clear6, ptr %retval.0.i.i208, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nf_bridge_mtu_reduction.exit.if.end_crit_edge
  %frag_max_size = getelementptr inbounds %struct.nf_bridge_info, ptr %retval.0.i.i208, i32 0, i32 1
  %16 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frag_max_size, align 2
  %conv = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool8.not = icmp ne i16 %17, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp = icmp ugt i32 %12, %conv
  %or.cond = select i1 %tobool8.not, i1 %cmp, i1 false
  %mtu.0 = select i1 %or.cond, i32 %conv, i32 %12
  %18 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %active_extensions.i.i.i, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.i.not.i.i.i171 = icmp eq i8 %20, 0
  br i1 %tobool.i.not.i.i.i171, label %if.end.nf_bridge_info_get.exit.i_crit_edge, label %if.then.i.i.i177

if.end.nf_bridge_info_get.exit.i_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_get.exit.i

if.then.i.i.i177:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i.i172 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %21 = ptrtoint ptr %extensions.i.i.i172 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extensions.i.i.i172, align 8
  %offset.i.i.i173 = getelementptr inbounds %struct.skb_ext, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %offset.i.i.i173 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %offset.i.i.i173, align 1
  %conv.i.i.i174 = zext i8 %24 to i32
  %shl.i.i.i175 = shl nuw nsw i32 %conv.i.i.i174, 3
  %add.ptr.i.i.i176 = getelementptr i8, ptr %22, i32 %shl.i.i.i175
  br label %nf_bridge_info_get.exit.i

nf_bridge_info_get.exit.i:                        ; preds = %if.then.i.i.i177, %if.end.nf_bridge_info_get.exit.i_crit_edge
  %retval.0.i.i.i178 = phi ptr [ %add.ptr.i.i.i176, %if.then.i.i.i177 ], [ null, %if.end.nf_bridge_info_get.exit.i_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i.i.i178 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i179 = load i16, ptr %retval.0.i.i.i178, align 4
  %bf.lshr.i = lshr i16 %bf.load.i179, 8
  %trunc.i = trunc i16 %bf.lshr.i to i8
  %26 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %trunc.i, label %nf_bridge_info_get.exit.i.nf_bridge_update_protocol.exit_crit_edge [
    i8 1, label %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge
    i8 2, label %sw.bb1.i
  ]

nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge: ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

nf_bridge_info_get.exit.i.nf_bridge_update_protocol.exit_crit_edge: ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_update_protocol.exit

sw.bb1.i:                                         ; preds = %nf_bridge_info_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i16 [ -30620, %sw.bb1.i ], [ -32512, %nf_bridge_info_get.exit.i.sw.epilog.sink.split.i_crit_edge ]
  %protocol2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol2.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink.i, ptr %protocol2.i, align 8
  br label %nf_bridge_update_protocol.exit

nf_bridge_update_protocol.exit:                   ; preds = %sw.epilog.sink.split.i, %nf_bridge_info_get.exit.i.nf_bridge_update_protocol.exit_crit_edge
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %29)
  %switch.selectcmp.i.i = icmp eq i16 %29, -30620
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %29)
  %switch.selectcmp2.i.i = icmp eq i16 %29, -32512
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 4, i32 %switch.select.i.i
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %switch.select3.i.i) #12
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i, align 4
  %32 = trunc i32 %switch.select3.i.i to i16
  %conv2.i = sub i16 %31, %32
  store i16 %conv2.i, ptr %network_header.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.i.not = icmp eq i16 %36, 0
  br i1 %tobool.i.not, label %lor.lhs.false, label %nf_bridge_update_protocol.exit.if.then20_crit_edge

nf_bridge_update_protocol.exit.if.then20_crit_edge: ; preds = %nf_bridge_update_protocol.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

lor.lhs.false:                                    ; preds = %nf_bridge_update_protocol.exit
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %add = add i32 %38, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mtu.0)
  %cmp18.not = icmp ugt i32 %add, %mtu.0
  br i1 %cmp18.not, label %if.end22, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %nf_bridge_update_protocol.exit.if.then20_crit_edge
  %39 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %active_extensions.i.i.i, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.i.not.i.i181 = icmp eq i8 %41, 0
  br i1 %tobool.i.not.i.i181, label %if.then20.nf_bridge_info_free.exit_crit_edge, label %if.then.i.i182

if.then20.nf_bridge_info_free.exit_crit_edge:     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_free.exit

if.then.i.i182:                                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__skb_ext_del(ptr noundef %skb, i32 noundef 0) #12
  br label %nf_bridge_info_free.exit

nf_bridge_info_free.exit:                         ; preds = %if.then.i.i182, %if.then20.nf_bridge_info_free.exit_crit_edge
  %call21 = tail call i32 @br_dev_queue_push_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup108

if.end22:                                         ; preds = %lor.lhs.false
  %42 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %protocol.i.i, align 8
  %44 = zext i16 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %43, label %if.end105 [
    i16 2048, label %if.then26
    i16 -31011, label %if.then62
  ]

if.then26:                                        ; preds = %if.end22
  %call27 = tail call fastcc i32 @br_validate_ipv4(ptr noundef %net, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then26.drop_crit_edge

if.then26.drop_crit_edge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end30:                                         ; preds = %if.then26
  %45 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %frag_max_size, align 2
  %frag_max_size32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %47 = ptrtoint ptr %frag_max_size32 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %frag_max_size32, align 2
  %48 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  %add35 = add i32 %53, ptrtoint (ptr @brnf_frag_data_storage to i32)
  %54 = inttoptr i32 %add35 to ptr
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %55 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %bf.load36 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load36)
  %tobool39.not = icmp sgt i32 %bf.load36, -1
  br i1 %tobool39.not, label %if.end30.if.end44_crit_edge, label %if.then40

if.end30.if.end44_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.then40:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %56 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %vlan_tci, align 2
  %vlan_tci41 = getelementptr inbounds %struct.brnf_frag_data, ptr %54, i32 0, i32 3
  %58 = ptrtoint ptr %vlan_tci41 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %vlan_tci41, align 2
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %59 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vlan_proto, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end30.if.end44_crit_edge
  %.sink = phi i16 [ %60, %if.then40 ], [ 0, %if.end30.if.end44_crit_edge ]
  %61 = getelementptr inbounds %struct.brnf_frag_data, ptr %54, i32 0, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %.sink, ptr %61, align 2
  %63 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %64)
  %switch.selectcmp.i = icmp eq i16 %64, -30620
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %64)
  %switch.selectcmp2.i = icmp eq i16 %64, -32512
  %65 = select i1 %switch.selectcmp.i, i8 8, i8 0
  %conv46 = select i1 %switch.selectcmp2.i, i8 4, i8 %65
  %encap_size = getelementptr inbounds %struct.brnf_frag_data, ptr %54, i32 0, i32 1
  %66 = ptrtoint ptr %encap_size to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv46, ptr %encap_size, align 2
  %conv50 = add nuw nsw i8 %conv46, 14
  %size = getelementptr inbounds %struct.brnf_frag_data, ptr %54, i32 0, i32 2
  %67 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv50, ptr %size, align 1
  %conv52 = zext i8 %conv50 to i32
  %sub = sub nsw i32 0, %conv52
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %68 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %69, i32 %sub
  %70 = call ptr @memcpy(ptr %54, ptr %add.ptr.i, i32 %conv52)
  %tobool.not.i.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i.i, label %if.end44.if.then.i.i186_crit_edge, label %lor.lhs.false.i.i

if.end44.if.then.i.i186_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i186

lor.lhs.false.i.i:                                ; preds = %if.end44
  %skc_state.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %71 = ptrtoint ptr %skc_state.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load volatile i8, ptr %skc_state.i.i.i, align 2
  %conv.i.i.i183 = zext i8 %72 to i32
  %shl.i.i.i184 = shl nuw i32 1, %conv.i.i.i183
  %and.i.i.i = and i32 %shl.i.i.i184, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i185 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i185, label %lor.lhs.false.i.i.if.then.i.i186_crit_edge, label %lor.lhs.false1.i.i

lor.lhs.false.i.i.if.then.i.i186_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i186

lor.lhs.false1.i.i:                               ; preds = %lor.lhs.false.i.i
  %pmtudisc.i.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %73 = ptrtoint ptr %pmtudisc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pmtudisc.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %74)
  %cmp.i.i.i = icmp ult i8 %74, 3
  br i1 %cmp.i.i.i, label %lor.lhs.false1.i.i.if.then.i.i186_crit_edge, label %if.end.i.i

lor.lhs.false1.i.i.if.then.i.i186_crit_edge:      ; preds = %lor.lhs.false1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i186

if.then.i.i186:                                   ; preds = %lor.lhs.false1.i.i.if.then.i.i186_crit_edge, %lor.lhs.false.i.i.if.then.i.i186_crit_edge, %if.end44.if.then.i.i186_crit_edge
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %75 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags.i.i, align 4
  %77 = and i16 %76, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool3.i.i = icmp ne i16 %77, 0
  %78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %and.i21.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i21.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i186.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i186.skb_dst.exit.i.i_crit_edge:        ; preds = %if.then.i.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i186
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !114

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then.i.i186.skb_dst.exit.i.i_crit_edge
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 8
  %and25.i.i.i = and i32 %82, -2
  %83 = inttoptr i32 %and25.i.i.i to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 127
  %86 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %sysctl_ip_fwd_use_pmtu.i.i.i = getelementptr inbounds %struct.net, ptr %87, i32 0, i32 35, i32 39
  %88 = ptrtoint ptr %sysctl_ip_fwd_use_pmtu.i.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %sysctl_ip_fwd_use_pmtu.i.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i22.i.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i22.i.i, label %lor.lhs.false.i.i.i, label %skb_dst.exit.i.i.if.then.i.i.i187_crit_edge

skb_dst.exit.i.i.if.then.i.i.i187_crit_edge:      ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i187

lor.lhs.false.i.i.i:                              ; preds = %skb_dst.exit.i.i
  %rt_mtu_locked.i.i.i.i = getelementptr inbounds %struct.rtable, ptr %83, i32 0, i32 9
  %90 = ptrtoint ptr %rt_mtu_locked.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load.i.i.i.i = load i32, ptr %rt_mtu_locked.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i32 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %ip_mtu_locked.exit.i.i.i, label %lor.lhs.false.i.i.i.if.then.i.i.i187_crit_edge

lor.lhs.false.i.i.i.if.then.i.i.i187_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i187

ip_mtu_locked.exit.i.i.i:                         ; preds = %lor.lhs.false.i.i.i
  %_metrics.i.i.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 2
  %91 = ptrtoint ptr %_metrics.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %_metrics.i.i.i.i.i.i.i, align 4
  %and.i.i.i.i.i.i.i = and i32 %92, -4
  %93 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %96 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool2.not.i.i.i = icmp eq i32 %96, 0
  %97 = and i1 %tobool3.i.i, %tobool2.not.i.i.i
  br i1 %97, label %ip_mtu_locked.exit.i.i.i.if.end9.i.i.i_crit_edge, label %ip_mtu_locked.exit.i.i.i.if.then.i.i.i187_crit_edge

ip_mtu_locked.exit.i.i.i.if.then.i.i.i187_crit_edge: ; preds = %ip_mtu_locked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i187

ip_mtu_locked.exit.i.i.i.if.end9.i.i.i_crit_edge: ; preds = %ip_mtu_locked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i.i

if.then.i.i.i187:                                 ; preds = %ip_mtu_locked.exit.i.i.i.if.then.i.i.i187_crit_edge, %lor.lhs.false.i.i.i.if.then.i.i.i187_crit_edge, %skb_dst.exit.i.i.if.then.i.i.i187_crit_edge
  %rt_pmtu.i.i.i = getelementptr inbounds %struct.rtable, ptr %83, i32 0, i32 9
  %98 = ptrtoint ptr %rt_pmtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %bf.load.i.i.i = load i32, ptr %rt_pmtu.i.i.i, align 4
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %bf.clear.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.then.i.i.i187.if.end9.i.i.i_crit_edge, label %land.lhs.true.i24.i.i

if.then.i.i.i187.if.end9.i.i.i_crit_edge:         ; preds = %if.then.i.i.i187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i.i

land.lhs.true.i24.i.i:                            ; preds = %if.then.i.i.i187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %99 = load volatile i32, ptr @jiffies, align 128
  %expires.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 3
  %100 = ptrtoint ptr %expires.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %expires.i.i.i, align 4
  %sub.i.i.i = sub i32 %99, %101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i23.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i23.i.i, label %land.lhs.true.i24.i.i.out.i.i.i_crit_edge, label %land.lhs.true.i24.i.i.if.end9.i.i.i_crit_edge

land.lhs.true.i24.i.i.if.end9.i.i.i_crit_edge:    ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i.i.i

land.lhs.true.i24.i.i.out.i.i.i_crit_edge:        ; preds = %land.lhs.true.i24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

if.end9.i.i.i:                                    ; preds = %land.lhs.true.i24.i.i.if.end9.i.i.i_crit_edge, %if.then.i.i.i187.if.end9.i.i.i_crit_edge, %ip_mtu_locked.exit.i.i.i.if.end9.i.i.i_crit_edge
  %_metrics.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 2
  %102 = ptrtoint ptr %_metrics.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %_metrics.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %103, -4
  %104 = inttoptr i32 %and.i.i.i.i to ptr
  %arrayidx.i.i.i.i = getelementptr i32, ptr %104, i32 1
  %105 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool11.not.i.i.i = icmp eq i32 %106, 0
  br i1 %tobool11.not.i.i.i, label %do.end.i25.i.i, label %if.end9.i.i.i.out.i.i.i_crit_edge

if.end9.i.i.i.out.i.i.i_crit_edge:                ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

do.end.i25.i.i:                                   ; preds = %if.end9.i.i.i
  %mtu16.i.i.i = getelementptr inbounds %struct.net_device, ptr %85, i32 0, i32 20
  %107 = ptrtoint ptr %mtu16.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %mtu16.i.i.i, align 4
  %rt_mtu_locked.i50.i.i.i = getelementptr inbounds %struct.rtable, ptr %83, i32 0, i32 9
  %109 = ptrtoint ptr %rt_mtu_locked.i50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load.i51.i.i.i = load i32, ptr %rt_mtu_locked.i50.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i51.i.i.i)
  %tobool.not.i52.i.i.i = icmp sgt i32 %bf.load.i51.i.i.i, -1
  br i1 %tobool.not.i52.i.i.i, label %ip_mtu_locked.exit58.i.i.i, label %do.end.i25.i.i.if.then21.i.i.i_crit_edge

do.end.i25.i.i.if.then21.i.i.i_crit_edge:         ; preds = %do.end.i25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i.i.i

ip_mtu_locked.exit58.i.i.i:                       ; preds = %do.end.i25.i.i
  %110 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %104, align 4
  %112 = and i32 %111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool18.not.i.i.i = icmp eq i32 %112, 0
  br i1 %tobool18.not.i.i.i, label %ip_mtu_locked.exit58.i.i.i.out.i.i.i_crit_edge, label %ip_mtu_locked.exit58.i.i.i.if.then21.i.i.i_crit_edge, !prof !115

ip_mtu_locked.exit58.i.i.i.if.then21.i.i.i_crit_edge: ; preds = %ip_mtu_locked.exit58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i.i.i

ip_mtu_locked.exit58.i.i.i.out.i.i.i_crit_edge:   ; preds = %ip_mtu_locked.exit58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i.i.i

if.then21.i.i.i:                                  ; preds = %ip_mtu_locked.exit58.i.i.i.if.then21.i.i.i_crit_edge, %do.end.i25.i.i.if.then21.i.i.i_crit_edge
  %rt_uses_gateway.i.i.i = getelementptr inbounds %struct.rtable, ptr %83, i32 0, i32 5
  %113 = ptrtoint ptr %rt_uses_gateway.i.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %rt_uses_gateway.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool23.not.i.i.i = icmp eq i8 %114, 0
  %115 = tail call i32 @llvm.umin.i32(i32 %108, i32 576) #12
  %spec.select.i.i.i = select i1 %tobool23.not.i.i.i, i32 %108, i32 %115
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.then21.i.i.i, %ip_mtu_locked.exit58.i.i.i.out.i.i.i_crit_edge, %if.end9.i.i.i.out.i.i.i_crit_edge, %land.lhs.true.i24.i.i.out.i.i.i_crit_edge
  %mtu.0.i.i.i = phi i32 [ %bf.clear.i.i.i, %land.lhs.true.i24.i.i.out.i.i.i_crit_edge ], [ %106, %if.end9.i.i.i.out.i.i.i_crit_edge ], [ %108, %ip_mtu_locked.exit58.i.i.i.out.i.i.i_crit_edge ], [ %spec.select.i.i.i, %if.then21.i.i.i ]
  %116 = tail call i32 @llvm.umin.i32(i32 %mtu.0.i.i.i, i32 65535) #12
  %lwtstate.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %83, i32 0, i32 13
  %117 = ptrtoint ptr %lwtstate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %lwtstate.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %118, null
  br i1 %tobool.not.i.i.i.i.i, label %out.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

out.i.i.i.if.end.i.i.i.i_crit_edge:               ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %out.i.i.i
  %flags.i.i.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %flags.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %flags.i.i.i.i.i, align 2
  %121 = and i16 %120, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

land.lhs.true.i.i.i.i.i.if.end.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %land.lhs.true.i.i.i.i.i
  %headroom.i.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %118, i32 0, i32 2
  %123 = ptrtoint ptr %headroom.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %headroom.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %124 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %116, i32 %conv.i.i.i.i)
  %cmp.i.i.i.i = icmp ugt i32 %116, %conv.i.i.i.i
  br i1 %cmp.i.i.i.i, label %land.lhs.true.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i.i

land.lhs.true.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_dst_mtu_maybe_forward.exit.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i.if.end.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.end.i.i.i.i_crit_edge, %out.i.i.i.if.end.i.i.i.i_crit_edge
  br label %ip_dst_mtu_maybe_forward.exit.i.i

ip_dst_mtu_maybe_forward.exit.i.i:                ; preds = %if.end.i.i.i.i, %land.lhs.true.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ 0, %if.end.i.i.i.i ], [ %conv.i.i.i.i, %land.lhs.true.i.i.i.i.ip_dst_mtu_maybe_forward.exit.i.i_crit_edge ]
  %sub34.i.i.i = sub nsw i32 %116, %retval.0.i.i.i.i
  br label %ip_skb_dst_mtu.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false1.i.i
  %125 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %125, align 8
  %and.i26.i.i = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26.i.i)
  %tobool.not.i27.i.i = icmp eq i32 %and.i26.i.i, 0
  br i1 %tobool.not.i27.i.i, label %if.end.i.i.skb_dst.exit36.i.i_crit_edge, label %land.lhs.true.i30.i.i

if.end.i.i.skb_dst.exit36.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit36.i.i

land.lhs.true.i30.i.i:                            ; preds = %if.end.i.i
  %call.i28.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i.i)
  %tobool1.not.i29.i.i = icmp eq i32 %call.i28.i.i, 0
  br i1 %tobool1.not.i29.i.i, label %land.rhs.i33.i.i, label %land.lhs.true.i30.i.i.skb_dst.exit36.i.i_crit_edge

land.lhs.true.i30.i.i.skb_dst.exit36.i.i_crit_edge: ; preds = %land.lhs.true.i30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit36.i.i

land.rhs.i33.i.i:                                 ; preds = %land.lhs.true.i30.i.i
  %call2.i31.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31.i.i)
  %tobool3.not.i32.i.i = icmp eq i32 %call2.i31.i.i, 0
  br i1 %tobool3.not.i32.i.i, label %do.end.i34.i.i, label %land.rhs.i33.i.i.skb_dst.exit36.i.i_crit_edge, !prof !114

land.rhs.i33.i.i.skb_dst.exit36.i.i_crit_edge:    ; preds = %land.rhs.i33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit36.i.i

do.end.i34.i.i:                                   ; preds = %land.rhs.i33.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit36.i.i

skb_dst.exit36.i.i:                               ; preds = %do.end.i34.i.i, %land.rhs.i33.i.i.skb_dst.exit36.i.i_crit_edge, %land.lhs.true.i30.i.i.skb_dst.exit36.i.i_crit_edge, %if.end.i.i.skb_dst.exit36.i.i_crit_edge
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %125, align 8
  %and25.i35.i.i = and i32 %129, -2
  %130 = inttoptr i32 %and25.i35.i.i to ptr
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %mtu8.i.i = getelementptr inbounds %struct.net_device, ptr %132, i32 0, i32 20
  %133 = ptrtoint ptr %mtu8.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %mtu8.i.i, align 4
  %135 = tail call i32 @llvm.umin.i32(i32 %134, i32 65535) #12
  %and.i37.i.i = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i.i)
  %tobool.not.i38.i.i = icmp eq i32 %and.i37.i.i, 0
  br i1 %tobool.not.i38.i.i, label %skb_dst.exit36.i.i.skb_dst.exit47.i.i_crit_edge, label %land.lhs.true.i41.i.i

skb_dst.exit36.i.i.skb_dst.exit47.i.i_crit_edge:  ; preds = %skb_dst.exit36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit47.i.i

land.lhs.true.i41.i.i:                            ; preds = %skb_dst.exit36.i.i
  %call.i39.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i)
  %tobool1.not.i40.i.i = icmp eq i32 %call.i39.i.i, 0
  br i1 %tobool1.not.i40.i.i, label %land.rhs.i44.i.i, label %land.lhs.true.i41.i.i.skb_dst.exit47.i.i_crit_edge

land.lhs.true.i41.i.i.skb_dst.exit47.i.i_crit_edge: ; preds = %land.lhs.true.i41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit47.i.i

land.rhs.i44.i.i:                                 ; preds = %land.lhs.true.i41.i.i
  %call2.i42.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i42.i.i)
  %tobool3.not.i43.i.i = icmp eq i32 %call2.i42.i.i, 0
  br i1 %tobool3.not.i43.i.i, label %do.end.i45.i.i, label %land.rhs.i44.i.i.skb_dst.exit47.i.i_crit_edge, !prof !114

land.rhs.i44.i.i.skb_dst.exit47.i.i_crit_edge:    ; preds = %land.rhs.i44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit47.i.i

do.end.i45.i.i:                                   ; preds = %land.rhs.i44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit47.i.i

skb_dst.exit47.i.i:                               ; preds = %do.end.i45.i.i, %land.rhs.i44.i.i.skb_dst.exit47.i.i_crit_edge, %land.lhs.true.i41.i.i.skb_dst.exit47.i.i_crit_edge, %skb_dst.exit36.i.i.skb_dst.exit47.i.i_crit_edge
  %136 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %125, align 8
  %and25.i46.i.i = and i32 %137, -2
  %138 = inttoptr i32 %and25.i46.i.i to ptr
  %lwtstate.i.i = getelementptr inbounds %struct.dst_entry, ptr %138, i32 0, i32 13
  %139 = ptrtoint ptr %lwtstate.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %lwtstate.i.i, align 4
  %tobool.not.i.i48.i.i = icmp eq ptr %140, null
  br i1 %tobool.not.i.i48.i.i, label %skb_dst.exit47.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i49.i.i

skb_dst.exit47.i.i.if.end.i.i.i_crit_edge:        ; preds = %skb_dst.exit47.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i49.i.i:                          ; preds = %skb_dst.exit47.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %flags.i.i.i.i, align 2
  %143 = and i16 %142, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %land.lhs.true.i.i49.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i52.i.i

land.lhs.true.i.i49.i.i.if.end.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i52.i.i:                            ; preds = %land.lhs.true.i.i49.i.i
  %headroom.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %140, i32 0, i32 2
  %145 = ptrtoint ptr %headroom.i.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %headroom.i.i.i, align 4
  %conv.i50.i.i = zext i16 %146 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %135, i32 %conv.i50.i.i)
  %cmp.i51.i.i = icmp ugt i32 %135, %conv.i50.i.i
  br i1 %cmp.i51.i.i, label %land.lhs.true.i52.i.i.lwtunnel_headroom.exit.i.i_crit_edge, label %land.lhs.true.i52.i.i.if.end.i.i.i_crit_edge

land.lhs.true.i52.i.i.if.end.i.i.i_crit_edge:     ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i52.i.i.lwtunnel_headroom.exit.i.i_crit_edge: ; preds = %land.lhs.true.i52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lwtunnel_headroom.exit.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i52.i.i.if.end.i.i.i_crit_edge, %land.lhs.true.i.i49.i.i.if.end.i.i.i_crit_edge, %skb_dst.exit47.i.i.if.end.i.i.i_crit_edge
  br label %lwtunnel_headroom.exit.i.i

lwtunnel_headroom.exit.i.i:                       ; preds = %if.end.i.i.i, %land.lhs.true.i52.i.i.lwtunnel_headroom.exit.i.i_crit_edge
  %retval.0.i.i.i188 = phi i32 [ 0, %if.end.i.i.i ], [ %conv.i50.i.i, %land.lhs.true.i52.i.i.lwtunnel_headroom.exit.i.i_crit_edge ]
  %sub.i.i = sub nsw i32 %135, %retval.0.i.i.i188
  br label %ip_skb_dst_mtu.exit.i

ip_skb_dst_mtu.exit.i:                            ; preds = %lwtunnel_headroom.exit.i.i, %ip_dst_mtu_maybe_forward.exit.i.i
  %retval.0.i.i189 = phi i32 [ %sub34.i.i.i, %ip_dst_mtu_maybe_forward.exit.i.i ], [ %sub.i.i, %lwtunnel_headroom.exit.i.i ]
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %147 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %head.i.i.i, align 8
  %149 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %network_header.i, align 4
  %conv.i.i2.i = zext i16 %150 to i32
  %add.ptr.i.i.i190 = getelementptr i8, ptr %148, i32 %conv.i.i2.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i190, i32 0, i32 4
  %151 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %frag_off.i, align 2
  %153 = and i16 %152, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %153)
  %tobool.not.i = icmp eq i16 %153, 0
  br i1 %tobool.not.i, label %ip_skb_dst_mtu.exit.i.lor.rhs.i_crit_edge, label %land.lhs.true.i

ip_skb_dst_mtu.exit.i.lor.rhs.i_crit_edge:        ; preds = %ip_skb_dst_mtu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %ip_skb_dst_mtu.exit.i
  %ignore_df.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %154 = ptrtoint ptr %ignore_df.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load.i191 = load i16, ptr %ignore_df.i, align 8
  %155 = and i16 %bf.load.i191, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool2.not.i = icmp eq i16 %155, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true.i.lor.rhs.i_crit_edge, !prof !114

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %ip_skb_dst_mtu.exit.i.lor.rhs.i_crit_edge
  %156 = ptrtoint ptr %frag_max_size32 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %frag_max_size32, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool4.not.i = icmp ne i16 %157, 0
  %conv3.i = zext i16 %157 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i189, i32 %conv3.i)
  %cmp.i192 = icmp ult i32 %retval.0.i.i189, %conv3.i
  %or.cond.i = select i1 %tobool4.not.i, i1 %cmp.i192, i1 false
  br i1 %or.cond.i, label %lor.rhs.i.do.body.i_crit_edge, label %if.end.i, !prof !142

lor.rhs.i.do.body.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

do.body.i:                                        ; preds = %lor.rhs.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge
  tail call fastcc void @local_bh_disable() #12
  %mib.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %158 = ptrtoint ptr %mib.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mib.i, align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %164
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %166, %160
  %167 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.ipstats_mib, ptr %167, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp.i) #12
  %arrayidx16.i = getelementptr [37 x i64], ptr %167, i32 0, i32 21
  %168 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %arrayidx16.i, align 8
  %add17.i = add i64 %169, 1
  store i64 %add17.i, ptr %arrayidx16.i, align 8
  %dep_map.i.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %167, i32 0, i32 1, i32 0, i32 1
  %170 = tail call ptr @llvm.returnaddress(i32 0) #12
  %171 = ptrtoint ptr %170 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %171) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  %172 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %173, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call fastcc void @local_bh_enable() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup108

if.end.i:                                         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %call23.i = tail call i32 @ip_do_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull @br_nf_push_frag_xmit) #12
  br label %cleanup108

if.then62:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_ipv6_ops to i32))
  %174 = load volatile ptr, ptr @nf_ipv6_ops, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i193 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i193, label %land.lhs.true.i194, label %if.then62.nf_get_ipv6_ops.exit_crit_edge

if.then62.nf_get_ipv6_ops.exit_crit_edge:         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_get_ipv6_ops.exit

land.lhs.true.i194:                               ; preds = %if.then62
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i194.nf_get_ipv6_ops.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i194.nf_get_ipv6_ops.exit_crit_edge: ; preds = %land.lhs.true.i194
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_get_ipv6_ops.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i194
  %.b9.i = load i1, ptr @nf_get_ipv6_ops.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.nf_get_ipv6_ops.exit_crit_edge, label %if.then.i

land.lhs.true4.i.nf_get_ipv6_ops.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_get_ipv6_ops.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_get_ipv6_ops.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 76, ptr noundef nonnull @.str.1) #12
  br label %nf_get_ipv6_ops.exit

nf_get_ipv6_ops.exit:                             ; preds = %if.then.i, %land.lhs.true4.i.nf_get_ipv6_ops.exit_crit_edge, %land.lhs.true.i194.nf_get_ipv6_ops.exit_crit_edge, %if.then62.nf_get_ipv6_ops.exit_crit_edge
  %call65 = tail call i32 @br_validate_ipv6(ptr noundef %net, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %nf_get_ipv6_ops.exit.drop_crit_edge

nf_get_ipv6_ops.exit.drop_crit_edge:              ; preds = %nf_get_ipv6_ops.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end68:                                         ; preds = %nf_get_ipv6_ops.exit
  %175 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %frag_max_size, align 2
  %frag_max_size72 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %177 = ptrtoint ptr %frag_max_size72 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %176, ptr %frag_max_size72, align 4
  %178 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i195 = and i32 %178, -16384
  %179 = inttoptr i32 %and.i195 to ptr
  %cpu81 = getelementptr inbounds %struct.thread_info, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %cpu81 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %cpu81, align 4
  %arrayidx82 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %181
  %182 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx82, align 4
  %add83 = add i32 %183, ptrtoint (ptr @brnf_frag_data_storage to i32)
  %184 = inttoptr i32 %add83 to ptr
  %185 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30620, i16 %186)
  %switch.selectcmp.i197 = icmp eq i16 %186, -30620
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %186)
  %switch.selectcmp2.i199 = icmp eq i16 %186, -32512
  %187 = select i1 %switch.selectcmp.i197, i8 8, i8 0
  %conv85 = select i1 %switch.selectcmp2.i199, i8 4, i8 %187
  %encap_size86 = getelementptr inbounds %struct.brnf_frag_data, ptr %184, i32 0, i32 1
  %188 = ptrtoint ptr %encap_size86 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv85, ptr %encap_size86, align 2
  %conv90 = add nuw nsw i8 %conv85, 14
  %size91 = getelementptr inbounds %struct.brnf_frag_data, ptr %184, i32 0, i32 2
  %189 = ptrtoint ptr %size91 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv90, ptr %size91, align 1
  %conv93 = zext i8 %conv90 to i32
  %sub94 = sub nsw i32 0, %conv93
  %data.i201 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %190 = ptrtoint ptr %data.i201 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %data.i201, align 4
  %add.ptr.i202 = getelementptr i8, ptr %191, i32 %sub94
  %192 = call ptr @memcpy(ptr %184, ptr %add.ptr.i202, i32 %conv93)
  %tobool99.not = icmp eq ptr %174, null
  br i1 %tobool99.not, label %if.end102, label %if.then100

if.then100:                                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %fragment = getelementptr inbounds %struct.nf_ipv6_ops, ptr %174, i32 0, i32 1
  %193 = ptrtoint ptr %fragment to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %fragment, align 4
  %call101 = tail call i32 %194(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull @br_nf_push_frag_xmit) #12
  br label %cleanup108

if.end102:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup108

if.end105:                                        ; preds = %if.end22
  %195 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %active_extensions.i.i.i, align 1
  %197 = and i8 %196, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.i.not.i.i204 = icmp eq i8 %197, 0
  br i1 %tobool.i.not.i.i204, label %if.end105.nf_bridge_info_free.exit206_crit_edge, label %if.then.i.i205

if.end105.nf_bridge_info_free.exit206_crit_edge:  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_free.exit206

if.then.i.i205:                                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__skb_ext_del(ptr noundef %skb, i32 noundef 0) #12
  br label %nf_bridge_info_free.exit206

nf_bridge_info_free.exit206:                      ; preds = %if.then.i.i205, %if.end105.nf_bridge_info_free.exit206_crit_edge
  %call106 = tail call i32 @br_dev_queue_push_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup108

drop:                                             ; preds = %nf_get_ipv6_ops.exit.drop_crit_edge, %if.then26.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup108

cleanup108:                                       ; preds = %drop, %nf_bridge_info_free.exit206, %if.end102, %if.then100, %if.end.i, %do.body.i, %nf_bridge_info_free.exit
  %retval.2 = phi i32 [ %call21, %nf_bridge_info_free.exit ], [ 0, %drop ], [ %call106, %nf_bridge_info_free.exit206 ], [ %call23.i, %if.end.i ], [ -90, %do.body.i ], [ -90, %if.end102 ], [ %call101, %if.then100 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_dev_queue_push_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_push_frag_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !104) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @brnf_frag_data_storage to i32)
  %6 = inttoptr i32 %add to ptr
  %size = getelementptr inbounds %struct.brnf_frag_data, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %size, align 1
  %conv = zext i8 %8 to i32
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %9 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.skb_header_cloned.exit.i_crit_edge, label %if.end.i.i

entry.skb_header_cloned.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_header_cloned.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %dataref1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %dataref1.i.i, align 4
  %and.i.i = and i32 %13, 65535
  %shr.i.i = ashr i32 %13, 16
  %sub.i.i = sub nsw i32 %and.i.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.not.i = icmp eq i32 %sub.i.i, 1
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %if.end.i.i, %entry.skb_header_cloned.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %cmp.i.not.i, %if.end.i.i ], [ true, %entry.skb_header_cloned.exit.i_crit_edge ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %conv)
  %tobool.not.i3.i = icmp uge i32 %sub.ptr.sub.i.i.i, %conv
  %or.cond.i.i = and i1 %retval.0.i.i, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_header_cloned.exit.i.if.end_crit_edge, label %skb_cow_head.exit

skb_header_cloned.exit.i.if.end_crit_edge:        ; preds = %skb_header_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %conv, i32 %sub.ptr.sub.i.i.i) #12
  %add.i.i = add nuw nsw i32 %18, 127
  %and.i4.i = and i32 %add.i.i, 384
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow_head.exit.if.end_crit_edge, label %if.then

skb_cow_head.exit.if.end_crit_edge:               ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %skb_cow_head.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end:                                           ; preds = %skb_cow_head.exit.if.end_crit_edge, %skb_header_cloned.exit.i.if.end_crit_edge
  %vlan_proto = getelementptr inbounds %struct.brnf_frag_data, ptr %6, i32 0, i32 4
  %19 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vlan_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool3.not = icmp eq i16 %20, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %vlan_tci = getelementptr inbounds %struct.brnf_frag_data, ptr %6, i32 0, i32 3
  %21 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_tci, align 2
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %23 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %20, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %24 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %22, ptr %vlan_tci2.i, align 2
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %25 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.set.i = or i32 %bf.load.i, -2147483648
  store i32 %bf.set.i, ptr %vlan_present.i, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %size, align 1
  %conv8 = zext i8 %27 to i32
  %sub = sub nsw i32 0, %conv8
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %sub
  %30 = call ptr @memcpy(ptr %add.ptr.i, ptr %6, i32 %conv8)
  %encap_size = getelementptr inbounds %struct.brnf_frag_data, ptr %6, i32 0, i32 1
  %31 = ptrtoint ptr %encap_size to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %encap_size, align 2
  %conv11 = zext i8 %32 to i32
  %33 = load ptr, ptr %data.i.i.i, align 4
  %idx.neg.i = sub nsw i32 0, %conv11
  %add.ptr.i29 = getelementptr i8, ptr %33, i32 %idx.neg.i
  store ptr %add.ptr.i29, ptr %data.i.i.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %35, %conv11
  store i32 %add.i, ptr %len1.i, align 4
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %36 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %active_extensions.i.i.i, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.i.not.i.i, label %if.end6.nf_bridge_info_free.exit_crit_edge, label %if.then.i.i

if.end6.nf_bridge_info_free.exit_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_bridge_info_free.exit

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__skb_ext_del(ptr noundef %skb, i32 noundef 0) #12
  br label %nf_bridge_info_free.exit

nf_bridge_info_free.exit:                         ; preds = %if.then.i.i, %if.end6.nf_bridge_info_free.exit_crit_edge
  %call13 = tail call i32 @br_dev_queue_push_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %nf_bridge_info_free.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call13, %nf_bridge_info_free.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_del(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_do_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brnf_init_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %entry.if.end4.i_crit_edge, label %if.then.i

entry.if.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @brnf_table, i32 noundef 252, i32 noundef 3264) #12
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then.i.br_netfilter_sysctl_init_net.exit_crit_edge, label %if.then.i.if.end4.i_crit_edge

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then.i.br_netfilter_sysctl_init_net.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_netfilter_sysctl_init_net.exit

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %entry.if.end4.i_crit_edge
  %table.0.i = phi ptr [ @brnf_table, %entry.if.end4.i_crit_edge ], [ %call1.i, %if.then.i.if.end4.i_crit_edge ]
  %0 = load i32, ptr @brnf_net_id, align 4
  %call5.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #12
  %call_arptables.i = getelementptr inbounds %struct.brnf_net, ptr %call5.i, i32 0, i32 4
  %data.i = getelementptr inbounds %struct.ctl_table, ptr %table.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call_arptables.i, ptr %data.i, align 4
  %call_iptables.i = getelementptr inbounds %struct.brnf_net, ptr %call5.i, i32 0, i32 2
  %data7.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 1, i32 1
  %2 = ptrtoint ptr %data7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call_iptables.i, ptr %data7.i, align 4
  %call_ip6tables.i = getelementptr inbounds %struct.brnf_net, ptr %call5.i, i32 0, i32 3
  %data9.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 2, i32 1
  %3 = ptrtoint ptr %data9.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call_ip6tables.i, ptr %data9.i, align 4
  %filter_vlan_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call5.i, i32 0, i32 5
  %data11.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 3, i32 1
  %4 = ptrtoint ptr %data11.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %filter_vlan_tagged.i, ptr %data11.i, align 4
  %filter_pppoe_tagged.i = getelementptr inbounds %struct.brnf_net, ptr %call5.i, i32 0, i32 6
  %data13.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 4, i32 1
  %5 = ptrtoint ptr %data13.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %filter_pppoe_tagged.i, ptr %data13.i, align 4
  %pass_vlan_indev.i = getelementptr inbounds %struct.brnf_net, ptr %call5.i, i32 0, i32 7
  %data15.i = getelementptr %struct.ctl_table, ptr %table.0.i, i32 5, i32 1
  %6 = ptrtoint ptr %data15.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pass_vlan_indev.i, ptr %data15.i, align 4
  %7 = ptrtoint ptr %call_iptables.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call_iptables.i, align 4
  %8 = ptrtoint ptr %call_ip6tables.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call_ip6tables.i, align 4
  %9 = ptrtoint ptr %call_arptables.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %call_arptables.i, align 4
  %10 = ptrtoint ptr %filter_vlan_tagged.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %filter_vlan_tagged.i, align 4
  %11 = ptrtoint ptr %filter_pppoe_tagged.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %filter_pppoe_tagged.i, align 4
  %12 = ptrtoint ptr %pass_vlan_indev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pass_vlan_indev.i, align 4
  %call16.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.21, ptr noundef nonnull %table.0.i) #12
  %ctl_hdr.i = getelementptr inbounds %struct.brnf_net, ptr %call5.i, i32 0, i32 1
  %13 = ptrtoint ptr %ctl_hdr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16.i, ptr %ctl_hdr.i, align 4
  %tobool18.not.i = icmp ne ptr %call16.i, null
  %brmerge.i = or i1 %cmp.i.not.i, %tobool18.not.i
  %.mux.i = select i1 %tobool18.not.i, i32 0, i32 -12
  br i1 %brmerge.i, label %if.end4.i.br_netfilter_sysctl_init_net.exit_crit_edge, label %if.then22.i

if.end4.i.br_netfilter_sysctl_init_net.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_netfilter_sysctl_init_net.exit

if.then22.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %table.0.i) #12
  br label %br_netfilter_sysctl_init_net.exit

br_netfilter_sysctl_init_net.exit:                ; preds = %if.then22.i, %if.end4.i.br_netfilter_sysctl_init_net.exit_crit_edge, %if.then.i.br_netfilter_sysctl_init_net.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.then.i.br_netfilter_sysctl_init_net.exit_crit_edge ], [ -12, %if.then22.i ], [ %.mux.i, %if.end4.i.br_netfilter_sysctl_init_net.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brnf_exit_net(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @brnf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 4, !range !129
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef nonnull @br_nf_ops, i32 noundef 6) #12
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ctl_hdr.i = getelementptr inbounds %struct.brnf_net, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %ctl_hdr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl_hdr.i, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %5) #12
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.br_netfilter_sysctl_exit_net.exit_crit_edge, label %if.then.i

if.end.br_netfilter_sysctl_exit_net.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %br_netfilter_sysctl_exit_net.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %7) #12
  br label %br_netfilter_sysctl_exit_net.exit

br_netfilter_sysctl_exit_net.exit:                ; preds = %if.then.i, %if.end.br_netfilter_sysctl_exit_net.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brnf_sysctl_call_tables(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proc_dointvec(ptr noundef %ctl, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %data = getelementptr inbounds %struct.ctl_table, ptr %ctl, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_nf_dev_xmit(ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %0 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_extensions.i.i.i, align 1
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.i.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.i.not.i.i, label %entry.cleanup_crit_edge, label %nf_bridge_info_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

nf_bridge_info_get.exit:                          ; preds = %entry
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %3 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.skb_ext, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %shl.i.i
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %nf_bridge_info_get.exit.cleanup_crit_edge, label %land.lhs.true

nf_bridge_info_get.exit.cleanup_crit_edge:        ; preds = %nf_bridge_info_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %nf_bridge_info_get.exit
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %add.ptr.i.i, align 4
  %8 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool1.not = icmp eq i16 %8, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %br_nf_pre_routing_finish_bridge_slow.exit

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

br_nf_pre_routing_finish_bridge_slow.exit:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %extensions.i.i, align 8
  %offset.i.i.i = getelementptr inbounds %struct.skb_ext, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %12 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv.i.i.i, 3
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %shl.i.i.i
  %call1.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #12
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = and i16 %bf.load.i, -33
  store i16 %bf.clear.i, ptr %add.ptr.i.i.i, align 4
  %14 = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i, i32 0, i32 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %16, i32 -8
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %14, align 1
  %19 = ptrtoint ptr %add.ptr.i.i4 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %add.ptr.i.i4, align 1
  %physindev.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %physindev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %physindev.i, align 4
  %22 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %22, align 8
  %physoutdev.i = getelementptr inbounds %struct.nf_bridge_info, ptr %add.ptr.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %physoutdev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %physoutdev.i, align 4
  %25 = load ptr, ptr %22, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 127
  %26 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nd_net.i.i, align 4
  %call3.i = tail call i32 @br_handle_frame_finish(ptr noundef %27, ptr noundef null, ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %br_nf_pre_routing_finish_bridge_slow.exit, %land.lhs.true.cleanup_crit_edge, %nf_bridge_info_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %br_nf_pre_routing_finish_bridge_slow.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %nf_bridge_info_get.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !25, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !45, !47, !49, !50, !51, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102}
!llvm.named.register.sp = !{!104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1010, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_br_netfilter__702_1191_br_netfilter_init6, !5, !"__initcall__kmod_br_netfilter__702_1191_br_netfilter_init6", i1 false, i1 false}
!5 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1191, i32 1}
!6 = !{ptr @__exitcall_br_netfilter_fini, !7, !"__exitcall_br_netfilter_fini", i1 false, i1 false}
!7 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1192, i32 1}
!8 = !{ptr @__UNIQUE_ID_file703, !9, !"__UNIQUE_ID_file703", i1 false, i1 false}
!9 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1194, i32 1}
!10 = !{ptr @__UNIQUE_ID_license704, !9, !"__UNIQUE_ID_license704", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author705, !12, !"__UNIQUE_ID_author705", i1 false, i1 false}
!12 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1195, i32 1}
!13 = !{ptr @__UNIQUE_ID_author706, !14, !"__UNIQUE_ID_author706", i1 false, i1 false}
!14 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1196, i32 1}
!15 = !{ptr @__UNIQUE_ID_description707, !16, !"__UNIQUE_ID_description707", i1 false, i1 false}
!16 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1197, i32 1}
!17 = !{ptr @__pcpu_unique_brnf_frag_data_storage, !18, !"__pcpu_unique_brnf_frag_data_storage", i1 false, i1 false}
!18 = !{!"../net/bridge/br_netfilter_hooks.c", i32 143, i32 8}
!19 = !{ptr @brnf_frag_data_storage, !18, !"brnf_frag_data_storage", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/bridge/br_private.h", i32 416, i32 9}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/net/dst.h", i32 411, i32 6}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @brnf_net_id, !39, !"brnf_net_id", i1 false, i1 false}
!39 = !{!"../net/bridge/br_netfilter_hooks.c", i32 46, i32 21}
!40 = !{ptr @brnf_notifier, !41, !"brnf_notifier", i1 false, i1 false}
!41 = !{!"../net/bridge/br_netfilter_hooks.c", i32 988, i32 30}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../net/bridge/br_netfilter_hooks.c", i32 973, i32 2}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @br_nf_ops, !46, !"br_nf_ops", i1 false, i1 false}
!46 = !{!"../net/bridge/br_netfilter_hooks.c", i32 923, i32 33}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../net/bridge/br_netfilter_hooks.c", i32 500, i32 4}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @br_nf_pre_routing._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @br_nf_pre_routing._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!58 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!67 = distinct !{null, !68, !"__warned", i1 false, i1 false}
!68 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!73 = !{ptr @.str.19, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../include/net/dst.h", i32 161, i32 2}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/netfilter_ipv6.h", i32 76, i32 9}
!78 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @brnf_net_ops, !80, !"brnf_net_ops", i1 false, i1 false}
!80 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1156, i32 33}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1114, i32 44}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1045, i32 15}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1051, i32 15}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1057, i32 15}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1063, i32 15}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1069, i32 15}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1075, i32 15}
!95 = !{ptr @brnf_table, !96, !"brnf_table", i1 false, i1 false}
!96 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1043, i32 25}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/bridge/br_netfilter_hooks.c", i32 1180, i32 2}
!99 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @br_netfilter_init._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @br_netfilter_init._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @br_ops, !103, !"br_ops", i1 false, i1 false}
!103 = !{!"../net/bridge/br_netfilter_hooks.c", i32 917, i32 31}
!104 = !{!"sp"}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{i64 773399, i64 773460}
!117 = !{i64 776131}
!118 = !{i64 776416}
!119 = !{i64 2150016278}
!120 = !{i64 2150016120}
!121 = !{i64 2150016448}
!122 = !{i64 2150001525}
!123 = !{i64 2148459254}
!124 = !{i64 2148373694, i64 2148373726, i64 2148373755, i64 2148373789, i64 2148373820, i64 2148373843}
!125 = !{i64 2149335368}
!126 = !{i64 2154610179, i64 2154614728, i64 2154610216, i64 2154610272, i64 2154610306, i64 2154610330, i64 2154610371, i64 2154610392, i64 2154610420, i64 2154610454}
!127 = !{i64 2149385858}
!128 = !{i64 2149386124}
!129 = !{i8 0, i8 2}
!130 = !{ptr @br_nf_dev_queue_xmit, ptr @br_nf_forward_finish, ptr @br_nf_pre_routing_finish}
!131 = !{i64 6602762, i64 6602801, i64 6602827, i64 6602851, i64 6602876, i64 6602902, i64 6602927, i64 6602953, i64 6602980, i64 6603006, i64 6603045, i64 6603089, i64 6603120, i64 6603145}
!132 = !{i64 6602379}
!133 = !{i64 2150002175}
!134 = !{i64 2148369118}
!135 = !{i64 854738, i64 854763, i64 854785, i64 854801, i64 854813, i64 854833, i64 854857, i64 854873, i64 854885}
!136 = !{i64 2148369306}
!137 = !{i64 2149893857}
!138 = !{i64 2149898789}
!139 = !{i64 2149920501}
!140 = !{i64 2149925393}
!141 = !{i64 2150001850}
!142 = !{!"branch_weights", i32 1, i32 4001}
