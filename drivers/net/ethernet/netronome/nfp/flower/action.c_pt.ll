; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/action.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/action.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flow_match_basic = type { ptr, ptr }
%struct.nfp_flower_pedit_acts = type { %struct.nfp_fl_set_ipv6_addr, %struct.nfp_fl_set_ipv6_addr, %struct.nfp_fl_set_ipv6_tc_hl_fl, %struct.nfp_fl_set_ip4_ttl_tos, %struct.nfp_fl_set_ip4_addrs, %struct.nfp_fl_set_tport, %struct.nfp_fl_set_eth }
%struct.nfp_fl_set_ipv6_addr = type { %struct.nfp_fl_act_head, i16, [4 x %struct.anon.233] }
%struct.nfp_fl_act_head = type { i8, i8 }
%struct.anon.233 = type { i32, i32 }
%struct.nfp_fl_set_ipv6_tc_hl_fl = type { %struct.nfp_fl_act_head, i8, i8, i16, i8, i8, i32, i32 }
%struct.nfp_fl_set_ip4_ttl_tos = type { %struct.nfp_fl_act_head, i8, i8, i8, i8, i16 }
%struct.nfp_fl_set_ip4_addrs = type { %struct.nfp_fl_act_head, i16, i32, i32, i32, i32 }
%struct.nfp_fl_set_tport = type { %struct.nfp_fl_act_head, i16, [4 x i8], [4 x i8] }
%struct.nfp_fl_set_eth = type { %struct.nfp_fl_act_head, i16, [12 x i8], [12 x i8] }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.219, ptr }
%union.anon.219 = type { %struct.anon.224 }
%struct.anon.224 = type { i32, i64, i64, i64, i32 }
%struct.nfp_fl_payload = type { %struct.nfp_fl_rule_metadata, i32, %struct.rhash_head, %struct.callback_head, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i8, %struct.anon.232 }
%struct.nfp_fl_rule_metadata = type <{ i8, i8, i8, i8, i32, i64, i64, i32 }>
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.232 = type { ptr, i16, i16 }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.177, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.198, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.177 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.198 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.nfp_fl_pop_vlan = type { %struct.nfp_fl_act_head, i16 }
%struct.nfp_fl_push_vlan = type { %struct.nfp_fl_act_head, i16, i16, i16 }
%struct.anon.220 = type { i16, i16, i8 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ip_tunnel_key = type { i64, %union.anon.212, i16, i8, i8, i32, i16, i16 }
%union.anon.212 = type { %struct.anon.214 }
%struct.anon.214 = type { %struct.in6_addr, %struct.in6_addr }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.dst_cache = type { ptr, i32 }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }
%struct.nfp_fl_push_geneve = type { %struct.nfp_fl_act_head, i16, i16, i8, i8, [0 x i8] }
%struct.nfp_fl_set_tun = type <{ %struct.nfp_fl_act_head, i16, i64, i32, i16, i8, i8, i16, i16, i8, i8, i16 }>
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.nfp_fl_pre_tunnel = type { %struct.nfp_fl_act_head, i16, %union.anon.234 }
%union.anon.234 = type { %struct.in6_addr }
%struct.anon.221 = type { i32, i32, i32, i32 }
%struct.anon.227 = type { i32, i16, i8, i8, i8 }
%struct.nfp_fl_push_mpls = type { %struct.nfp_fl_act_head, i16, i32 }
%struct.nfp_fl_pop_mpls = type { %struct.nfp_fl_act_head, i16 }
%struct.anon.229 = type { i32, i8, i8, i8 }
%struct.nfp_fl_set_mpls = type { %struct.nfp_fl_act_head, i16, i32, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.nfp_fl_output = type { %struct.nfp_fl_act_head, i16, i32 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.211 }
%union.anon.211 = type { %struct.ip_tunnel_info }
%struct.hw_port_info = type { ptr, i32 }

@__flow_action_hw_stats_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/net/flow_offload.h\00", [37 x i8] zeroinitializer }, align 32
@__flow_action_hw_stats_check.__msg.1 = internal constant [52 x i8] c"nfp: Driver does not support selected HW stats type\00", align 1
@flow_action_mixed_hw_stats_check.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: Mixing HW stats types for actions is not supported\00", [40 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at pop vlan\00", [48 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.2 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at push vlan\00", [47 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.3 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"nfp: unsupported offload: unsupported tunnel type in action list\00", [63 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nfp: unsupported offload: unsupported tunnel flags in action list\00", [62 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.5 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at tunnel encap\00", [44 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.6 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"nfp: unsupported offload: unsupported csum update action in action list\00", [56 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.7 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at push MPLS\00", [47 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.8 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at pop MPLS\00", [48 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.9 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at set MPLS\00", [48 x i8] zeroinitializer }, align 32
@nfp_flower_loop_action.__msg.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"nfp: unsupported offload: unsupported action in action list\00", [36 x i8] zeroinitializer }, align 32
@nfp_flower_output_action.__msg = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"nfp: unsupported offload: set actions without updating checksums are not supported\00", [45 x i8] zeroinitializer }, align 32
@nfp_flower_output_action.__msg.11 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"nfp: unsupported offload: mirred output increases action list size beyond the allowed maximum\00", [34 x i8] zeroinitializer }, align 32
@nfp_flower_output_action.__msg.12 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"nfp: unsupported offload: LAG action has to be last action in action list\00", [54 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"nfp: unsupported offload: invalid egress interface for mirred action\00", [59 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.13 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"nfp: unsupported offload: egress interface does not match the required tunnel type\00", [45 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.14 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"nfp: unsupported offload: cannot offload more than one tunnel mirred output per filter\00", [41 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: invalid entry: cannot find group id for LAG action\00", [40 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.16 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"nfp: unsupported offload: pre-tunnel rules not supported in loaded firmware\00", [52 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.17 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"nfp: unsupported offload: pre-tunnel rules require single egress dev and ptype HOST action\00", [37 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.18 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"nfp: unsupported offload: ingress and egress interfaces are on different devices\00", [47 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nfp: unsupported offload: egress interface is not an nfp port\00", [34 x i8] zeroinitializer }, align 32
@nfp_fl_output.__msg.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"nfp: unsupported offload: invalid port id for egress interface\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gretap\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6gretap\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"geneve\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"openvswitch\00", [20 x i8] zeroinitializer }, align 32
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@nfp_fl_pre_lag.__msg = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at LAG action\00", [46 x i8] zeroinitializer }, align 32
@nfp_fl_push_geneve_options.__msg = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"nfp: unsupported offload: maximum allowed number of geneve options exceeded\00", [52 x i8] zeroinitializer }, align 32
@nfp_fl_push_geneve_options.__msg.26 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at push geneve options\00", [37 x i8] zeroinitializer }, align 32
@nfp_fl_push_geneve_options.__msg.27 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"nfp: unsupported offload: maximum allowed action list size exceeded at push geneve options\00", [37 x i8] zeroinitializer }, align 32
@nfp_fl_set_tun.__msg = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"nfp: unsupported offload: loaded firmware does not support geneve options offload\00", [46 x i8] zeroinitializer }, align 32
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@nfp_fl_set_tun.__msg.28 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"nfp: unsupported offload: loaded firmware does not support tunnel flag offload\00", [49 x i8] zeroinitializer }, align 32
@nfp_fl_pedit.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nfp: unsupported offload: pedit on unsupported header\00", [42 x i8] zeroinitializer }, align 32
@nfp_fl_set_eth.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: unsupported offload: invalid pedit ethernet action\00", [40 x i8] zeroinitializer }, align 32
@nfp_fl_set_eth.__msg.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: unsupported offload: invalid pedit ethernet action\00", [40 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip4.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: unsupported offload: invalid pedit IPv4 action\00", [44 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip4.__msg.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: unsupported offload: invalid pedit IPv4 ttl action\00", [40 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip4.__msg.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: unsupported offload: invalid pedit IPv4 tos action\00", [40 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip4.__msg.32 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"nfp: unsupported offload: pedit on unsupported section of IPv4 header\00", [58 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip6.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nfp: unsupported offload: invalid pedit IPv6 action\00", [44 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip6.__msg.33 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"nfp: unsupported offload: pedit on unsupported section of IPv6 header\00", [58 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip6_hop_limit_flow_label.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"nfp: unsupported offload: invalid pedit IPv6 hop limit action\00", [34 x i8] zeroinitializer }, align 32
@nfp_fl_set_ip6_hop_limit_flow_label.__msg.34 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"nfp: unsupported offload: invalid pedit IPv6 flow label action\00", [33 x i8] zeroinitializer }, align 32
@nfp_fl_set_tport.__msg = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"nfp: unsupported offload: pedit on unsupported section of L4 header\00", [60 x i8] zeroinitializer }, align 32
@nfp_fl_set_tport.__msg.35 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nfp: unsupported offload: invalid pedit L4 action\00", [46 x i8] zeroinitializer }, align 32
@nfp_fl_push_mpls.__msg = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"nfp: unsupported offload: BOS field must explicitly be set for MPLS push\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.36 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 15, i64 17, i64 25, i64 26, i64 27]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 4789, i64 6081]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 6, i64 17]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 354, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [30 x i8] c"../include/net/flow_offload.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 323, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1022, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1035, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1050, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1055, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1065, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1096, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1107, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1122, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1135, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1154, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 942, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 947, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 967, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 189, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 198, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 203, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 218, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 224, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 229, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 243, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 249, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 255, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"../include/net/vxlan.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 420, i32 43 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 43, i32 43 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"../include/net/gre.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 49, i32 43 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"../include/net/geneve.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 68, i32 43 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [52 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/main.h\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 387, i32 43 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 147, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 350, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 357, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 366, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 425, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 484, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 920, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 524, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 532, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 569, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 595, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 613, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 626, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 710, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 727, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 666, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 678, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 742, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 750, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.193 = private constant [54 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/action.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 46, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @.str, ptr @flow_action_mixed_hw_stats_check.__msg, ptr @nfp_flower_loop_action.__msg, ptr @nfp_flower_loop_action.__msg.2, ptr @nfp_flower_loop_action.__msg.3, ptr @nfp_flower_loop_action.__msg.4, ptr @nfp_flower_loop_action.__msg.5, ptr @nfp_flower_loop_action.__msg.6, ptr @nfp_flower_loop_action.__msg.7, ptr @nfp_flower_loop_action.__msg.8, ptr @nfp_flower_loop_action.__msg.9, ptr @nfp_flower_loop_action.__msg.10, ptr @nfp_flower_output_action.__msg, ptr @nfp_flower_output_action.__msg.11, ptr @nfp_flower_output_action.__msg.12, ptr @nfp_fl_output.__msg, ptr @nfp_fl_output.__msg.13, ptr @nfp_fl_output.__msg.14, ptr @nfp_fl_output.__msg.15, ptr @nfp_fl_output.__msg.16, ptr @nfp_fl_output.__msg.17, ptr @nfp_fl_output.__msg.18, ptr @nfp_fl_output.__msg.19, ptr @nfp_fl_output.__msg.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @nfp_fl_pre_lag.__msg, ptr @nfp_fl_push_geneve_options.__msg, ptr @nfp_fl_push_geneve_options.__msg.26, ptr @nfp_fl_push_geneve_options.__msg.27, ptr @nfp_fl_set_tun.__msg, ptr @nfp_fl_set_tun.__msg.28, ptr @nfp_fl_pedit.__msg, ptr @nfp_fl_set_eth.__msg, ptr @nfp_fl_set_eth.__msg.29, ptr @nfp_fl_set_ip4.__msg, ptr @nfp_fl_set_ip4.__msg.30, ptr @nfp_fl_set_ip4.__msg.31, ptr @nfp_fl_set_ip4.__msg.32, ptr @nfp_fl_set_ip6.__msg, ptr @nfp_fl_set_ip6.__msg.33, ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg, ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg.34, ptr @nfp_fl_set_tport.__msg, ptr @nfp_fl_set_tport.__msg.35, ptr @nfp_fl_push_mpls.__msg], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_action_mixed_hw_stats_check.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.2 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.3 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.5 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.7 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.8 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.9 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_loop_action.__msg.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_output_action.__msg to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_output_action.__msg.11 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_output_action.__msg.12 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.13 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.14 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.17 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.18 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_output.__msg.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_pre_lag.__msg to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_push_geneve_options.__msg to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_push_geneve_options.__msg.26 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_push_geneve_options.__msg.27 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_tun.__msg to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_tun.__msg.28 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_pedit.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_eth.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_eth.__msg.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip4.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip4.__msg.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip4.__msg.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip4.__msg.32 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip6.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip6.__msg.33 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg.34 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_tport.__msg to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_set_tport.__msg.35 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_push_mpls.__msg to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_compile_action(ptr noundef %app, ptr noundef %rule, ptr noundef %netdev, ptr nocapture noundef %nfp_flow, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %flow.i = alloca %struct.flowi6, align 8
  %flow94.i = alloca %struct.flowi4, align 8
  %match.i = alloca %struct.flow_match_basic, align 4
  %act_len = alloca i32, align 4
  %tun_out_cnt = alloca i32, align 4
  %out_cnt = alloca i32, align 4
  %set_act = alloca %struct.nfp_flower_pedit_acts, align 4
  %tun_type = alloca i32, align 4
  %csum_updated = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_len) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tun_out_cnt) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_cnt) #5
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %set_act) #5
  %0 = call ptr @memset(ptr %set_act, i32 255, i32 156)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tun_type) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csum_updated) #5
  %1 = ptrtoint ptr %csum_updated to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %csum_updated, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %rule, i32 0, i32 1
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %for.body.preheader.i.i.i [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.flow_action_first_entry_get.exit.i.i_crit_edge
  ]

entry.flow_action_first_entry_get.exit.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %flow_action_first_entry_get.exit.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.preheader.i.i.i:                         ; preds = %entry
  %entries.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %rule, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end7.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.024.i.i.i = phi i32 [ %inc.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %last_hw_stats.023.i.i.i = phi i32 [ %8, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ 255, %for.body.preheader.i.i.i ]
  %action_entry.022.i.i.i = phi ptr [ %arrayidx11.i.i.i, %if.end7.i.i.i.for.body.i.i.i_crit_edge ], [ %entries.i.i.i, %for.body.preheader.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.024.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %i.024.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.if.end7.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.if.end7.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %hw_stats.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %hw_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hw_stats.i.i.i, align 8
  %conv.i.i.i = and i32 %last_hw_stats.023.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %6, %conv.i.i.i
  br i1 %cmp1.not.i.i.i, label %land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge, label %do.body.i.i.i

land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i.i

do.body.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @flow_action_mixed_hw_stats_check.__msg) #5
  %tobool4.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i.i.i, label %do.body.i.i.i.cleanup_crit_edge, label %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge

do.body.i.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

do.body.i.i.i.cleanup_crit_edge:                  ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %land.lhs.true.i.i.i.if.end7.i.i.i_crit_edge, %for.body.i.i.i.if.end7.i.i.i_crit_edge
  %hw_stats8.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %action_entry.022.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %hw_stats8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hw_stats8.i.i.i, align 8
  %inc.i.i.i = add nuw i32 %i.024.i.i.i, 1
  %arrayidx11.i.i.i = getelementptr %struct.flow_rule, ptr %rule, i32 0, i32 1, i32 1, i32 %inc.i.i.i
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %3
  br i1 %exitcond.not.i.i.i, label %if.end3.i.i, label %if.end7.i.i.i.for.body.i.i.i_crit_edge

if.end7.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

if.end3.i.i:                                      ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %do.end.i.i.i, label %if.end3.i.i.flow_action_first_entry_get.exit.i.i_crit_edge, !prof !112

if.end3.i.i.flow_action_first_entry_get.exit.i.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %flow_action_first_entry_get.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 334, i32 noundef 9, ptr noundef null) #5
  br label %flow_action_first_entry_get.exit.i.i

flow_action_first_entry_get.exit.i.i:             ; preds = %do.end.i.i.i, %if.end3.i.i.flow_action_first_entry_get.exit.i.i_crit_edge, %entry.flow_action_first_entry_get.exit.i.i_crit_edge
  %hw_stats.i.i = getelementptr inbounds %struct.flow_rule, ptr %rule, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_stats.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %flow_action_first_entry_get.exit.i.i.land.lhs.true55.i.i_crit_edge

flow_action_first_entry_get.exit.i.i.land.lhs.true55.i.i_crit_edge: ; preds = %flow_action_first_entry_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true55.i.i

land.rhs.i.i:                                     ; preds = %flow_action_first_entry_get.exit.i.i
  %.b1.i.i = load i1, ptr @__flow_action_hw_stats_check.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.land.lhs.true55.i.i_crit_edge, label %if.then14.i.i, !prof !113

land.rhs.i.i.land.lhs.true55.i.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true55.i.i

if.then14.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__flow_action_hw_stats_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 354, i32 noundef 9, ptr noundef null) #5
  br label %land.lhs.true55.i.i

land.lhs.true55.i.i:                              ; preds = %if.then14.i.i, %land.rhs.i.i.land.lhs.true55.i.i_crit_edge, %flow_action_first_entry_get.exit.i.i.land.lhs.true55.i.i_crit_edge
  %11 = ptrtoint ptr %hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hw_stats.i.i, align 8
  %and57.i.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i.i)
  %tobool58.not.i.i = icmp eq i32 %and57.i.i, 0
  br i1 %tobool58.not.i.i, label %do.body60.i.i, label %land.lhs.true55.i.i.if.end_crit_edge

land.lhs.true55.i.i.if.end_crit_edge:             ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body60.i.i:                                    ; preds = %land.lhs.true55.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__flow_action_hw_stats_check.__msg.1) #5
  %tobool62.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool62.not.i.i, label %do.body60.i.i.cleanup_crit_edge, label %do.body60.i.i.cleanup.sink.split.i.i_crit_edge

do.body60.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

do.body60.i.i.cleanup_crit_edge:                  ; preds = %do.body60.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split.i.i:                           ; preds = %do.body60.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge
  %flow_action_mixed_hw_stats_check.__msg.sink.i.i = phi ptr [ @flow_action_mixed_hw_stats_check.__msg, %do.body.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ @__flow_action_hw_stats_check.__msg.1, %do.body60.i.i.cleanup.sink.split.i.i_crit_edge ]
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %flow_action_mixed_hw_stats_check.__msg.sink.i.i, ptr %extack, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true55.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_flow, i32 0, i32 9
  %14 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %action_data, align 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 1216)
  %act_len1 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 2
  %17 = ptrtoint ptr %act_len1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %act_len1, align 2
  %18 = ptrtoint ptr %tun_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %tun_type, align 4
  %19 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %act_len, align 4
  %20 = ptrtoint ptr %tun_out_cnt to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tun_out_cnt, align 4
  %21 = ptrtoint ptr %out_cnt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %out_cnt, align 4
  %entries = getelementptr inbounds %struct.flow_rule, ptr %rule, i32 1
  %22 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp154.not = icmp eq i32 %23, 0
  br i1 %cmp154.not, label %if.end.if.end25_crit_edge, label %for.body.lr.ph

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.body.lr.ph:                                   ; preds = %if.end
  %shortcut172.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 7
  %set_tport10.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 5
  %tp_port_val.i46.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 5, i32 3
  %tp_port_mask.i47.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 5, i32 2
  %reserved.i52.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 5, i32 1
  %len_lw.i53.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 5, i32 0, i32 1
  %set_ip6_src.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 1
  %set_ip6_tc_hl_fl.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 2
  %reserved.i58.i.i.i = getelementptr inbounds %struct.nfp_fl_set_ipv6_addr, ptr %set_act, i32 0, i32 1
  %len_lw.i59.i.i.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %set_act, i32 0, i32 1
  %reserved.i.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 1, i32 1
  %len_lw.i50.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 1, i32 0, i32 1
  %ipv6_label_mask.i.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 2, i32 6
  %ipv6_label.i.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 2, i32 7
  %ipv6_hop_limit_mask.i.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 2, i32 2
  %ipv6_hop_limit.i.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 2, i32 5
  %len_lw.i.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 2, i32 0, i32 1
  %set_ip_addr.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 4
  %set_ip_ttl_tos.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 3
  %ipv4_tos_mask.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 3, i32 2
  %ipv4_tos.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 3, i32 4
  %len_lw102.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 3, i32 0, i32 1
  %ipv4_ttl_mask.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 3, i32 1
  %ipv4_ttl.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 3, i32 3
  %ipv4_src_mask.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 4, i32 2
  %ipv4_src.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 4, i32 3
  %len_lw22.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 4, i32 0, i32 1
  %ipv4_dst_mask.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 4, i32 4
  %ipv4_dst.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 4, i32 5
  %set_eth.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 6
  %reserved.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 6, i32 1
  %len_lw.i.i.i = getelementptr inbounds %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 6, i32 0, i32 1
  %priv1.i.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %nd_net.i212.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 127
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %flow.i, i32 0, i32 1
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %flow.i, i32 0, i32 5
  %daddr98.i = getelementptr inbounds %struct.flowi4, ptr %flow94.i, i32 0, i32 2
  %flowic_proto100.i = getelementptr inbounds %struct.flowi_common, ptr %flow94.i, i32 0, i32 5
  %24 = getelementptr inbounds %struct.flow_match_basic, ptr %match.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %25 = phi i32 [ %23, %for.body.lr.ph ], [ %496, %for.inc.for.body_crit_edge ]
  %act.0160 = phi ptr [ %entries, %for.body.lr.ph ], [ %arrayidx21, %for.inc.for.body_crit_edge ]
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc.for.body_crit_edge ]
  %pkt_host.0155 = phi i8 [ 0, %for.body.lr.ph ], [ %pkt_host.2, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.flow_rule, ptr %rule, i32 0, i32 1, i32 1, i32 %i.0157
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %current_act.sroa.0.0.copyload.i = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %current_act.sroa.0.0.copyload.i)
  %cmp.not.i = icmp eq i32 %current_act.sroa.0.0.copyload.i, 13
  br i1 %cmp.not.i, label %if.end.i, label %for.body.if.end7_crit_edge

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0157)
  %cmp1.i = icmp eq i32 %i.0157, 0
  br i1 %cmp1.i, label %if.end.i.if.then6_crit_edge, label %nfp_fl_check_mangle_start.exit

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

nfp_fl_check_mangle_start.exit:                   ; preds = %if.end.i
  %sub.i = add i32 %i.0157, -1
  %arrayidx5.i = getelementptr %struct.flow_rule, ptr %rule, i32 0, i32 1, i32 1, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %prev_act.sroa.0.0.copyload.i = load i32, ptr %arrayidx5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %prev_act.sroa.0.0.copyload.i)
  %cmp7.i.not = icmp eq i32 %prev_act.sroa.0.0.copyload.i, 13
  br i1 %cmp7.i.not, label %nfp_fl_check_mangle_start.exit.if.end7_crit_edge, label %nfp_fl_check_mangle_start.exit.if.then6_crit_edge

nfp_fl_check_mangle_start.exit.if.then6_crit_edge: ; preds = %nfp_fl_check_mangle_start.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

nfp_fl_check_mangle_start.exit.if.end7_crit_edge: ; preds = %nfp_fl_check_mangle_start.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %nfp_fl_check_mangle_start.exit.if.then6_crit_edge, %if.end.i.if.then6_crit_edge
  %28 = call ptr @memset(ptr %set_act, i32 0, i32 156)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %nfp_fl_check_mangle_start.exit.if.end7_crit_edge, %for.body.if.end7_crit_edge
  %29 = ptrtoint ptr %act.0160 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %act.0160, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %30, label %do.body180.i [
    i32 1, label %sw.bb.i
    i32 6, label %if.end7.sw.bb1.i_crit_edge
    i32 4, label %if.end7.sw.bb1.i_crit_edge177
    i32 7, label %if.end7.sw.bb3.i_crit_edge
    i32 5, label %if.end7.sw.bb3.i_crit_edge178
    i32 9, label %sw.bb9.i
    i32 8, label %sw.bb18.i
    i32 11, label %sw.bb36.i
    i32 12, label %if.end7.if.end10_crit_edge
    i32 13, label %sw.bb91.i
    i32 15, label %sw.bb98.i
    i32 25, label %sw.bb113.i
    i32 26, label %sw.bb136.i
    i32 27, label %sw.bb155.i
    i32 17, label %sw.bb174.i
  ]

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end7.sw.bb3.i_crit_edge178:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end7.sw.bb3.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

if.end7.sw.bb1.i_crit_edge177:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.end7.sw.bb1.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

sw.bb.i:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %shortcut172.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -2147483648, ptr %shortcut172.i, align 4
  br label %if.end10

sw.bb1.i:                                         ; preds = %if.end7.sw.bb1.i_crit_edge, %if.end7.sw.bb1.i_crit_edge177
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_host.0155)
  %tobool.i = icmp ne i8 %pkt_host.0155, 0
  %call.i = call fastcc i32 @nfp_flower_output_action(ptr noundef %app, ptr noundef %act.0160, ptr noundef %nfp_flow, ptr noundef nonnull %act_len, ptr noundef %netdev, i1 noundef zeroext true, ptr noundef nonnull %tun_type, ptr noundef nonnull %tun_out_cnt, ptr noundef nonnull %out_cnt, ptr noundef nonnull %csum_updated, i1 noundef zeroext %tobool.i, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %sw.bb1.i.if.end10_crit_edge, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.i.if.end10_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

sw.bb3.i:                                         ; preds = %if.end7.sw.bb3.i_crit_edge, %if.end7.sw.bb3.i_crit_edge178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pkt_host.0155)
  %tobool4.i = icmp ne i8 %pkt_host.0155, 0
  %call5.i = call fastcc i32 @nfp_flower_output_action(ptr noundef %app, ptr noundef %act.0160, ptr noundef %nfp_flow, ptr noundef nonnull %act_len, ptr noundef %netdev, i1 noundef zeroext false, ptr noundef nonnull %tun_type, ptr noundef nonnull %tun_out_cnt, ptr noundef nonnull %out_cnt, ptr noundef nonnull %csum_updated, i1 noundef zeroext %tobool4.i, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %sw.bb3.i.if.end10_crit_edge, label %sw.bb3.i.cleanup_crit_edge

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb3.i.if.end10_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

sw.bb9.i:                                         ; preds = %if.end7
  %33 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %act_len, align 4
  %35 = add i32 %34, -1213
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %35)
  %cmp.i = icmp ult i32 %35, -1217
  br i1 %cmp.i, label %do.body.i, label %if.end14.i

do.body.i:                                        ; preds = %sw.bb9.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg) #5
  %tobool11.not.i = icmp eq ptr %extack, null
  br i1 %tobool11.not.i, label %do.body.i.cleanup_crit_edge, label %if.then12.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @nfp_flower_loop_action.__msg, ptr %extack, align 4
  br label %cleanup

if.end14.i:                                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %action_data, align 4
  %arrayidx.i57 = getelementptr i8, ptr %38, i32 %34
  %39 = ptrtoint ptr %shortcut172.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1778384896, ptr %shortcut172.i, align 4
  %40 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 2, ptr %arrayidx.i57, align 2
  %len_lw.i.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx.i57, i32 0, i32 1
  %41 = ptrtoint ptr %len_lw.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %len_lw.i.i, align 1
  %reserved.i.i = getelementptr inbounds %struct.nfp_fl_pop_vlan, ptr %arrayidx.i57, i32 0, i32 1
  %42 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %reserved.i.i, align 2
  %43 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %act_len, align 4
  %add17.i = add i32 %44, 4
  store i32 %add17.i, ptr %act_len, align 4
  br label %if.end10

sw.bb18.i:                                        ; preds = %if.end7
  %45 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %act_len, align 4
  %47 = add i32 %46, -1209
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %47)
  %cmp20.i = icmp ult i32 %47, -1217
  br i1 %cmp20.i, label %do.body22.i, label %if.end30.i

do.body22.i:                                      ; preds = %sw.bb18.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.2) #5
  %tobool24.not.i = icmp eq ptr %extack, null
  br i1 %tobool24.not.i, label %do.body22.i.cleanup_crit_edge, label %if.then25.i

do.body22.i.cleanup_crit_edge:                    ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @nfp_flower_loop_action.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end30.i:                                       ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %action_data, align 4
  %arrayidx32.i = getelementptr i8, ptr %50, i32 %46
  %51 = ptrtoint ptr %shortcut172.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %shortcut172.i, align 4
  %52 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %arrayidx32.i, align 2
  %len_lw.i302.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx32.i, i32 0, i32 1
  %53 = ptrtoint ptr %len_lw.i302.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %len_lw.i302.i, align 1
  %reserved.i303.i = getelementptr inbounds %struct.nfp_fl_push_vlan, ptr %arrayidx32.i, i32 0, i32 1
  %54 = ptrtoint ptr %reserved.i303.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %reserved.i303.i, align 2
  %55 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %proto.i.i = getelementptr inbounds %struct.anon.220, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %proto.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %proto.i.i, align 2
  %vlan_tpid.i.i = getelementptr inbounds %struct.nfp_fl_push_vlan, ptr %arrayidx32.i, i32 0, i32 2
  %58 = ptrtoint ptr %vlan_tpid.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %vlan_tpid.i.i, align 2
  %prio.i.i = getelementptr inbounds %struct.anon.220, ptr %55, i32 0, i32 2
  %59 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %prio.i.i, align 4
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %55, align 8
  %conv17.i.i = zext i8 %60 to i16
  %shl.i.i = shl i16 %conv17.i.i, 13
  %63 = and i16 %62, 4095
  %or.i.i = or i16 %63, %shl.i.i
  %vlan_tci.i.i = getelementptr inbounds %struct.nfp_fl_push_vlan, ptr %arrayidx32.i, i32 0, i32 3
  %64 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %or.i.i, ptr %vlan_tci.i.i, align 2
  %65 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %act_len, align 4
  %add35.i = add i32 %66, 8
  store i32 %add35.i, ptr %act_len, align 4
  br label %if.end10

sw.bb36.i:                                        ; preds = %if.end7
  %67 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 8
  %70 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv1.i.i, align 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i60.for.cond.i.i.i_crit_edge, %sw.bb36.i
  %act_idx.0.in.i.i.i = phi i32 [ %i.0157, %sw.bb36.i ], [ %act_idx.0.i.i.i, %for.body.i.i.i60.for.cond.i.i.i_crit_edge ]
  %act_idx.0.i.i.i = add i32 %act_idx.0.in.i.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %act_idx.0.i.i.i, i32 %25)
  %cmp.i.i.i = icmp slt i32 %act_idx.0.i.i.i, %25
  br i1 %cmp.i.i.i, label %for.body.i.i.i60, label %for.cond.i.i.i.if.end.i.i_crit_edge

for.cond.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

for.body.i.i.i60:                                 ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.flow_action_entry, ptr %entries, i32 %act_idx.0.i.i.i
  %72 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i.i, align 8
  %74 = and i32 %73, -2
  %switch.i.i.i = icmp eq i32 %74, 4
  br i1 %switch.i.i.i, label %if.then.i.i.i, label %for.body.i.i.i60.for.cond.i.i.i_crit_edge

for.body.i.i.i60.for.cond.i.i.i_crit_edge:        ; preds = %for.body.i.i.i60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i60
  %75 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i.i, i32 0, i32 5
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %rtnl_link_ops.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %77, i32 0, i32 136
  %78 = ptrtoint ptr %rtnl_link_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rtnl_link_ops.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %netif_is_gretap.exit.i.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

netif_is_gretap.exit.i.i.i:                       ; preds = %if.then.i.i.i
  %kind.i.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %kind.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %kind.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @strcmp(ptr noundef %81, ptr noundef nonnull dereferenceable(7) @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %netif_is_gretap.exit.i.i.i.if.end48.i_crit_edge, label %nfp_flower_tun_is_gre.exit.i.i

netif_is_gretap.exit.i.i.i.if.end48.i_crit_edge:  ; preds = %netif_is_gretap.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

nfp_flower_tun_is_gre.exit.i.i:                   ; preds = %netif_is_gretap.exit.i.i.i
  %call.i23.i.i.i = call i32 @strcmp(ptr noundef %81, ptr noundef nonnull dereferenceable(10) @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i.i.i)
  %tobool2.not.i24.i.i.i = icmp eq i32 %call.i23.i.i.i, 0
  br i1 %tobool2.not.i24.i.i.i, label %nfp_flower_tun_is_gre.exit.i.i.if.end48.i_crit_edge, label %nfp_flower_tun_is_gre.exit.i.i.if.end.i.i_crit_edge

nfp_flower_tun_is_gre.exit.i.i.if.end.i.i_crit_edge: ; preds = %nfp_flower_tun_is_gre.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

nfp_flower_tun_is_gre.exit.i.i.if.end48.i_crit_edge: ; preds = %nfp_flower_tun_is_gre.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.end.i.i:                                       ; preds = %nfp_flower_tun_is_gre.exit.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge, %for.cond.i.i.i.if.end.i.i_crit_edge
  %tp_dst.i.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %69, i32 0, i32 7
  %82 = ptrtoint ptr %tp_dst.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %tp_dst.i.i, align 2
  %84 = zext i16 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %83, label %if.end.i.i.do.body40.i_crit_edge [
    i16 4789, label %if.end.i.i.if.end48.i_crit_edge
    i16 6081, label %sw.bb2.i.i
  ]

if.end.i.i.if.end48.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

if.end.i.i.do.body40.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  %flower_ext_feats.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %71, i32 0, i32 4
  %85 = ptrtoint ptr %flower_ext_feats.i.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %flower_ext_feats.i.i, align 8
  %and.i.i = and i64 %86, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i304.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i304.i, label %sw.bb2.i.i.do.body40.i_crit_edge, label %sw.bb2.i.i.if.end48.i_crit_edge

sw.bb2.i.i.if.end48.i_crit_edge:                  ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i

sw.bb2.i.i.do.body40.i_crit_edge:                 ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body40.i

do.body40.i:                                      ; preds = %sw.bb2.i.i.do.body40.i_crit_edge, %if.end.i.i.do.body40.i_crit_edge
  %87 = ptrtoint ptr %tun_type to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %tun_type, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.3) #5
  %tobool42.not.i = icmp eq ptr %extack, null
  br i1 %tobool42.not.i, label %do.body40.i.cleanup_crit_edge, label %if.then43.i

do.body40.i.cleanup_crit_edge:                    ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43.i:                                      ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #7
  %88 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @nfp_flower_loop_action.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end48.i:                                       ; preds = %sw.bb2.i.i.if.end48.i_crit_edge, %if.end.i.i.if.end48.i_crit_edge, %nfp_flower_tun_is_gre.exit.i.i.if.end48.i_crit_edge, %netif_is_gretap.exit.i.i.i.if.end48.i_crit_edge
  %cmp8.not.i = phi i1 [ true, %sw.bb2.i.i.if.end48.i_crit_edge ], [ false, %if.end.i.i.if.end48.i_crit_edge ], [ false, %nfp_flower_tun_is_gre.exit.i.i.if.end48.i_crit_edge ], [ false, %netif_is_gretap.exit.i.i.i.if.end48.i_crit_edge ]
  %retval.0.i.ph.i = phi i32 [ 4, %sw.bb2.i.i.if.end48.i_crit_edge ], [ 2, %if.end.i.i.if.end48.i_crit_edge ], [ 1, %nfp_flower_tun_is_gre.exit.i.i.if.end48.i_crit_edge ], [ 1, %netif_is_gretap.exit.i.i.i.if.end48.i_crit_edge ]
  %89 = ptrtoint ptr %tun_type to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %retval.0.i.ph.i, ptr %tun_type, align 4
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %69, i32 0, i32 3
  %90 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mode.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %91)
  %tobool49.not.i = icmp ult i8 %91, 4
  br i1 %tobool49.not.i, label %if.end59.i, label %do.body51.i

do.body51.i:                                      ; preds = %if.end48.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.4) #5
  %tobool53.not.i = icmp eq ptr %extack, null
  br i1 %tobool53.not.i, label %do.body51.i.cleanup_crit_edge, label %if.then54.i

do.body51.i.cleanup_crit_edge:                    ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then54.i:                                      ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @nfp_flower_loop_action.__msg.4, ptr %extack, align 4
  br label %cleanup

if.end59.i:                                       ; preds = %if.end48.i
  %93 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %act_len, align 4
  %95 = add i32 %94, -1169
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %95)
  %cmp62.i = icmp ult i32 %95, -1217
  br i1 %cmp62.i, label %do.body65.i, label %if.end73.i

do.body65.i:                                      ; preds = %if.end59.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.5) #5
  %tobool67.not.i = icmp eq ptr %extack, null
  br i1 %tobool67.not.i, label %do.body65.i.cleanup_crit_edge, label %if.then68.i

do.body65.i.cleanup_crit_edge:                    ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then68.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @nfp_flower_loop_action.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end73.i:                                       ; preds = %if.end59.i
  %97 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %action_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i305.i = icmp eq i32 %94, 0
  br i1 %tobool.not.i305.i, label %if.end73.i.nfp_fl_pre_tunnel.exit.i_crit_edge, label %if.then.i306.i

if.end73.i.nfp_fl_pre_tunnel.exit.i_crit_edge:    ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_pre_tunnel.exit.i

if.then.i306.i:                                   ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i.i = getelementptr i8, ptr %98, i32 20
  %99 = call ptr @memmove(ptr %add.ptr.i.i, ptr %98, i32 %94)
  br label %nfp_fl_pre_tunnel.exit.i

nfp_fl_pre_tunnel.exit.i:                         ; preds = %if.then.i306.i, %if.end73.i.nfp_fl_pre_tunnel.exit.i_crit_edge
  %100 = call ptr @memset(ptr %98, i32 0, i32 20)
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 17, ptr %98, align 4
  %len_lw.i307.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %98, i32 0, i32 1
  %102 = ptrtoint ptr %len_lw.i307.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 5, ptr %len_lw.i307.i, align 1
  %103 = ptrtoint ptr %shortcut172.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %shortcut172.i, align 4
  %104 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %act_len, align 4
  %add78.i = add i32 %105, 20
  store i32 %add78.i, ptr %act_len, align 4
  %106 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %67, align 8
  %add.ptr.i.i89 = getelementptr %struct.ip_tunnel_info, ptr %107, i32 1
  %options_len.i90 = getelementptr inbounds %struct.ip_tunnel_info, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %options_len.i90 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %options_len.i90, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %cmp132.not.i = icmp eq i8 %109, 0
  br i1 %cmp132.not.i, label %while.end.thread.i, label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %nfp_fl_pre_tunnel.exit.i
  %conv.i = zext i8 %109 to i32
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i97.while.body.i_crit_edge, %while.body.preheader.i
  %opt_len.0136.i = phi i32 [ %sub.i94, %cleanup.i97.while.body.i_crit_edge ], [ %conv.i, %while.body.preheader.i ]
  %opt_cnt.0135.i = phi i32 [ %inc.i, %cleanup.i97.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %src.0134.i = phi ptr [ %add.ptr.i95, %cleanup.i97.while.body.i_crit_edge ], [ %add.ptr.i.i89, %while.body.preheader.i ]
  %tot_push_len.0133.i = phi i32 [ %add7.i, %cleanup.i97.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %inc.i = add nuw nsw i32 %opt_cnt.0135.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %opt_cnt.0135.i)
  %exitcond.i = icmp eq i32 %opt_cnt.0135.i, 64
  br i1 %exitcond.i, label %do.body.i92, label %if.end5.i

do.body.i92:                                      ; preds = %while.body.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_push_geneve_options.__msg) #5
  %tobool.not.i91 = icmp eq ptr %extack, null
  br i1 %tobool.not.i91, label %do.body.i92.cleanup_crit_edge, label %do.body.i92.cleanup80.sink.split.i_crit_edge

do.body.i92.cleanup80.sink.split.i_crit_edge:     ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup80.sink.split.i

do.body.i92.cleanup_crit_edge:                    ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5.i:                                        ; preds = %while.body.i
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %src.0134.i, i32 0, i32 2
  %110 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 2
  %111 = and i8 %bf.clear.i, 124
  %mul.i = zext i8 %111 to i32
  %add.i93 = add i32 %tot_push_len.0133.i, 8
  %add7.i = add i32 %add.i93, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add7.i)
  %cmp8.i = icmp sgt i32 %add7.i, 32
  br i1 %cmp8.i, label %do.body11.i, label %cleanup.i97

do.body11.i:                                      ; preds = %if.end5.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_push_geneve_options.__msg.26) #5
  %tobool13.not.i = icmp eq ptr %extack, null
  br i1 %tobool13.not.i, label %do.body11.i.cleanup_crit_edge, label %do.body11.i.cleanup80.sink.split.i_crit_edge

do.body11.i.cleanup80.sink.split.i_crit_edge:     ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup80.sink.split.i

do.body11.i.cleanup_crit_edge:                    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.i97:                                      ; preds = %if.end5.i
  %add25.i = add nuw nsw i32 %mul.i, 4
  %sub.i94 = sub nsw i32 %opt_len.0136.i, %add25.i
  %add.ptr.i95 = getelementptr i8, ptr %src.0134.i, i32 %add25.i
  %cmp.i96 = icmp sgt i32 %sub.i94, 0
  br i1 %cmp.i96, label %cleanup.i97.while.body.i_crit_edge, label %while.end.i

cleanup.i97.while.body.i_crit_edge:               ; preds = %cleanup.i97
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i97
  %add32.i = add i32 %add7.i, %add78.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1216, i32 %add32.i)
  %cmp33.i = icmp sgt i32 %add32.i, 1216
  br i1 %cmp33.i, label %while.end.i.do.body36.i_crit_edge, label %while.body49.lr.ph.i

while.end.i.do.body36.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36.i

while.end.thread.i:                               ; preds = %nfp_fl_pre_tunnel.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1216, i32 %add78.i)
  %cmp33148.i = icmp sgt i32 %add78.i, 1216
  br i1 %cmp33148.i, label %while.end.thread.i.do.body36.i_crit_edge, label %while.end.thread.i.if.end82.i_crit_edge

while.end.thread.i.if.end82.i_crit_edge:          ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82.i

while.end.thread.i.do.body36.i_crit_edge:         ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body36.i

do.body36.i:                                      ; preds = %while.end.thread.i.do.body36.i_crit_edge, %while.end.i.do.body36.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_push_geneve_options.__msg.27) #5
  %tobool38.not.i = icmp eq ptr %extack, null
  br i1 %tobool38.not.i, label %do.body36.i.cleanup_crit_edge, label %do.body36.i.cleanup80.sink.split.i_crit_edge

do.body36.i.cleanup80.sink.split.i_crit_edge:     ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup80.sink.split.i

do.body36.i.cleanup_crit_edge:                    ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body49.lr.ph.i:                             ; preds = %while.end.i
  %112 = ptrtoint ptr %act_len to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %add32.i, ptr %act_len, align 4
  br label %while.body49.i

while.body49.i:                                   ; preds = %while.body49.i.while.body49.i_crit_edge, %while.body49.lr.ph.i
  %opt_cnt.1141.i = phi i32 [ %inc.i, %while.body49.lr.ph.i ], [ %dec.i, %while.body49.i.while.body49.i_crit_edge ]
  %src.2140.i = phi ptr [ %add.ptr.i.i89, %while.body49.lr.ph.i ], [ %add.ptr78.i101, %while.body49.i.while.body49.i_crit_edge ]
  %tot_push_len.2139.i = phi i32 [ %add7.i, %while.body49.lr.ph.i ], [ %sub57.i, %while.body49.i.while.body49.i_crit_edge ]
  %dec.i = add nsw i32 %opt_cnt.1141.i, -1
  %length51.i = getelementptr inbounds %struct.geneve_opt, ptr %src.2140.i, i32 0, i32 2
  %113 = ptrtoint ptr %length51.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load52.i = load i8, ptr %length51.i, align 1
  %bf.clear53.i = shl i8 %bf.load52.i, 2
  %114 = and i8 %bf.clear53.i, 124
  %narrow.i = add nuw i8 %114, 8
  %add56.i = zext i8 %narrow.i to i32
  %sub57.i = sub i32 %tot_push_len.2139.i, %add56.i
  %add58.i = add i32 %sub57.i, %add78.i
  %115 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %action_data, align 4
  %arrayidx.i99 = getelementptr i8, ptr %116, i32 %add58.i
  %117 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 26, ptr %arrayidx.i99, align 2
  %shr.i = lshr exact i8 %narrow.i, 2
  %len_lw.i100 = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx.i99, i32 0, i32 1
  %118 = ptrtoint ptr %len_lw.i100 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %shr.i, ptr %len_lw.i100, align 1
  %reserved.i = getelementptr inbounds %struct.nfp_fl_push_geneve, ptr %arrayidx.i99, i32 0, i32 1
  %119 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %reserved.i, align 2
  %120 = ptrtoint ptr %src.2140.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %src.2140.i, align 2
  %class.i = getelementptr inbounds %struct.nfp_fl_push_geneve, ptr %arrayidx.i99, i32 0, i32 2
  %122 = ptrtoint ptr %class.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %class.i, align 2
  %type.i = getelementptr inbounds %struct.geneve_opt, ptr %src.2140.i, i32 0, i32 1
  %123 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %type.i, align 2
  %type61.i = getelementptr inbounds %struct.nfp_fl_push_geneve, ptr %arrayidx.i99, i32 0, i32 3
  %125 = ptrtoint ptr %type61.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %124, ptr %type61.i, align 2
  %bf.load63.i = load i8, ptr %length51.i, align 1
  %bf.clear64.i = and i8 %bf.load63.i, 31
  %length65.i = getelementptr inbounds %struct.nfp_fl_push_geneve, ptr %arrayidx.i99, i32 0, i32 4
  %126 = ptrtoint ptr %length65.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %bf.clear64.i, ptr %length65.i, align 1
  %opt_data.i = getelementptr inbounds %struct.nfp_fl_push_geneve, ptr %arrayidx.i99, i32 0, i32 5
  %opt_data66.i = getelementptr inbounds %struct.geneve_opt, ptr %src.2140.i, i32 0, i32 3
  %bf.load68.i = load i8, ptr %length51.i, align 1
  %bf.clear69.i = shl i8 %bf.load68.i, 2
  %127 = and i8 %bf.clear69.i, 124
  %mul71.i = zext i8 %127 to i32
  %128 = call ptr @memcpy(ptr %opt_data.i, ptr %opt_data66.i, i32 %mul71.i)
  %bf.load73.i = load i8, ptr %length51.i, align 1
  %bf.clear74.i = shl i8 %bf.load73.i, 2
  %129 = and i8 %bf.clear74.i, 124
  %narrow122.i = add nuw i8 %129, 4
  %add77.i = zext i8 %narrow122.i to i32
  %add.ptr78.i101 = getelementptr i8, ptr %src.2140.i, i32 %add77.i
  %tobool48.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool48.not.i, label %while.body49.i.if.end82.i_crit_edge, label %while.body49.i.while.body49.i_crit_edge

while.body49.i.while.body49.i_crit_edge:          ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body49.i

while.body49.i.if.end82.i_crit_edge:              ; preds = %while.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82.i

cleanup80.sink.split.i:                           ; preds = %do.body36.i.cleanup80.sink.split.i_crit_edge, %do.body11.i.cleanup80.sink.split.i_crit_edge, %do.body.i92.cleanup80.sink.split.i_crit_edge
  %nfp_fl_push_geneve_options.__msg.26.sink.i = phi ptr [ @nfp_fl_push_geneve_options.__msg, %do.body.i92.cleanup80.sink.split.i_crit_edge ], [ @nfp_fl_push_geneve_options.__msg.26, %do.body11.i.cleanup80.sink.split.i_crit_edge ], [ @nfp_fl_push_geneve_options.__msg.27, %do.body36.i.cleanup80.sink.split.i_crit_edge ]
  %130 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %nfp_fl_push_geneve_options.__msg.26.sink.i, ptr %extack, align 4
  br label %cleanup

if.end82.i:                                       ; preds = %while.body49.i.if.end82.i_crit_edge, %while.end.thread.i.if.end82.i_crit_edge
  %131 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %action_data, align 4
  %133 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %act_len, align 4
  %arrayidx84.i = getelementptr i8, ptr %132, i32 %134
  %135 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %67, align 8
  %mode.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %mode.i.i, align 1
  %139 = and i8 %138, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i.not.i = icmp eq i8 %139, 0
  %140 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %priv1.i.i, align 4
  br i1 %tobool.not.i.not.i, label %if.end82.i.do.end.i_crit_edge, label %land.lhs.true.i81

if.end82.i.do.end.i_crit_edge:                    ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i81:                                ; preds = %if.end82.i
  %flower_ext_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %flower_ext_feats.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %flower_ext_feats.i, align 8
  %and.i = and i64 %143, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i81.cleanup_crit_edge, label %land.lhs.true.i81.do.end.i_crit_edge

land.lhs.true.i81.do.end.i_crit_edge:             ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i81.cleanup_crit_edge:              ; preds = %land.lhs.true.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i:                                         ; preds = %land.lhs.true.i81.do.end.i_crit_edge, %if.end82.i.do.end.i_crit_edge
  %options_len.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %136, i32 0, i32 2
  %144 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %options_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool6.not.i82 = icmp eq i8 %145, 0
  br i1 %tobool6.not.i82, label %do.end.i.do.end41.i_crit_edge, label %land.lhs.true7.i

do.end.i.do.end41.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41.i

land.lhs.true7.i:                                 ; preds = %do.end.i
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %land.lhs.true7.i.do.body14.i_crit_edge

land.lhs.true7.i.do.body14.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true7.i
  %flower_ext_feats10.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %141, i32 0, i32 4
  %146 = ptrtoint ptr %flower_ext_feats10.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %flower_ext_feats10.i, align 8
  %and11.i = and i64 %147, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i)
  %tobool12.not.i = icmp eq i64 %and11.i, 0
  br i1 %tobool12.not.i, label %lor.lhs.false.i.do.body14.i_crit_edge, label %lor.lhs.false.i.do.end41.i_crit_edge

lor.lhs.false.i.do.end41.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end41.i

lor.lhs.false.i.do.body14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14.i

do.body14.i:                                      ; preds = %lor.lhs.false.i.do.body14.i_crit_edge, %land.lhs.true7.i.do.body14.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_tun.__msg) #5
  %tobool15.not.i = icmp eq ptr %extack, null
  br i1 %tobool15.not.i, label %do.body14.i.cleanup_crit_edge, label %if.then16.i

do.body14.i.cleanup_crit_edge:                    ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #7
  %148 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @nfp_fl_set_tun.__msg, ptr %extack, align 4
  br label %cleanup

do.end41.i:                                       ; preds = %lor.lhs.false.i.do.end41.i_crit_edge, %do.end.i.do.end41.i_crit_edge
  %149 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 6, ptr %arrayidx84.i, align 4
  %len_lw.i83 = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx84.i, i32 0, i32 1
  %150 = ptrtoint ptr %len_lw.i83 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 7, ptr %len_lw.i83, align 1
  %shl.i = shl nuw nsw i32 %retval.0.i.ph.i, 4
  %tun_type_index.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 3
  %151 = ptrtoint ptr %tun_type_index.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %shl.i, ptr %tun_type_index.i, align 4
  %152 = ptrtoint ptr %136 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %136, align 8
  %tun_id68.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 2
  %154 = ptrtoint ptr %tun_id68.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 8)
  store i64 %153, ptr %tun_id68.i, align 4
  %ttl.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %136, i32 0, i32 4
  %155 = ptrtoint ptr %ttl.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %ttl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool70.not.i = icmp eq i8 %156, 0
  br i1 %tobool70.not.i, label %if.else.i, label %if.then71.i

if.then71.i:                                      ; preds = %do.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  %ttl74.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 5
  %157 = ptrtoint ptr %ttl74.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %ttl74.i, align 2
  br label %if.end113.i

if.else.i:                                        ; preds = %do.end41.i
  %158 = ptrtoint ptr %nd_net.i212.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %nd_net.i212.i, align 4
  br i1 %tobool.not.i.not.i, label %if.else91.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %flow.i) #5
  %160 = call ptr @memset(ptr %flow.i, i32 0, i32 88)
  %dst79.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %136, i32 0, i32 1, i32 0, i32 1
  %161 = call ptr @memcpy(ptr %daddr.i, ptr %dst79.i, i32 16)
  %162 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 17, ptr %flowic_proto.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %163 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dst_lookup_flow.i = getelementptr inbounds %struct.ipv6_stub, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %ipv6_dst_lookup_flow.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %ipv6_dst_lookup_flow.i, align 4
  %call80.i = call ptr %165(ptr noundef %159, ptr noundef null, ptr noundef nonnull %flow.i, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call80.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else86.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #7
  %call83.i = call i32 @ip6_dst_hoplimit(ptr noundef %call80.i) #5
  %conv84.i = trunc i32 %call83.i to i8
  %ttl85.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 5
  %166 = ptrtoint ptr %ttl85.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv84.i, ptr %ttl85.i, align 2
  call void @dst_release(ptr noundef %call80.i) #5
  br label %if.end90.i

if.else86.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #7
  %devconf_all.i = getelementptr inbounds %struct.net, ptr %159, i32 0, i32 36, i32 2
  %167 = ptrtoint ptr %devconf_all.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %devconf_all.i, align 32
  %hop_limit.i = getelementptr inbounds %struct.ipv6_devconf, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %hop_limit.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %hop_limit.i, align 4
  %conv88.i = trunc i32 %170 to i8
  %ttl89.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 5
  %171 = ptrtoint ptr %ttl89.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv88.i, ptr %ttl89.i, align 2
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.else86.i, %if.then82.i
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %flow.i) #5
  br label %if.end113.i

if.else91.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %flow94.i) #5
  %172 = call ptr @memset(ptr %flow94.i, i32 0, i32 56)
  %dst97.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %136, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %173 = ptrtoint ptr %dst97.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dst97.i, align 4
  %175 = ptrtoint ptr %daddr98.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %daddr98.i, align 4
  %176 = ptrtoint ptr %flowic_proto100.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 17, ptr %flowic_proto100.i, align 2
  %call.i.i = call ptr @ip_route_output_flow(ptr noundef %159, ptr noundef nonnull %flow94.i, ptr noundef null) #5
  %cmp.i.i.not.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %if.else109.i, label %if.then104.i

if.then104.i:                                     ; preds = %if.else91.i
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %call.i.i, i32 0, i32 2
  %177 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i84 = and i32 %178, -4
  %179 = inttoptr i32 %and.i.i.i84 to ptr
  %arrayidx.i.i.i85 = getelementptr i32, ptr %179, i32 9
  %180 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx.i.i.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp.i213.i = icmp eq i32 %181, 0
  br i1 %cmp.i213.i, label %if.then.i.i86, label %if.then104.i.ip4_dst_hoplimit.exit.i_crit_edge

if.then104.i.ip4_dst_hoplimit.exit.i_crit_edge:   ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ip4_dst_hoplimit.exit.i

if.then.i.i86:                                    ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #7
  %182 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %call.i.i, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 127
  %184 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %nd_net.i.i.i, align 4
  %sysctl_ip_default_ttl.i.i = getelementptr inbounds %struct.net, ptr %185, i32 0, i32 35, i32 37
  %186 = ptrtoint ptr %sysctl_ip_default_ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %sysctl_ip_default_ttl.i.i, align 2
  %conv.i.i = zext i8 %187 to i32
  br label %ip4_dst_hoplimit.exit.i

ip4_dst_hoplimit.exit.i:                          ; preds = %if.then.i.i86, %if.then104.i.ip4_dst_hoplimit.exit.i_crit_edge
  %hoplimit.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i86 ], [ %181, %if.then104.i.ip4_dst_hoplimit.exit.i_crit_edge ]
  %conv107.i = trunc i32 %hoplimit.0.i.i to i8
  %ttl108.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 5
  %188 = ptrtoint ptr %ttl108.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %conv107.i, ptr %ttl108.i, align 2
  call void @dst_release(ptr noundef %call.i.i) #5
  br label %if.end111.i

if.else109.i:                                     ; preds = %if.else91.i
  call void @__sanitizer_cov_trace_pc() #7
  %sysctl_ip_default_ttl.i = getelementptr inbounds %struct.net, ptr %159, i32 0, i32 35, i32 37
  %189 = ptrtoint ptr %sysctl_ip_default_ttl.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %sysctl_ip_default_ttl.i, align 2
  %ttl110.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 5
  %191 = ptrtoint ptr %ttl110.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %190, ptr %ttl110.i, align 2
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.else109.i, %ip4_dst_hoplimit.exit.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %flow94.i) #5
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.end111.i, %if.end90.i, %if.then71.i
  %tos.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %136, i32 0, i32 3
  %192 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %tos.i, align 2
  %tos115.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 6
  %194 = ptrtoint ptr %tos115.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %tos115.i, align 1
  %tun_flags.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %136, i32 0, i32 2
  %195 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %tun_flags.i, align 8
  %197 = and i16 %196, -2050
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %197)
  %198 = icmp eq i16 %197, 4
  br i1 %198, label %if.end135.i, label %do.body127.i

do.body127.i:                                     ; preds = %if.end113.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_tun.__msg.28) #5
  %tobool129.not.i = icmp eq ptr %extack, null
  br i1 %tobool129.not.i, label %do.body127.i.cleanup_crit_edge, label %if.then130.i

do.body127.i.cleanup_crit_edge:                   ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then130.i:                                     ; preds = %do.body127.i
  call void @__sanitizer_cov_trace_pc() #7
  %199 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr @nfp_fl_set_tun.__msg.28, ptr %extack, align 4
  br label %cleanup

if.end135.i:                                      ; preds = %if.end113.i
  %tun_flags138.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 4
  %200 = ptrtoint ptr %tun_flags138.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %196, ptr %tun_flags138.i, align 4
  br i1 %cmp8.not.i, label %if.then141.i, label %if.end135.i.if.end145.i_crit_edge

if.end135.i.if.end145.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end145.i

if.then141.i:                                     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #7
  %tun_proto.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 11
  %201 = ptrtoint ptr %tun_proto.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 25944, ptr %tun_proto.i, align 2
  %202 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %options_len.i, align 8
  %204 = lshr i8 %203, 2
  %tun_len.i = getelementptr inbounds %struct.nfp_fl_set_tun, ptr %arrayidx84.i, i32 0, i32 9
  %205 = ptrtoint ptr %tun_len.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %tun_len.i, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then141.i, %if.end135.i.if.end145.i_crit_edge
  br i1 %tobool.not.i.not.i, label %if.else154.i, label %if.then147.i

if.then147.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i = getelementptr inbounds %struct.nfp_fl_pre_tunnel, ptr %98, i32 0, i32 1
  %206 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %flags.i, align 2
  %208 = or i16 %207, 1
  store i16 %208, ptr %flags.i, align 2
  %209 = getelementptr inbounds %struct.nfp_fl_pre_tunnel, ptr %98, i32 0, i32 2
  %dst153.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %136, i32 0, i32 1, i32 0, i32 1
  %210 = call ptr @memcpy(ptr %209, ptr %dst153.i, i32 16)
  br label %cleanup.i

if.else154.i:                                     ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #7
  %dst157.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %136, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %211 = ptrtoint ptr %dst157.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dst157.i, align 4
  %213 = getelementptr inbounds %struct.nfp_fl_pre_tunnel, ptr %98, i32 0, i32 2
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %212, ptr %213, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else154.i, %if.then147.i
  %215 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %act_len, align 4
  %add89.i = add i32 %216, 28
  store i32 %add89.i, ptr %act_len, align 4
  br label %if.end10

sw.bb91.i:                                        ; preds = %if.end7
  %217 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %217, align 8
  %offset2.i.i = getelementptr inbounds %struct.anon.221, ptr %217, i32 0, i32 1
  %220 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %offset2.i.i, align 4
  %222 = zext i32 %219 to i64
  call void @__sanitizer_cov_trace_switch(i64 %222, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %219, label %do.body.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb3.i.i
    i32 3, label %sw.bb5.i.i
    i32 4, label %sw.bb7.i.i
    i32 5, label %sw.bb9.i.i
  ]

sw.bb.i.i:                                        ; preds = %sw.bb91.i
  %223 = add i32 %221, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %223)
  %cmp.i.i309.i = icmp ult i32 %223, -13
  br i1 %cmp.i.i309.i, label %do.body.i.i.i62, label %if.end2.i.i.i

do.body.i.i.i62:                                  ; preds = %sw.bb.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_eth.__msg) #5
  %tobool.not.i.i.i61 = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i.i61, label %do.body.i.i.i62.cleanup_crit_edge, label %if.then1.i.i.i

do.body.i.i.i62.cleanup_crit_edge:                ; preds = %do.body.i.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then1.i.i.i:                                   ; preds = %do.body.i.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  %224 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr @nfp_fl_set_eth.__msg, ptr %extack, align 4
  br label %cleanup

if.end2.i.i.i:                                    ; preds = %sw.bb.i.i
  %mask3.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5, i32 0, i32 1
  %225 = ptrtoint ptr %mask3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %mask3.i.i.i, align 8
  %val.i.i.i = getelementptr inbounds %struct.anon.221, ptr %217, i32 0, i32 3
  %227 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %val.i.i.i, align 4
  %and.i.i.i = and i32 %228, %226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end15.i.i.i, label %do.body7.i.i.i

do.body7.i.i.i:                                   ; preds = %if.end2.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_eth.__msg.29) #5
  %tobool9.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i.i.i, label %do.body7.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i

do.body7.i.i.i.cleanup_crit_edge:                 ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %do.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %229 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @nfp_fl_set_eth.__msg.29, ptr %extack, align 4
  br label %cleanup

if.end15.i.i.i:                                   ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i.i.i = xor i32 %226, -1
  %arrayidx.i.i310.i = getelementptr %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 6, i32 3, i32 %221
  %arrayidx16.i.i.i = getelementptr %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 6, i32 2, i32 %221
  %230 = ptrtoint ptr %arrayidx.i.i310.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %231 = load i32, ptr %arrayidx.i.i310.i, align 1
  %232 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %232, i32 4)
  %233 = load i32, ptr %arrayidx16.i.i.i, align 1
  %and.i.i.i.i = and i32 %228, %neg.i.i.i
  %and4.i.i.i.i = and i32 %231, %226
  %or.i.i.i.i = or i32 %and4.i.i.i.i, %and.i.i.i.i
  %or6.i.i.i.i = or i32 %233, %neg.i.i.i
  store i32 %or6.i.i.i.i, ptr %arrayidx16.i.i.i, align 1
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i310.i, align 1
  %234 = ptrtoint ptr %reserved.i.i.i to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 0, ptr %reserved.i.i.i, align 2
  %235 = ptrtoint ptr %set_eth.i.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 7, ptr %set_eth.i.i, align 4
  %236 = ptrtoint ptr %len_lw.i.i.i to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 7, ptr %len_lw.i.i.i, align 1
  br label %if.end10

sw.bb3.i.i:                                       ; preds = %sw.bb91.i
  %mask1.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5, i32 0, i32 1
  %237 = ptrtoint ptr %mask1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %mask1.i.i.i, align 8
  %neg.i1.i.i = xor i32 %238, -1
  %mask.sroa.0.0.extract.shift.i.i.i = lshr i32 %neg.i1.i.i, 24
  %mask.sroa.16.0.extract.shift.i.i.i = lshr i32 %neg.i1.i.i, 16
  %val.i2.i.i = getelementptr inbounds %struct.anon.221, ptr %217, i32 0, i32 3
  %239 = ptrtoint ptr %val.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %val.i2.i.i, align 4
  %exact.sroa.0.0.extract.shift.i.i.i = lshr i32 %240, 24
  %exact.sroa.8.0.extract.shift.i.i.i = lshr i32 %240, 16
  %mask.sroa.20.0.insert.ext.i.i.i = and i32 %neg.i1.i.i, 65535
  %and.i3.i.i = and i32 %240, %238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3.i.i)
  %tobool.not.i4.i.i = icmp eq i32 %and.i3.i.i, 0
  br i1 %tobool.not.i4.i.i, label %if.end5.i.i.i, label %do.body.i5.i.i

do.body.i5.i.i:                                   ; preds = %sw.bb3.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip4.__msg) #5
  %tobool3.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i.i.i, label %do.body.i5.i.i.cleanup_crit_edge, label %if.then4.i.i.i

do.body.i5.i.i.cleanup_crit_edge:                 ; preds = %do.body.i5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i.i.i:                                   ; preds = %do.body.i5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %241 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr @nfp_fl_set_ip4.__msg, ptr %extack, align 4
  br label %cleanup

if.end5.i.i.i:                                    ; preds = %sw.bb3.i.i
  %242 = call i32 @llvm.fshl.i32(i32 %221, i32 %221, i32 30) #5
  %243 = zext i32 %242 to i64
  call void @__sanitizer_cov_trace_switch(i64 %243, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %242, label %do.body103.i.i.i [
    i32 4, label %sw.bb.i.i.i
    i32 3, label %sw.bb12.i.i.i
    i32 2, label %sw.bb23.i.i.i
    i32 0, label %sw.bb60.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %244 = ptrtoint ptr %ipv4_dst_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ipv4_dst_mask.i.i.i, align 4
  %or.i.i.i = or i32 %245, %neg.i1.i.i
  store i32 %or.i.i.i, ptr %ipv4_dst_mask.i.i.i, align 4
  %246 = ptrtoint ptr %ipv4_dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %ipv4_dst.i.i.i, align 4
  %and7.i.i.i = and i32 %247, %238
  %and8.i.i.i = and i32 %240, %neg.i1.i.i
  %or10.i.i.i = or i32 %and7.i.i.i, %and8.i.i.i
  store i32 %or10.i.i.i, ptr %ipv4_dst.i.i.i, align 4
  %248 = ptrtoint ptr %set_ip_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 9, ptr %set_ip_addr.i.i, align 4
  %249 = ptrtoint ptr %len_lw22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 5, ptr %len_lw22.i.i.i, align 1
  br label %if.end10

sw.bb12.i.i.i:                                    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %250 = ptrtoint ptr %ipv4_src_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %ipv4_src_mask.i.i.i, align 4
  %or13.i.i.i = or i32 %251, %neg.i1.i.i
  store i32 %or13.i.i.i, ptr %ipv4_src_mask.i.i.i, align 4
  %252 = ptrtoint ptr %ipv4_src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %ipv4_src.i.i.i, align 4
  %and15.i.i.i = and i32 %253, %238
  %and16.i.i.i = and i32 %240, %neg.i1.i.i
  %or18.i.i.i = or i32 %and15.i.i.i, %and16.i.i.i
  store i32 %or18.i.i.i, ptr %ipv4_src.i.i.i, align 4
  %254 = ptrtoint ptr %set_ip_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 9, ptr %set_ip_addr.i.i, align 4
  %255 = ptrtoint ptr %len_lw22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 5, ptr %len_lw22.i.i.i, align 1
  br label %if.end10

sw.bb23.i.i.i:                                    ; preds = %if.end5.i.i.i
  %256 = and i32 %neg.i1.i.i, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %if.end36.i.i.i, label %do.body28.i.i.i

do.body28.i.i.i:                                  ; preds = %sw.bb23.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip4.__msg.30) #5
  %tobool30.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool30.not.i.i.i, label %do.body28.i.i.i.cleanup_crit_edge, label %if.then31.i.i.i

do.body28.i.i.i.cleanup_crit_edge:                ; preds = %do.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31.i.i.i:                                  ; preds = %do.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %258 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr @nfp_fl_set_ip4.__msg.30, ptr %extack, align 4
  br label %cleanup

if.end36.i.i.i:                                   ; preds = %sw.bb23.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %259 = ptrtoint ptr %ipv4_ttl_mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %ipv4_ttl_mask.i.i.i, align 2
  %261 = trunc i32 %mask.sroa.0.0.extract.shift.i.i.i to i8
  %conv40.i.i.i = or i8 %260, %261
  store i8 %conv40.i.i.i, ptr %ipv4_ttl_mask.i.i.i, align 2
  %262 = ptrtoint ptr %ipv4_ttl.i.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %ipv4_ttl.i.i.i, align 4
  %264 = xor i8 %261, -1
  %conv46.i.i.i = and i8 %263, %264
  %and51.i.i.i = and i32 %exact.sroa.0.0.extract.shift.i.i.i, %mask.sroa.0.0.extract.shift.i.i.i
  %265 = trunc i32 %and51.i.i.i to i8
  %conv55.i.i.i = or i8 %conv46.i.i.i, %265
  store i8 %conv55.i.i.i, ptr %ipv4_ttl.i.i.i, align 4
  %266 = ptrtoint ptr %set_ip_ttl_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %266)
  store i8 10, ptr %set_ip_ttl_tos.i.i, align 4
  %267 = ptrtoint ptr %len_lw102.i.i.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 2, ptr %len_lw102.i.i.i, align 1
  br label %if.end10

sw.bb60.i.i.i:                                    ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %238)
  %tobool62.not.i.i.i = icmp ugt i32 %238, -268435457
  %268 = and i32 %neg.i1.i.i, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %268)
  %tobool66.not.i.i.i = icmp eq i32 %268, 0
  %or.cond273.i.i.i = select i1 %tobool62.not.i.i.i, i1 %tobool66.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.sroa.20.0.insert.ext.i.i.i)
  %tobool69.not.i.i.i = icmp eq i32 %mask.sroa.20.0.insert.ext.i.i.i, 0
  %or.cond274.i.i.i = select i1 %or.cond273.i.i.i, i1 %tobool69.not.i.i.i, i1 false
  br i1 %or.cond274.i.i.i, label %if.end79.i.i.i, label %do.body71.i.i.i

do.body71.i.i.i:                                  ; preds = %sw.bb60.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip4.__msg.31) #5
  %tobool73.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool73.not.i.i.i, label %do.body71.i.i.i.cleanup_crit_edge, label %if.then74.i.i.i

do.body71.i.i.i.cleanup_crit_edge:                ; preds = %do.body71.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then74.i.i.i:                                  ; preds = %do.body71.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %269 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr @nfp_fl_set_ip4.__msg.31, ptr %extack, align 4
  br label %cleanup

if.end79.i.i.i:                                   ; preds = %sw.bb60.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %270 = ptrtoint ptr %ipv4_tos_mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %ipv4_tos_mask.i.i.i, align 1
  %272 = trunc i32 %mask.sroa.16.0.extract.shift.i.i.i to i8
  %conv83.i.i.i = or i8 %271, %272
  store i8 %conv83.i.i.i, ptr %ipv4_tos_mask.i.i.i, align 1
  %273 = ptrtoint ptr %ipv4_tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %ipv4_tos.i.i.i, align 1
  %275 = xor i8 %272, -1
  %conv89.i.i.i = and i8 %274, %275
  %and94.i.i.i = and i32 %exact.sroa.8.0.extract.shift.i.i.i, %mask.sroa.16.0.extract.shift.i.i.i
  %276 = trunc i32 %and94.i.i.i to i8
  %conv98.i.i.i = or i8 %conv89.i.i.i, %276
  store i8 %conv98.i.i.i, ptr %ipv4_tos.i.i.i, align 1
  %277 = ptrtoint ptr %set_ip_ttl_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 10, ptr %set_ip_ttl_tos.i.i, align 4
  %278 = ptrtoint ptr %len_lw102.i.i.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 2, ptr %len_lw102.i.i.i, align 1
  br label %if.end10

do.body103.i.i.i:                                 ; preds = %if.end5.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip4.__msg.32) #5
  %tobool105.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool105.not.i.i.i, label %do.body103.i.i.i.cleanup_crit_edge, label %if.then106.i.i.i

do.body103.i.i.i.cleanup_crit_edge:               ; preds = %do.body103.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then106.i.i.i:                                 ; preds = %do.body103.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %279 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr @nfp_fl_set_ip4.__msg.32, ptr %extack, align 4
  br label %cleanup

sw.bb5.i.i:                                       ; preds = %sw.bb91.i
  %mask1.i8.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5, i32 0, i32 1
  %280 = ptrtoint ptr %mask1.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %mask1.i8.i.i, align 8
  %neg.i9.i.i = xor i32 %281, -1
  %val.i10.i.i = getelementptr inbounds %struct.anon.221, ptr %217, i32 0, i32 3
  %282 = ptrtoint ptr %val.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %val.i10.i.i, align 4
  %and.i11.i.i = and i32 %283, %281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %and.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %if.end5.i17.i.i, label %do.body.i14.i.i

do.body.i14.i.i:                                  ; preds = %sw.bb5.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip6.__msg) #5
  %tobool3.not.i13.i.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i13.i.i, label %do.body.i14.i.i.cleanup_crit_edge, label %if.then4.i15.i.i

do.body.i14.i.i.cleanup_crit_edge:                ; preds = %do.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i15.i.i:                                 ; preds = %do.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %284 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr @nfp_fl_set_ip6.__msg, ptr %extack, align 4
  br label %cleanup

if.end5.i17.i.i:                                  ; preds = %sw.bb5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %221)
  %cmp.i16.i.i = icmp ult i32 %221, 8
  br i1 %cmp.i16.i.i, label %if.then6.i.i.i, label %if.else.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end5.i17.i.i
  %285 = zext i32 %221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %285, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %221, label %if.then6.i.i.i.sw.epilog.i.i.i.i_crit_edge [
    i32 4, label %sw.bb.i.i.i.i
    i32 0, label %sw.bb22.i.i.i.i
  ]

if.then6.i.i.i.sw.epilog.i.i.i.i_crit_edge:       ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %281)
  %286 = icmp ugt i32 %281, -257
  br i1 %286, label %if.end5.i.i.i.i, label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %sw.bb.i.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip6_hop_limit_flow_label.__msg) #5
  %tobool3.not.i.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool3.not.i.i.i.i, label %do.body.i.i.i.i.cleanup_crit_edge, label %if.then4.i.i.i.i

do.body.i.i.i.i.cleanup_crit_edge:                ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %287 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg, ptr %extack, align 4
  br label %cleanup

if.end5.i.i.i.i:                                  ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %288 = ptrtoint ptr %ipv6_hop_limit_mask.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %ipv6_hop_limit_mask.i.i.i.i, align 1
  %290 = trunc i32 %neg.i9.i.i to i8
  %conv8.i.i.i.i = or i8 %289, %290
  store i8 %conv8.i.i.i.i, ptr %ipv6_hop_limit_mask.i.i.i.i, align 1
  %291 = ptrtoint ptr %ipv6_hop_limit.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %ipv6_hop_limit.i.i.i.i, align 1
  %293 = xor i8 %290, -1
  %conv12.i.i.i.i = and i8 %292, %293
  %and17.i.i.i.i = and i32 %283, %neg.i9.i.i
  %294 = trunc i32 %and17.i.i.i.i to i8
  %conv21.i.i.i.i = or i8 %conv12.i.i.i.i, %294
  store i8 %conv21.i.i.i.i, ptr %ipv6_hop_limit.i.i.i.i, align 1
  br label %sw.epilog.i.i.i.i

sw.bb22.i.i.i.i:                                  ; preds = %if.then6.i.i.i
  %295 = or i32 %283, %neg.i9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %295)
  %296 = icmp ult i32 %295, 1048576
  br i1 %296, label %if.end37.i.i.i.i, label %do.body29.i.i.i.i

do.body29.i.i.i.i:                                ; preds = %sw.bb22.i.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip6_hop_limit_flow_label.__msg.34) #5
  %tobool31.not.i.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool31.not.i.i.i.i, label %do.body29.i.i.i.i.cleanup_crit_edge, label %if.then32.i.i.i.i

do.body29.i.i.i.i.cleanup_crit_edge:              ; preds = %do.body29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then32.i.i.i.i:                                ; preds = %do.body29.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %297 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg.34, ptr %extack, align 4
  br label %cleanup

if.end37.i.i.i.i:                                 ; preds = %sw.bb22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %298 = ptrtoint ptr %ipv6_label_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %ipv6_label_mask.i.i.i.i, align 4
  %or38.i.i.i.i = or i32 %299, %neg.i9.i.i
  store i32 %or38.i.i.i.i, ptr %ipv6_label_mask.i.i.i.i, align 4
  %300 = ptrtoint ptr %ipv6_label.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %ipv6_label.i.i.i.i, align 4
  %and40.i.i.i.i = and i32 %301, %281
  %and41.i.i.i.i = and i32 %283, %neg.i9.i.i
  %or43.i.i.i.i = or i32 %and40.i.i.i.i, %and41.i.i.i.i
  store i32 %or43.i.i.i.i, ptr %ipv6_label.i.i.i.i, align 4
  br label %sw.epilog.i.i.i.i

sw.epilog.i.i.i.i:                                ; preds = %if.end37.i.i.i.i, %if.end5.i.i.i.i, %if.then6.i.i.i.sw.epilog.i.i.i.i_crit_edge
  %302 = ptrtoint ptr %set_ip6_tc_hl_fl.i.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 13, ptr %set_ip6_tc_hl_fl.i.i, align 4
  %303 = ptrtoint ptr %len_lw.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %303)
  store i8 4, ptr %len_lw.i.i.i.i, align 1
  br label %if.end10

if.else.i.i.i:                                    ; preds = %if.end5.i17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %221)
  %cmp7.i.i.i = icmp ult i32 %221, 24
  br i1 %cmp7.i.i.i, label %if.then8.i.i.i, label %if.else9.i.i.i

if.then8.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i.i = add nuw nsw i32 %221, 1016
  %div49.i.i.i = lshr i32 %sub.i.i.i, 2
  %idxprom.i.i.i.i = and i32 %div49.i.i.i, 255
  %arrayidx.i.i.i.i = getelementptr %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 1, i32 2, i32 %idxprom.i.i.i.i
  %304 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %or.i.i18.i.i = or i32 %305, %neg.i9.i.i
  store i32 %or.i.i18.i.i, ptr %arrayidx.i.i.i.i, align 4
  %exact5.i.i.i.i = getelementptr %struct.nfp_flower_pedit_acts, ptr %set_act, i32 0, i32 1, i32 2, i32 %idxprom.i.i.i.i, i32 1
  %306 = ptrtoint ptr %exact5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %exact5.i.i.i.i, align 4
  %and.i.i19.i.i = and i32 %307, %281
  %and6.i.i.i.i = and i32 %283, %neg.i9.i.i
  %or11.i.i.i.i = or i32 %and.i.i19.i.i, %and6.i.i.i.i
  store i32 %or11.i.i.i.i, ptr %exact5.i.i.i.i, align 4
  %308 = ptrtoint ptr %reserved.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 0, ptr %reserved.i.i.i.i, align 2
  %309 = ptrtoint ptr %set_ip6_src.i.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 11, ptr %set_ip6_src.i.i, align 4
  %310 = ptrtoint ptr %len_lw.i50.i.i.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 9, ptr %len_lw.i50.i.i.i, align 1
  br label %if.end10

if.else9.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %221)
  %cmp10.i.i.i = icmp ult i32 %221, 40
  br i1 %cmp10.i.i.i, label %if.then12.i.i.i, label %do.body17.i.i.i

if.then12.i.i.i:                                  ; preds = %if.else9.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub13.i.i.i = add nuw nsw i32 %221, 1000
  %div1448.i.i.i = lshr i32 %sub13.i.i.i, 2
  %idxprom.i51.i.i.i = and i32 %div1448.i.i.i, 255
  %arrayidx.i52.i.i.i = getelementptr %struct.nfp_fl_set_ipv6_addr, ptr %set_act, i32 0, i32 2, i32 %idxprom.i51.i.i.i
  %311 = ptrtoint ptr %arrayidx.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %arrayidx.i52.i.i.i, align 4
  %or.i53.i.i.i = or i32 %312, %neg.i9.i.i
  store i32 %or.i53.i.i.i, ptr %arrayidx.i52.i.i.i, align 4
  %exact5.i54.i.i.i = getelementptr %struct.nfp_fl_set_ipv6_addr, ptr %set_act, i32 0, i32 2, i32 %idxprom.i51.i.i.i, i32 1
  %313 = ptrtoint ptr %exact5.i54.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %exact5.i54.i.i.i, align 4
  %and.i55.i.i.i = and i32 %314, %281
  %and6.i56.i.i.i = and i32 %283, %neg.i9.i.i
  %or11.i57.i.i.i = or i32 %and.i55.i.i.i, %and6.i56.i.i.i
  store i32 %or11.i57.i.i.i, ptr %exact5.i54.i.i.i, align 4
  %315 = ptrtoint ptr %reserved.i58.i.i.i to i32
  call void @__asan_store2_noabort(i32 %315)
  store i16 0, ptr %reserved.i58.i.i.i, align 2
  %316 = ptrtoint ptr %set_act to i32
  call void @__asan_store1_noabort(i32 %316)
  store i8 12, ptr %set_act, align 4
  %317 = ptrtoint ptr %len_lw.i59.i.i.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 9, ptr %len_lw.i59.i.i.i, align 1
  br label %if.end10

do.body17.i.i.i:                                  ; preds = %if.else9.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_ip6.__msg.33) #5
  %tobool19.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool19.not.i.i.i, label %do.body17.i.i.i.cleanup_crit_edge, label %if.then20.i.i.i

do.body17.i.i.i.cleanup_crit_edge:                ; preds = %do.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20.i.i.i:                                  ; preds = %do.body17.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %318 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr @nfp_fl_set_ip6.__msg.33, ptr %extack, align 4
  br label %cleanup

sw.bb7.i.i:                                       ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.not.i21.i.i = icmp eq i32 %221, 0
  br i1 %tobool.not.i21.i.i, label %if.end3.i.i.i, label %do.body.i22.i.i

do.body.i22.i.i:                                  ; preds = %sw.bb7.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_tport.__msg) #5
  %tobool1.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i.i, label %do.body.i22.i.i.cleanup_crit_edge, label %if.then2.i.i.i

do.body.i22.i.i.cleanup_crit_edge:                ; preds = %do.body.i22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i.i.i:                                   ; preds = %do.body.i22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %319 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr @nfp_fl_set_tport.__msg, ptr %extack, align 4
  br label %cleanup

if.end3.i.i.i:                                    ; preds = %sw.bb7.i.i
  %mask4.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5, i32 0, i32 1
  %320 = ptrtoint ptr %mask4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %mask4.i.i.i, align 8
  %val.i23.i.i = getelementptr inbounds %struct.anon.221, ptr %217, i32 0, i32 3
  %322 = ptrtoint ptr %val.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %val.i23.i.i, align 4
  %and.i24.i.i = and i32 %323, %321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %and.i24.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end16.i.i.i, label %do.body8.i.i.i

do.body8.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_tport.__msg.35) #5
  %tobool10.not.i.i.i = icmp eq ptr %extack, null
  br i1 %tobool10.not.i.i.i, label %do.body8.i.i.i.cleanup_crit_edge, label %if.then11.i.i.i

do.body8.i.i.i.cleanup_crit_edge:                 ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.i.i.i:                                  ; preds = %do.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %324 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr @nfp_fl_set_tport.__msg.35, ptr %extack, align 4
  br label %cleanup

if.end16.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i25.i.i = xor i32 %321, -1
  %325 = ptrtoint ptr %tp_port_val.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %tp_port_val.i46.i.i, align 4
  %327 = ptrtoint ptr %tp_port_mask.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %tp_port_mask.i47.i.i, align 4
  %and.i.i26.i.i = and i32 %323, %neg.i25.i.i
  %and4.i.i27.i.i = and i32 %326, %321
  %or.i.i28.i.i = or i32 %and4.i.i27.i.i, %and.i.i26.i.i
  %or6.i.i29.i.i = or i32 %328, %neg.i25.i.i
  store i32 %or6.i.i29.i.i, ptr %tp_port_mask.i47.i.i, align 4
  store i32 %or.i.i28.i.i, ptr %tp_port_val.i46.i.i, align 4
  %329 = ptrtoint ptr %reserved.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %329)
  store i16 0, ptr %reserved.i52.i.i, align 2
  %330 = ptrtoint ptr %set_tport10.i.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 15, ptr %set_tport10.i.i, align 4
  %331 = ptrtoint ptr %len_lw.i53.i.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 3, ptr %len_lw.i53.i.i, align 1
  br label %if.end10

sw.bb9.i.i:                                       ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.not.i33.i.i = icmp eq i32 %221, 0
  br i1 %tobool.not.i33.i.i, label %if.end3.i41.i.i, label %do.body.i35.i.i

do.body.i35.i.i:                                  ; preds = %sw.bb9.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_tport.__msg) #5
  %tobool1.not.i34.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i34.i.i, label %do.body.i35.i.i.cleanup_crit_edge, label %if.then2.i36.i.i

do.body.i35.i.i.cleanup_crit_edge:                ; preds = %do.body.i35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i36.i.i:                                 ; preds = %do.body.i35.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %332 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %332)
  store ptr @nfp_fl_set_tport.__msg, ptr %extack, align 4
  br label %cleanup

if.end3.i41.i.i:                                  ; preds = %sw.bb9.i.i
  %mask4.i37.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5, i32 0, i32 1
  %333 = ptrtoint ptr %mask4.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %mask4.i37.i.i, align 8
  %val.i38.i.i = getelementptr inbounds %struct.anon.221, ptr %217, i32 0, i32 3
  %335 = ptrtoint ptr %val.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %val.i38.i.i, align 4
  %and.i39.i.i = and i32 %336, %334
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i.i)
  %tobool6.not.i40.i.i = icmp eq i32 %and.i39.i.i, 0
  br i1 %tobool6.not.i40.i.i, label %if.end16.i54.i.i, label %do.body8.i43.i.i

do.body8.i43.i.i:                                 ; preds = %if.end3.i41.i.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_set_tport.__msg.35) #5
  %tobool10.not.i42.i.i = icmp eq ptr %extack, null
  br i1 %tobool10.not.i42.i.i, label %do.body8.i43.i.i.cleanup_crit_edge, label %if.then11.i44.i.i

do.body8.i43.i.i.cleanup_crit_edge:               ; preds = %do.body8.i43.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then11.i44.i.i:                                ; preds = %do.body8.i43.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %337 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %337)
  store ptr @nfp_fl_set_tport.__msg.35, ptr %extack, align 4
  br label %cleanup

if.end16.i54.i.i:                                 ; preds = %if.end3.i41.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %neg.i45.i.i = xor i32 %334, -1
  %338 = ptrtoint ptr %tp_port_val.i46.i.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %tp_port_val.i46.i.i, align 4
  %340 = ptrtoint ptr %tp_port_mask.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %tp_port_mask.i47.i.i, align 4
  %and.i.i48.i.i = and i32 %336, %neg.i45.i.i
  %and4.i.i49.i.i = and i32 %339, %334
  %or.i.i50.i.i = or i32 %and4.i.i49.i.i, %and.i.i48.i.i
  %or6.i.i51.i.i = or i32 %341, %neg.i45.i.i
  store i32 %or6.i.i51.i.i, ptr %tp_port_mask.i47.i.i, align 4
  store i32 %or.i.i50.i.i, ptr %tp_port_val.i46.i.i, align 4
  %342 = ptrtoint ptr %reserved.i52.i.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 0, ptr %reserved.i52.i.i, align 2
  %343 = ptrtoint ptr %set_tport10.i.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 14, ptr %set_tport10.i.i, align 4
  %344 = ptrtoint ptr %len_lw.i53.i.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 3, ptr %len_lw.i53.i.i, align 1
  br label %if.end10

do.body.i.i:                                      ; preds = %sw.bb91.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_pedit.__msg) #5
  %tobool.not.i311.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i311.i, label %do.body.i.i.cleanup_crit_edge, label %if.then.i312.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i312.i:                                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %345 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr @nfp_fl_pedit.__msg, ptr %extack, align 4
  br label %cleanup

sw.bb98.i:                                        ; preds = %if.end7
  %346 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %346, align 8
  %349 = ptrtoint ptr %csum_updated to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %csum_updated, align 4
  %neg.i = xor i32 %350, -1
  %and99.i = and i32 %348, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.end110.i, label %do.body102.i

do.body102.i:                                     ; preds = %sw.bb98.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.6) #5
  %tobool104.not.i = icmp eq ptr %extack, null
  br i1 %tobool104.not.i, label %do.body102.i.cleanup_crit_edge, label %if.then105.i

do.body102.i.cleanup_crit_edge:                   ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then105.i:                                     ; preds = %do.body102.i
  call void @__sanitizer_cov_trace_pc() #7
  %351 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %351)
  store ptr @nfp_flower_loop_action.__msg.6, ptr %extack, align 4
  br label %cleanup

if.end110.i:                                      ; preds = %sw.bb98.i
  call void @__sanitizer_cov_trace_pc() #7
  %neg111.i = xor i32 %348, -1
  %and112.i = and i32 %350, %neg111.i
  %352 = ptrtoint ptr %csum_updated to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %and112.i, ptr %csum_updated, align 4
  br label %if.end10

sw.bb113.i:                                       ; preds = %if.end7
  %353 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %act_len, align 4
  %355 = add i32 %354, -1209
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %355)
  %cmp115.i = icmp ult i32 %355, -1217
  br i1 %cmp115.i, label %do.body118.i, label %if.end126.i

do.body118.i:                                     ; preds = %sw.bb113.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.7) #5
  %tobool120.not.i = icmp eq ptr %extack, null
  br i1 %tobool120.not.i, label %do.body118.i.cleanup_crit_edge, label %if.then121.i

do.body118.i.cleanup_crit_edge:                   ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then121.i:                                     ; preds = %do.body118.i
  call void @__sanitizer_cov_trace_pc() #7
  %356 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr @nfp_flower_loop_action.__msg.7, ptr %extack, align 4
  br label %cleanup

if.end126.i:                                      ; preds = %sw.bb113.i
  %357 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %action_data, align 4
  %arrayidx128.i = getelementptr i8, ptr %358, i32 %354
  %359 = ptrtoint ptr %shortcut172.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 0, ptr %shortcut172.i, align 4
  %360 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 3, ptr %arrayidx128.i, align 4
  %len_lw.i314.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx128.i, i32 0, i32 1
  %361 = ptrtoint ptr %len_lw.i314.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 2, ptr %len_lw.i314.i, align 1
  %362 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %bos.i.i = getelementptr inbounds %struct.anon.227, ptr %362, i32 0, i32 3
  %363 = ptrtoint ptr %bos.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %bos.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %364)
  %cmp.not.i.i = icmp eq i8 %364, -1
  br i1 %cmp.not.i.i, label %do.body.i319.i, label %if.end134.i

do.body.i319.i:                                   ; preds = %if.end126.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_push_mpls.__msg) #5
  %tobool.not.i318.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i318.i, label %do.body.i319.i.cleanup_crit_edge, label %if.then6.i.i

do.body.i319.i.cleanup_crit_edge:                 ; preds = %do.body.i319.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6.i.i:                                     ; preds = %do.body.i319.i
  call void @__sanitizer_cov_trace_pc() #7
  %365 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr @nfp_fl_push_mpls.__msg, ptr %extack, align 4
  br label %cleanup

if.end134.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv2.i.i = zext i8 %364 to i32
  %shl.i315.i = shl nuw nsw i32 %conv2.i.i, 8
  %tc.i.i = getelementptr inbounds %struct.anon.227, ptr %362, i32 0, i32 2
  %366 = ptrtoint ptr %tc.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %tc.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %367)
  %cmp9.not.i.i = icmp eq i8 %367, -1
  %conv8.i.i = zext i8 %367 to i32
  %shl14.i.i = shl nuw nsw i32 %conv8.i.i, 9
  %or15.i.i = select i1 %cmp9.not.i.i, i32 0, i32 %shl14.i.i
  %368 = ptrtoint ptr %362 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %362, align 8
  %shl17.i.i = shl i32 %369, 12
  %ttl.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5, i32 0, i32 1
  %370 = ptrtoint ptr %ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %370)
  %371 = load i8, ptr %ttl.i.i, align 8
  %conv19.i.i = zext i8 %371 to i32
  %mpls_lse.0.i.i = or i32 %shl17.i.i, %shl.i315.i
  %or18.i.i = or i32 %mpls_lse.0.i.i, %or15.i.i
  %or21.i.i = or i32 %or18.i.i, %conv19.i.i
  %proto.i316.i = getelementptr inbounds %struct.anon.227, ptr %362, i32 0, i32 1
  %372 = ptrtoint ptr %proto.i316.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %proto.i316.i, align 4
  %ethtype.i.i = getelementptr inbounds %struct.nfp_fl_push_mpls, ptr %arrayidx128.i, i32 0, i32 1
  %374 = ptrtoint ptr %ethtype.i.i to i32
  call void @__asan_store2_noabort(i32 %374)
  store i16 %373, ptr %ethtype.i.i, align 2
  %lse.i.i = getelementptr inbounds %struct.nfp_fl_push_mpls, ptr %arrayidx128.i, i32 0, i32 2
  %375 = ptrtoint ptr %lse.i.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %or21.i.i, ptr %lse.i.i, align 4
  %376 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %act_len, align 4
  %add135.i = add i32 %377, 8
  store i32 %add135.i, ptr %act_len, align 4
  br label %if.end10

sw.bb136.i:                                       ; preds = %if.end7
  %378 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %act_len, align 4
  %380 = add i32 %379, -1213
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %380)
  %cmp138.i = icmp ult i32 %380, -1217
  br i1 %cmp138.i, label %do.body141.i, label %if.end149.i

do.body141.i:                                     ; preds = %sw.bb136.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.8) #5
  %tobool143.not.i = icmp eq ptr %extack, null
  br i1 %tobool143.not.i, label %do.body141.i.cleanup_crit_edge, label %if.then144.i

do.body141.i.cleanup_crit_edge:                   ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then144.i:                                     ; preds = %do.body141.i
  call void @__sanitizer_cov_trace_pc() #7
  %381 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %381)
  store ptr @nfp_flower_loop_action.__msg.8, ptr %extack, align 4
  br label %cleanup

if.end149.i:                                      ; preds = %sw.bb136.i
  call void @__sanitizer_cov_trace_pc() #7
  %382 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %action_data, align 4
  %arrayidx151.i = getelementptr i8, ptr %383, i32 %379
  %384 = ptrtoint ptr %shortcut172.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 0, ptr %shortcut172.i, align 4
  %385 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_store1_noabort(i32 %385)
  store i8 4, ptr %arrayidx151.i, align 2
  %len_lw.i321.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx151.i, i32 0, i32 1
  %386 = ptrtoint ptr %len_lw.i321.i to i32
  call void @__asan_store1_noabort(i32 %386)
  store i8 1, ptr %len_lw.i321.i, align 1
  %387 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %388 = ptrtoint ptr %387 to i32
  call void @__asan_load2_noabort(i32 %388)
  %389 = load i16, ptr %387, align 8
  %ethtype.i322.i = getelementptr inbounds %struct.nfp_fl_pop_mpls, ptr %arrayidx151.i, i32 0, i32 1
  %390 = ptrtoint ptr %ethtype.i322.i to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %389, ptr %ethtype.i322.i, align 2
  %391 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %act_len, align 4
  %add154.i = add i32 %392, 4
  store i32 %add154.i, ptr %act_len, align 4
  br label %if.end10

sw.bb155.i:                                       ; preds = %if.end7
  %393 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %act_len, align 4
  %395 = add i32 %394, -1205
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %395)
  %cmp157.i = icmp ult i32 %395, -1217
  br i1 %cmp157.i, label %do.body160.i, label %if.end168.i

do.body160.i:                                     ; preds = %sw.bb155.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.9) #5
  %tobool162.not.i = icmp eq ptr %extack, null
  br i1 %tobool162.not.i, label %do.body160.i.cleanup_crit_edge, label %if.then163.i

do.body160.i.cleanup_crit_edge:                   ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then163.i:                                     ; preds = %do.body160.i
  call void @__sanitizer_cov_trace_pc() #7
  %396 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %396)
  store ptr @nfp_flower_loop_action.__msg.9, ptr %extack, align 4
  br label %cleanup

if.end168.i:                                      ; preds = %sw.bb155.i
  call void @__sanitizer_cov_trace_pc() #7
  %397 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %action_data, align 4
  %arrayidx170.i = getelementptr i8, ptr %398, i32 %394
  %399 = ptrtoint ptr %shortcut172.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store i32 0, ptr %shortcut172.i, align 4
  %400 = ptrtoint ptr %arrayidx170.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 8, ptr %arrayidx170.i, align 4
  %len_lw.i323.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx170.i, i32 0, i32 1
  %401 = ptrtoint ptr %len_lw.i323.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 3, ptr %len_lw.i323.i, align 1
  %402 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %402, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %404)
  %cmp.not.i324.i = icmp eq i32 %404, -1
  %shl.i325.i = shl i32 %404, 12
  %spec.select.i.i = select i1 %cmp.not.i324.i, i32 0, i32 %shl.i325.i
  %spec.select51.i.i = select i1 %cmp.not.i324.i, i32 0, i32 -4096
  %tc.i326.i = getelementptr inbounds %struct.anon.229, ptr %402, i32 0, i32 1
  %405 = ptrtoint ptr %tc.i326.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %tc.i326.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %406)
  %cmp6.not.i.i = icmp eq i8 %406, -1
  %conv5.i.i = zext i8 %406 to i32
  %shl11.i.i = shl nuw nsw i32 %conv5.i.i, 9
  %or13.i.i = or i32 %spec.select51.i.i, 3584
  %or12.i.i = select i1 %cmp6.not.i.i, i32 0, i32 %shl11.i.i
  %mpls_lse.1.i.i = or i32 %or12.i.i, %spec.select.i.i
  %mpls_mask.1.i.i = select i1 %cmp6.not.i.i, i32 %spec.select51.i.i, i32 %or13.i.i
  %bos.i327.i = getelementptr inbounds %struct.anon.229, ptr %402, i32 0, i32 2
  %407 = ptrtoint ptr %bos.i327.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %bos.i327.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %408)
  %cmp16.not.i.i = icmp eq i8 %408, -1
  %conv15.i.i = zext i8 %408 to i32
  %shl21.i.i = shl nuw nsw i32 %conv15.i.i, 8
  %or23.i.i = or i32 %mpls_mask.1.i.i, 256
  %or22.i.i = select i1 %cmp16.not.i.i, i32 0, i32 %shl21.i.i
  %mpls_mask.2.i.i = select i1 %cmp16.not.i.i, i32 %mpls_mask.1.i.i, i32 %or23.i.i
  %ttl.i328.i = getelementptr inbounds %struct.anon.229, ptr %402, i32 0, i32 3
  %409 = ptrtoint ptr %ttl.i328.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %ttl.i328.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %410)
  %tobool.not.i329.i = icmp eq i8 %410, 0
  %conv27.i.i = zext i8 %410 to i32
  %or30.i.i = or i32 %mpls_mask.2.i.i, 255
  %mpls_lse.2.i.i = or i32 %mpls_lse.1.i.i, %conv27.i.i
  %mpls_lse.3.i.i = or i32 %mpls_lse.2.i.i, %or22.i.i
  %mpls_mask.3.i.i = select i1 %tobool.not.i329.i, i32 %mpls_mask.2.i.i, i32 %or30.i.i
  %lse.i330.i = getelementptr inbounds %struct.nfp_fl_set_mpls, ptr %arrayidx170.i, i32 0, i32 3
  %411 = ptrtoint ptr %lse.i330.i to i32
  call void @__asan_store4_noabort(i32 %411)
  store i32 %mpls_lse.3.i.i, ptr %lse.i330.i, align 4
  %lse_mask.i.i = getelementptr inbounds %struct.nfp_fl_set_mpls, ptr %arrayidx170.i, i32 0, i32 2
  %412 = ptrtoint ptr %lse_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 %mpls_mask.3.i.i, ptr %lse_mask.i.i, align 4
  %413 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %act_len, align 4
  %add173.i = add i32 %414, 12
  store i32 %add173.i, ptr %act_len, align 4
  br label %if.end10

sw.bb174.i:                                       ; preds = %if.end7
  %415 = getelementptr inbounds %struct.flow_action_entry, ptr %act.0160, i32 0, i32 5
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load2_noabort(i32 %416)
  %417 = load i16, ptr %415, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %417)
  %cmp176.not.i = icmp eq i16 %417, 0
  br i1 %cmp176.not.i, label %sw.bb174.i.if.end10_crit_edge, label %sw.bb174.i.cleanup_crit_edge

sw.bb174.i.cleanup_crit_edge:                     ; preds = %sw.bb174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb174.i.if.end10_crit_edge:                    ; preds = %sw.bb174.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body180.i:                                     ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_loop_action.__msg.10) #5
  %tobool182.not.i = icmp eq ptr %extack, null
  br i1 %tobool182.not.i, label %do.body180.i.cleanup_crit_edge, label %if.then183.i

do.body180.i.cleanup_crit_edge:                   ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then183.i:                                     ; preds = %do.body180.i
  call void @__sanitizer_cov_trace_pc() #7
  %418 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %418)
  store ptr @nfp_flower_loop_action.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end10:                                         ; preds = %sw.bb174.i.if.end10_crit_edge, %if.end168.i, %if.end149.i, %if.end134.i, %if.end110.i, %if.end16.i54.i.i, %if.end16.i.i.i, %if.then12.i.i.i, %if.then8.i.i.i, %sw.epilog.i.i.i.i, %if.end79.i.i.i, %if.end36.i.i.i, %sw.bb12.i.i.i, %sw.bb.i.i.i, %if.end15.i.i.i, %cleanup.i, %if.end30.i, %if.end14.i, %sw.bb3.i.if.end10_crit_edge, %sw.bb1.i.if.end10_crit_edge, %sw.bb.i, %if.end7.if.end10_crit_edge
  %pkt_host.2 = phi i8 [ %pkt_host.0155, %if.end7.if.end10_crit_edge ], [ %pkt_host.0155, %if.end168.i ], [ %pkt_host.0155, %if.end149.i ], [ %pkt_host.0155, %if.end134.i ], [ %pkt_host.0155, %if.end110.i ], [ %pkt_host.0155, %if.end16.i54.i.i ], [ %pkt_host.0155, %if.end16.i.i.i ], [ %pkt_host.0155, %sw.epilog.i.i.i.i ], [ %pkt_host.0155, %if.then8.i.i.i ], [ %pkt_host.0155, %if.then12.i.i.i ], [ %pkt_host.0155, %if.end79.i.i.i ], [ %pkt_host.0155, %if.end36.i.i.i ], [ %pkt_host.0155, %sw.bb12.i.i.i ], [ %pkt_host.0155, %sw.bb.i.i.i ], [ %pkt_host.0155, %if.end15.i.i.i ], [ %pkt_host.0155, %cleanup.i ], [ %pkt_host.0155, %if.end30.i ], [ %pkt_host.0155, %if.end14.i ], [ %pkt_host.0155, %sw.bb3.i.if.end10_crit_edge ], [ %pkt_host.0155, %sw.bb1.i.if.end10_crit_edge ], [ %pkt_host.0155, %sw.bb.i ], [ 1, %sw.bb174.i.if.end10_crit_edge ]
  %inc20 = add nuw i32 %i.0157, 1
  %419 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %current_act.sroa.0.0.copyload.i64 = load i32, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %current_act.sroa.0.0.copyload.i64)
  %cmp.not.i65 = icmp eq i32 %current_act.sroa.0.0.copyload.i64, 13
  br i1 %cmp.not.i65, label %if.end.i67, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i67:                                       ; preds = %if.end10
  %420 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %action, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %421, i32 %i.0157)
  %cmp1.i66 = icmp eq i32 %421, %i.0157
  br i1 %cmp1.i66, label %if.end.i67.if.then13_crit_edge, label %nfp_fl_check_mangle_end.exit

if.end.i67.if.then13_crit_edge:                   ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

nfp_fl_check_mangle_end.exit:                     ; preds = %if.end.i67
  %arrayidx5.i68 = getelementptr %struct.flow_rule, ptr %rule, i32 0, i32 1, i32 1, i32 %inc20
  %422 = ptrtoint ptr %arrayidx5.i68 to i32
  call void @__asan_load4_noabort(i32 %422)
  %next_act.sroa.0.0.copyload.i = load i32, ptr %arrayidx5.i68, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %next_act.sroa.0.0.copyload.i)
  %cmp7.i69.not = icmp eq i32 %next_act.sroa.0.0.copyload.i, 13
  br i1 %cmp7.i69.not, label %nfp_fl_check_mangle_end.exit.for.inc_crit_edge, label %nfp_fl_check_mangle_end.exit.if.then13_crit_edge

nfp_fl_check_mangle_end.exit.if.then13_crit_edge: ; preds = %nfp_fl_check_mangle_end.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

nfp_fl_check_mangle_end.exit.for.inc_crit_edge:   ; preds = %nfp_fl_check_mangle_end.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13:                                        ; preds = %nfp_fl_check_mangle_end.exit.if.then13_crit_edge, %if.end.i67.if.then13_crit_edge
  %423 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %action_data, align 4
  %425 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %act_len, align 4
  %arrayidx15 = getelementptr i8, ptr %424, i32 %426
  %427 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %rule, align 8
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %428, align 4
  %and.i.i.i73 = and i32 %430, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i73)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i73, 0
  br i1 %tobool.i.i.not.i, label %if.then13.if.end.i74_crit_edge, label %if.then.i

if.then13.if.end.i74_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i74

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #5
  %431 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %431)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !114
  %432 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %432)
  store ptr inttoptr (i32 -1 to ptr), ptr %24, align 4, !annotation !114
  call void @flow_rule_match_basic(ptr noundef %rule, ptr noundef nonnull %match.i) #5
  %433 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %match.i, align 4
  %ip_proto1.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %434, i32 0, i32 1
  %435 = ptrtoint ptr %ip_proto1.i to i32
  call void @__asan_load1_noabort(i32 %435)
  %436 = load i8, ptr %ip_proto1.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #5
  br label %if.end.i74

if.end.i74:                                       ; preds = %if.then.i, %if.then13.if.end.i74_crit_edge
  %ip_proto.0.i = phi i8 [ %436, %if.then.i ], [ 0, %if.then13.if.end.i74_crit_edge ]
  %437 = ptrtoint ptr %len_lw.i.i.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %len_lw.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %438)
  %tobool.not.i = icmp eq i8 %438, 0
  br i1 %tobool.not.i, label %if.end.i74.if.end4.i_crit_edge, label %if.then2.i

if.end.i74.if.end4.i_crit_edge:                   ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #7
  %439 = call ptr @memcpy(ptr %arrayidx15, ptr %set_eth.i.i, i32 28)
  %440 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %act_len, align 4
  %add.i75 = add i32 %441, 28
  store i32 %add.i75, ptr %act_len, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i74.if.end4.i_crit_edge
  %act_size.0.i = phi i32 [ 28, %if.then2.i ], [ 0, %if.end.i74.if.end4.i_crit_edge ]
  %442 = ptrtoint ptr %len_lw102.i.i.i to i32
  call void @__asan_load1_noabort(i32 %442)
  %443 = load i8, ptr %len_lw102.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %443)
  %tobool7.not.i = icmp eq i8 %443, 0
  br i1 %tobool7.not.i, label %if.end4.i.if.end13.i_crit_edge, label %if.then8.i

if.end4.i.if.end13.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then8.i:                                       ; preds = %if.end4.i
  %add.ptr.i = getelementptr i8, ptr %arrayidx15, i32 %act_size.0.i
  %444 = ptrtoint ptr %set_ip_ttl_tos.i.i to i32
  call void @__asan_loadN_noabort(i32 %444, i32 8)
  %445 = load i64, ptr %set_ip_ttl_tos.i.i, align 4
  %446 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %446, i32 8)
  store i64 %445, ptr %add.ptr.i, align 1
  %447 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %act_len, align 4
  %add10.i = add i32 %448, 8
  store i32 %add10.i, ptr %act_len, align 4
  %449 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %449, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %ip_proto.0.i, label %sw.default.i.i [
    i8 0, label %if.then8.i.nfp_fl_csum_l4_to_flag.exit.i_crit_edge
    i8 6, label %sw.bb1.i.i
    i8 17, label %sw.bb2.i.i76
  ]

if.then8.i.nfp_fl_csum_l4_to_flag.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit.i

sw.bb1.i.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit.i

sw.bb2.i.i76:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit.i

sw.default.i.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit.i

nfp_fl_csum_l4_to_flag.exit.i:                    ; preds = %sw.default.i.i, %sw.bb2.i.i76, %sw.bb1.i.i, %if.then8.i.nfp_fl_csum_l4_to_flag.exit.i_crit_edge
  %retval.0.i.i77 = phi i32 [ 1, %sw.default.i.i ], [ 17, %sw.bb2.i.i76 ], [ 9, %sw.bb1.i.i ], [ 25, %if.then8.i.nfp_fl_csum_l4_to_flag.exit.i_crit_edge ]
  %450 = ptrtoint ptr %csum_updated to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load i32, ptr %csum_updated, align 4
  %or12.i = or i32 %451, %retval.0.i.i77
  store i32 %or12.i, ptr %csum_updated, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %nfp_fl_csum_l4_to_flag.exit.i, %if.end4.i.if.end13.i_crit_edge
  %nfp_action.addr.0.i = phi ptr [ %add.ptr.i, %nfp_fl_csum_l4_to_flag.exit.i ], [ %arrayidx15, %if.end4.i.if.end13.i_crit_edge ]
  %act_size.1.i = phi i32 [ 8, %nfp_fl_csum_l4_to_flag.exit.i ], [ %act_size.0.i, %if.end4.i.if.end13.i_crit_edge ]
  %452 = ptrtoint ptr %len_lw22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %452)
  %453 = load i8, ptr %len_lw22.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %453)
  %tobool16.not.i = icmp eq i8 %453, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end24.i_crit_edge, label %if.then17.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then17.i:                                      ; preds = %if.end13.i
  %add.ptr18.i = getelementptr i8, ptr %nfp_action.addr.0.i, i32 %act_size.1.i
  %454 = call ptr @memcpy(ptr %add.ptr18.i, ptr %set_ip_addr.i.i, i32 20)
  %455 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load i32, ptr %act_len, align 4
  %add20.i = add i32 %456, 20
  store i32 %add20.i, ptr %act_len, align 4
  %457 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %457, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %ip_proto.0.i, label %sw.default.i3.i [
    i8 0, label %if.then17.i.nfp_fl_csum_l4_to_flag.exit5.i_crit_edge
    i8 6, label %sw.bb1.i1.i
    i8 17, label %sw.bb2.i2.i
  ]

if.then17.i.nfp_fl_csum_l4_to_flag.exit5.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit5.i

sw.bb1.i1.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit5.i

sw.bb2.i2.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit5.i

sw.default.i3.i:                                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit5.i

nfp_fl_csum_l4_to_flag.exit5.i:                   ; preds = %sw.default.i3.i, %sw.bb2.i2.i, %sw.bb1.i1.i, %if.then17.i.nfp_fl_csum_l4_to_flag.exit5.i_crit_edge
  %retval.0.i4.i = phi i32 [ 1, %sw.default.i3.i ], [ 17, %sw.bb2.i2.i ], [ 9, %sw.bb1.i1.i ], [ 25, %if.then17.i.nfp_fl_csum_l4_to_flag.exit5.i_crit_edge ]
  %458 = ptrtoint ptr %csum_updated to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %csum_updated, align 4
  %or23.i = or i32 %459, %retval.0.i4.i
  store i32 %or23.i, ptr %csum_updated, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %nfp_fl_csum_l4_to_flag.exit5.i, %if.end13.i.if.end24.i_crit_edge
  %nfp_action.addr.1.i = phi ptr [ %add.ptr18.i, %nfp_fl_csum_l4_to_flag.exit5.i ], [ %nfp_action.addr.0.i, %if.end13.i.if.end24.i_crit_edge ]
  %act_size.2.i = phi i32 [ 20, %nfp_fl_csum_l4_to_flag.exit5.i ], [ %act_size.1.i, %if.end13.i.if.end24.i_crit_edge ]
  %460 = ptrtoint ptr %len_lw.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %len_lw.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %461)
  %tobool27.not.i = icmp eq i8 %461, 0
  br i1 %tobool27.not.i, label %if.end24.i.if.end34.i_crit_edge, label %if.then28.i

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

if.then28.i:                                      ; preds = %if.end24.i
  %add.ptr29.i = getelementptr i8, ptr %nfp_action.addr.1.i, i32 %act_size.2.i
  %462 = call ptr @memcpy(ptr %add.ptr29.i, ptr %set_ip6_tc_hl_fl.i.i, i32 16)
  %463 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %act_len, align 4
  %add31.i = add i32 %464, 16
  store i32 %add31.i, ptr %act_len, align 4
  %465 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %465, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %ip_proto.0.i, label %sw.default.i8.i [
    i8 0, label %if.then28.i.nfp_fl_csum_l4_to_flag.exit10.i_crit_edge
    i8 6, label %sw.bb1.i6.i
    i8 17, label %sw.bb2.i7.i
  ]

if.then28.i.nfp_fl_csum_l4_to_flag.exit10.i_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit10.i

sw.bb1.i6.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit10.i

sw.bb2.i7.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit10.i

sw.default.i8.i:                                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit10.i

nfp_fl_csum_l4_to_flag.exit10.i:                  ; preds = %sw.default.i8.i, %sw.bb2.i7.i, %sw.bb1.i6.i, %if.then28.i.nfp_fl_csum_l4_to_flag.exit10.i_crit_edge
  %retval.0.i9.i = phi i32 [ 0, %sw.default.i8.i ], [ 16, %sw.bb2.i7.i ], [ 8, %sw.bb1.i6.i ], [ 24, %if.then28.i.nfp_fl_csum_l4_to_flag.exit10.i_crit_edge ]
  %466 = ptrtoint ptr %csum_updated to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %csum_updated, align 4
  %or33.i = or i32 %467, %retval.0.i9.i
  store i32 %or33.i, ptr %csum_updated, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %nfp_fl_csum_l4_to_flag.exit10.i, %if.end24.i.if.end34.i_crit_edge
  %nfp_action.addr.2.i = phi ptr [ %add.ptr29.i, %nfp_fl_csum_l4_to_flag.exit10.i ], [ %nfp_action.addr.1.i, %if.end24.i.if.end34.i_crit_edge ]
  %act_size.3.i = phi i32 [ 16, %nfp_fl_csum_l4_to_flag.exit10.i ], [ %act_size.2.i, %if.end24.i.if.end34.i_crit_edge ]
  %468 = ptrtoint ptr %len_lw.i59.i.i.i to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %len_lw.i59.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %469)
  %tobool37.not.i = icmp eq i8 %469, 0
  %470 = ptrtoint ptr %len_lw.i50.i.i.i to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %len_lw.i50.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %471)
  %tobool64.not.i = icmp eq i8 %471, 0
  br i1 %tobool37.not.i, label %if.else60.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end34.i
  %add.ptr55.i = getelementptr i8, ptr %nfp_action.addr.2.i, i32 %act_size.3.i
  br i1 %tobool64.not.i, label %if.then54.i79, label %if.then42.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  %472 = call ptr @memcpy(ptr %add.ptr55.i, ptr %set_ip6_src.i.i, i32 36)
  %473 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %act_len, align 4
  %arrayidx.i78 = getelementptr i8, ptr %add.ptr55.i, i32 36
  %475 = call ptr @memcpy(ptr %arrayidx.i78, ptr %set_act, i32 36)
  %add47.i = add i32 %474, 72
  store i32 %add47.i, ptr %act_len, align 4
  %476 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %476, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %ip_proto.0.i, label %sw.default.i13.i [
    i8 0, label %if.then42.i.if.end73.sink.split.i_crit_edge
    i8 6, label %sw.bb1.i11.i
    i8 17, label %sw.bb2.i12.i
  ]

if.then42.i.if.end73.sink.split.i_crit_edge:      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.bb1.i11.i:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.bb2.i12.i:                                     ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.default.i13.i:                                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

if.then54.i79:                                    ; preds = %land.lhs.true.i
  %477 = call ptr @memcpy(ptr %add.ptr55.i, ptr %set_act, i32 36)
  %478 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load i32, ptr %act_len, align 4
  %add57.i = add i32 %479, 36
  store i32 %add57.i, ptr %act_len, align 4
  %480 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %480, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %ip_proto.0.i, label %sw.default.i18.i [
    i8 0, label %if.then54.i79.if.end73.sink.split.i_crit_edge
    i8 6, label %sw.bb1.i16.i
    i8 17, label %sw.bb2.i17.i
  ]

if.then54.i79.if.end73.sink.split.i_crit_edge:    ; preds = %if.then54.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.bb1.i16.i:                                     ; preds = %if.then54.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.bb2.i17.i:                                     ; preds = %if.then54.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.default.i18.i:                                 ; preds = %if.then54.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

if.else60.i:                                      ; preds = %if.end34.i
  br i1 %tobool64.not.i, label %if.else60.i.if.end73.i80_crit_edge, label %if.then65.i

if.else60.i.if.end73.i80_crit_edge:               ; preds = %if.else60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.i80

if.then65.i:                                      ; preds = %if.else60.i
  %add.ptr66.i = getelementptr i8, ptr %nfp_action.addr.2.i, i32 %act_size.3.i
  %481 = call ptr @memcpy(ptr %add.ptr66.i, ptr %set_ip6_src.i.i, i32 36)
  %482 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %act_len, align 4
  %add68.i = add i32 %483, 36
  store i32 %add68.i, ptr %act_len, align 4
  %484 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %484, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %ip_proto.0.i, label %sw.default.i23.i [
    i8 0, label %if.then65.i.if.end73.sink.split.i_crit_edge
    i8 6, label %sw.bb1.i21.i
    i8 17, label %sw.bb2.i22.i
  ]

if.then65.i.if.end73.sink.split.i_crit_edge:      ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.bb1.i21.i:                                     ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.bb2.i22.i:                                     ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

sw.default.i23.i:                                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end73.sink.split.i

if.end73.sink.split.i:                            ; preds = %sw.default.i23.i, %sw.bb2.i22.i, %sw.bb1.i21.i, %if.then65.i.if.end73.sink.split.i_crit_edge, %sw.default.i18.i, %sw.bb2.i17.i, %sw.bb1.i16.i, %if.then54.i79.if.end73.sink.split.i_crit_edge, %sw.default.i13.i, %sw.bb2.i12.i, %sw.bb1.i11.i, %if.then42.i.if.end73.sink.split.i_crit_edge
  %retval.0.i19.sink.i = phi i32 [ 0, %sw.default.i13.i ], [ 16, %sw.bb2.i12.i ], [ 8, %sw.bb1.i11.i ], [ 24, %if.then42.i.if.end73.sink.split.i_crit_edge ], [ 0, %sw.default.i18.i ], [ 16, %sw.bb2.i17.i ], [ 8, %sw.bb1.i16.i ], [ 24, %if.then54.i79.if.end73.sink.split.i_crit_edge ], [ 0, %sw.default.i23.i ], [ 16, %sw.bb2.i22.i ], [ 8, %sw.bb1.i21.i ], [ 24, %if.then65.i.if.end73.sink.split.i_crit_edge ]
  %nfp_action.addr.3.ph.i = phi ptr [ %add.ptr55.i, %sw.default.i13.i ], [ %add.ptr55.i, %sw.bb2.i12.i ], [ %add.ptr55.i, %sw.bb1.i11.i ], [ %add.ptr55.i, %if.then42.i.if.end73.sink.split.i_crit_edge ], [ %add.ptr55.i, %sw.default.i18.i ], [ %add.ptr55.i, %sw.bb2.i17.i ], [ %add.ptr55.i, %sw.bb1.i16.i ], [ %add.ptr55.i, %if.then54.i79.if.end73.sink.split.i_crit_edge ], [ %add.ptr66.i, %sw.default.i23.i ], [ %add.ptr66.i, %sw.bb2.i22.i ], [ %add.ptr66.i, %sw.bb1.i21.i ], [ %add.ptr66.i, %if.then65.i.if.end73.sink.split.i_crit_edge ]
  %485 = ptrtoint ptr %csum_updated to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %csum_updated, align 4
  %or59.i = or i32 %486, %retval.0.i19.sink.i
  store i32 %or59.i, ptr %csum_updated, align 4
  br label %if.end73.i80

if.end73.i80:                                     ; preds = %if.end73.sink.split.i, %if.else60.i.if.end73.i80_crit_edge
  %nfp_action.addr.3.i = phi ptr [ %nfp_action.addr.2.i, %if.else60.i.if.end73.i80_crit_edge ], [ %nfp_action.addr.3.ph.i, %if.end73.sink.split.i ]
  %act_size.4.i = phi i32 [ %act_size.3.i, %if.else60.i.if.end73.i80_crit_edge ], [ 36, %if.end73.sink.split.i ]
  %487 = ptrtoint ptr %len_lw.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %len_lw.i53.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %488)
  %tobool76.not.i = icmp eq i8 %488, 0
  br i1 %tobool76.not.i, label %if.end73.i80.for.inc_crit_edge, label %if.then77.i

if.end73.i80.for.inc_crit_edge:                   ; preds = %if.end73.i80
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then77.i:                                      ; preds = %if.end73.i80
  %add.ptr78.i = getelementptr i8, ptr %nfp_action.addr.3.i, i32 %act_size.4.i
  %489 = call ptr @memcpy(ptr %add.ptr78.i, ptr %set_tport10.i.i, i32 12)
  %490 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %act_len, align 4
  %add80.i = add i32 %491, 12
  store i32 %add80.i, ptr %act_len, align 4
  %492 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %492, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %ip_proto.0.i, label %sw.default.i28.i [
    i8 0, label %if.then77.i.nfp_fl_csum_l4_to_flag.exit30.i_crit_edge
    i8 6, label %sw.bb1.i26.i
    i8 17, label %sw.bb2.i27.i
  ]

if.then77.i.nfp_fl_csum_l4_to_flag.exit30.i_crit_edge: ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit30.i

sw.bb1.i26.i:                                     ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit30.i

sw.bb2.i27.i:                                     ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit30.i

sw.default.i28.i:                                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nfp_fl_csum_l4_to_flag.exit30.i

nfp_fl_csum_l4_to_flag.exit30.i:                  ; preds = %sw.default.i28.i, %sw.bb2.i27.i, %sw.bb1.i26.i, %if.then77.i.nfp_fl_csum_l4_to_flag.exit30.i_crit_edge
  %retval.0.i29.i = phi i32 [ 0, %sw.default.i28.i ], [ 16, %sw.bb2.i27.i ], [ 8, %sw.bb1.i26.i ], [ 24, %if.then77.i.nfp_fl_csum_l4_to_flag.exit30.i_crit_edge ]
  %493 = ptrtoint ptr %csum_updated to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %csum_updated, align 4
  %or82.i = or i32 %494, %retval.0.i29.i
  store i32 %or82.i, ptr %csum_updated, align 4
  br label %for.inc

for.inc:                                          ; preds = %nfp_fl_csum_l4_to_flag.exit30.i, %if.end73.i80.for.inc_crit_edge, %nfp_fl_check_mangle_end.exit.for.inc_crit_edge, %if.end10.for.inc_crit_edge
  %arrayidx21 = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %inc20
  %495 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %action, align 8
  %cmp = icmp ult i32 %inc20, %496
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc20)
  %phi.cmp = icmp sgt i32 %inc20, 1
  br i1 %phi.cmp, label %if.then23, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %shortcut = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_flow, i32 0, i32 7
  %497 = ptrtoint ptr %shortcut to i32
  call void @__asan_store4_noabort(i32 %497)
  store i32 0, ptr %shortcut, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %498 = ptrtoint ptr %act_len to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %act_len, align 4
  %conv = trunc i32 %499 to i8
  %500 = ptrtoint ptr %act_len1 to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 %conv, ptr %act_len1, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then183.i, %do.body180.i.cleanup_crit_edge, %sw.bb174.i.cleanup_crit_edge, %if.then163.i, %do.body160.i.cleanup_crit_edge, %if.then144.i, %do.body141.i.cleanup_crit_edge, %if.then6.i.i, %do.body.i319.i.cleanup_crit_edge, %if.then121.i, %do.body118.i.cleanup_crit_edge, %if.then105.i, %do.body102.i.cleanup_crit_edge, %if.then.i312.i, %do.body.i.i.cleanup_crit_edge, %if.then11.i44.i.i, %do.body8.i43.i.i.cleanup_crit_edge, %if.then2.i36.i.i, %do.body.i35.i.i.cleanup_crit_edge, %if.then11.i.i.i, %do.body8.i.i.i.cleanup_crit_edge, %if.then2.i.i.i, %do.body.i22.i.i.cleanup_crit_edge, %if.then20.i.i.i, %do.body17.i.i.i.cleanup_crit_edge, %if.then32.i.i.i.i, %do.body29.i.i.i.i.cleanup_crit_edge, %if.then4.i.i.i.i, %do.body.i.i.i.i.cleanup_crit_edge, %if.then4.i15.i.i, %do.body.i14.i.i.cleanup_crit_edge, %if.then106.i.i.i, %do.body103.i.i.i.cleanup_crit_edge, %if.then74.i.i.i, %do.body71.i.i.i.cleanup_crit_edge, %if.then31.i.i.i, %do.body28.i.i.i.cleanup_crit_edge, %if.then4.i.i.i, %do.body.i5.i.i.cleanup_crit_edge, %if.then10.i.i.i, %do.body7.i.i.i.cleanup_crit_edge, %if.then1.i.i.i, %do.body.i.i.i62.cleanup_crit_edge, %if.then130.i, %do.body127.i.cleanup_crit_edge, %if.then16.i, %do.body14.i.cleanup_crit_edge, %land.lhs.true.i81.cleanup_crit_edge, %cleanup80.sink.split.i, %do.body36.i.cleanup_crit_edge, %do.body11.i.cleanup_crit_edge, %do.body.i92.cleanup_crit_edge, %if.then68.i, %do.body65.i.cleanup_crit_edge, %if.then54.i, %do.body51.i.cleanup_crit_edge, %if.then43.i, %do.body40.i.cleanup_crit_edge, %if.then25.i, %do.body22.i.cleanup_crit_edge, %if.then12.i, %do.body.i.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %cleanup.sink.split.i.i, %do.body60.i.i.cleanup_crit_edge, %do.body.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -95, %do.body60.i.i.cleanup_crit_edge ], [ -95, %do.body.i.i.i.cleanup_crit_edge ], [ -95, %cleanup.sink.split.i.i ], [ -95, %do.body.i319.i.cleanup_crit_edge ], [ -95, %if.then6.i.i ], [ -95, %do.body8.i43.i.i.cleanup_crit_edge ], [ -95, %if.then11.i44.i.i ], [ -95, %do.body.i35.i.i.cleanup_crit_edge ], [ -95, %if.then2.i36.i.i ], [ -95, %do.body8.i.i.i.cleanup_crit_edge ], [ -95, %if.then11.i.i.i ], [ -95, %do.body.i22.i.i.cleanup_crit_edge ], [ -95, %if.then2.i.i.i ], [ -95, %do.body29.i.i.i.i.cleanup_crit_edge ], [ -95, %if.then32.i.i.i.i ], [ -95, %do.body.i.i.i.i.cleanup_crit_edge ], [ -95, %if.then4.i.i.i.i ], [ -95, %do.body17.i.i.i.cleanup_crit_edge ], [ -95, %if.then20.i.i.i ], [ -95, %do.body.i14.i.i.cleanup_crit_edge ], [ -95, %if.then4.i15.i.i ], [ -95, %do.body103.i.i.i.cleanup_crit_edge ], [ -95, %if.then106.i.i.i ], [ -95, %do.body71.i.i.i.cleanup_crit_edge ], [ -95, %if.then74.i.i.i ], [ -95, %do.body28.i.i.i.cleanup_crit_edge ], [ -95, %if.then31.i.i.i ], [ -95, %do.body.i5.i.i.cleanup_crit_edge ], [ -95, %if.then4.i.i.i ], [ -95, %do.body7.i.i.i.cleanup_crit_edge ], [ -95, %if.then10.i.i.i ], [ -95, %do.body.i.i.i62.cleanup_crit_edge ], [ -95, %if.then1.i.i.i ], [ -95, %do.body.i.i.cleanup_crit_edge ], [ -95, %if.then.i312.i ], [ -95, %if.then43.i ], [ -95, %do.body40.i.cleanup_crit_edge ], [ -95, %if.then54.i ], [ -95, %do.body51.i.cleanup_crit_edge ], [ -95, %if.then68.i ], [ -95, %do.body65.i.cleanup_crit_edge ], [ -95, %do.body180.i.cleanup_crit_edge ], [ -95, %if.then183.i ], [ -95, %do.body160.i.cleanup_crit_edge ], [ -95, %if.then163.i ], [ -95, %do.body141.i.cleanup_crit_edge ], [ -95, %if.then144.i ], [ -95, %do.body118.i.cleanup_crit_edge ], [ -95, %if.then121.i ], [ -95, %do.body102.i.cleanup_crit_edge ], [ -95, %if.then105.i ], [ -95, %do.body22.i.cleanup_crit_edge ], [ -95, %if.then25.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %if.then12.i ], [ -95, %do.body36.i.cleanup_crit_edge ], [ -95, %do.body.i92.cleanup_crit_edge ], [ -95, %do.body11.i.cleanup_crit_edge ], [ -95, %cleanup80.sink.split.i ], [ -95, %if.then16.i ], [ -95, %do.body14.i.cleanup_crit_edge ], [ -95, %if.then130.i ], [ -95, %do.body127.i.cleanup_crit_edge ], [ -95, %land.lhs.true.i81.cleanup_crit_edge ], [ %call.i, %sw.bb1.i.cleanup_crit_edge ], [ %call5.i, %sw.bb3.i.cleanup_crit_edge ], [ -95, %sw.bb174.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum_updated) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tun_type) #5
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %set_act) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tun_out_cnt) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_len) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_flower_output_action(ptr noundef %app, ptr nocapture noundef readonly %act, ptr nocapture noundef %nfp_fl, ptr nocapture noundef %a_len, ptr noundef %netdev, i1 noundef zeroext %last, ptr nocapture noundef readonly %tun_type, ptr nocapture noundef %tun_out_cnt, ptr nocapture noundef %out_cnt, ptr nocapture noundef readonly %csum_updated, i1 noundef zeroext %pkt_host, ptr noundef %extack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %2 = ptrtoint ptr %csum_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %csum_updated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_output_action.__msg) #5
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nfp_flower_output_action.__msg, ptr %extack, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %5 = ptrtoint ptr %a_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %a_len, align 4
  %7 = add i32 %6, -1209
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %7)
  %cmp = icmp ult i32 %7, -1217
  br i1 %cmp, label %do.body7, label %if.end15

do.body7:                                         ; preds = %if.end5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_output_action.__msg.11) #5
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %if.then10

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nfp_flower_output_action.__msg.11, ptr %extack, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %action_data = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_fl, i32 0, i32 9
  %9 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %action_data, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %6
  %11 = ptrtoint ptr %tun_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tun_type, align 4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 4
  %len_lw.i = getelementptr inbounds %struct.nfp_fl_act_head, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %len_lw.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %len_lw.i, align 1
  %15 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end6.i

do.body.i:                                        ; preds = %if.end15
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg) #5
  %tobool4.not.i = icmp eq ptr %extack, null
  br i1 %tobool4.not.i, label %do.body.i.cleanup_crit_edge, label %if.then5.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @nfp_fl_output.__msg, ptr %extack, align 4
  br label %cleanup

if.end6.i:                                        ; preds = %if.end15
  %conv9.i = select i1 %last, i16 -32768, i16 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool10.not.i = icmp eq i32 %12, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %rtnl_link_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 136
  %19 = ptrtoint ptr %rtnl_link_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rtnl_link_ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.then11.i.do.body13.i_crit_edge, label %netif_is_vxlan.exit.i.i

if.then11.i.do.body13.i_crit_edge:                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i

netif_is_vxlan.exit.i.i:                          ; preds = %if.then11.i
  %kind.i.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %kind.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %kind.i.i.i, align 4
  %call.i.i.i = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull dereferenceable(6) @.str.21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.then.i.i, label %netif_is_gretap.exit.i.i

if.then.i.i:                                      ; preds = %netif_is_vxlan.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i.i = icmp eq i32 %12, 2
  br i1 %cmp.i.i, label %if.then.i.i.if.end21.i_crit_edge, label %if.then.i.i.do.body13.i_crit_edge

if.then.i.i.do.body13.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i

if.then.i.i.if.end21.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

netif_is_gretap.exit.i.i:                         ; preds = %netif_is_vxlan.exit.i.i
  %call.i18.i.i = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull dereferenceable(7) @.str.22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i)
  %tobool2.not.i19.i.i = icmp eq i32 %call.i18.i.i, 0
  br i1 %tobool2.not.i19.i.i, label %netif_is_gretap.exit.i.i.if.then3.i.i_crit_edge, label %netif_is_ip6gretap.exit.i.i

netif_is_gretap.exit.i.i.if.then3.i.i_crit_edge:  ; preds = %netif_is_gretap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i.i

netif_is_ip6gretap.exit.i.i:                      ; preds = %netif_is_gretap.exit.i.i
  %call.i24.i.i = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull dereferenceable(10) @.str.23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i.i)
  %tobool2.not.i25.i.i = icmp eq i32 %call.i24.i.i, 0
  br i1 %tobool2.not.i25.i.i, label %netif_is_ip6gretap.exit.i.i.if.then3.i.i_crit_edge, label %nfp_fl_netdev_is_tunnel_type.exit.i

netif_is_ip6gretap.exit.i.i.if.then3.i.i_crit_edge: ; preds = %netif_is_ip6gretap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3.i.i

if.then3.i.i:                                     ; preds = %netif_is_ip6gretap.exit.i.i.if.then3.i.i_crit_edge, %netif_is_gretap.exit.i.i.if.then3.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp4.i.i = icmp eq i32 %12, 1
  br i1 %cmp4.i.i, label %if.then3.i.i.if.end21.i_crit_edge, label %if.then3.i.i.do.body13.i_crit_edge

if.then3.i.i.do.body13.i_crit_edge:               ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i

if.then3.i.i.if.end21.i_crit_edge:                ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

nfp_fl_netdev_is_tunnel_type.exit.i:              ; preds = %netif_is_ip6gretap.exit.i.i
  %call.i30.i.i = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull dereferenceable(7) @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i)
  %tobool2.not.i31.i.i = icmp eq i32 %call.i30.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp8.i.i = icmp eq i32 %12, 4
  %spec.select.i.i = and i1 %cmp8.i.i, %tobool2.not.i31.i.i
  br i1 %spec.select.i.i, label %nfp_fl_netdev_is_tunnel_type.exit.i.if.end21.i_crit_edge, label %nfp_fl_netdev_is_tunnel_type.exit.i.do.body13.i_crit_edge

nfp_fl_netdev_is_tunnel_type.exit.i.do.body13.i_crit_edge: ; preds = %nfp_fl_netdev_is_tunnel_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body13.i

nfp_fl_netdev_is_tunnel_type.exit.i.if.end21.i_crit_edge: ; preds = %nfp_fl_netdev_is_tunnel_type.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

do.body13.i:                                      ; preds = %nfp_fl_netdev_is_tunnel_type.exit.i.do.body13.i_crit_edge, %if.then3.i.i.do.body13.i_crit_edge, %if.then.i.i.do.body13.i_crit_edge, %if.then11.i.do.body13.i_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.13) #5
  %tobool15.not.i = icmp eq ptr %extack, null
  br i1 %tobool15.not.i, label %do.body13.i.cleanup_crit_edge, label %if.then16.i

do.body13.i.cleanup_crit_edge:                    ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @nfp_fl_output.__msg.13, ptr %extack, align 4
  br label %cleanup

if.end21.i:                                       ; preds = %nfp_fl_netdev_is_tunnel_type.exit.i.if.end21.i_crit_edge, %if.then3.i.i.if.end21.i_crit_edge, %if.then.i.i.if.end21.i_crit_edge
  %24 = ptrtoint ptr %tun_out_cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tun_out_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool22.not.i = icmp eq i32 %25, 0
  br i1 %tobool22.not.i, label %if.end32.i, label %do.body24.i

do.body24.i:                                      ; preds = %if.end21.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.14) #5
  %tobool26.not.i = icmp eq ptr %extack, null
  br i1 %tobool26.not.i, label %do.body24.i.cleanup_crit_edge, label %if.then27.i

do.body24.i.cleanup_crit_edge:                    ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nfp_fl_output.__msg.14, ptr %extack, align 4
  br label %cleanup

if.end32.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %tun_out_cnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %tun_out_cnt, align 4
  %28 = or i16 %conv9.i, 16
  %flags.i = getelementptr inbounds %struct.nfp_fl_output, ptr %arrayidx, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %flags.i, align 2
  %or35.i = or i32 %12, 1342177280
  br label %if.end128.sink.split.i

if.else.i:                                        ; preds = %if.end6.i
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 14
  %30 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i184.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i184.i, label %if.else.i.netif_is_lag_master.exit.i_crit_edge, label %netif_is_bond_master.exit.i.i

if.else.i.netif_is_lag_master.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %netif_is_lag_master.exit.i

netif_is_bond_master.exit.i.i:                    ; preds = %if.else.i
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 15
  %32 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %priv_flags.i.i.i, align 16
  %and1.i.i.i = and i64 %33, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i)
  %tobool2.i.not.i.i = icmp eq i64 %and1.i.i.i, 0
  br i1 %tobool2.i.not.i.i, label %netif_is_bond_master.exit.i.i.netif_is_lag_master.exit.i_crit_edge, label %netif_is_bond_master.exit.i.i.land.lhs.true.i_crit_edge

netif_is_bond_master.exit.i.i.land.lhs.true.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

netif_is_bond_master.exit.i.i.netif_is_lag_master.exit.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %netif_is_lag_master.exit.i

netif_is_lag_master.exit.i:                       ; preds = %netif_is_bond_master.exit.i.i.netif_is_lag_master.exit.i_crit_edge, %if.else.i.netif_is_lag_master.exit.i_crit_edge
  %priv_flags.i3.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 15
  %34 = ptrtoint ptr %priv_flags.i3.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %priv_flags.i3.i.i, align 16
  %and.i4.i.i = and i64 %35, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i4.i.i, 0
  br i1 %tobool.i.i.not.i, label %netif_is_lag_master.exit.i.if.else56.i_crit_edge, label %netif_is_lag_master.exit.i.land.lhs.true.i_crit_edge

netif_is_lag_master.exit.i.land.lhs.true.i_crit_edge: ; preds = %netif_is_lag_master.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

netif_is_lag_master.exit.i.if.else56.i_crit_edge: ; preds = %netif_is_lag_master.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else56.i

land.lhs.true.i:                                  ; preds = %netif_is_lag_master.exit.i.land.lhs.true.i_crit_edge, %netif_is_bond_master.exit.i.i.land.lhs.true.i_crit_edge
  %flower_en_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 5
  %36 = ptrtoint ptr %flower_en_feats.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flower_en_feats.i, align 8
  %38 = and i8 %37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool39.not.i = icmp eq i8 %38, 0
  br i1 %tobool39.not.i, label %land.lhs.true.i.if.else56.i_crit_edge, label %if.then40.i

land.lhs.true.i.if.else56.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else56.i

if.then40.i:                                      ; preds = %land.lhs.true.i
  %flags41.i = getelementptr inbounds %struct.nfp_fl_output, ptr %arrayidx, i32 0, i32 1
  %39 = ptrtoint ptr %flags41.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv9.i, ptr %flags41.i, align 2
  %call42.i = tail call i32 @nfp_flower_lag_get_output_id(ptr noundef %app, ptr noundef nonnull %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %cmp.i = icmp slt i32 %call42.i, 0
  br i1 %cmp.i, label %do.body45.i, label %if.end53.i

do.body45.i:                                      ; preds = %if.then40.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.15) #5
  %tobool47.not.i = icmp eq ptr %extack, null
  br i1 %tobool47.not.i, label %do.body45.i.cleanup_crit_edge, label %if.then48.i

do.body45.i.cleanup_crit_edge:                    ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48.i:                                      ; preds = %do.body45.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @nfp_fl_output.__msg.15, ptr %extack, align 4
  br label %cleanup

if.end53.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  %or54.i = or i32 %call42.i, -1059192832
  br label %if.end128.sink.split.i

if.else56.i:                                      ; preds = %land.lhs.true.i.if.else56.i_crit_edge, %netif_is_lag_master.exit.i.if.else56.i_crit_edge
  %41 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv2, align 4
  %flower_en_feats.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %flower_en_feats.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flower_en_feats.i.i, align 8
  %45 = and i8 %44, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i.i, label %if.else56.i.if.else85.i_crit_edge, label %if.end.i.i

if.else56.i.if.else85.i_crit_edge:                ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else85.i

if.end.i.i:                                       ; preds = %if.else56.i
  %rtnl_link_ops.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 136
  %46 = ptrtoint ptr %rtnl_link_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rtnl_link_ops.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %47, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.if.else85.i_crit_edge, label %nfp_flower_internal_port_can_offload.exit.i

if.end.i.i.if.else85.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else85.i

nfp_flower_internal_port_can_offload.exit.i:      ; preds = %if.end.i.i
  %kind.i.i = getelementptr inbounds %struct.rtnl_link_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %kind.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %49, ptr noundef nonnull dereferenceable(12) @.str.25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then58.i, label %nfp_flower_internal_port_can_offload.exit.i.if.else85.i_crit_edge

nfp_flower_internal_port_can_offload.exit.i.if.else85.i_crit_edge: ; preds = %nfp_flower_internal_port_can_offload.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else85.i

if.then58.i:                                      ; preds = %nfp_flower_internal_port_can_offload.exit.i
  %flower_ext_feats.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %flower_ext_feats.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %flower_ext_feats.i, align 8
  %and59.i = and i64 %51, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and59.i)
  %tobool60.not.i = icmp eq i64 %and59.i, 0
  br i1 %tobool60.not.i, label %do.body62.i, label %if.end70.i

do.body62.i:                                      ; preds = %if.then58.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.16) #5
  %tobool64.not.i = icmp eq ptr %extack, null
  br i1 %tobool64.not.i, label %do.body62.i.cleanup_crit_edge, label %if.then65.i

do.body62.i.cleanup_crit_edge:                    ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65.i:                                      ; preds = %do.body62.i
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @nfp_fl_output.__msg.16, ptr %extack, align 4
  br label %cleanup

if.end70.i:                                       ; preds = %if.then58.i
  %pre_tun_rule.i = getelementptr inbounds %struct.nfp_fl_payload, ptr %nfp_fl, i32 0, i32 12
  %53 = ptrtoint ptr %pre_tun_rule.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pre_tun_rule.i, align 4
  %tobool71.not.i = icmp eq ptr %54, null
  %55 = and i1 %tobool71.not.i, %pkt_host
  br i1 %55, label %if.end82.i, label %do.body74.i

do.body74.i:                                      ; preds = %if.end70.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.17) #5
  %tobool76.not.i = icmp eq ptr %extack, null
  br i1 %tobool76.not.i, label %do.body74.i.cleanup_crit_edge, label %if.then77.i

do.body74.i.cleanup_crit_edge:                    ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then77.i:                                      ; preds = %do.body74.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @nfp_fl_output.__msg.17, ptr %extack, align 4
  br label %cleanup

if.end82.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %pre_tun_rule.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %17, ptr %pre_tun_rule.i, align 4
  br label %if.end20

if.else85.i:                                      ; preds = %nfp_flower_internal_port_can_offload.exit.i.if.else85.i_crit_edge, %if.end.i.i.if.else85.i_crit_edge, %if.else56.i.if.else85.i_crit_edge
  %flags86.i = getelementptr inbounds %struct.nfp_fl_output, ptr %arrayidx, i32 0, i32 1
  %58 = ptrtoint ptr %flags86.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv9.i, ptr %flags86.i, align 2
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %59 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i186.i = icmp eq ptr %60, @nfp_repr_netdev_ops
  br i1 %cmp.i186.i, label %if.then88.i, label %if.else85.i.if.end100.i_crit_edge

if.else85.i.if.end100.i_crit_edge:                ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100.i

if.then88.i:                                      ; preds = %if.else85.i
  %call89.i = tail call zeroext i1 @netdev_port_same_parent_id(ptr noundef %netdev, ptr noundef nonnull %17) #5
  br i1 %call89.i, label %if.then88.i.if.end100.i_crit_edge, label %do.body91.i

if.then88.i.if.end100.i_crit_edge:                ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100.i

do.body91.i:                                      ; preds = %if.then88.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.18) #5
  %tobool93.not.i = icmp eq ptr %extack, null
  br i1 %tobool93.not.i, label %do.body91.i.cleanup_crit_edge, label %if.then94.i

do.body91.i.cleanup_crit_edge:                    ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then94.i:                                      ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @nfp_fl_output.__msg.18, ptr %extack, align 4
  br label %cleanup

if.end100.i:                                      ; preds = %if.then88.i.if.end100.i_crit_edge, %if.else85.i.if.end100.i_crit_edge
  %netdev_ops.i187.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 16
  %62 = ptrtoint ptr %netdev_ops.i187.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %netdev_ops.i187.i, align 8
  %cmp.i188.i = icmp eq ptr %63, @nfp_repr_netdev_ops
  br i1 %cmp.i188.i, label %if.end111.i, label %do.body103.i

do.body103.i:                                     ; preds = %if.end100.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.19) #5
  %tobool105.not.i = icmp eq ptr %extack, null
  br i1 %tobool105.not.i, label %do.body103.i.cleanup_crit_edge, label %if.then106.i

do.body103.i.cleanup_crit_edge:                   ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then106.i:                                     ; preds = %do.body103.i
  call void @__sanitizer_cov_trace_pc() #7
  %64 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @nfp_fl_output.__msg.19, ptr %extack, align 4
  br label %cleanup

if.end111.i:                                      ; preds = %if.end100.i
  %dst.i.i = getelementptr i8, ptr %17, i32 2308
  %65 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dst.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %66, i32 0, i32 2
  %port_id.i.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port_id.i.i, align 4
  %port113.i = getelementptr inbounds %struct.nfp_fl_output, ptr %arrayidx, i32 0, i32 2
  %69 = ptrtoint ptr %port113.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %port113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool115.not.i = icmp eq i32 %68, 0
  br i1 %tobool115.not.i, label %do.body117.i, label %if.end111.i.if.end128.i_crit_edge

if.end111.i.if.end128.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128.i

do.body117.i:                                     ; preds = %if.end111.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_output.__msg.20) #5
  %tobool119.not.i = icmp eq ptr %extack, null
  br i1 %tobool119.not.i, label %do.body117.i.cleanup_crit_edge, label %if.then120.i

do.body117.i.cleanup_crit_edge:                   ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then120.i:                                     ; preds = %do.body117.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @nfp_fl_output.__msg.20, ptr %extack, align 4
  br label %cleanup

if.end128.sink.split.i:                           ; preds = %if.end53.i, %if.end32.i
  %or54.sink.i = phi i32 [ %or54.i, %if.end53.i ], [ %or35.i, %if.end32.i ]
  %port55.i = getelementptr inbounds %struct.nfp_fl_output, ptr %arrayidx, i32 0, i32 2
  %71 = ptrtoint ptr %port55.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or54.sink.i, ptr %port55.i, align 4
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.end128.sink.split.i, %if.end111.i.if.end128.i_crit_edge
  %port129.i = getelementptr inbounds %struct.nfp_fl_output, ptr %arrayidx, i32 0, i32 2
  %72 = ptrtoint ptr %port129.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port129.i, align 4
  %shortcut.i = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_fl, i32 0, i32 7
  %74 = ptrtoint ptr %shortcut.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %shortcut.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end128.i, %if.end82.i
  %75 = ptrtoint ptr %a_len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %a_len, align 4
  %add21 = add i32 %76, 8
  store i32 %add21, ptr %a_len, align 4
  %flower_en_feats = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 5
  %77 = ptrtoint ptr %flower_en_feats to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flower_en_feats, align 8
  %79 = and i8 %78, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool22.not = icmp eq i8 %79, 0
  br i1 %tobool22.not, label %if.end20.if.end44_crit_edge, label %if.then23

if.end20.if.end44_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then23:                                        ; preds = %if.end20
  %80 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %15, align 8
  %tobool.not.i70 = icmp eq ptr %81, null
  br i1 %tobool.not.i70, label %if.then23.if.end42_crit_edge, label %lor.lhs.false.i

if.then23.if.end42_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

lor.lhs.false.i:                                  ; preds = %if.then23
  %flags.i.i.i71 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %flags.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i.i.i71, align 8
  %and.i.i.i72 = and i32 %83, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i72)
  %tobool.not.i.i.i73 = icmp eq i32 %and.i.i.i72, 0
  br i1 %tobool.not.i.i.i73, label %lor.lhs.false.i.netif_is_lag_master.exit.i81_crit_edge, label %netif_is_bond_master.exit.i.i77

lor.lhs.false.i.netif_is_lag_master.exit.i81_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %netif_is_lag_master.exit.i81

netif_is_bond_master.exit.i.i77:                  ; preds = %lor.lhs.false.i
  %priv_flags.i.i.i74 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 15
  %84 = ptrtoint ptr %priv_flags.i.i.i74 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %priv_flags.i.i.i74, align 16
  %and1.i.i.i75 = and i64 %85, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i75)
  %tobool2.i.not.i.i76 = icmp eq i64 %and1.i.i.i75, 0
  br i1 %tobool2.i.not.i.i76, label %netif_is_bond_master.exit.i.i77.netif_is_lag_master.exit.i81_crit_edge, label %netif_is_bond_master.exit.i.i77.if.end.i_crit_edge

netif_is_bond_master.exit.i.i77.if.end.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

netif_is_bond_master.exit.i.i77.netif_is_lag_master.exit.i81_crit_edge: ; preds = %netif_is_bond_master.exit.i.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %netif_is_lag_master.exit.i81

netif_is_lag_master.exit.i81:                     ; preds = %netif_is_bond_master.exit.i.i77.netif_is_lag_master.exit.i81_crit_edge, %lor.lhs.false.i.netif_is_lag_master.exit.i81_crit_edge
  %priv_flags.i3.i.i78 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 15
  %86 = ptrtoint ptr %priv_flags.i3.i.i78 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %priv_flags.i3.i.i78, align 16
  %and.i4.i.i79 = and i64 %87, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i79)
  %tobool.i.i.not.i80 = icmp eq i64 %and.i4.i.i79, 0
  br i1 %tobool.i.i.not.i80, label %netif_is_lag_master.exit.i81.if.end42_crit_edge, label %netif_is_lag_master.exit.i81.if.end.i_crit_edge

netif_is_lag_master.exit.i81.if.end.i_crit_edge:  ; preds = %netif_is_lag_master.exit.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

netif_is_lag_master.exit.i81.if.end42_crit_edge:  ; preds = %netif_is_lag_master.exit.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end.i:                                         ; preds = %netif_is_lag_master.exit.i81.if.end.i_crit_edge, %netif_is_bond_master.exit.i.i77.if.end.i_crit_edge
  %88 = add i32 %76, -1201
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1217, i32 %88)
  %cmp.i82 = icmp ult i32 %88, -1217
  br i1 %cmp.i82, label %do.body.i83, label %if.end5.i

do.body.i83:                                      ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_fl_pre_lag.__msg) #5
  %tobool2.not.i = icmp eq ptr %extack, null
  br i1 %tobool2.not.i, label %do.body.i83.cleanup_crit_edge, label %if.then3.i

do.body.i83.cleanup_crit_edge:                    ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i:                                       ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @nfp_fl_pre_lag.__msg, ptr %extack, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add21)
  %tobool6.not.i = icmp eq i32 %add21, 0
  br i1 %tobool6.not.i, label %if.end5.i.if.end9.i_crit_edge, label %if.then7.i

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %action_data, align 4
  %add.ptr.i = getelementptr i8, ptr %91, i32 8
  %92 = call ptr @memmove(ptr %add.ptr.i, ptr %91, i32 %add21)
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge
  %93 = ptrtoint ptr %action_data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %action_data, align 4
  %call11.i = tail call i32 @nfp_flower_lag_populate_pre_action(ptr noundef %app, ptr noundef nonnull %81, ptr noundef %94, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.else, label %nfp_fl_pre_lag.exit

nfp_fl_pre_lag.exit:                              ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp25 = icmp slt i32 %call11.i, 0
  br i1 %cmp25, label %nfp_fl_pre_lag.exit.cleanup_crit_edge, label %nfp_fl_pre_lag.exit.land.lhs.true_crit_edge

nfp_fl_pre_lag.exit.land.lhs.true_crit_edge:      ; preds = %nfp_fl_pre_lag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

nfp_fl_pre_lag.exit.cleanup_crit_edge:            ; preds = %nfp_fl_pre_lag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 16, ptr %94, align 2
  %len_lw.i84 = getelementptr inbounds %struct.nfp_fl_act_head, ptr %94, i32 0, i32 1
  %96 = ptrtoint ptr %len_lw.i84 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 2, ptr %len_lw.i84, align 1
  %shortcut.i85 = getelementptr inbounds %struct.nfp_fl_rule_metadata, ptr %nfp_fl, i32 0, i32 7
  %97 = ptrtoint ptr %shortcut.i85 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %shortcut.i85, align 4
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else, %nfp_fl_pre_lag.exit.land.lhs.true_crit_edge
  %retval.0.i9097 = phi i32 [ 8, %if.else ], [ %call11.i, %nfp_fl_pre_lag.exit.land.lhs.true_crit_edge ]
  br i1 %last, label %lor.lhs.false, label %land.lhs.true.do.body33_crit_edge

land.lhs.true.do.body33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

lor.lhs.false:                                    ; preds = %land.lhs.true
  %98 = ptrtoint ptr %out_cnt to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %out_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool31.not = icmp eq i32 %99, 0
  br i1 %tobool31.not, label %lor.lhs.false.if.end42_crit_edge, label %lor.lhs.false.do.body33_crit_edge

lor.lhs.false.do.body33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body33

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.body33:                                        ; preds = %lor.lhs.false.do.body33_crit_edge, %land.lhs.true.do.body33_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_output_action.__msg.12) #5
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %if.then36

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @nfp_flower_output_action.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end42:                                         ; preds = %lor.lhs.false.if.end42_crit_edge, %netif_is_lag_master.exit.i81.if.end42_crit_edge, %if.then23.if.end42_crit_edge
  %retval.0.i9098 = phi i32 [ %retval.0.i9097, %lor.lhs.false.if.end42_crit_edge ], [ 0, %if.then23.if.end42_crit_edge ], [ 0, %netif_is_lag_master.exit.i81.if.end42_crit_edge ]
  %101 = ptrtoint ptr %a_len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %a_len, align 4
  %add43 = add i32 %102, %retval.0.i9098
  store i32 %add43, ptr %a_len, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end42, %if.end20.if.end44_crit_edge
  %103 = ptrtoint ptr %out_cnt to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %out_cnt, align 4
  %inc = add i32 %104, 1
  store i32 %inc, ptr %out_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then36, %do.body33.cleanup_crit_edge, %nfp_fl_pre_lag.exit.cleanup_crit_edge, %if.then3.i, %do.body.i83.cleanup_crit_edge, %if.then120.i, %do.body117.i.cleanup_crit_edge, %if.then106.i, %do.body103.i.cleanup_crit_edge, %if.then94.i, %do.body91.i.cleanup_crit_edge, %if.then77.i, %do.body74.i.cleanup_crit_edge, %if.then65.i, %do.body62.i.cleanup_crit_edge, %if.then48.i, %do.body45.i.cleanup_crit_edge, %if.then27.i, %do.body24.i.cleanup_crit_edge, %if.then16.i, %do.body13.i.cleanup_crit_edge, %if.then5.i, %do.body.i.cleanup_crit_edge, %if.then10, %do.body7.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end44 ], [ -95, %if.then4 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then10 ], [ -95, %do.body7.cleanup_crit_edge ], [ %call11.i, %nfp_fl_pre_lag.exit.cleanup_crit_edge ], [ -95, %if.then36 ], [ -95, %do.body33.cleanup_crit_edge ], [ %call42.i, %do.body45.i.cleanup_crit_edge ], [ -95, %do.body117.i.cleanup_crit_edge ], [ -95, %if.then120.i ], [ -95, %do.body103.i.cleanup_crit_edge ], [ -95, %if.then106.i ], [ -95, %do.body91.i.cleanup_crit_edge ], [ -95, %if.then94.i ], [ -95, %do.body74.i.cleanup_crit_edge ], [ -95, %if.then77.i ], [ -95, %do.body62.i.cleanup_crit_edge ], [ -95, %if.then65.i ], [ %call42.i, %if.then48.i ], [ -95, %do.body24.i.cleanup_crit_edge ], [ -95, %if.then27.i ], [ -95, %do.body13.i.cleanup_crit_edge ], [ -95, %if.then16.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ -95, %if.then5.i ], [ -95, %if.then3.i ], [ -95, %do.body.i83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_lag_get_output_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netdev_port_same_parent_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_flower_lag_populate_pre_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_dst_hoplimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/net/flow_offload.h", i32 354, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__msg", i1 false, i1 false}
!4 = !{!"../include/net/flow_offload.h", i32 358, i32 3}
!5 = !{ptr @__flow_action_hw_stats_check.__msg.1, !6, !"__msg", i1 false, i1 false}
!6 = !{!"../include/net/flow_offload.h", i32 362, i32 3}
!7 = !{ptr @flow_action_mixed_hw_stats_check.__msg, !8, !"__msg", i1 false, i1 false}
!8 = !{!"../include/net/flow_offload.h", i32 323, i32 4}
!9 = !{ptr @nfp_flower_loop_action.__msg, !10, !"__msg", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1022, i32 4}
!11 = !{ptr @nfp_flower_loop_action.__msg.2, !12, !"__msg", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1035, i32 4}
!13 = !{ptr @nfp_flower_loop_action.__msg.3, !14, !"__msg", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1050, i32 4}
!15 = !{ptr @nfp_flower_loop_action.__msg.4, !16, !"__msg", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1055, i32 4}
!17 = !{ptr @nfp_flower_loop_action.__msg.5, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1065, i32 4}
!19 = !{ptr @nfp_flower_loop_action.__msg.6, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1096, i32 4}
!21 = !{ptr @nfp_flower_loop_action.__msg.7, !22, !"__msg", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1107, i32 4}
!23 = !{ptr @nfp_flower_loop_action.__msg.8, !24, !"__msg", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1122, i32 4}
!25 = !{ptr @nfp_flower_loop_action.__msg.9, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1135, i32 4}
!27 = !{ptr @nfp_flower_loop_action.__msg.10, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 1154, i32 3}
!29 = !{ptr @nfp_flower_output_action.__msg, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 942, i32 3}
!31 = !{ptr @nfp_flower_output_action.__msg.11, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 947, i32 3}
!33 = !{ptr @nfp_flower_output_action.__msg.12, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 967, i32 4}
!35 = !{ptr @nfp_fl_output.__msg, !36, !"__msg", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 189, i32 3}
!37 = !{ptr @nfp_fl_output.__msg.13, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 198, i32 4}
!39 = !{ptr @nfp_fl_output.__msg.14, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 203, i32 4}
!41 = !{ptr @nfp_fl_output.__msg.15, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 218, i32 4}
!43 = !{ptr @nfp_fl_output.__msg.16, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 224, i32 4}
!45 = !{ptr @nfp_fl_output.__msg.17, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 229, i32 4}
!47 = !{ptr @nfp_fl_output.__msg.18, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 243, i32 5}
!49 = !{ptr @nfp_fl_output.__msg.19, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 249, i32 4}
!51 = !{ptr @nfp_fl_output.__msg.20, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 255, i32 4}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/net/vxlan.h", i32 420, i32 43}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/net/gre.h", i32 43, i32 43}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../include/net/gre.h", i32 49, i32 43}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/net/geneve.h", i32 68, i32 43}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/netronome/nfp/flower/main.h", i32 387, i32 43}
!63 = !{ptr @nfp_fl_pre_lag.__msg, !64, !"__msg", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 147, i32 3}
!65 = !{ptr @nfp_fl_push_geneve_options.__msg, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 350, i32 4}
!67 = !{ptr @nfp_fl_push_geneve_options.__msg.26, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 357, i32 4}
!69 = !{ptr @nfp_fl_push_geneve_options.__msg.27, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 366, i32 3}
!71 = !{ptr @nfp_fl_set_tun.__msg, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 425, i32 3}
!73 = !{ptr @nfp_fl_set_tun.__msg.28, !74, !"__msg", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 484, i32 3}
!75 = !{ptr @nfp_fl_pedit.__msg, !76, !"__msg", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 920, i32 3}
!77 = !{ptr @nfp_fl_set_eth.__msg, !78, !"__msg", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 524, i32 3}
!79 = !{ptr @nfp_fl_set_eth.__msg.29, !80, !"__msg", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 532, i32 3}
!81 = !{ptr @nfp_fl_set_ip4.__msg, !82, !"__msg", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 569, i32 3}
!83 = !{ptr @nfp_fl_set_ip4.__msg.30, !84, !"__msg", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 595, i32 4}
!85 = !{ptr @nfp_fl_set_ip4.__msg.31, !86, !"__msg", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 613, i32 4}
!87 = !{ptr @nfp_fl_set_ip4.__msg.32, !88, !"__msg", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 626, i32 3}
!89 = !{ptr @nfp_fl_set_ip6.__msg, !90, !"__msg", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 710, i32 3}
!91 = !{ptr @nfp_fl_set_ip6.__msg.33, !92, !"__msg", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 727, i32 3}
!93 = !{ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg, !94, !"__msg", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 666, i32 4}
!95 = !{ptr @nfp_fl_set_ip6_hop_limit_flow_label.__msg.34, !96, !"__msg", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 678, i32 4}
!97 = !{ptr @nfp_fl_set_tport.__msg, !98, !"__msg", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 742, i32 3}
!99 = !{ptr @nfp_fl_set_tport.__msg.35, !100, !"__msg", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 750, i32 3}
!101 = !{ptr @nfp_fl_push_mpls.__msg, !102, !"__msg", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/netronome/nfp/flower/action.c", i32 46, i32 3}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{!"auto-init"}
