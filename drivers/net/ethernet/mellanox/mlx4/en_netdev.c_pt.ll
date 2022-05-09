; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx4/en_netdev.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx4/en_netdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.62, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.62 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_port_profile = type { i32, [2 x i32], i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlx4_en_dev = type { ptr, ptr, %struct.mutex, [3 x ptr], [3 x ptr], i32, i8, %struct.mlx4_en_profile, i32, ptr, ptr, ptr, %struct.mlx4_uar, %struct.mlx4_mr, i32, %struct.spinlock, [3 x i8], i32, %struct.cyclecounter, %struct.seqlock_t, %struct.timecounter, i32, ptr, %struct.ptp_clock_info, %struct.notifier_block }
%struct.mlx4_en_profile = type { i32, i8, i32, i32, i8, i8, [3 x %struct.mlx4_en_port_profile] }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.mlx4_mr = type { %struct.mlx4_mtt, i64, i64, i32, i32, i32, i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_en_priv = type { ptr, ptr, ptr, [128 x i32], %struct.mlx4_en_port_state, %struct.spinlock, [256 x %struct.ethtool_flow_id], %struct.list_head, [128 x i32], i32, [128 x i32], i32, [128 x i32], i16, i16, i16, i16, i32, i16, i32, i16, i32, i32, i32, i32, i32, %struct.mlx4_hwq_resources, i32, i8, i32, i32, i32, i32, [8 x i8], i32, i32, i32, i32, i32, %struct.mlx4_en_rss_map, i32, i32, i8, i32, [2 x i32], i32, i32, [4 x %struct.mlx4_en_frag_info], i8, i8, i8, i16, [2 x ptr], [128 x ptr], [2 x ptr], [128 x ptr], %struct.mlx4_qp, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.mlx4_en_pkt_stats, %struct.mlx4_en_counter_stats, [8 x %struct.mlx4_en_flow_stats_rx], [8 x %struct.mlx4_en_flow_stats_tx], %struct.mlx4_en_flow_stats_rx, %struct.mlx4_en_flow_stats_tx, %struct.mlx4_en_port_stats, %struct.mlx4_en_xdp_stats, %struct.mlx4_en_phy_stats, %struct.mlx4_en_stats_bitmap, %struct.list_head, %struct.list_head, i64, %struct.mlx4_en_stat_out_mbox, [128 x i32], i8, ptr, [256 x %struct.hlist_head], %struct.hwtstamp_config, i32, %struct.ieee_ets, [8 x i16], [8 x i32], %struct.mlx4_en_cee_config, i8, %struct.spinlock, i32, %struct.list_head, [16 x %struct.hlist_head], i64, i16, i32, [40 x i8], i8, i32 }
%struct.mlx4_en_port_state = type { i32, i32, i32, i32 }
%struct.ethtool_flow_id = type { %struct.list_head, %struct.ethtool_rx_flow_spec, i64 }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx4_hwq_resources = type { %struct.mlx4_db, %struct.mlx4_mtt, %struct.mlx4_buf }
%struct.mlx4_db = type { ptr, %union.anon.208, i32, i32, i32 }
%union.anon.208 = type { ptr }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_en_rss_map = type { i32, [128 x %struct.mlx4_qp], [128 x i32], ptr, i32 }
%struct.mlx4_en_frag_info = type { i16, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx4_en_pkt_stats = type { i32, i32, i32, i32, i32, i32, i32, [9 x [2 x i32]], [9 x [2 x i32]] }
%struct.mlx4_en_counter_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_flow_stats_rx = type { i64, i64, i64 }
%struct.mlx4_en_flow_stats_tx = type { i64, i64, i64 }
%struct.mlx4_en_port_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_xdp_stats = type { i32, i32, i32, i32, i32 }
%struct.mlx4_en_phy_stats = type { i32, i32, i32, i32 }
%struct.mlx4_en_stats_bitmap = type { [5 x i32], %struct.mutex }
%struct.mlx4_en_stat_out_mbox = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.mlx4_en_cee_config = type { i8, [8 x i32] }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_hwq_resources, i32, i32, i32, i16, i16, i16, i32, i32, i32, i8, ptr, ptr, ptr, %struct.mlx4_en_page_cache, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.xdp_rxq_info }
%struct.mlx4_en_page_cache = type { i32, [128 x %struct.anon.209] }
%struct.anon.209 = type { ptr, i32 }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.198, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.198 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mlx4_en_mc_list = type { %struct.list_head, i32, [6 x i8], i64, i64 }
%struct.mlx4_mac_entry = type { %struct.hlist_node, [8 x i8], i64, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.mlx4_en_cq = type { %struct.mlx4_cq, %struct.mlx4_hwq_resources, i32, ptr, %union.anon.213, i32, i32, i32, i32, i16, i16, ptr, ptr }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.212, i32, %struct.list_head, i8 }
%struct.anon.212 = type { %struct.list_head, ptr, ptr }
%union.anon.213 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mlx4_cqe = type { i32, i32, i32, i16, %union.anon.214, i32, i16, i16, [3 x i8], i8 }
%union.anon.214 = type { %struct.anon.215 }
%struct.anon.215 = type { i16, i16, i8, i8 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, ptr, ptr, ptr, [104 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_bf, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, ptr, i32, i32, %struct.mlx4_hwq_resources, %struct.mlx4_qp, %struct.mlx4_qp_context, %struct.cpumask, i32, i16, i16, [20 x i8] }
%struct.mlx4_bf = type { i32, i32, ptr, ptr }
%struct.mlx4_qp_context = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.mlx4_qp_path, %struct.mlx4_qp_path, i32, i32, i32, i32, i16, [3 x i16], i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i16, i16, i32, i16, i8, i8, i32, i32, i8, [2 x i8], i8, i32, [10 x i32] }
%struct.mlx4_qp_path = type { i8, %union.anon.211, i8, i8, i8, i8, i16, i8, i8, i8, i8, i32, [16 x i8], i8, i8, i8, i8, [2 x i8], [6 x i8] }
%union.anon.211 = type { i8 }
%struct.cpumask = type { [1 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.204, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.204 = type { ptr }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx4_en_filter = type { %struct.list_head, %struct.work_struct, i8, i32, i32, i16, i16, i32, ptr, i32, i32, i64, i8, %struct.hlist_node }
%struct.netdev_notifier_bonding_info = type { %struct.netdev_notifier_info, %struct.netdev_bonding_info }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_bonding_info = type { %struct.ifslave, %struct.ifbond }
%struct.ifslave = type { i32, [16 x i8], i8, i8, i32 }
%struct.ifbond = type { i32, i32, i32 }
%struct.mlx4_en_bond = type { %struct.work_struct, ptr, i32, %struct.mlx4_port_map }
%struct.mlx4_port_map = type { i8, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.mlx4_spec_list = type { %struct.list_head, i32, %union.anon.216 }
%union.anon.216 = type { %struct.mlx4_spec_ib }
%struct.mlx4_spec_ib = type { i32, i32, [16 x i8], [16 x i8] }
%struct.mlx4_net_trans_rule = type { %struct.list_head, i32, i8, i8, i32, i8, i16, i32 }
%struct.mlx4_spec_eth = type { [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i16, i16, i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.158, [48 x i8], %union.anon.159, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.161, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.158 = type { i64 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i32, ptr }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.163, i32, i32, i32, i16, i16, %union.anon.165, i32, %union.anon.166, %union.anon.167, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.163 = type { i32 }
%union.anon.165 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i16 }
%struct.vlan_ethhdr = type { %union.anon.217, i16, i16, i16 }
%union.anon.217 = type { %struct.anon.218 }
%struct.anon.218 = type { [6 x i8], [6 x i8] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.mlx4_update_qp_params = type { i8, i8, i32, i16, i16 }
%struct.netdev_bpf = type { i32, %union.anon.178 }
%union.anon.178 = type { %struct.anon.179 }
%struct.anon.179 = type { i32, ptr, ptr }
%struct.mlx4_spec_tcp_udp = type { i16, i16, i16, i16 }
%struct.ifreq = type { %union.anon.174, %union.anon.175 }
%union.anon.174 = type { [16 x i8] }
%union.anon.175 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Total number of TX and XDP rings (%d) exceeds the maximum supported (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed starting port for setup TC\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"start port called while port already up\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Rx buf size:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to activate RX rings\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed preparing IRQ affinity hint\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed activating Rx CQ\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed setting cq moderation parameters\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Getting qp number for port %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed getting eth qp\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed configuring rss steering\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed allocating Tx CQ\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Resetting index of collapsed CQ:%d to -1\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed allocating Tx ring\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Failed setting port general configurations for port %d, with error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Failed to pass user MTU(%d) to Firmware for port %d, with error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed setting default qp numbers\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed setting port L2 tunnel configuration, err %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Initializing port\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed Initializing port\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx4_en_start_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.24, i32 1818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014mlx4_en %s: Failed setting steering rules\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx4_en_start_port\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/mellanox/mlx4/en_netdev.c\00", [49 x i8] zeroinitializer }, align 32
@mlx4_en_start_port._entry_ptr = internal global ptr @mlx4_en_start_port._entry, section ".printk_index", align 4
@mlx4_en_start_port._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.24, i32 1826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014mlx4_en %s: Failed Attaching Broadcast\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx4_en_start_port._entry_ptr.27 = internal global ptr @mlx4_en_start_port._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"stop port called while port already down\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx4_en_stop_port.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: mlx4_en_copy_priv() failed, return\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.mlx4_en_try_alloc_resources = private unnamed_addr constant [28 x i8] c"mlx4_en_try_alloc_resources\00", align 1
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Resource allocation failed, using previous configuration\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx4_en_try_alloc_resources.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Destroying netdev on port:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@mlx4_en_set_stats_bitmap.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&stats_bitmap->mutex\00", [43 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->stats_lock\00", [46 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.37 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->rx_mode_task)\00", [57 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.39 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->restart_task)\00", [57 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&priv->linkstate_task)\00", [55 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&priv->stats_task)->work)\00", [50 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&priv->stats_task)->timer\00", [36 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"(work_completion)(&(&priv->service_task)->work)\00", [48 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"&(&priv->service_task)->timer\00", [34 x i8] zeroinitializer }, align 32
@mlx4_en_init_netdev.__key.51 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->filters_lock\00", [44 x i8] zeroinitializer }, align 32
@mlx4_en_dcbnl_ops = external dso_local constant %struct.dcbnl_rtnl_ops, align 4
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enabling only PFC DCB ops\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx4_en_dcbnl_pfc_ops = external dso_local constant %struct.dcbnl_rtnl_ops, align 4
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Port: %d, invalid mac burned: %pM, quitting\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Assigned random MAC address %pM\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate page for rx qps\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx4_netdev_ops_master = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mlx4_en_open, ptr @mlx4_en_close, ptr @mlx4_en_xmit, ptr @mlx4_en_features_check, ptr @mlx4_en_select_queue, ptr null, ptr @mlx4_en_set_rx_mode, ptr @mlx4_en_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_change_mtu, ptr null, ptr @mlx4_en_tx_timeout, ptr @mlx4_en_get_stats64, ptr null, ptr null, ptr null, ptr @mlx4_en_vlan_rx_add_vid, ptr @mlx4_en_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr @mlx4_en_set_vf_mac, ptr @mlx4_en_set_vf_vlan, ptr @mlx4_en_set_vf_rate, ptr @mlx4_en_set_vf_spoofchk, ptr null, ptr @mlx4_en_get_vf_config, ptr @mlx4_en_set_vf_link_state, ptr @mlx4_en_get_vf_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__mlx4_en_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_filter_rfs, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_fix_features, ptr @mlx4_en_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_get_phys_port_id, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_set_tx_maxrate, ptr null, ptr null, ptr null, ptr @mlx4_xdp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mlx4_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mlx4_en_open, ptr @mlx4_en_close, ptr @mlx4_en_xmit, ptr @mlx4_en_features_check, ptr @mlx4_en_select_queue, ptr null, ptr @mlx4_en_set_rx_mode, ptr @mlx4_en_set_mac, ptr @eth_validate_addr, ptr null, ptr @mlx4_en_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_change_mtu, ptr null, ptr @mlx4_en_tx_timeout, ptr @mlx4_en_get_stats64, ptr null, ptr null, ptr null, ptr @mlx4_en_vlan_rx_add_vid, ptr @mlx4_en_vlan_rx_kill_vid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__mlx4_en_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_filter_rfs, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_fix_features, ptr @mlx4_en_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_get_phys_port_id, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_en_set_tx_maxrate, ptr null, ptr null, ptr null, ptr @mlx4_xdp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@mlx4_en_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@mlx4_udp_tunnels = internal constant { %struct.udp_tunnel_nic_info, [44 x i8] } { %struct.udp_tunnel_nic_info { ptr null, ptr null, ptr @mlx4_udp_tunnel_sync, ptr null, i32 5, [4 x %struct.udp_tunnel_nic_table_info] [%struct.udp_tunnel_nic_table_info { i32 1, i32 1 }, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer, %struct.udp_tunnel_nic_table_info zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No RSS hash capabilities exposed, using Toeplitz\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Using %d TX rings\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Using %d RX rings\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Netdev registration failed for port %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Can't turn ON rx vlan offload while time-stamping rx filter is ON\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Turning off RX vlan offload since RX time-stamping is ON\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed starting port\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.65 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error detaching flow. rc = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Registering MAC: %pM for adding\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed adding MAC: %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Steering Mode %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Reserved qp %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to reserve qp for mac registration\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Set tx_ring[%d][%d]->recycle_ring = rx_ring[%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@__const.mlx4_en_uc_steer_add.rule = private unnamed_addr constant { %struct.list_head, i32, i8, i8, [2 x i8], i32, i8, [1 x i8], i16, i32 } { %struct.list_head zeroinitializer, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer, i32 1, i8 0, [1 x i8] zeroinitializer, i16 20480, i32 0 }, align 4
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed Attaching Unicast\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to add vxlan steering rule, err %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"added vxlan steering rule, mac %pM reg_id %llx\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid steering mode.\0A\00", [40 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Registering MAC: %pM for deleting\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Releasing qp: port %d, qpn %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Registering MAC:%pM for deleting\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate NIC resources\0A\00", [62 x i8] zeroinitializer }, align 32
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@mlx4_en_queue_bond_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&bond->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Fail to bond device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Fail to set port map [%d][%d]: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail to unbond device\0A\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Card is not up, ignoring rx mode change.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Port is down, ignoring rx mode change.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Link Up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Removed MAC %pM on port:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed adding MAC %pM on port:%d (out of memory)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed registering MAC %pM on port %d: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed adding MAC %pM on port %d: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Added MAC %pM on port:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Forcing promiscuous mode on port:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Stop forcing promiscuous mode on port:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Entering promiscuous mode\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed enabling promiscuous mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed enabling unicast promiscuous mode\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed enabling multicast promiscuous mode\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed disabling multicast filter\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Leaving promiscuous mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed disabling promiscuous mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed disabling unicast promiscuous mode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed disabling multicast promiscuous mode\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed entering multicast promisc mode\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed enabling multicast filter\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fail to detach multicast address\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to detach multicast address\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Fail to attach multicast address\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to attach multicast address\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Watchdog task called for port %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed restarting port %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Link Down\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not update stats\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.114 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed modifying moderation for cq:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed changing HW MAC address\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Port is down while registering mac, exiting...\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot open - device down/disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed starting port:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed dumping statistics\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Close port called\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Failed to pass user MAC(%pM) to Firmware for port %d, with error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Change MTU called - current:%d new:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Change MTU called with card down!?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed restarting port:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mtu:%d > max:%d when XDP prog is attached\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Tx timeout called on port:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"TX timeout on queue: %d, QP: 0x%x, CQ: 0x%x, Cons: 0x%x, Prod: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Scheduling port restart\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adding VLAN:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed configuring VLAN filter\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed adding vlan %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Killing VID:%d\0A\00", [16 x i8] zeroinitializer }, align 32
@mlx4_en_filter_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.134 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&filter->work)\00", [63 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"RFS: ignoring unsupported ip protocol (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error attaching flow. err = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Turn %s RX-FCS\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Turn %s RX-ALL\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Turn %s RX vlan strip offload\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Turn %s TX vlan strip offload\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Turn %s TX S-VLAN strip offload\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Turn %s loopback\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx4_xdp_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.145 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Reducing the number of TX rings, to not exceed the max total rings number.\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx4_xdp_set.__warned.146 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.147 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed starting port %d for XDP change\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Default coalescing params for mtu:%d - rx_frames:%d rx_usecs:%d\0A\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.172 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.173 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.174 = internal global [4 x i64] [i64 2, i64 32, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.175 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 113, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 131, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1639, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1652, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1657, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1665, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1671, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1686, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1697, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1700, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1710, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1728, i32 5 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1737, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1747, i32 5 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1779, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1786, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1794, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1801, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1808, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1811, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1818, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1826, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1895, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1970, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2294, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2300, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2311, i32 13 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2337, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3112, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3184, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3185, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3186, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3187, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3188, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3189, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3192, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3254, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3274, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3284, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3304, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant [23 x i8] c"mlx4_netdev_ops_master\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2863, i32 36 }
@___asan_gen_.359 = private unnamed_addr constant [16 x i8] c"mlx4_netdev_ops\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2837, i32 36 }
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"mlx4_udp_tunnels\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2670, i32 41 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3411, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3426, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3427, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3476, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3511, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3563, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 3570, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 331, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.390, i32 108, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 650, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 655, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 660, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 670, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 672, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1622, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 608, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 553, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 556, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 637, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 688, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 692, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1353, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2194, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2942, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2914, i32 5 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2919, i32 5 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2927, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1265, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1269, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1277, i32 5 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1181, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1211, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1220, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1230, i32 5 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1238, i32 5 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1248, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1251, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 902, i32 4 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 913, i32 5 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 922, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 932, i32 6 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 951, i32 4 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 961, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 971, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 980, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 987, i32 5 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1038, i32 5 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1087, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1101, i32 6 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1106, i32 7 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1124, i32 6 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1129, i32 6 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2023, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2030, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1577, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1527, i32 5 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1504, i32 5 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 774, i32 4 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 776, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2086, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2096, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2045, i32 4 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2111, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.558, i32 598, i32 8 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 760, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2391, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2405, i32 4 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2410, i32 5 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2377, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1377, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1379, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1385, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 484, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 493, i32 4 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 499, i32 3 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 513, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 302, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 243, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 265, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2525, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2533, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2542, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2548, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2552, i32 3 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2556, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2783, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 2814, i32 4 }
@___asan_gen_.639 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.639, i32 156, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.642 = private constant [50 x i8] c"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.642, i32 1417, i32 2 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @mlx4_en_start_port._entry, ptr @mlx4_en_start_port._entry.25, ptr @mlx4_en_start_port._entry_ptr, ptr @mlx4_en_start_port._entry_ptr.27, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @mlx4_en_set_stats_bitmap.__key, ptr @.str.35, ptr @mlx4_en_init_netdev.__key, ptr @.str.36, ptr @mlx4_en_init_netdev.__key.37, ptr @.str.38, ptr @mlx4_en_init_netdev.__key.39, ptr @.str.40, ptr @mlx4_en_init_netdev.__key.41, ptr @.str.42, ptr @mlx4_en_init_netdev.__key.43, ptr @.str.44, ptr @mlx4_en_init_netdev.__key.45, ptr @.str.46, ptr @mlx4_en_init_netdev.__key.47, ptr @.str.48, ptr @mlx4_en_init_netdev.__key.49, ptr @.str.50, ptr @mlx4_en_init_netdev.__key.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @mlx4_netdev_ops_master, ptr @mlx4_netdev_ops, ptr @mlx4_udp_tunnels, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @mlx4_en_queue_bond_work.__key, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @mlx4_en_filter_alloc.__key, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.151], section "llvm.metadata"
@0 = internal global [156 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_start_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_start_port._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_set_stats_bitmap.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_init_netdev.__key.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_netdev_ops_master to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_udp_tunnels to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_queue_bond_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_en_filter_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_setup_tc(ptr noundef %dev, i8 noundef zeroext %up) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %conv = zext i8 %up to i32
  %0 = zext i8 %up to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %up, label %entry.cleanup_crit_edge [
    i8 0, label %entry.if.end_crit_edge
    i8 8, label %entry.if.end_crit_edge51
  ]

entry.if.end_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge51
  %call3 = tail call i32 @netdev_set_num_tc(ptr noundef %dev, i8 noundef zeroext %up) #12
  %tx_ring_num = getelementptr i8, ptr %dev, i32 61452
  %1 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_ring_num, align 4
  %call4 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef %2) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %up)
  %cmp645.not = icmp eq i8 %up, 0
  br i1 %cmp645.not, label %for.end.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %num_tx_rings_p_up = getelementptr i8, ptr %dev, i32 61444
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %offset.047 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv8 = trunc i32 %i.046 to i8
  %3 = ptrtoint ptr %num_tx_rings_p_up to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_tx_rings_p_up, align 4
  %conv9 = zext i8 %4 to i16
  %conv10 = trunc i32 %offset.047 to i16
  %call11 = tail call i32 @netdev_set_tc_queue(ptr noundef %dev, i8 noundef zeroext %conv8, i16 noundef zeroext %conv9, i16 noundef zeroext %conv10) #12
  %5 = ptrtoint ptr %num_tx_rings_p_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_tx_rings_p_up, align 4
  %conv13 = zext i8 %6 to i32
  %add = add i32 %offset.047, %conv13
  %inc = add nuw nsw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not = icmp eq i32 %and.i, 0
  br i1 %tobool16.not, label %if.then17, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.thread:                                   ; preds = %if.end
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %flags.i48 = getelementptr inbounds %struct.mlx4_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i48, align 4
  %and.i49 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i49)
  %tobool16.not50 = icmp eq i32 %and.i49, 0
  br i1 %tobool16.not50, label %for.end.thread.if.else_crit_edge, label %for.end.thread.cleanup_crit_edge

for.end.thread.cleanup_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.end.thread.if.else_crit_edge:                 ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then17:                                        ; preds = %for.end
  br i1 %cmp645.not, label %if.then17.if.else_crit_edge, label %if.then19

if.then17.if.else_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then19:                                        ; preds = %if.then17
  %dcbx_cap = getelementptr i8, ptr %dev, i32 68488
  %19 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dcbx_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not = icmp eq i8 %20, 0
  br i1 %tobool20.not, label %if.then19.cleanup_crit_edge, label %if.then21

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  %flags = getelementptr i8, ptr %dev, i32 61440
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %or = or i32 %22, 64
  store i32 %or, ptr %flags, align 8
  br label %cleanup

if.else:                                          ; preds = %if.then17.if.else_crit_edge, %for.end.thread.if.else_crit_edge
  %flags23 = getelementptr i8, ptr %dev, i32 61440
  %23 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags23, align 8
  %and = and i32 %24, -65
  store i32 %and, ptr %flags23, align 8
  %cee_config = getelementptr i8, ptr %dev, i32 68452
  %25 = ptrtoint ptr %cee_config to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %cee_config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %if.then19.cleanup_crit_edge, %for.end.thread.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then21 ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_alloc_tx_queue_per_tc(ptr noundef %dev, i8 noundef zeroext %tc) local_unnamed_addr #0 align 64 {
entry:
  %new_prof = alloca %struct.mlx4_en_port_profile, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %new_prof) #12
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 66376, i32 noundef 3520, i32 noundef 5) #15
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %prof = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prof, align 4
  %4 = call ptr @memcpy(ptr %new_prof, ptr %3, i32 52)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tc)
  %cmp = icmp eq i8 %tc, 0
  %conv4 = select i1 %cmp, i8 1, i8 8
  %num_up = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 10
  %5 = ptrtoint ptr %num_up to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %num_up, align 1
  %num_tx_rings_p_up = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 5
  %6 = ptrtoint ptr %num_tx_rings_p_up to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_tx_rings_p_up, align 4
  %conv5 = zext i8 %7 to i32
  %conv7 = zext i8 %conv4 to i32
  %mul = mul nuw nsw i32 %conv5, %conv7
  %tx_ring_num = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 1
  %8 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %tx_ring_num, align 4
  %arrayidx11 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx11, align 4
  %add = add i32 %mul, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add)
  %cmp12 = icmp sgt i32 %add, 256
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.1, i32 noundef %add, i32 noundef 256) #12
  br label %out

if.end15:                                         ; preds = %if.end
  %call16 = call i32 @mlx4_en_try_alloc_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %new_prof, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end19:                                         ; preds = %if.end15
  %port_up20 = getelementptr i8, ptr %dev, i32 51648
  %11 = ptrtoint ptr %port_up20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port_up20, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool21.not = icmp eq i8 %12, 0
  br i1 %tobool21.not, label %if.end30.critedge, label %if.then22

if.then22:                                        ; preds = %if.end19
  call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1)
  call fastcc void @mlx4_en_free_resources(ptr noundef %add.ptr.i) #12
  %rx_ring.i.i = getelementptr i8, ptr %dev, i32 61516
  %rx_ring1.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 53
  %rx_ring_num.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 45
  %13 = ptrtoint ptr %rx_ring_num.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_ring_num.i.i, align 4
  %mul.i.i = shl i32 %14, 2
  %15 = call ptr @memcpy(ptr %rx_ring.i.i, ptr %rx_ring1.i.i, i32 %mul.i.i)
  %rx_cq.i.i = getelementptr i8, ptr %dev, i32 62036
  %rx_cq4.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 55
  %16 = call ptr @memcpy(ptr %rx_cq.i.i, ptr %rx_cq4.i.i, i32 %mul.i.i)
  %hwtstamp_config.i.i = getelementptr i8, ptr %dev, i32 68328
  %hwtstamp_config8.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 80
  %17 = call ptr @memcpy(ptr %hwtstamp_config.i.i, ptr %hwtstamp_config8.i.i, i32 12)
  %arrayidx.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 44, i32 0
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %dev, i32 61452
  %20 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx10.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 52, i32 0
  %21 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr i8, ptr %dev, i32 61508
  %23 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx13.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 54, i32 0
  %24 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx14.i.i, align 4
  %arrayidx16.i.i = getelementptr i8, ptr %dev, i32 62028
  %26 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx16.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 44, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.1.i.i, align 16
  %arrayidx10.1.i.i = getelementptr i8, ptr %dev, i32 61456
  %29 = ptrtoint ptr %arrayidx10.1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx10.1.i.i, align 4
  %arrayidx11.1.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 52, i32 1
  %30 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx11.1.i.i, align 8
  %arrayidx13.1.i.i = getelementptr i8, ptr %dev, i32 61512
  %32 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx13.1.i.i, align 4
  %arrayidx14.1.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 54, i32 1
  %33 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx14.1.i.i, align 16
  %arrayidx16.1.i.i = getelementptr i8, ptr %dev, i32 62032
  %35 = ptrtoint ptr %arrayidx16.1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx16.1.i.i, align 4
  %num_tx_rings_p_up.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 42
  %36 = ptrtoint ptr %num_tx_rings_p_up.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_tx_rings_p_up.i.i, align 4
  %num_tx_rings_p_up17.i.i = getelementptr i8, ptr %dev, i32 61444
  %38 = ptrtoint ptr %num_tx_rings_p_up17.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %num_tx_rings_p_up17.i.i, align 4
  %rx_ring_num19.i.i = getelementptr i8, ptr %dev, i32 61460
  %39 = ptrtoint ptr %rx_ring_num19.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %14, ptr %rx_ring_num19.i.i, align 4
  %40 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prof, align 4
  %prof20.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %prof20.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prof20.i.i, align 4
  %44 = call ptr @memcpy(ptr %41, ptr %43, i32 52)
  %call26 = call i32 @mlx4_en_start_port(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then22.if.end30_crit_edge, label %if.then28

if.then22.if.end30_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.2) #12
  br label %out

if.end30.critedge:                                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @mlx4_en_free_resources(ptr noundef %add.ptr.i) #12
  %rx_ring.i.i56 = getelementptr i8, ptr %dev, i32 61516
  %rx_ring1.i.i57 = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 53
  %rx_ring_num.i.i58 = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 45
  %45 = ptrtoint ptr %rx_ring_num.i.i58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_ring_num.i.i58, align 4
  %mul.i.i59 = shl i32 %46, 2
  %47 = call ptr @memcpy(ptr %rx_ring.i.i56, ptr %rx_ring1.i.i57, i32 %mul.i.i59)
  %rx_cq.i.i60 = getelementptr i8, ptr %dev, i32 62036
  %rx_cq4.i.i61 = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 55
  %48 = call ptr @memcpy(ptr %rx_cq.i.i60, ptr %rx_cq4.i.i61, i32 %mul.i.i59)
  %hwtstamp_config.i.i63 = getelementptr i8, ptr %dev, i32 68328
  %hwtstamp_config8.i.i64 = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 80
  %49 = call ptr @memcpy(ptr %hwtstamp_config.i.i63, ptr %hwtstamp_config8.i.i64, i32 12)
  %arrayidx.i.i65 = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 44, i32 0
  %50 = ptrtoint ptr %arrayidx.i.i65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i65, align 4
  %arrayidx10.i.i66 = getelementptr i8, ptr %dev, i32 61452
  %52 = ptrtoint ptr %arrayidx10.i.i66 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx10.i.i66, align 4
  %arrayidx11.i.i67 = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 52, i32 0
  %53 = ptrtoint ptr %arrayidx11.i.i67 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx11.i.i67, align 4
  %arrayidx13.i.i68 = getelementptr i8, ptr %dev, i32 61508
  %55 = ptrtoint ptr %arrayidx13.i.i68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %arrayidx13.i.i68, align 4
  %arrayidx14.i.i69 = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 54, i32 0
  %56 = ptrtoint ptr %arrayidx14.i.i69 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx14.i.i69, align 4
  %arrayidx16.i.i70 = getelementptr i8, ptr %dev, i32 62028
  %58 = ptrtoint ptr %arrayidx16.i.i70 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %arrayidx16.i.i70, align 4
  %arrayidx.1.i.i71 = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 44, i32 1
  %59 = ptrtoint ptr %arrayidx.1.i.i71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.1.i.i71, align 16
  %arrayidx10.1.i.i72 = getelementptr i8, ptr %dev, i32 61456
  %61 = ptrtoint ptr %arrayidx10.1.i.i72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx10.1.i.i72, align 4
  %arrayidx11.1.i.i73 = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 52, i32 1
  %62 = ptrtoint ptr %arrayidx11.1.i.i73 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx11.1.i.i73, align 8
  %arrayidx13.1.i.i74 = getelementptr i8, ptr %dev, i32 61512
  %64 = ptrtoint ptr %arrayidx13.1.i.i74 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %arrayidx13.1.i.i74, align 4
  %arrayidx14.1.i.i75 = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 54, i32 1
  %65 = ptrtoint ptr %arrayidx14.1.i.i75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx14.1.i.i75, align 16
  %arrayidx16.1.i.i76 = getelementptr i8, ptr %dev, i32 62032
  %67 = ptrtoint ptr %arrayidx16.1.i.i76 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %arrayidx16.1.i.i76, align 4
  %num_tx_rings_p_up.i.i77 = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 42
  %68 = ptrtoint ptr %num_tx_rings_p_up.i.i77 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %num_tx_rings_p_up.i.i77, align 4
  %num_tx_rings_p_up17.i.i78 = getelementptr i8, ptr %dev, i32 61444
  %70 = ptrtoint ptr %num_tx_rings_p_up17.i.i78 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %num_tx_rings_p_up17.i.i78, align 4
  %rx_ring_num19.i.i79 = getelementptr i8, ptr %dev, i32 61460
  %71 = ptrtoint ptr %rx_ring_num19.i.i79 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %46, ptr %rx_ring_num19.i.i79, align 4
  %72 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prof, align 4
  %prof20.i.i81 = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %prof20.i.i81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prof20.i.i81, align 4
  %76 = call ptr @memcpy(ptr %73, ptr %75, i32 52)
  br label %if.end30

if.end30:                                         ; preds = %if.end30.critedge, %if.then22.if.end30_crit_edge
  %call31 = call i32 @mlx4_en_setup_tc(ptr noundef %dev, i8 noundef zeroext %tc)
  br label %out

out:                                              ; preds = %if.end30, %if.then28, %if.end15.out_crit_edge, %if.then14
  %err.0 = phi i32 [ -22, %if.then14 ], [ %call16, %if.end15.out_crit_edge ], [ %call26, %if.then28 ], [ %call31, %if.end30 ]
  call void @mutex_unlock(ptr noundef %state_lock) #12
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %new_prof) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @en_print(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_try_alloc_resources(ptr noundef %priv, ptr noundef %tmp, ptr noundef %prof, i1 noundef zeroext %carry_xdp_prog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hwtstamp_config.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 80
  %hwtstamp_config1.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 13
  %0 = call ptr @memcpy(ptr %hwtstamp_config.i, ptr %hwtstamp_config1.i, i32 12)
  %num_tx_rings_p_up.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 5
  %1 = ptrtoint ptr %num_tx_rings_p_up.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_tx_rings_p_up.i, align 4
  %num_tx_rings_p_up2.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 42
  %3 = ptrtoint ptr %num_tx_rings_p_up2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %num_tx_rings_p_up2.i, align 4
  %rx_ring_num.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 2
  %4 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_ring_num.i, align 4
  %rx_ring_num3.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 45
  %6 = ptrtoint ptr %rx_ring_num3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rx_ring_num3.i, align 4
  %7 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prof, align 4
  %flags4.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 41
  %9 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %flags4.i, align 8
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 8
  %12 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tmp, align 8
  %port.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port.i, align 4
  %port6.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 29
  %15 = ptrtoint ptr %port6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %port6.i, align 4
  %dev.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 8
  %dev7.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 2
  %18 = ptrtoint ptr %dev7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %dev7.i, align 8
  %prof8.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 1
  %19 = ptrtoint ptr %prof8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %prof, ptr %prof8.i, align 4
  %stride.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 32
  %20 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 64, ptr %stride.i, align 8
  %arrayidx.i = getelementptr %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %arrayidx10.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 44, i32 0
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.end.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx13.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 52, i32 0
  %25 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i.i, ptr %arrayidx13.i, align 4
  %tobool16.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool16.not.i, label %if.end.i.if.then_crit_edge, label %if.end18.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end18.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i69.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx20.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 54, i32 0
  %27 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i69.i, ptr %arrayidx20.i, align 4
  %tobool23.not.i = icmp eq ptr %call7.i.i.i69.i, null
  br i1 %tobool23.not.i, label %if.end18.i.cleanup.sink.split.i_crit_edge, label %if.end18.i.for.inc.i_crit_edge

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end18.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

for.inc.i:                                        ; preds = %if.end18.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx10.1.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 44, i32 1
  %30 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %arrayidx10.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end_crit_edge, label %if.end.1.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx13.1.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 52, i32 1
  %32 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i.1.i, ptr %arrayidx13.1.i, align 4
  %tobool16.not.1.i = icmp eq ptr %call7.i.i.i.1.i, null
  br i1 %tobool16.not.1.i, label %if.end.1.i.while.body.preheader.i_crit_edge, label %if.end18.1.i

if.end.1.i.while.body.preheader.i_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.preheader.i

if.end18.1.i:                                     ; preds = %if.end.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i69.1.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx20.1.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 54, i32 1
  %34 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i69.1.i, ptr %arrayidx20.1.i, align 4
  %tobool23.not.1.i = icmp eq ptr %call7.i.i.i69.1.i, null
  br i1 %tobool23.not.1.i, label %err_free_tx.i, label %if.end18.1.i.if.end_crit_edge

if.end18.1.i.if.end_crit_edge:                    ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

err_free_tx.i:                                    ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx13.1.i, align 4
  tail call void @kfree(ptr noundef %36) #12
  br label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %err_free_tx.i, %if.end.1.i.while.body.preheader.i_crit_edge
  %arrayidx30.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 52, i32 0
  %37 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx30.i, align 4
  tail call void @kfree(ptr noundef %38) #12
  %arrayidx32.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 54, i32 0
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %while.body.preheader.i, %if.end18.i.cleanup.sink.split.i_crit_edge
  %arrayidx13.sink.i = phi ptr [ %arrayidx32.i, %while.body.preheader.i ], [ %arrayidx13.i, %if.end18.i.cleanup.sink.split.i_crit_edge ]
  %39 = ptrtoint ptr %arrayidx13.sink.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx13.sink.i, align 4
  tail call void @kfree(ptr noundef %40) #12
  br label %if.then

if.then:                                          ; preds = %cleanup.sink.split.i, %if.end.i.if.then_crit_edge
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %priv, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.mlx4_en_try_alloc_resources) #12
  br label %cleanup

if.end:                                           ; preds = %if.end18.1.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge
  %call1 = tail call fastcc i32 @mlx4_en_alloc_resources(ptr noundef %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %do.body, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %priv, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.mlx4_en_try_alloc_resources) #12
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 52, i32 0
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %42) #12
  %arrayidx4 = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 54, i32 0
  %43 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx4, align 4
  tail call void @kfree(ptr noundef %44) #12
  %arrayidx.1 = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 52, i32 1
  %45 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %46) #12
  %arrayidx4.1 = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 54, i32 1
  %47 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx4.1, align 4
  tail call void @kfree(ptr noundef %48) #12
  br label %cleanup

do.body:                                          ; preds = %if.end
  %49 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %priv, align 8
  %dep_map = getelementptr inbounds %struct.mlx4_en_dev, ptr %50, i32 0, i32 2, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b93 = load i1, ptr @mlx4_en_try_alloc_resources.__warned, align 1
  br i1 %.b93, label %land.lhs.true10.do.end_crit_edge, label %if.then12

land.lhs.true10.do.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx4_en_try_alloc_resources.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 2313, ptr noundef nonnull @.str.33) #12
  br label %do.end

do.end:                                           ; preds = %if.then12, %land.lhs.true10.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %rx_ring = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53
  %51 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rx_ring, align 4
  %xdp_prog16 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %xdp_prog16 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xdp_prog16, align 4
  %tobool17.not = icmp ne ptr %54, null
  %55 = and i1 %tobool17.not, %carry_xdp_prog
  br i1 %55, label %if.then20, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then20:                                        ; preds = %do.end
  %56 = ptrtoint ptr %rx_ring_num3.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_ring_num3.i, align 4
  tail call void @bpf_prog_add(ptr noundef nonnull %54, i32 noundef %57) #12
  %58 = ptrtoint ptr %rx_ring_num3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_ring_num3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp2398.not = icmp eq i32 %59, 0
  br i1 %cmp2398.not, label %if.then20.cleanup_crit_edge, label %if.then20.do.body25_crit_edge

if.then20.do.body25_crit_edge:                    ; preds = %if.then20
  br label %do.body25

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body25:                                        ; preds = %do.body25.do.body25_crit_edge, %if.then20.do.body25_crit_edge
  %i.099 = phi i32 [ %inc69, %do.body25.do.body25_crit_edge ], [ 0, %if.then20.do.body25_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !314
  %arrayidx55 = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 53, i32 %i.099
  %60 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx55, align 4
  %xdp_prog56 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %61, i32 0, i32 13
  %62 = ptrtoint ptr %xdp_prog56 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %54, ptr %xdp_prog56, align 4
  %inc69 = add nuw i32 %i.099, 1
  %63 = ptrtoint ptr %rx_ring_num3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_ring_num3.i, align 4
  %cmp23 = icmp ult i32 %inc69, %64
  br i1 %cmp23, label %do.body25.do.body25_crit_edge, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body25.do.body25_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body25

cleanup:                                          ; preds = %do.body25.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ -12, %if.then3 ], [ 0, %do.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef %detach) local_unnamed_addr #0 align 64 {
entry:
  %qp.i.i = alloca %struct.mlx4_qp, align 4
  %gid.i.i = alloca [16 x i8], align 1
  %mc_list = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mc_list) #12
  %2 = call ptr @memset(ptr %mc_list, i32 0, i32 16)
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %3 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %call6 = tail call i32 @mlx4_CLOSE_PORT(ptr noundef %8, i32 noundef %10) #12
  tail call fastcc void @local_bh_disable() #12
  tail call void @netif_tx_lock(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %detach)
  %tobool7.not = icmp eq i32 %detach, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_device_detach(ptr noundef %dev) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  tail call void @netif_tx_stop_all_queues(ptr noundef %dev) #12
  tail call void @netif_tx_unlock(ptr noundef %dev) #12
  tail call fastcc void @local_bh_enable() #12
  tail call fastcc void @local_bh_disable() #12
  %11 = tail call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #12
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %15 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13.not.i = icmp eq i32 %16, 0
  br i1 %cmp13.not.i, label %if.end9.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end9.netif_tx_disable.exit_crit_edge:          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %18, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #12
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %18, i32 %i.014.i, i32 11
  %19 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 %14, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %18, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %20 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #12
  %inc.i = add nuw i32 %i.014.i, 1
  %21 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %22
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %if.end9.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #12
  tail call fastcc void @local_bh_enable() #12
  %stats_lock = getelementptr i8, ptr %dev, i32 2844
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #12
  tail call void @mlx4_en_fold_software_stats(ptr noundef %dev) #12
  %23 = ptrtoint ptr %port_up to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %port_up, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #12
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %max_counters = getelementptr inbounds %struct.mlx4_dev, ptr %25, i32 0, i32 3, i32 79
  %26 = ptrtoint ptr %max_counters to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_counters, align 4
  %sub = add i32 %27, -1
  %counter_index = getelementptr i8, ptr %dev, i32 68340
  %28 = ptrtoint ptr %counter_index to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %counter_index, align 4
  %29 = load ptr, ptr %1, align 8
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %29, i32 0, i32 3, i32 50
  %30 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp = icmp eq i32 %31, 2
  %flags = getelementptr i8, ptr %dev, i32 61440
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 8
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and16 = and i32 %33, -4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and16, ptr %flags, align 8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port, align 4
  %conv = trunc i32 %38 to i8
  %call19 = tail call i32 @mlx4_flow_steer_promisc_remove(ptr noundef %36, i8 noundef zeroext %conv, i32 noundef 2) #12
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %conv22 = trunc i32 %42 to i8
  %call23 = tail call i32 @mlx4_flow_steer_promisc_remove(ptr noundef %40, i8 noundef zeroext %conv22, i32 noundef 3) #12
  br label %if.end47

if.else:                                          ; preds = %netif_tx_disable.exit
  %and25 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else.if.end47_crit_edge, label %if.then27

if.else.if.end47_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then27:                                        ; preds = %if.else
  %and29 = and i32 %33, -2
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and29, ptr %flags, align 8
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %base_qpn = getelementptr i8, ptr %dev, i32 51684
  %46 = ptrtoint ptr %base_qpn to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base_qpn, align 4
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %conv32 = trunc i32 %49 to i8
  %call33 = tail call i32 @mlx4_unicast_promisc_remove(ptr noundef %45, i32 noundef %47, i8 noundef zeroext %conv32) #12
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 8
  %and35 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.then27.if.end47_crit_edge, label %if.then37

if.then27.if.end47_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then37:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %54 = ptrtoint ptr %base_qpn to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base_qpn, align 4
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %conv41 = trunc i32 %57 to i8
  %call42 = tail call i32 @mlx4_multicast_promisc_remove(ptr noundef %53, i32 noundef %55, i8 noundef zeroext %conv41) #12
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 8
  %and44 = and i32 %59, -3
  store i32 %and44, ptr %flags, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then37, %if.then27.if.end47_crit_edge, %if.else.if.end47_crit_edge, %if.then15
  %arrayidx = getelementptr inbounds [16 x i8], ptr %mc_list, i32 0, i32 10
  %60 = call ptr @memset(ptr %arrayidx, i32 255, i32 6)
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %conv49 = trunc i32 %62 to i8
  %arrayidx50 = getelementptr inbounds [16 x i8], ptr %mc_list, i32 0, i32 5
  %63 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv49, ptr %arrayidx50, align 1
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 8
  %indir_qp = getelementptr i8, ptr %dev, i32 61428
  %66 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %indir_qp, align 4
  %broadcast_id = getelementptr i8, ptr %dev, i32 63784
  %68 = ptrtoint ptr %broadcast_id to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %broadcast_id, align 8
  %call52 = call i32 @mlx4_multicast_detach(ptr noundef %65, ptr noundef %67, ptr noundef nonnull %mc_list, i32 noundef 1, i64 noundef %69) #12
  %curr_list = getelementptr i8, ptr %dev, i32 63772
  %70 = ptrtoint ptr %curr_list to i32
  call void @__asan_load4_noabort(i32 %70)
  %mclist.0378 = load ptr, ptr %curr_list, align 4
  %cmp55.not379 = icmp eq ptr %mclist.0378, %curr_list
  br i1 %cmp55.not379, label %if.end47.for.end_crit_edge, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  br label %for.body

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end47.for.body_crit_edge
  %mclist.0380 = phi ptr [ %mclist.0, %for.inc.for.body_crit_edge ], [ %mclist.0378, %if.end47.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.0380, i32 0, i32 2
  %71 = call ptr @memcpy(ptr %arrayidx, ptr %addr, i32 6)
  %72 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port, align 4
  %conv60 = trunc i32 %73 to i8
  %74 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv60, ptr %arrayidx50, align 1
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 8
  %77 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %indir_qp, align 4
  %reg_id = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.0380, i32 0, i32 3
  %79 = ptrtoint ptr %reg_id to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %reg_id, align 8
  %call66 = call i32 @mlx4_multicast_detach(ptr noundef %76, ptr noundef %78, ptr noundef nonnull %mc_list, i32 noundef 1, i64 noundef %80) #12
  %tunnel_reg_id = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.0380, i32 0, i32 4
  %81 = ptrtoint ptr %tunnel_reg_id to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %tunnel_reg_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %82)
  %tobool67.not = icmp eq i64 %82, 0
  br i1 %tobool67.not, label %for.body.for.inc_crit_edge, label %if.then68

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then68:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 8
  %call71 = call i32 @mlx4_flow_detach(ptr noundef %84, i64 noundef %82) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then68, %for.body.for.inc_crit_edge
  %85 = ptrtoint ptr %mclist.0380 to i32
  call void @__asan_load4_noabort(i32 %85)
  %mclist.0 = load ptr, ptr %mclist.0380, align 4
  %cmp55.not = icmp eq ptr %mclist.0, %curr_list
  br i1 %cmp55.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end47.for.end_crit_edge
  %mc_list.i = getelementptr i8, ptr %dev, i32 63764
  %86 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mc_list.i, align 4
  %cmp.not19.i = icmp eq ptr %87, %mc_list.i
  br i1 %cmp.not19.i, label %for.end.mlx4_en_clear_list.exit_crit_edge, label %for.end.for.body.i366_crit_edge

for.end.for.body.i366_crit_edge:                  ; preds = %for.end
  br label %for.body.i366

for.end.mlx4_en_clear_list.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_clear_list.exit

for.body.i366:                                    ; preds = %list_del.exit.i.for.body.i366_crit_edge, %for.end.for.body.i366_crit_edge
  %mc_to_del.020.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i366_crit_edge ], [ %87, %for.end.for.body.i366_crit_edge ]
  %88 = ptrtoint ptr %mc_to_del.020.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %tmp.0.i = load ptr, ptr %mc_to_del.020.i, align 8
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mc_to_del.020.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i366.list_del.exit.i_crit_edge

for.body.i366.list_del.exit.i_crit_edge:          ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i366
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_to_del.020.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i, align 4
  %91 = ptrtoint ptr %mc_to_del.020.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mc_to_del.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i366.list_del.exit.i_crit_edge
  %95 = ptrtoint ptr %mc_to_del.020.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_to_del.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mc_to_del.020.i, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %mc_to_del.020.i) #12
  %cmp.not.i = icmp eq ptr %tmp.0.i, %mc_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.mlx4_en_clear_list.exit_crit_edge, label %list_del.exit.i.for.body.i366_crit_edge

list_del.exit.i.for.body.i366_crit_edge:          ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i366

list_del.exit.i.mlx4_en_clear_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_clear_list.exit

mlx4_en_clear_list.exit:                          ; preds = %list_del.exit.i.mlx4_en_clear_list.exit_crit_edge, %for.end.mlx4_en_clear_list.exit_crit_edge
  %97 = ptrtoint ptr %curr_list to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %curr_list, align 4
  %cmp91.not381 = icmp eq ptr %98, %curr_list
  br i1 %cmp91.not381, label %mlx4_en_clear_list.exit.for.end102_crit_edge, label %mlx4_en_clear_list.exit.for.body94_crit_edge

mlx4_en_clear_list.exit.for.body94_crit_edge:     ; preds = %mlx4_en_clear_list.exit
  br label %for.body94

mlx4_en_clear_list.exit.for.end102_crit_edge:     ; preds = %mlx4_en_clear_list.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end102

for.body94:                                       ; preds = %list_del.exit.for.body94_crit_edge, %mlx4_en_clear_list.exit.for.body94_crit_edge
  %mclist.1382 = phi ptr [ %tmp.0, %list_del.exit.for.body94_crit_edge ], [ %98, %mlx4_en_clear_list.exit.for.body94_crit_edge ]
  %99 = ptrtoint ptr %mclist.1382 to i32
  call void @__asan_load4_noabort(i32 %99)
  %tmp.0 = load ptr, ptr %mclist.1382, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mclist.1382) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body94.list_del.exit_crit_edge

for.body94.list_del.exit_crit_edge:               ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i367 = getelementptr inbounds %struct.list_head, ptr %mclist.1382, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i367 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i367, align 4
  %102 = ptrtoint ptr %mclist.1382 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mclist.1382, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body94.list_del.exit_crit_edge
  %106 = ptrtoint ptr %mclist.1382 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %mclist.1382, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mclist.1382, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %mclist.1382) #12
  %cmp91.not = icmp eq ptr %tmp.0, %curr_list
  br i1 %cmp91.not, label %list_del.exit.for.end102_crit_edge, label %list_del.exit.for.body94_crit_edge

list_del.exit.for.body94_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body94

list_del.exit.for.end102_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end102

for.end102:                                       ; preds = %list_del.exit.for.end102_crit_edge, %mlx4_en_clear_list.exit.for.end102_crit_edge
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 8
  %110 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %port, align 4
  %conv105 = trunc i32 %111 to i8
  %call106 = call i32 @mlx4_SET_MCAST_FLTR(ptr noundef %109, i8 noundef zeroext %conv105, i64 noundef 0, i64 noundef 1, i8 noundef zeroext 0) #12
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 8
  %steering_mode109 = getelementptr inbounds %struct.mlx4_dev, ptr %113, i32 0, i32 3, i32 50
  %114 = ptrtoint ptr %steering_mode109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %steering_mode109, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp110 = icmp eq i32 %115, 2
  br i1 %cmp110, label %if.then112, label %for.end102.if.end186_crit_edge

for.end102.if.end186_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.then112:                                       ; preds = %for.end102
  %call113 = call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %land.rhs, label %if.then112.if.end151_crit_edge

if.then112.if.end151_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

land.rhs:                                         ; preds = %if.then112
  %.b365 = load i1, ptr @mlx4_en_stop_port.__already_done, align 1
  br i1 %.b365, label %land.rhs.if.end151_crit_edge, label %if.then125, !prof !315

land.rhs.if.end151_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then125:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx4_en_stop_port.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 1970, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.24, i32 noundef 1970) #12
  br label %if.end151

if.end151:                                        ; preds = %if.then125, %land.rhs.if.end151_crit_edge, %if.then112.if.end151_crit_edge
  %ethtool_list = getelementptr i8, ptr %dev, i32 49992
  %116 = ptrtoint ptr %ethtool_list to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ethtool_list, align 8
  %cmp171.not384 = icmp eq ptr %117, %ethtool_list
  br i1 %cmp171.not384, label %if.end151.if.end186_crit_edge, label %if.end151.for.body175_crit_edge

if.end151.for.body175_crit_edge:                  ; preds = %if.end151
  br label %for.body175

if.end151.if.end186_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

for.body175:                                      ; preds = %list_del.exit373.for.body175_crit_edge, %if.end151.for.body175_crit_edge
  %flow.0385 = phi ptr [ %tmp_flow.0, %list_del.exit373.for.body175_crit_edge ], [ %117, %if.end151.for.body175_crit_edge ]
  %118 = ptrtoint ptr %flow.0385 to i32
  call void @__asan_load4_noabort(i32 %118)
  %tmp_flow.0 = load ptr, ptr %flow.0385, align 8
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  %id = getelementptr inbounds %struct.ethtool_flow_id, ptr %flow.0385, i32 0, i32 2
  %121 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %id, align 8
  %call177 = call i32 @mlx4_flow_detach(ptr noundef %120, i64 noundef %122) #12
  %call.i.i368 = call zeroext i1 @__list_del_entry_valid(ptr noundef %flow.0385) #12
  br i1 %call.i.i368, label %if.end.i.i371, label %for.body175.list_del.exit373_crit_edge

for.body175.list_del.exit373_crit_edge:           ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit373

if.end.i.i371:                                    ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i369 = getelementptr inbounds %struct.list_head, ptr %flow.0385, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i.i369 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %prev.i.i369, align 4
  %125 = ptrtoint ptr %flow.0385 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %flow.0385, align 4
  %prev1.i.i.i370 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %prev1.i.i.i370 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %124, ptr %prev1.i.i.i370, align 4
  %128 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %126, ptr %124, align 4
  br label %list_del.exit373

list_del.exit373:                                 ; preds = %if.end.i.i371, %for.body175.list_del.exit373_crit_edge
  %129 = ptrtoint ptr %flow.0385 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr inttoptr (i32 256 to ptr), ptr %flow.0385, align 4
  %prev.i372 = getelementptr inbounds %struct.list_head, ptr %flow.0385, i32 0, i32 1
  %130 = ptrtoint ptr %prev.i372 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i372, align 4
  %cmp171.not = icmp eq ptr %tmp_flow.0, %ethtool_list
  br i1 %cmp171.not, label %list_del.exit373.if.end186_crit_edge, label %list_del.exit373.for.body175_crit_edge

list_del.exit373.for.body175_crit_edge:           ; preds = %list_del.exit373
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body175

list_del.exit373.if.end186_crit_edge:             ; preds = %list_del.exit373
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end186

if.end186:                                        ; preds = %list_del.exit373.if.end186_crit_edge, %if.end151.if.end186_crit_edge, %for.end102.if.end186_crit_edge
  call void @mlx4_en_destroy_drop_qp(ptr noundef %add.ptr.i) #12
  %arrayidx192 = getelementptr i8, ptr %dev, i32 61452
  %131 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp193387.not = icmp eq i32 %132, 0
  br i1 %cmp193387.not, label %if.end186.for.inc202_crit_edge, label %for.body195.lr.ph

if.end186.for.inc202_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc202

for.body195.lr.ph:                                ; preds = %if.end186
  %arrayidx196 = getelementptr i8, ptr %dev, i32 61508
  %arrayidx198 = getelementptr i8, ptr %dev, i32 62028
  br label %for.body195

for.body195:                                      ; preds = %for.body195.for.body195_crit_edge, %for.body195.lr.ph
  %i.0388 = phi i32 [ 0, %for.body195.lr.ph ], [ %inc, %for.body195.for.body195_crit_edge ]
  %133 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx196, align 4
  %arrayidx197 = getelementptr ptr, ptr %134, i32 %i.0388
  %135 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx197, align 4
  call void @mlx4_en_deactivate_tx_ring(ptr noundef %add.ptr.i, ptr noundef %136) #12
  %137 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx198, align 4
  %arrayidx199 = getelementptr ptr, ptr %138, i32 %i.0388
  %139 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx199, align 4
  call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %140) #12
  %inc = add nuw i32 %i.0388, 1
  %141 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx192, align 4
  %cmp193 = icmp ult i32 %inc, %142
  br i1 %cmp193, label %for.body195.for.body195_crit_edge, label %for.body195.for.inc202_crit_edge

for.body195.for.inc202_crit_edge:                 ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc202

for.body195.for.body195_crit_edge:                ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body195

for.inc202:                                       ; preds = %for.body195.for.inc202_crit_edge, %if.end186.for.inc202_crit_edge
  %arrayidx192.1 = getelementptr i8, ptr %dev, i32 61456
  %143 = ptrtoint ptr %arrayidx192.1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx192.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp193387.not.1 = icmp eq i32 %144, 0
  br i1 %cmp193387.not.1, label %for.inc202.for.inc202.1_crit_edge, label %for.body195.lr.ph.1

for.inc202.for.inc202.1_crit_edge:                ; preds = %for.inc202
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc202.1

for.body195.lr.ph.1:                              ; preds = %for.inc202
  %arrayidx196.1 = getelementptr i8, ptr %dev, i32 61512
  %arrayidx198.1 = getelementptr i8, ptr %dev, i32 62032
  br label %for.body195.1

for.body195.1:                                    ; preds = %for.body195.1.for.body195.1_crit_edge, %for.body195.lr.ph.1
  %i.0388.1 = phi i32 [ 0, %for.body195.lr.ph.1 ], [ %inc.1, %for.body195.1.for.body195.1_crit_edge ]
  %145 = ptrtoint ptr %arrayidx196.1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx196.1, align 4
  %arrayidx197.1 = getelementptr ptr, ptr %146, i32 %i.0388.1
  %147 = ptrtoint ptr %arrayidx197.1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx197.1, align 4
  call void @mlx4_en_deactivate_tx_ring(ptr noundef %add.ptr.i, ptr noundef %148) #12
  %149 = ptrtoint ptr %arrayidx198.1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx198.1, align 4
  %arrayidx199.1 = getelementptr ptr, ptr %150, i32 %i.0388.1
  %151 = ptrtoint ptr %arrayidx199.1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx199.1, align 4
  call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %152) #12
  %inc.1 = add nuw i32 %i.0388.1, 1
  %153 = ptrtoint ptr %arrayidx192.1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx192.1, align 4
  %cmp193.1 = icmp ult i32 %inc.1, %154
  br i1 %cmp193.1, label %for.body195.1.for.body195.1_crit_edge, label %for.body195.1.for.inc202.1_crit_edge

for.body195.1.for.inc202.1_crit_edge:             ; preds = %for.body195.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc202.1

for.body195.1.for.body195.1_crit_edge:            ; preds = %for.body195.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body195.1

for.inc202.1:                                     ; preds = %for.body195.1.for.inc202.1_crit_edge, %for.inc202.for.inc202.1_crit_edge
  call void @msleep(i32 noundef 10) #12
  %155 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %cmp212391.not = icmp eq i32 %156, 0
  br i1 %cmp212391.not, label %for.inc202.1.for.inc222_crit_edge, label %for.body214.lr.ph

for.inc202.1.for.inc222_crit_edge:                ; preds = %for.inc202.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc222

for.body214.lr.ph:                                ; preds = %for.inc202.1
  %arrayidx216 = getelementptr i8, ptr %dev, i32 61508
  br label %for.body214

for.body214:                                      ; preds = %for.body214.for.body214_crit_edge, %for.body214.lr.ph
  %i.1392 = phi i32 [ 0, %for.body214.lr.ph ], [ %inc220, %for.body214.for.body214_crit_edge ]
  %157 = ptrtoint ptr %arrayidx216 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx216, align 4
  %arrayidx217 = getelementptr ptr, ptr %158, i32 %i.1392
  %159 = ptrtoint ptr %arrayidx217 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx217, align 4
  %call218 = call i32 @mlx4_en_free_tx_buf(ptr noundef %dev, ptr noundef %160) #12
  %inc220 = add nuw i32 %i.1392, 1
  %161 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx192, align 4
  %cmp212 = icmp ult i32 %inc220, %162
  br i1 %cmp212, label %for.body214.for.body214_crit_edge, label %for.body214.for.inc222_crit_edge

for.body214.for.inc222_crit_edge:                 ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc222

for.body214.for.body214_crit_edge:                ; preds = %for.body214
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body214

for.inc222:                                       ; preds = %for.body214.for.inc222_crit_edge, %for.inc202.1.for.inc222_crit_edge
  %163 = ptrtoint ptr %arrayidx192.1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx192.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %cmp212391.not.1 = icmp eq i32 %164, 0
  br i1 %cmp212391.not.1, label %for.inc222.for.inc222.1_crit_edge, label %for.body214.lr.ph.1

for.inc222.for.inc222.1_crit_edge:                ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc222.1

for.body214.lr.ph.1:                              ; preds = %for.inc222
  %arrayidx216.1 = getelementptr i8, ptr %dev, i32 61512
  br label %for.body214.1

for.body214.1:                                    ; preds = %for.body214.1.for.body214.1_crit_edge, %for.body214.lr.ph.1
  %i.1392.1 = phi i32 [ 0, %for.body214.lr.ph.1 ], [ %inc220.1, %for.body214.1.for.body214.1_crit_edge ]
  %165 = ptrtoint ptr %arrayidx216.1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx216.1, align 4
  %arrayidx217.1 = getelementptr ptr, ptr %166, i32 %i.1392.1
  %167 = ptrtoint ptr %arrayidx217.1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx217.1, align 4
  %call218.1 = call i32 @mlx4_en_free_tx_buf(ptr noundef %dev, ptr noundef %168) #12
  %inc220.1 = add nuw i32 %i.1392.1, 1
  %169 = ptrtoint ptr %arrayidx192.1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx192.1, align 4
  %cmp212.1 = icmp ult i32 %inc220.1, %170
  br i1 %cmp212.1, label %for.body214.1.for.body214.1_crit_edge, label %for.body214.1.for.inc222.1_crit_edge

for.body214.1.for.inc222.1_crit_edge:             ; preds = %for.body214.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc222.1

for.body214.1.for.body214.1_crit_edge:            ; preds = %for.body214.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body214.1

for.inc222.1:                                     ; preds = %for.body214.1.for.inc222.1_crit_edge, %for.inc222.for.inc222.1_crit_edge
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 8
  %steering_mode227 = getelementptr inbounds %struct.mlx4_dev, ptr %172, i32 0, i32 3, i32 50
  %173 = ptrtoint ptr %steering_mode227 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %steering_mode227, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %cmp228.not = icmp eq i32 %174, 0
  br i1 %cmp228.not, label %for.inc222.1.if.end231_crit_edge, label %if.then230

for.inc222.1.if.end231_crit_edge:                 ; preds = %for.inc222.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231

if.then230:                                       ; preds = %for.inc222.1
  %base_qpn.i = getelementptr i8, ptr %dev, i32 51684
  %175 = ptrtoint ptr %base_qpn.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %base_qpn.i, align 4
  %msg_enable.i = getelementptr i8, ptr %dev, i32 51576
  %qpn3.i.i = getelementptr inbounds %struct.mlx4_qp, ptr %qp.i.i, i32 0, i32 1
  %arrayidx.i.i = getelementptr inbounds [16 x i8], ptr %gid.i.i, i32 0, i32 10
  %arrayidx4.i.i = getelementptr inbounds [16 x i8], ptr %gid.i.i, i32 0, i32 5
  br label %for.body.i374

for.body.i374:                                    ; preds = %for.inc35.i.for.body.i374_crit_edge, %if.then230
  %i.072.i = phi i32 [ 0, %if.then230 ], [ %inc.i376, %for.inc35.i.for.body.i374_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 79, i32 %i.072.i
  %177 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not70.i = icmp eq ptr %178, null
  br i1 %tobool5.not70.i, label %for.body.i374.for.inc35.i_crit_edge, label %for.body.i374.land.rhs.i_crit_edge

for.body.i374.land.rhs.i_crit_edge:               ; preds = %for.body.i374
  br label %land.rhs.i

for.body.i374.for.inc35.i_crit_edge:              ; preds = %for.body.i374
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35.i

land.rhs.i:                                       ; preds = %hlist_del_rcu.exit.i.land.rhs.i_crit_edge, %for.body.i374.land.rhs.i_crit_edge
  %entry1.071.i = phi ptr [ %180, %hlist_del_rcu.exit.i.land.rhs.i_crit_edge ], [ %178, %for.body.i374.land.rhs.i_crit_edge ]
  %179 = ptrtoint ptr %entry1.071.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %entry1.071.i, align 8
  %mac9.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 1
  %181 = ptrtoint ptr %mac9.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %mac9.i, align 1
  %conv.i.i = zext i8 %182 to i64
  %arrayidx.1.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 1, i32 1
  %183 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %184 to i64
  %185 = shl nuw nsw i64 %conv.i.i, 16
  %186 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %186, %185
  %arrayidx.2.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 1, i32 2
  %187 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %188 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 1, i32 3
  %189 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %190 to i64
  %arrayidx.4.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 1, i32 4
  %191 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %192 to i64
  %193 = shl nuw nsw i64 %or.2.i.i, 24
  %194 = shl nuw nsw i64 %conv.3.i.i, 16
  %195 = shl nuw nsw i64 %conv.4.i.i, 8
  %196 = or i64 %195, %194
  %shl.5.i.i = or i64 %196, %193
  %arrayidx.5.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 1, i32 5
  %197 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %198 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  %199 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %land.rhs.i.do.end.i_crit_edge, label %if.then.i

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.79, ptr noundef %mac9.i) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.rhs.i.do.end.i_crit_edge
  %201 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %add.ptr.i, align 8
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 8
  %steering_mode.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %204, i32 0, i32 3, i32 50
  %205 = ptrtoint ptr %steering_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %steering_mode.i.i, align 8
  %207 = zext i32 %206 to i64
  call void @__sanitizer_cov_trace_switch(i64 %207, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %206, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp.i.i) #12
  %208 = call ptr @memset(ptr %qp.i.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid.i.i) #12
  %209 = call ptr @memset(ptr %gid.i.i, i32 0, i32 10)
  %210 = ptrtoint ptr %qpn3.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %176, ptr %qpn3.i.i, align 4
  %211 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %mac9.i, i32 6)
  %212 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %port, align 4
  %conv.i69.i = trunc i32 %213 to i8
  %214 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv.i69.i, ptr %arrayidx4.i.i, align 1
  %call.i.i375 = call i32 @mlx4_unicast_detach(ptr noundef %204, ptr noundef nonnull %qp.i.i, ptr noundef nonnull %gid.i.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid.i.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp.i.i) #12
  br label %mlx4_en_uc_steer_release.exit.i

sw.bb5.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %reg_id.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 2
  %215 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %reg_id.i, align 8
  %call6.i.i = call i32 @mlx4_flow_detach(ptr noundef %204, i64 noundef %216) #12
  br label %mlx4_en_uc_steer_release.exit.i

sw.default.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.76) #12
  br label %mlx4_en_uc_steer_release.exit.i

mlx4_en_uc_steer_release.exit.i:                  ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %217 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %add.ptr.i, align 8
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 8
  %221 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %port, align 4
  %conv.i = trunc i32 %222 to i8
  call void @mlx4_unregister_mac(ptr noundef %220, i8 noundef zeroext %conv.i, i64 noundef %or.5.i.i) #12
  %223 = ptrtoint ptr %entry1.071.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %entry1.071.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.071.i, i32 0, i32 1
  %225 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %pprev2.i.i.i, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_store4_noabort(i32 %227)
  store volatile ptr %224, ptr %226, align 4
  %tobool.not.i.i.i = icmp eq ptr %224, null
  br i1 %tobool.not.i.i.i, label %mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge: ; preds = %mlx4_en_uc_steer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %mlx4_en_uc_steer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %224, i32 0, i32 1
  %228 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store volatile ptr %226, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge
  %229 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry1.071.i, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #12
  %tobool5.not.i = icmp eq ptr %180, null
  br i1 %tobool5.not.i, label %hlist_del_rcu.exit.i.for.inc35.i_crit_edge, label %hlist_del_rcu.exit.i.land.rhs.i_crit_edge

hlist_del_rcu.exit.i.land.rhs.i_crit_edge:        ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

hlist_del_rcu.exit.i.for.inc35.i_crit_edge:       ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc35.i

for.inc35.i:                                      ; preds = %hlist_del_rcu.exit.i.for.inc35.i_crit_edge, %for.body.i374.for.inc35.i_crit_edge
  %inc.i376 = add nuw nsw i32 %i.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i376, 256
  br i1 %exitcond.not.i, label %for.end36.i, label %for.inc35.i.for.body.i374_crit_edge

for.inc35.i.for.body.i374_crit_edge:              ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i374

for.end36.i:                                      ; preds = %for.inc35.i
  %tunnel_reg_id.i = getelementptr i8, ptr %dev, i32 68616
  %230 = ptrtoint ptr %tunnel_reg_id.i to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %tunnel_reg_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %231)
  %tobool37.not.i = icmp eq i64 %231, 0
  br i1 %tobool37.not.i, label %for.end36.i.if.end231_crit_edge, label %if.then38.i

for.end36.i.if.end231_crit_edge:                  ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end231

if.then38.i:                                      ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  %232 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr.i, align 8
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 8
  %call42.i = call i32 @mlx4_flow_detach(ptr noundef %235, i64 noundef %231) #12
  %236 = ptrtoint ptr %tunnel_reg_id.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 0, ptr %tunnel_reg_id.i, align 8
  br label %if.end231

if.end231:                                        ; preds = %if.then38.i, %for.end36.i.if.end231_crit_edge, %for.inc222.1.if.end231_crit_edge
  call void @mlx4_en_release_rss_steer(ptr noundef %add.ptr.i) #12
  call fastcc void @mlx4_en_put_qp(ptr noundef %add.ptr.i)
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %238, i32 0, i32 3, i32 61
  %239 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %flags2, align 8
  %and234 = and i64 %240, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and234)
  %tobool235.not = icmp eq i64 %and234, 0
  br i1 %tobool235.not, label %if.then236, label %if.end231.if.end239_crit_edge

if.end231.if.end239_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end239

if.then236:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #14
  %241 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %port, align 4
  %arrayidx238 = getelementptr %struct.mlx4_en_dev, ptr %1, i32 0, i32 16, i32 %242
  %243 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 1, ptr %arrayidx238, align 1
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %if.end231.if.end239_crit_edge
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %244 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %cmp241395.not = icmp eq i32 %245, 0
  br i1 %cmp241395.not, label %if.end239.cleanup_crit_edge, label %if.end239.for.body243_crit_edge

if.end239.for.body243_crit_edge:                  ; preds = %if.end239
  br label %for.body243

if.end239.cleanup_crit_edge:                      ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body243:                                      ; preds = %napi_synchronize.exit.for.body243_crit_edge, %if.end239.for.body243_crit_edge
  %i.2396 = phi i32 [ %inc247, %napi_synchronize.exit.for.body243_crit_edge ], [ 0, %if.end239.for.body243_crit_edge ]
  %arrayidx244 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 55, i32 %i.2396
  %246 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx244, align 4
  %state.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %247, i32 0, i32 4, i32 0, i32 1
  %248 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load volatile i32, ptr %state.i, align 4
  %and1.i1.i = and i32 %249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i)
  %tobool.not2.i = icmp eq i32 %and1.i1.i, 0
  br i1 %tobool.not2.i, label %for.body243.napi_synchronize.exit_crit_edge, label %for.body243.while.body.i_crit_edge

for.body243.while.body.i_crit_edge:               ; preds = %for.body243
  br label %while.body.i

for.body243.napi_synchronize.exit_crit_edge:      ; preds = %for.body243
  call void @__sanitizer_cov_trace_pc() #14
  br label %napi_synchronize.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body243.while.body.i_crit_edge
  call void @msleep(i32 noundef 1) #12
  %250 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %251, 1
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %while.body.i.napi_synchronize.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.napi_synchronize.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %napi_synchronize.exit

napi_synchronize.exit:                            ; preds = %while.body.i.napi_synchronize.exit_crit_edge, %for.body243.napi_synchronize.exit_crit_edge
  %arrayidx245 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.2396
  %252 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx245, align 4
  call void @mlx4_en_deactivate_rx_ring(ptr noundef %add.ptr.i, ptr noundef %253) #12
  call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %247) #12
  %254 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx245, align 4
  %affinity_mask.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %255, i32 0, i32 28
  %256 = ptrtoint ptr %affinity_mask.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %affinity_mask.i, align 32
  call void @free_cpumask_var(ptr noundef %257) #12
  %inc247 = add nuw i32 %i.2396, 1
  %258 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %rx_ring_num, align 4
  %cmp241 = icmp ult i32 %inc247, %259
  br i1 %cmp241, label %napi_synchronize.exit.for.body243_crit_edge, label %napi_synchronize.exit.cleanup_crit_edge

napi_synchronize.exit.cleanup_crit_edge:          ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

napi_synchronize.exit.for.body243_crit_edge:      ; preds = %napi_synchronize.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body243

cleanup:                                          ; preds = %napi_synchronize.exit.cleanup_crit_edge, %if.end239.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mc_list) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_safe_replace_resources(ptr noundef %priv, ptr nocapture noundef readonly %tmp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlx4_en_free_resources(ptr noundef %priv)
  %rx_ring.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53
  %rx_ring1.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 53
  %rx_ring_num.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 45
  %0 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_ring_num.i, align 4
  %mul.i = shl i32 %1, 2
  %2 = call ptr @memcpy(ptr %rx_ring.i, ptr %rx_ring1.i, i32 %mul.i)
  %rx_cq.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55
  %rx_cq4.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 55
  %3 = load i32, ptr %rx_ring_num.i, align 4
  %mul7.i = shl i32 %3, 2
  %4 = call ptr @memcpy(ptr %rx_cq.i, ptr %rx_cq4.i, i32 %mul7.i)
  %hwtstamp_config.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 80
  %hwtstamp_config8.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 80
  %5 = call ptr @memcpy(ptr %hwtstamp_config.i, ptr %hwtstamp_config8.i, i32 12)
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 44, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx10.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 0
  %8 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 52, i32 0
  %9 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx11.i, align 4
  %arrayidx13.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 0
  %11 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 54, i32 0
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 0
  %14 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx16.i, align 4
  %arrayidx.1.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 44, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx10.1.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 1
  %17 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx10.1.i, align 4
  %arrayidx11.1.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 52, i32 1
  %18 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11.1.i, align 4
  %arrayidx13.1.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 1
  %20 = ptrtoint ptr %arrayidx13.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %arrayidx13.1.i, align 4
  %arrayidx14.1.i = getelementptr %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 54, i32 1
  %21 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14.1.i, align 4
  %arrayidx16.1.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 1
  %23 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx16.1.i, align 4
  %num_tx_rings_p_up.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 42
  %24 = ptrtoint ptr %num_tx_rings_p_up.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_tx_rings_p_up.i, align 4
  %num_tx_rings_p_up17.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 42
  %26 = ptrtoint ptr %num_tx_rings_p_up17.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %num_tx_rings_p_up17.i, align 4
  %27 = load i32, ptr %rx_ring_num.i, align 4
  %rx_ring_num19.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %28 = ptrtoint ptr %rx_ring_num19.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %rx_ring_num19.i, align 4
  %prof.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 1
  %29 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prof.i, align 4
  %prof20.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %tmp, i32 0, i32 1
  %31 = ptrtoint ptr %prof20.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prof20.i, align 4
  %33 = call ptr @memcpy(ptr %30, ptr %32, i32 52)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_start_port(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %mc_list = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mc_list) #12
  %2 = call ptr @memset(ptr %mc_list, i32 0, i32 16)
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %3 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end4, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.body.cleanup291_crit_edge, label %if.then3

do.body.cleanup291_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup291

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.4) #12
  br label %cleanup291

if.end4:                                          ; preds = %entry
  %mc_list5 = getelementptr i8, ptr %dev, i32 63764
  %7 = ptrtoint ptr %mc_list5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %mc_list5, ptr %mc_list5, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 63768
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %mc_list5, ptr %prev.i, align 4
  %curr_list = getelementptr i8, ptr %dev, i32 63772
  %9 = ptrtoint ptr %curr_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %curr_list, ptr %curr_list, align 4
  %prev.i515 = getelementptr i8, ptr %dev, i32 63776
  %10 = ptrtoint ptr %prev.i515 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %curr_list, ptr %prev.i515, align 4
  %ethtool_list = getelementptr i8, ptr %dev, i32 49992
  %11 = ptrtoint ptr %ethtool_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ethtool_list, ptr %ethtool_list, align 4
  %prev.i516 = getelementptr i8, ptr %dev, i32 49996
  %12 = ptrtoint ptr %prev.i516 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ethtool_list, ptr %prev.i516, align 4
  %ethtool_rules = getelementptr i8, ptr %dev, i32 2888
  %13 = call ptr @memset(ptr %ethtool_rules, i32 0, i32 47104)
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu, align 4
  %max_mtu = getelementptr i8, ptr %dev, i32 51680
  %16 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_mtu, align 8
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17)
  %19 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mtu, align 4
  tail call void @mlx4_en_calc_rx_buf(ptr noundef %dev) #12
  %msg_enable8 = getelementptr i8, ptr %dev, i32 51576
  %20 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable8, align 8
  %and9 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end4.do.end14_crit_edge, label %if.then11

if.end4.do.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %rx_skb_size = getelementptr i8, ptr %dev, i32 61464
  %22 = ptrtoint ptr %rx_skb_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_skb_size, align 8
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.5, i32 noundef %23) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %if.end4.do.end14_crit_edge
  %call15 = tail call i32 @mlx4_en_activate_rx_rings(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.cond.preheader, label %if.then17

for.cond.preheader:                               ; preds = %do.end14
  %rx_ring_num = getelementptr i8, ptr %dev, i32 61460
  %24 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp19586.not = icmp eq i32 %25, 0
  br i1 %cmp19586.not, label %for.cond.preheader.do.body43_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body43_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cqe_size = getelementptr i8, ptr %dev, i32 51692
  %cqe_factor = getelementptr i8, ptr %dev, i32 51688
  br label %for.body

if.then17:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6) #12
  br label %cleanup291

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.body.lr.ph
  %i.0588 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %if.end36.for.body_crit_edge ]
  %arrayidx20 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 55, i32 %i.0588
  %26 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx20, align 4
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.0588
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 8
  %numa_node1.i = getelementptr inbounds %struct.mlx4_dev, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %numa_node1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %numa_node1.i, align 4
  %affinity_mask.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %29, i32 0, i32 28
  %call.i = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %affinity_mask.i, i32 noundef 3264) #12
  br i1 %call.i, label %if.end.i, label %if.then23

if.end.i:                                         ; preds = %for.body
  %call2.i = tail call i32 @cpumask_local_spread(i32 noundef %i.0588, i32 noundef %35) #12
  %36 = ptrtoint ptr %affinity_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %affinity_mask.i, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %call2.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %38, %call2.i
  br i1 %cmp.not.i.i.i.i, label %if.end.i.if.end24_crit_edge, label %land.rhs.i.i.i.i

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.rhs.i.i.i.i:                                 ; preds = %if.end.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.if.end24_crit_edge, label %if.then.i.i.i.i, !prof !315

land.rhs.i.i.i.i.if.end24_crit_edge:              ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.66, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %if.end24

if.then23:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.7) #12
  br label %cq_err

if.end24:                                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.if.end24_crit_edge, %if.end.i.if.end24_crit_edge
  tail call void @_set_bit(i32 noundef %call2.i, ptr noundef %37) #12
  %call25 = tail call i32 @mlx4_en_activate_cq(ptr noundef %add.ptr.i, ptr noundef %27, i32 noundef %i.0588) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond29.preheader, label %if.then27

for.cond29.preheader:                             ; preds = %if.end24
  %size = getelementptr inbounds %struct.mlx4_en_cq, ptr %27, i32 0, i32 5
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp30584 = icmp sgt i32 %40, 0
  br i1 %cmp30584, label %for.body31.lr.ph, label %for.cond29.preheader.for.end_crit_edge

for.cond29.preheader.for.end_crit_edge:           ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %buf = getelementptr inbounds %struct.mlx4_en_cq, ptr %27, i32 0, i32 11
  br label %for.body31

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.8) #12
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %affinity_mask.i518 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %42, i32 0, i32 28
  %43 = ptrtoint ptr %affinity_mask.i518 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %affinity_mask.i518, align 32
  tail call void @free_cpumask_var(ptr noundef %44) #12
  br label %cq_err

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %j.0585 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc, %for.body31.for.body31_crit_edge ]
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buf, align 4
  %47 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cqe_size, align 4
  %mul.i = mul i32 %48, %j.0585
  %add.ptr.i519 = getelementptr i8, ptr %46, i32 %mul.i
  %49 = ptrtoint ptr %cqe_factor to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cqe_factor, align 8
  %owner_sr_opcode = getelementptr %struct.mlx4_cqe, ptr %add.ptr.i519, i32 %50, i32 9
  %51 = ptrtoint ptr %owner_sr_opcode to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -128, ptr %owner_sr_opcode, align 1
  %inc = add nuw nsw i32 %j.0585, 1
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 8
  %cmp30 = icmp slt i32 %inc, %53
  br i1 %cmp30, label %for.body31.for.body31_crit_edge, label %for.body31.for.end_crit_edge

for.body31.for.end_crit_edge:                     ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body31

for.end:                                          ; preds = %for.body31.for.end_crit_edge, %for.cond29.preheader.for.end_crit_edge
  %call33 = tail call i32 @mlx4_en_set_cq_moder(ptr noundef %add.ptr.i, ptr noundef %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.9) #12
  tail call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %27) #12
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %affinity_mask.i521 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %55, i32 0, i32 28
  %56 = ptrtoint ptr %affinity_mask.i521 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %affinity_mask.i521, align 32
  tail call void @free_cpumask_var(ptr noundef %57) #12
  br label %cq_err

if.end36:                                         ; preds = %for.end
  tail call void @mlx4_en_arm_cq(ptr noundef %add.ptr.i, ptr noundef %27) #12
  %cqn = getelementptr inbounds %struct.mlx4_cq, ptr %27, i32 0, i32 8
  %58 = ptrtoint ptr %cqn to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cqn, align 8
  %conv = trunc i32 %59 to i16
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %cqn38 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %cqn38 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv, ptr %cqn38, align 8
  %inc41 = add nuw i32 %i.0588, 1
  %63 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rx_ring_num, align 4
  %cmp19 = icmp ult i32 %inc41, %64
  br i1 %cmp19, label %if.end36.for.body_crit_edge, label %if.end36.do.body43_crit_edge

if.end36.do.body43_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body43

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body43:                                        ; preds = %if.end36.do.body43_crit_edge, %for.cond.preheader.do.body43_crit_edge
  %rx_index.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body43_crit_edge ], [ %inc41, %if.end36.do.body43_crit_edge ]
  %65 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable8, align 8
  %and45 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body43.do.end50_crit_edge, label %if.then47

do.body43.do.end50_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end50

if.then47:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr i8, ptr %dev, i32 51652
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.10, i32 noundef %68) #12
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %do.body43.do.end50_crit_edge
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %base_qpn.i = getelementptr i8, ptr %dev, i32 51684
  %dev3.i = getelementptr i8, ptr %dev, i32 2312
  %73 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev3.i, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %74, i32 0, i32 86
  %75 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr.i, align 64
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %conv.i.i = zext i8 %78 to i64
  %arrayidx.1.i.i = getelementptr i8, ptr %76, i32 1
  %79 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %80 to i64
  %81 = shl nuw nsw i64 %conv.i.i, 16
  %82 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %82, %81
  %arrayidx.2.i.i = getelementptr i8, ptr %76, i32 2
  %83 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %84 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %76, i32 3
  %85 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %86 to i64
  %arrayidx.4.i.i = getelementptr i8, ptr %76, i32 4
  %87 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %88 to i64
  %89 = shl nuw nsw i64 %or.2.i.i, 24
  %90 = shl nuw nsw i64 %conv.3.i.i, 16
  %91 = shl nuw nsw i64 %conv.4.i.i, 8
  %92 = or i64 %91, %90
  %shl.5.i.i = or i64 %92, %89
  %arrayidx.5.i.i = getelementptr i8, ptr %76, i32 5
  %93 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %94 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  %95 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_enable8, align 8
  %and.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end50.do.end.i_crit_edge, label %if.then.i

do.end50.do.end.i_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.67, ptr noundef %76) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end50.do.end.i_crit_edge
  %port.i = getelementptr i8, ptr %dev, i32 51652
  %97 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port.i, align 4
  %conv.i = trunc i32 %98 to i8
  %call6.i = tail call i32 @mlx4_register_mac(ptr noundef %72, i8 noundef zeroext %conv.i, i64 noundef %or.5.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %99 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev3.i, align 8
  %dev_addr10.i = getelementptr inbounds %struct.net_device, ptr %100, i32 0, i32 86
  %101 = ptrtoint ptr %dev_addr10.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_addr10.i, align 64
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.68, ptr noundef %102) #12
  br label %if.then53

if.end11.i:                                       ; preds = %do.end.i
  %steering_mode.i = getelementptr inbounds %struct.mlx4_dev, ptr %72, i32 0, i32 3, i32 50
  %103 = ptrtoint ptr %steering_mode.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %steering_mode.i, align 8
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.69, i32 noundef %104) #12
  %105 = ptrtoint ptr %steering_mode.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %steering_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp14.i = icmp eq i32 %106, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.end21.i

if.then16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %port.i, align 4
  %conv19.i = trunc i32 %108 to i8
  %call20.i = tail call i32 @mlx4_get_base_qpn(ptr noundef %72, i8 noundef zeroext %conv19.i) #12
  %add.i = add i32 %call20.i, %call6.i
  %109 = ptrtoint ptr %base_qpn.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add.i, ptr %base_qpn.i, align 4
  br label %if.end54

if.end21.i:                                       ; preds = %if.end11.i
  %call22.i = tail call i32 @mlx4_qp_reserve_range(ptr noundef %72, i32 noundef 1, i32 noundef 1, ptr noundef %base_qpn.i, i8 noundef zeroext 64, i8 noundef zeroext 1) #12
  %110 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %msg_enable8, align 8
  %and25.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end21.i.do.end30.i_crit_edge, label %if.then27.i

if.end21.i.do.end30.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then27.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %base_qpn.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base_qpn.i, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.70, i32 noundef %113) #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then27.i, %if.end21.i.do.end30.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool31.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool31.not.i, label %do.end30.i.if.end54_crit_edge, label %if.then32.i

do.end30.i.if.end54_crit_edge:                    ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then32.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.71) #12
  %114 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port.i, align 4
  %conv34.i = trunc i32 %115 to i8
  tail call void @mlx4_unregister_mac(ptr noundef %72, i8 noundef zeroext %conv34.i, i64 noundef %or.5.i.i) #12
  br label %if.then53

if.then53:                                        ; preds = %if.then32.i, %if.then8.i
  %retval.0.i522 = phi i32 [ %call6.i, %if.then8.i ], [ %call22.i, %if.then32.i ]
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.11) #12
  br label %cq_err

if.end54:                                         ; preds = %do.end30.i.if.end54_crit_edge, %if.then16.i
  %116 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port.i, align 4
  %arrayidx56 = getelementptr %struct.mlx4_en_dev, ptr %1, i32 0, i32 16, i32 %117
  %118 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %arrayidx56, align 1
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  %121 = load i32, ptr %port.i, align 4
  %call59 = tail call i32 @mlx4_get_default_counter_index(ptr noundef %120, i32 noundef %121) #12
  %counter_index = getelementptr i8, ptr %dev, i32 68340
  %122 = ptrtoint ptr %counter_index to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call59, ptr %counter_index, align 4
  %call60 = tail call i32 @mlx4_en_config_rss_steer(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.12) #12
  br label %mac_err

if.end63:                                         ; preds = %if.end54
  %call64 = tail call i32 @mlx4_en_create_drop_qp(ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %for.cond68.preheader, label %if.end63.rss_err_crit_edge

if.end63.rss_err_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %rss_err

for.cond68.preheader:                             ; preds = %if.end63
  %arrayidx78 = getelementptr i8, ptr %dev, i32 61456
  %num_tx_rings_p_up75 = getelementptr i8, ptr %dev, i32 61444
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %arrayidx.i524 = getelementptr i8, ptr %dev, i32 61512
  br label %for.body71

for.body71:                                       ; preds = %for.inc133.for.body71_crit_edge, %for.cond68.preheader
  %t.0597 = phi i32 [ 0, %for.cond68.preheader ], [ %inc134, %for.inc133.for.body71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0597)
  %cmp72 = icmp eq i32 %t.0597, 0
  br i1 %cmp72, label %cond.true74, label %cond.false77

cond.true74:                                      ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %num_tx_rings_p_up75 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %num_tx_rings_p_up75, align 4
  %conv76 = zext i8 %124 to i32
  br label %cond.end79

cond.false77:                                     ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx78, align 4
  br label %cond.end79

cond.end79:                                       ; preds = %cond.false77, %cond.true74
  %cond80 = phi i32 [ %conv76, %cond.true74 ], [ %126, %cond.false77 ]
  %arrayidx84 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 44, i32 %t.0597
  %127 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cmp85593.not = icmp eq i32 %128, 0
  br i1 %cmp85593.not, label %cond.end79.for.inc133_crit_edge, label %for.body87.lr.ph

cond.end79.for.inc133_crit_edge:                  ; preds = %cond.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133

for.body87.lr.ph:                                 ; preds = %cond.end79
  %arrayidx88 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 54, i32 %t.0597
  %arrayidx108 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 52, i32 %t.0597
  %conv112 = and i32 %cond80, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t.0597)
  %cmp117.not = icmp eq i32 %t.0597, 1
  br label %for.body87

for.body87:                                       ; preds = %for.inc130.for.body87_crit_edge, %for.body87.lr.ph
  %i.2594 = phi i32 [ 0, %for.body87.lr.ph ], [ %inc131, %for.inc130.for.body87_crit_edge ]
  %129 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx88, align 4
  %arrayidx89 = getelementptr ptr, ptr %130, i32 %i.2594
  %131 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx89, align 4
  %call90 = tail call i32 @mlx4_en_activate_cq(ptr noundef %add.ptr.i, ptr noundef %132, i32 noundef %i.2594) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.then92

if.then92:                                        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.13) #12
  br label %tx_err

if.end93:                                         ; preds = %for.body87
  %call94 = tail call i32 @mlx4_en_set_cq_moder(ptr noundef %add.ptr.i, ptr noundef %132) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.body98, label %if.then96

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.9) #12
  tail call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %132) #12
  br label %tx_err

do.body98:                                        ; preds = %if.end93
  %133 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %msg_enable8, align 8
  %and100 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body98.do.end105_crit_edge, label %if.then102

do.body98.do.end105_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end105

if.then102:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.14, i32 noundef %i.2594) #12
  br label %do.end105

do.end105:                                        ; preds = %if.then102, %do.body98.do.end105_crit_edge
  %buf106 = getelementptr inbounds %struct.mlx4_en_cq, ptr %132, i32 0, i32 11
  %135 = ptrtoint ptr %buf106 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %buf106, align 4
  %wqe_index = getelementptr inbounds %struct.mlx4_cqe, ptr %136, i32 0, i32 6
  %137 = ptrtoint ptr %wqe_index to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %wqe_index, align 4
  %138 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %arrayidx108, align 4
  %arrayidx109 = getelementptr ptr, ptr %139, i32 %i.2594
  %140 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx109, align 4
  %cqn111 = getelementptr inbounds %struct.mlx4_cq, ptr %132, i32 0, i32 8
  %142 = ptrtoint ptr %cqn111 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cqn111, align 8
  %div = sdiv i32 %i.2594, %conv112
  %call113 = tail call i32 @mlx4_en_activate_tx_ring(ptr noundef %add.ptr.i, ptr noundef %141, i32 noundef %143, i32 noundef %div) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.then115

if.then115:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.15) #12
  tail call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %132) #12
  br label %tx_err

if.end116:                                        ; preds = %do.end105
  %state = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %141, i32 0, i32 31
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #12
  br i1 %cmp117.not, label %if.else, label %if.then119

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #14
  %144 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i523 = getelementptr %struct.netdev_queue, ptr %145, i32 %i.2594
  %tx_queue = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %141, i32 0, i32 3
  %146 = ptrtoint ptr %tx_queue to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %arrayidx.i523, ptr %tx_queue, align 4
  %recycle_ring = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %141, i32 0, i32 5
  %147 = ptrtoint ptr %recycle_ring to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %recycle_ring, align 4
  tail call void @mlx4_en_arm_cq(ptr noundef %add.ptr.i, ptr noundef %132) #12
  br label %if.end121

if.else:                                          ; preds = %if.end116
  tail call void @mlx4_en_init_tx_xdp_ring_descs(ptr noundef %add.ptr.i, ptr noundef %141) #12
  %148 = ptrtoint ptr %arrayidx.i524 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i524, align 4
  %arrayidx2.i = getelementptr ptr, ptr %149, i32 %i.2594
  %150 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx2.i, align 4
  %free_tx_desc.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %151, i32 0, i32 4
  %152 = ptrtoint ptr %free_tx_desc.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @mlx4_en_recycle_tx_desc, ptr %free_tx_desc.i, align 16
  %arrayidx3.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.2594
  %153 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx3.i, align 4
  %recycle_ring.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %151, i32 0, i32 5
  %155 = ptrtoint ptr %recycle_ring.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %154, ptr %recycle_ring.i, align 4
  %156 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %msg_enable8, align 8
  %and.i526 = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i526)
  %tobool.not.i527 = icmp eq i32 %and.i526, 0
  br i1 %tobool.not.i527, label %if.else.if.end121_crit_edge, label %if.then.i528

if.else.if.end121_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then.i528:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.72, i32 noundef 1, i32 noundef %i.2594, i32 noundef %i.2594) #12
  br label %if.end121

if.end121:                                        ; preds = %if.then.i528, %if.else.if.end121_crit_edge, %if.then119
  %buf_size = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %141, i32 0, i32 21
  %158 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %buf_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %cmp123591.not = icmp eq i32 %159, 0
  br i1 %cmp123591.not, label %if.end121.for.inc130_crit_edge, label %for.body125.lr.ph

if.end121.for.inc130_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130

for.body125.lr.ph:                                ; preds = %if.end121
  %buf126 = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %141, i32 0, i32 22
  br label %for.body125

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %for.body125.lr.ph
  %j.1592 = phi i32 [ 0, %for.body125.lr.ph ], [ %add, %for.body125.for.body125_crit_edge ]
  %160 = ptrtoint ptr %buf126 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %buf126, align 8
  %add.ptr127 = getelementptr i8, ptr %161, i32 %j.1592
  %162 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %add.ptr127, align 4
  %add = add i32 %j.1592, 64
  %163 = ptrtoint ptr %buf_size to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %buf_size, align 4
  %cmp123 = icmp ult i32 %add, %164
  br i1 %cmp123, label %for.body125.for.body125_crit_edge, label %for.body125.for.inc130_crit_edge

for.body125.for.inc130_crit_edge:                 ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc130

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body125

for.inc130:                                       ; preds = %for.body125.for.inc130_crit_edge, %if.end121.for.inc130_crit_edge
  %inc131 = add nuw i32 %i.2594, 1
  %165 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx84, align 4
  %cmp85 = icmp ult i32 %inc131, %166
  br i1 %cmp85, label %for.inc130.for.body87_crit_edge, label %for.inc130.for.inc133_crit_edge

for.inc130.for.inc133_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc133

for.inc130.for.body87_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body87

for.inc133:                                       ; preds = %for.inc130.for.inc133_crit_edge, %cond.end79.for.inc133_crit_edge
  %inc134 = add nuw nsw i32 %t.0597, 1
  %exitcond.not = icmp eq i32 %inc134, 2
  br i1 %exitcond.not, label %for.end135, label %for.inc133.for.body71_crit_edge

for.inc133.for.body71_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

for.end135:                                       ; preds = %for.inc133
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 8
  %169 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %port.i, align 4
  %conv138 = trunc i32 %170 to i8
  %rx_skb_size139 = getelementptr i8, ptr %dev, i32 61464
  %171 = ptrtoint ptr %rx_skb_size139 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %rx_skb_size139, align 8
  %add140 = add i32 %172, 4
  %prof = getelementptr i8, ptr %dev, i32 2308
  %173 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %prof, align 4
  %tx_pause = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %174, i32 0, i32 8
  %175 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %tx_pause, align 1
  %tx_ppp = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %174, i32 0, i32 9
  %177 = ptrtoint ptr %tx_ppp to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %tx_ppp, align 4
  %rx_pause = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %174, i32 0, i32 6
  %179 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %rx_pause, align 1
  %rx_ppp = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %174, i32 0, i32 7
  %181 = ptrtoint ptr %rx_ppp to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %rx_ppp, align 2
  %call144 = tail call i32 @mlx4_SET_PORT_general(ptr noundef %168, i8 noundef zeroext %conv138, i32 noundef %add140, i8 noundef zeroext %176, i8 noundef zeroext %178, i8 noundef zeroext %180, i8 noundef zeroext %182) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end148, label %if.then146

if.then146:                                       ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #14
  %183 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %port.i, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.16, i32 noundef %184, i32 noundef %call144) #12
  br label %if.end254.thread

if.end148:                                        ; preds = %for.end135
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 8
  %187 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %port.i, align 4
  %conv151 = trunc i32 %188 to i8
  %189 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mtu, align 4
  %conv153 = trunc i32 %190 to i16
  %call154 = tail call i32 @mlx4_SET_PORT_user_mtu(ptr noundef %186, i8 noundef zeroext %conv151, i16 noundef zeroext %conv153) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end159, label %if.then156

if.then156:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #14
  %191 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mtu, align 4
  %193 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %port.i, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.17, i32 noundef %192, i32 noundef %194, i32 noundef %call154) #12
  br label %if.end254.thread

if.end159:                                        ; preds = %if.end148
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 8
  %197 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %port.i, align 4
  %conv162 = trunc i32 %198 to i8
  %199 = ptrtoint ptr %base_qpn.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %base_qpn.i, align 4
  %call163 = tail call i32 @mlx4_SET_PORT_qpn_calc(ptr noundef %196, i8 noundef zeroext %conv162, i32 noundef %200, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end166, label %if.then165

if.then165:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.18) #12
  br label %if.end254.thread

if.end166:                                        ; preds = %if.end159
  %201 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %1, align 8
  %tunnel_offload_mode = getelementptr inbounds %struct.mlx4_dev, ptr %202, i32 0, i32 3, i32 89
  %203 = ptrtoint ptr %tunnel_offload_mode to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %tunnel_offload_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %204)
  %cmp168 = icmp eq i32 %204, 1
  br i1 %cmp168, label %if.then170, label %if.end166.do.body179_crit_edge

if.end166.do.body179_crit_edge:                   ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body179

if.then170:                                       ; preds = %if.end166
  %205 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %port.i, align 4
  %conv173 = trunc i32 %206 to i8
  %call174 = tail call i32 @mlx4_SET_PORT_VXLAN(ptr noundef %202, i8 noundef zeroext %conv173, i8 noundef zeroext 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %if.then170.do.body179_crit_edge, label %if.then176

if.then170.do.body179_crit_edge:                  ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body179

if.then176:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.19, i32 noundef %call174) #12
  br label %if.end254.thread

do.body179:                                       ; preds = %if.then170.do.body179_crit_edge, %if.end166.do.body179_crit_edge
  %207 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %msg_enable8, align 8
  %and181 = and i32 %208, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %do.body179.do.end186_crit_edge, label %if.then183

do.body179.do.end186_crit_edge:                   ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end186

if.then183:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.20) #12
  br label %do.end186

do.end186:                                        ; preds = %if.then183, %do.body179.do.end186_crit_edge
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 8
  %211 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %port.i, align 4
  %call189 = tail call i32 @mlx4_INIT_PORT(ptr noundef %210, i32 noundef %212) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end192, label %if.then191

if.then191:                                       ; preds = %do.end186
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.21) #12
  br label %if.end254.thread

if.end192:                                        ; preds = %do.end186
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 8
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %214, i32 0, i32 3, i32 50
  %215 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp195.not = icmp eq i32 %216, 0
  br i1 %cmp195.not, label %if.end192.if.end207_crit_edge, label %land.lhs.true

if.end192.if.end207_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

land.lhs.true:                                    ; preds = %if.end192
  %call197 = tail call fastcc i32 @mlx4_en_set_rss_steer_rules(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call197)
  %tobool198.not = icmp eq i32 %call197, 0
  br i1 %tobool198.not, label %land.lhs.true.if.end207_crit_edge, label %do.end202

land.lhs.true.if.end207_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

do.end202:                                        ; preds = %land.lhs.true
  %pdev = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 1
  %217 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pdev, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44, i32 3
  %219 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i530 = icmp eq ptr %220, null
  br i1 %tobool.not.i530, label %if.end.i531, label %do.end202.dev_name.exit_crit_edge

do.end202.dev_name.exit_crit_edge:                ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i531:                                      ; preds = %do.end202
  call void @__sanitizer_cov_trace_pc() #14
  %dev204 = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44
  %221 = ptrtoint ptr %dev204 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev204, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i531, %do.end202.dev_name.exit_crit_edge
  %retval.0.i532 = phi ptr [ %222, %if.end.i531 ], [ %220, %do.end202.dev_name.exit_crit_edge ]
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i532) #17
  br label %if.end207

if.end207:                                        ; preds = %dev_name.exit, %land.lhs.true.if.end207_crit_edge, %if.end192.if.end207_crit_edge
  %arrayidx208 = getelementptr inbounds [16 x i8], ptr %mc_list, i32 0, i32 10
  %223 = call ptr @memset(ptr %arrayidx208, i32 255, i32 6)
  %224 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %port.i, align 4
  %conv210 = trunc i32 %225 to i8
  %arrayidx211 = getelementptr inbounds [16 x i8], ptr %mc_list, i32 0, i32 5
  %226 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %conv210, ptr %arrayidx211, align 1
  %227 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %1, align 8
  %indir_qp = getelementptr i8, ptr %dev, i32 61428
  %229 = ptrtoint ptr %indir_qp to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %indir_qp, align 4
  %broadcast_id = getelementptr i8, ptr %dev, i32 63784
  %call215 = call i32 @mlx4_multicast_attach(ptr noundef %228, ptr noundef %230, ptr noundef nonnull %mc_list, i8 noundef zeroext %conv210, i32 noundef 0, i32 noundef 1, ptr noundef %broadcast_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %if.end207.if.end226_crit_edge, label %do.end220

if.end207.if.end226_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end226

do.end220:                                        ; preds = %if.end207
  %pdev222 = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 1
  %231 = ptrtoint ptr %pdev222 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %pdev222, align 4
  %init_name.i533 = getelementptr inbounds %struct.pci_dev, ptr %232, i32 0, i32 44, i32 3
  %233 = ptrtoint ptr %init_name.i533 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %init_name.i533, align 8
  %tobool.not.i534 = icmp eq ptr %234, null
  br i1 %tobool.not.i534, label %if.end.i535, label %do.end220.dev_name.exit537_crit_edge

do.end220.dev_name.exit537_crit_edge:             ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit537

if.end.i535:                                      ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #14
  %dev223 = getelementptr inbounds %struct.pci_dev, ptr %232, i32 0, i32 44
  %235 = ptrtoint ptr %dev223 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev223, align 4
  br label %dev_name.exit537

dev_name.exit537:                                 ; preds = %if.end.i535, %do.end220.dev_name.exit537_crit_edge
  %retval.0.i536 = phi ptr [ %236, %if.end.i535 ], [ %234, %do.end220.dev_name.exit537_crit_edge ]
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %retval.0.i536) #17
  br label %if.end226

if.end226:                                        ; preds = %dev_name.exit537, %if.end207.if.end226_crit_edge
  %flags = getelementptr i8, ptr %dev, i32 61440
  %237 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %flags, align 8
  %and227 = and i32 %238, -4
  store i32 %and227, ptr %flags, align 8
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 9
  %239 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %workqueue, align 8
  %rx_mode_task = getelementptr i8, ptr %dev, i32 62620
  %call.i538 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %240, ptr noundef %rx_mode_task) #12
  %241 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %add.ptr.i, align 8
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %242, align 8
  %tunnel_offload_mode232 = getelementptr inbounds %struct.mlx4_dev, ptr %244, i32 0, i32 3, i32 89
  %245 = ptrtoint ptr %tunnel_offload_mode232 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %tunnel_offload_mode232, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %246)
  %cmp233 = icmp eq i32 %246, 1
  br i1 %cmp233, label %if.then235, label %if.end226.if.end236_crit_edge

if.end226.if.end236_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

if.then235:                                       ; preds = %if.end226
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %247 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i539 = icmp eq ptr %247, null
  br i1 %tobool.not.i539, label %if.then235.if.end236_crit_edge, label %if.then.i540

if.then235.if.end236_crit_edge:                   ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end236

if.then.i540:                                     ; preds = %if.then235
  call void @__sanitizer_cov_trace_pc() #14
  %reset_ntf.i = getelementptr inbounds %struct.udp_tunnel_nic_ops, ptr %247, i32 0, i32 4
  %248 = ptrtoint ptr %reset_ntf.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %reset_ntf.i, align 4
  call void %249(ptr noundef %dev) #12
  br label %if.end236

if.end236:                                        ; preds = %if.then.i540, %if.then235.if.end236_crit_edge, %if.end226.if.end236_crit_edge
  %250 = ptrtoint ptr %port_up to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %port_up, align 8
  %251 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %cmp240599.not = icmp eq i32 %252, 0
  br i1 %cmp240599.not, label %if.end236.for.end247_crit_edge, label %if.end236.for.body242_crit_edge

if.end236.for.body242_crit_edge:                  ; preds = %if.end236
  br label %for.body242

if.end236.for.end247_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end247

for.body242:                                      ; preds = %napi_schedule.exit.for.body242_crit_edge, %if.end236.for.body242_crit_edge
  %i.3600 = phi i32 [ %inc246, %napi_schedule.exit.for.body242_crit_edge ], [ 0, %if.end236.for.body242_crit_edge ]
  call fastcc void @local_bh_disable()
  %arrayidx244 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 55, i32 %i.3600
  %253 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %arrayidx244, align 4
  %255 = getelementptr inbounds %struct.mlx4_en_cq, ptr %254, i32 0, i32 4
  %call.i542 = call zeroext i1 @napi_schedule_prep(ptr noundef %255) #12
  br i1 %call.i542, label %if.then.i543, label %for.body242.napi_schedule.exit_crit_edge

for.body242.napi_schedule.exit_crit_edge:         ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #14
  br label %napi_schedule.exit

if.then.i543:                                     ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #14
  call void @__napi_schedule(ptr noundef %255) #12
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i543, %for.body242.napi_schedule.exit_crit_edge
  call fastcc void @local_bh_enable()
  %inc246 = add nuw i32 %i.3600, 1
  %256 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %rx_ring_num, align 4
  %cmp240 = icmp ult i32 %inc246, %257
  br i1 %cmp240, label %napi_schedule.exit.for.body242_crit_edge, label %napi_schedule.exit.for.end247_crit_edge

napi_schedule.exit.for.end247_crit_edge:          ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end247

napi_schedule.exit.for.body242_crit_edge:         ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body242

for.end247:                                       ; preds = %napi_schedule.exit.for.end247_crit_edge, %if.end236.for.end247_crit_edge
  %state248 = getelementptr i8, ptr %dev, i32 68676
  call void @_clear_bit(i32 noundef 0, ptr noundef %state248) #12
  call fastcc void @netif_tx_start_all_queues(ptr noundef %dev)
  call void @netif_device_attach(ptr noundef %dev) #12
  br label %cleanup291

tx_err:                                           ; preds = %if.then115, %if.then96, %if.then92
  %err.3 = phi i32 [ %call113, %if.then115 ], [ %call94, %if.then96 ], [ %call90, %if.then92 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %t.0597)
  %cmp249 = icmp eq i32 %t.0597, 2
  br i1 %cmp249, label %tx_err.if.end254.thread_crit_edge, label %tx_err.while.cond257.preheader_crit_edge

tx_err.while.cond257.preheader_crit_edge:         ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond257.preheader

tx_err.if.end254.thread_crit_edge:                ; preds = %tx_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end254.thread

if.end254.thread:                                 ; preds = %tx_err.if.end254.thread_crit_edge, %if.then191, %if.then176, %if.then165, %if.then156, %if.then146
  %err.3643 = phi i32 [ %err.3, %tx_err.if.end254.thread_crit_edge ], [ %call189, %if.then191 ], [ %call174, %if.then176 ], [ %call163, %if.then165 ], [ %call154, %if.then156 ], [ %call144, %if.then146 ]
  %258 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx78, align 4
  br label %while.cond257.preheader

while.cond257.preheader:                          ; preds = %if.end254.thread, %tx_err.while.cond257.preheader_crit_edge
  %t.1651 = phi i32 [ 1, %if.end254.thread ], [ %t.0597, %tx_err.while.cond257.preheader_crit_edge ]
  %i.5650 = phi i32 [ %259, %if.end254.thread ], [ %i.2594, %tx_err.while.cond257.preheader_crit_edge ]
  %err.3642649 = phi i32 [ %err.3643, %if.end254.thread ], [ %err.3, %tx_err.while.cond257.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.5650)
  %tobool259.not601 = icmp eq i32 %i.5650, 0
  br i1 %tobool259.not601, label %while.cond257.preheader.while.end_crit_edge, label %while.body260.lr.ph

while.cond257.preheader.while.end_crit_edge:      ; preds = %while.cond257.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body260.lr.ph:                              ; preds = %while.cond257.preheader
  %arrayidx262 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 52, i32 %t.1651
  %arrayidx265 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 54, i32 %t.1651
  br label %while.body260

while.body260:                                    ; preds = %while.body260.while.body260_crit_edge, %while.body260.lr.ph
  %i.7602 = phi i32 [ %i.5650, %while.body260.lr.ph ], [ %dec258, %while.body260.while.body260_crit_edge ]
  %dec258 = add i32 %i.7602, -1
  %260 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx262, align 4
  %arrayidx263 = getelementptr ptr, ptr %261, i32 %dec258
  %262 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %arrayidx263, align 4
  tail call void @mlx4_en_deactivate_tx_ring(ptr noundef %add.ptr.i, ptr noundef %263) #12
  %264 = ptrtoint ptr %arrayidx265 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx265, align 4
  %arrayidx266 = getelementptr ptr, ptr %265, i32 %dec258
  %266 = ptrtoint ptr %arrayidx266 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx266, align 4
  tail call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %267) #12
  %tobool259.not = icmp eq i32 %dec258, 0
  br i1 %tobool259.not, label %while.body260.while.end_crit_edge, label %while.body260.while.body260_crit_edge

while.body260.while.body260_crit_edge:            ; preds = %while.body260
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body260

while.body260.while.end_crit_edge:                ; preds = %while.body260
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body260.while.end_crit_edge, %while.cond257.preheader.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.1651)
  %tobool268.not = icmp eq i32 %t.1651, 0
  br i1 %tobool268.not, label %while.end.while.end273_crit_edge, label %if.end270

while.end.while.end273_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end273

if.end270:                                        ; preds = %while.end
  %dec267 = add nsw i32 %t.1651, -1
  %arrayidx272 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 44, i32 %dec267
  %268 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool259.not601.1 = icmp eq i32 %269, 0
  br i1 %tobool259.not601.1, label %if.end270.while.end.1_crit_edge, label %while.body260.lr.ph.1

if.end270.while.end.1_crit_edge:                  ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.1

while.body260.lr.ph.1:                            ; preds = %if.end270
  %arrayidx262.1 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 52, i32 %dec267
  %arrayidx265.1 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 54, i32 %dec267
  br label %while.body260.1

while.body260.1:                                  ; preds = %while.body260.1.while.body260.1_crit_edge, %while.body260.lr.ph.1
  %i.7602.1 = phi i32 [ %269, %while.body260.lr.ph.1 ], [ %dec258.1, %while.body260.1.while.body260.1_crit_edge ]
  %dec258.1 = add i32 %i.7602.1, -1
  %270 = ptrtoint ptr %arrayidx262.1 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %arrayidx262.1, align 4
  %arrayidx263.1 = getelementptr ptr, ptr %271, i32 %dec258.1
  %272 = ptrtoint ptr %arrayidx263.1 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %arrayidx263.1, align 4
  tail call void @mlx4_en_deactivate_tx_ring(ptr noundef %add.ptr.i, ptr noundef %273) #12
  %274 = ptrtoint ptr %arrayidx265.1 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx265.1, align 4
  %arrayidx266.1 = getelementptr ptr, ptr %275, i32 %dec258.1
  %276 = ptrtoint ptr %arrayidx266.1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %arrayidx266.1, align 4
  tail call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %277) #12
  %tobool259.not.1 = icmp eq i32 %dec258.1, 0
  br i1 %tobool259.not.1, label %while.body260.1.while.end.1_crit_edge, label %while.body260.1.while.body260.1_crit_edge

while.body260.1.while.body260.1_crit_edge:        ; preds = %while.body260.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body260.1

while.body260.1.while.end.1_crit_edge:            ; preds = %while.body260.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.1

while.end.1:                                      ; preds = %while.body260.1.while.end.1_crit_edge, %if.end270.while.end.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec267)
  %tobool268.not.1 = icmp eq i32 %dec267, 0
  call void @llvm.assume(i1 %tobool268.not.1)
  br label %while.end273

while.end273:                                     ; preds = %while.end.1, %while.end.while.end273_crit_edge
  tail call void @mlx4_en_destroy_drop_qp(ptr noundef %add.ptr.i) #12
  br label %rss_err

rss_err:                                          ; preds = %while.end273, %if.end63.rss_err_crit_edge
  %err.4 = phi i32 [ %call64, %if.end63.rss_err_crit_edge ], [ %err.3642649, %while.end273 ]
  tail call void @mlx4_en_release_rss_steer(ptr noundef %add.ptr.i) #12
  br label %mac_err

mac_err:                                          ; preds = %rss_err, %if.then62
  %err.5 = phi i32 [ %call60, %if.then62 ], [ %err.4, %rss_err ]
  tail call fastcc void @mlx4_en_put_qp(ptr noundef %add.ptr.i)
  br label %cq_err

cq_err:                                           ; preds = %mac_err, %if.then53, %if.then35, %if.then27, %if.then23
  %rx_index.0578 = phi i32 [ %i.0588, %if.then23 ], [ %i.0588, %if.then27 ], [ %i.0588, %if.then35 ], [ %rx_index.0.lcssa, %if.then53 ], [ %rx_index.0.lcssa, %mac_err ]
  %err.6 = phi i32 [ -12, %if.then23 ], [ %call25, %if.then27 ], [ %call33, %if.then35 ], [ %retval.0.i522, %if.then53 ], [ %err.5, %mac_err ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_index.0578)
  %tobool276.not607 = icmp eq i32 %rx_index.0578, 0
  br i1 %tobool276.not607, label %cq_err.for.cond281.preheader_crit_edge, label %cq_err.while.body277_crit_edge

cq_err.while.body277_crit_edge:                   ; preds = %cq_err
  br label %while.body277

cq_err.for.cond281.preheader_crit_edge:           ; preds = %cq_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond281.preheader

for.cond281.preheader:                            ; preds = %while.body277.for.cond281.preheader_crit_edge, %cq_err.for.cond281.preheader_crit_edge
  %278 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp283609.not = icmp eq i32 %279, 0
  br i1 %cmp283609.not, label %for.cond281.preheader.cleanup291_crit_edge, label %for.cond281.preheader.for.body285_crit_edge

for.cond281.preheader.for.body285_crit_edge:      ; preds = %for.cond281.preheader
  br label %for.body285

for.cond281.preheader.cleanup291_crit_edge:       ; preds = %for.cond281.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup291

while.body277:                                    ; preds = %while.body277.while.body277_crit_edge, %cq_err.while.body277_crit_edge
  %rx_index.1608 = phi i32 [ %dec275, %while.body277.while.body277_crit_edge ], [ %rx_index.0578, %cq_err.while.body277_crit_edge ]
  %dec275 = add i32 %rx_index.1608, -1
  %arrayidx279 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 55, i32 %dec275
  %280 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx279, align 4
  tail call void @mlx4_en_deactivate_cq(ptr noundef %add.ptr.i, ptr noundef %281) #12
  %arrayidx.i545 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %dec275
  %282 = ptrtoint ptr %arrayidx.i545 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %arrayidx.i545, align 4
  %affinity_mask.i546 = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %283, i32 0, i32 28
  %284 = ptrtoint ptr %affinity_mask.i546 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %affinity_mask.i546, align 32
  tail call void @free_cpumask_var(ptr noundef %285) #12
  %tobool276.not = icmp eq i32 %dec275, 0
  br i1 %tobool276.not, label %while.body277.for.cond281.preheader_crit_edge, label %while.body277.while.body277_crit_edge

while.body277.while.body277_crit_edge:            ; preds = %while.body277
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body277

while.body277.for.cond281.preheader_crit_edge:    ; preds = %while.body277
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond281.preheader

for.body285:                                      ; preds = %for.body285.for.body285_crit_edge, %for.cond281.preheader.for.body285_crit_edge
  %i.8610 = phi i32 [ %inc289, %for.body285.for.body285_crit_edge ], [ 0, %for.cond281.preheader.for.body285_crit_edge ]
  %arrayidx287 = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.8610
  %286 = ptrtoint ptr %arrayidx287 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx287, align 4
  tail call void @mlx4_en_deactivate_rx_ring(ptr noundef %add.ptr.i, ptr noundef %287) #12
  %inc289 = add nuw i32 %i.8610, 1
  %288 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %rx_ring_num, align 4
  %cmp283 = icmp ult i32 %inc289, %289
  br i1 %cmp283, label %for.body285.for.body285_crit_edge, label %for.body285.cleanup291_crit_edge

for.body285.cleanup291_crit_edge:                 ; preds = %for.body285
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup291

for.body285.for.body285_crit_edge:                ; preds = %for.body285
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body285

cleanup291:                                       ; preds = %for.body285.cleanup291_crit_edge, %for.cond281.preheader.cleanup291_crit_edge, %for.end247, %if.then17, %if.then3, %do.body.cleanup291_crit_edge
  %retval.0 = phi i32 [ %call15, %if.then17 ], [ 0, %for.end247 ], [ 0, %if.then3 ], [ 0, %do.body.cleanup291_crit_edge ], [ %err.6, %for.cond281.preheader.cleanup291_crit_edge ], [ %err.6, %for.body285.cleanup291_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mc_list) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_cleanup_filters(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %del_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %del_list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %del_list, i32 0, i32 1
  %1 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %del_list, ptr %del_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %del_list, ptr %0, align 4
  %filters_lock = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 87
  call void @_raw_spin_lock_bh(ptr noundef %filters_lock) #12
  %filters = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 89
  %3 = ptrtoint ptr %filters to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %filters, align 4
  %cmp.not54 = icmp eq ptr %4, %filters
  br i1 %cmp.not54, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %hlist_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %filter.055 = phi ptr [ %tmp.0, %hlist_del.exit.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %filter.055 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.0 = load ptr, ptr %filter.055, align 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %filter.055) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %filter.055, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %filter.055 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %filter.055, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %12 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %del_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %filter.055, ptr noundef nonnull %del_list, ptr noundef %13) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %filter.055, ptr %prev1.i.i2.i, align 4
  %15 = ptrtoint ptr %filter.055 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %filter.055, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %filter.055, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %del_list, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %filter.055, ptr %del_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %filter_chain = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.055, i32 0, i32 13
  %18 = ptrtoint ptr %filter_chain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %filter_chain, align 4
  %pprev2.i.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.055, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pprev2.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %19, ptr %21, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %list_move.exit.hlist_del.exit_crit_edge, label %do.body13.i.i

list_move.exit.hlist_del.exit_crit_edge:          ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %list_move.exit.hlist_del.exit_crit_edge
  %24 = ptrtoint ptr %filter_chain to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %filter_chain, align 4
  %25 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %cmp.not = icmp eq ptr %tmp.0, %filters
  br i1 %cmp.not, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.for.body_crit_edge

hlist_del.exit.for.body_crit_edge:                ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %filters_lock) #12
  %26 = ptrtoint ptr %del_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %del_list, align 4
  %cmp28.not56 = icmp eq ptr %27, %del_list
  br i1 %cmp28.not56, label %for.end.for.end37_crit_edge, label %for.end.for.body30_crit_edge

for.end.for.body30_crit_edge:                     ; preds = %for.end
  br label %for.body30

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.body30:                                       ; preds = %mlx4_en_filter_free.exit.for.body30_crit_edge, %for.end.for.body30_crit_edge
  %filter.157 = phi ptr [ %tmp.1, %mlx4_en_filter_free.exit.for.body30_crit_edge ], [ %27, %for.end.for.body30_crit_edge ]
  %28 = ptrtoint ptr %filter.157 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.1 = load ptr, ptr %filter.157, align 8
  %work = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.157, i32 0, i32 1
  %call = call zeroext i1 @cancel_work_sync(ptr noundef %work) #12
  %priv1.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.157, i32 0, i32 8
  %29 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv1.i, align 8
  %call.i.i.i51 = call zeroext i1 @__list_del_entry_valid(ptr noundef %filter.157) #12
  br i1 %call.i.i.i51, label %if.end.i.i.i52, label %for.body30.list_del.exit.i_crit_edge

for.body30.list_del.exit.i_crit_edge:             ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i52:                                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %filter.157, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %filter.157 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %filter.157, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i52, %for.body30.list_del.exit.i_crit_edge
  %37 = ptrtoint ptr %filter.157 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %filter.157, align 4
  %prev.i.i53 = getelementptr inbounds %struct.list_head, ptr %filter.157, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i53, align 4
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %30, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %reg_id.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.157, i32 0, i32 11
  %43 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %reg_id.i, align 8
  %call.i = call i32 @mlx4_flow_detach(ptr noundef %42, i64 noundef %44) #12
  %45 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call.i, label %if.then.i [
    i32 0, label %list_del.exit.i.mlx4_en_filter_free.exit_crit_edge
    i32 -2, label %list_del.exit.i.mlx4_en_filter_free.exit_crit_edge59
  ]

list_del.exit.i.mlx4_en_filter_free.exit_crit_edge59: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_filter_free.exit

list_del.exit.i.mlx4_en_filter_free.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_filter_free.exit

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %30, ptr noundef nonnull @.str.65, i32 noundef %call.i) #12
  br label %mlx4_en_filter_free.exit

mlx4_en_filter_free.exit:                         ; preds = %if.then.i, %list_del.exit.i.mlx4_en_filter_free.exit_crit_edge, %list_del.exit.i.mlx4_en_filter_free.exit_crit_edge59
  call void @kfree(ptr noundef %filter.157) #12
  %cmp28.not = icmp eq ptr %tmp.1, %del_list
  br i1 %cmp28.not, label %mlx4_en_filter_free.exit.for.end37_crit_edge, label %mlx4_en_filter_free.exit.for.body30_crit_edge

mlx4_en_filter_free.exit.for.body30_crit_edge:    ; preds = %mlx4_en_filter_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body30

mlx4_en_filter_free.exit.for.end37_crit_edge:     ; preds = %mlx4_en_filter_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end37

for.end37:                                        ; preds = %mlx4_en_filter_free.exit.for.end37_crit_edge, %for.end.for.end37_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %del_list) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_calc_rx_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_activate_rx_rings(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_activate_cq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_set_cq_moder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_deactivate_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_arm_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_default_counter_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_config_rss_steer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_create_drop_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_activate_tx_ring(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_init_tx_xdp_ring_descs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_general(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_user_mtu(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_qpn_calc(ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_VXLAN(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_INIT_PORT(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_en_set_rss_steer_rules(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  %qp.i = alloca %struct.mlx4_qp, align 4
  %gid.i = alloca [16 x i8], align 1
  %reg_id = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg_id) #12
  %0 = ptrtoint ptr %reg_id to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %reg_id, align 8, !annotation !316
  %base_qpn = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 36
  %dev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 86
  %3 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_addr, align 64
  %call = call fastcc i32 @mlx4_en_uc_steer_add(ptr noundef %priv, ptr noundef %4, ptr noundef %base_qpn, ptr noundef nonnull %reg_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %dev_addr3 = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr3, align 64
  %9 = ptrtoint ptr %base_qpn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_qpn, align 4
  %tunnel_reg_id = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 91
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %tunnel_offload_mode.i = getelementptr inbounds %struct.mlx4_dev, ptr %14, i32 0, i32 3, i32 89
  %15 = ptrtoint ptr %tunnel_offload_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tunnel_offload_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

lor.lhs.false.i:                                  ; preds = %if.end
  %dmfs_high_steer_mode.i = getelementptr inbounds %struct.mlx4_dev, ptr %14, i32 0, i32 3, i32 51
  %17 = ptrtoint ptr %dmfs_high_steer_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dmfs_high_steer_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp4.i = icmp eq i32 %18, 2
  br i1 %cmp4.i, label %lor.lhs.false.i.if.end7_crit_edge, label %if.end.i

lor.lhs.false.i.if.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end.i:                                         ; preds = %lor.lhs.false.i
  %port.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %19 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.i, align 4
  %call.i = call i32 @mlx4_tunnel_steer_add(ptr noundef %14, ptr noundef %8, i32 noundef %20, i32 noundef %10, i16 noundef zeroext 20480, ptr noundef %tunnel_reg_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %mlx4_en_tunnel_steer_add.exit

do.body.i:                                        ; preds = %if.end.i
  %msg_enable.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %21 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.body.i.if.end7_crit_edge, label %if.then10.i

do.body.i.if.end7_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %tunnel_reg_id to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tunnel_reg_id, align 8
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %priv, ptr noundef nonnull @.str.75, ptr noundef %8, i64 noundef %24) #12
  br label %if.end7

mlx4_en_tunnel_steer_add.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.74, i32 noundef %call.i) #12
  br label %tunnel_err

if.end7:                                          ; preds = %if.then10.i, %do.body.i.if.end7_crit_edge, %lor.lhs.false.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 32) #16
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  %26 = ptrtoint ptr %tunnel_reg_id to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tunnel_reg_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %tobool21.not = icmp eq i64 %27, 0
  br i1 %tobool21.not, label %if.then10.tunnel_err_crit_edge, label %if.then22

if.then10.tunnel_err_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %tunnel_err

if.end11:                                         ; preds = %if.end7
  %mac = getelementptr inbounds %struct.mlx4_mac_entry, ptr %call7.i, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  %dev_addr13 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 86
  %30 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_addr13, align 64
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %31, align 1
  %34 = ptrtoint ptr %mac to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %mac, align 8
  %current_mac = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33
  %35 = ptrtoint ptr %current_mac to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %33, ptr %current_mac, align 4
  %36 = ptrtoint ptr %reg_id to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %reg_id, align 8
  %reg_id17 = getelementptr inbounds %struct.mlx4_mac_entry, ptr %call7.i, i32 0, i32 2
  %38 = ptrtoint ptr %reg_id17 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %reg_id17, align 8
  %39 = trunc i64 %33 to i32
  %40 = lshr i32 %39, 16
  %idxprom = and i32 %40, 255
  %arrayidx19 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 79, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx19, align 4
  %43 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %call7.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %44 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %arrayidx19, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !317
  %45 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call7.i, ptr %arrayidx19, align 4
  %tobool.not.i55 = icmp eq ptr %42, null
  br i1 %tobool.not.i55, label %if.end11.cleanup_crit_edge, label %do.body49.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body49.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %42, i32 0, i32 1
  %46 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %call7.i, ptr %pprev51.i, align 4
  br label %cleanup

if.then22:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %call25 = call i32 @mlx4_flow_detach(ptr noundef %50, i64 noundef %27) #12
  br label %tunnel_err

tunnel_err:                                       ; preds = %if.then22, %if.then10.tunnel_err_crit_edge, %mlx4_en_tunnel_steer_add.exit
  %err.0 = phi i32 [ %call.i, %mlx4_en_tunnel_steer_add.exit ], [ -12, %if.then22 ], [ -12, %if.then10.tunnel_err_crit_edge ]
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %priv, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 8
  %steering_mode.i = getelementptr inbounds %struct.mlx4_dev, ptr %54, i32 0, i32 3, i32 50
  %55 = ptrtoint ptr %steering_mode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %steering_mode.i, align 8
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %56, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %tunnel_err
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %base_qpn to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base_qpn, align 4
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %dev_addr28 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 86
  %62 = ptrtoint ptr %dev_addr28 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_addr28, align 64
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp.i) #12
  %64 = call ptr @memset(ptr %qp.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid.i) #12
  %65 = call ptr @memset(ptr %gid.i, i32 0, i32 10)
  %qpn3.i = getelementptr inbounds %struct.mlx4_qp, ptr %qp.i, i32 0, i32 1
  %66 = ptrtoint ptr %qpn3.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %59, ptr %qpn3.i, align 4
  %arrayidx.i = getelementptr inbounds [16 x i8], ptr %gid.i, i32 0, i32 10
  %67 = call ptr @memcpy(ptr %arrayidx.i, ptr %63, i32 6)
  %port.i56 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %68 = ptrtoint ptr %port.i56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port.i56, align 4
  %conv.i = trunc i32 %69 to i8
  %arrayidx4.i = getelementptr inbounds [16 x i8], ptr %gid.i, i32 0, i32 5
  %70 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv.i, ptr %arrayidx4.i, align 1
  %call.i57 = call i32 @mlx4_unicast_detach(ptr noundef %54, ptr noundef nonnull %qp.i, ptr noundef nonnull %gid.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp.i) #12
  br label %cleanup

sw.bb5.i:                                         ; preds = %tunnel_err
  call void @__sanitizer_cov_trace_pc() #14
  %71 = ptrtoint ptr %reg_id to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %reg_id, align 8
  %call6.i = call i32 @mlx4_flow_detach(ptr noundef %54, i64 noundef %72) #12
  br label %cleanup

sw.default.i:                                     ; preds = %tunnel_err
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.76) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %sw.bb5.i, %sw.bb.i, %do.body49.i, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %do.body49.i ], [ %err.0, %sw.bb.i ], [ %err.0, %sw.bb5.i ], [ %err.0, %sw.default.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg_id) #12
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_multicast_attach(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_start_all_queues(ptr nocapture noundef readonly %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %0 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %3, i32 %i.05, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #12
  %inc = add nuw i32 %i.05, 1
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_deactivate_tx_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_destroy_drop_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_release_rss_steer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_en_put_qp(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %base_qpn = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 36
  %4 = ptrtoint ptr %base_qpn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base_qpn, align 4
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 50
  %6 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %do.body7

if.then:                                          ; preds = %entry
  %dev3 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i64
  %arrayidx.1.i = getelementptr i8, ptr %11, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %15 to i64
  %16 = shl nuw nsw i64 %conv.i, 16
  %17 = shl nuw nsw i64 %conv.1.i, 8
  %shl.2.i = or i64 %17, %16
  %arrayidx.2.i = getelementptr i8, ptr %11, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %19 to i64
  %or.2.i = or i64 %shl.2.i, %conv.2.i
  %arrayidx.3.i = getelementptr i8, ptr %11, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %21 to i64
  %arrayidx.4.i = getelementptr i8, ptr %11, i32 4
  %22 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %23 to i64
  %24 = shl nuw nsw i64 %or.2.i, 24
  %25 = shl nuw nsw i64 %conv.3.i, 16
  %26 = shl nuw nsw i64 %conv.4.i, 8
  %27 = or i64 %25, %26
  %shl.5.i = or i64 %24, %27
  %arrayidx.5.i = getelementptr i8, ptr %11, i32 5
  %28 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %29 to i64
  %or.5.i = or i64 %shl.5.i, %conv.5.i
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 8
  %and = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.do.end_crit_edge, label %if.then4

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %priv, ptr noundef nonnull @.str.77, ptr noundef %11) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.then.do.end_crit_edge
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %conv = trunc i32 %33 to i8
  tail call void @mlx4_unregister_mac(ptr noundef %3, i8 noundef zeroext %conv, i64 noundef %or.5.i) #12
  br label %if.end17

do.body7:                                         ; preds = %entry
  %msg_enable8 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %34 = ptrtoint ptr %msg_enable8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable8, align 8
  %and9 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body7.do.end15_crit_edge, label %if.then11

do.body7.do.end15_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #14
  %port12 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %36 = ptrtoint ptr %port12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port12, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %priv, ptr noundef nonnull @.str.78, i32 noundef %37, i32 noundef %5) #12
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body7.do.end15_crit_edge
  tail call void @mlx4_qp_release_range(ptr noundef %3, i32 noundef %5, i32 noundef 1) #12
  %flags = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 41
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %and16 = and i32 %39, -17
  store i32 %and16, ptr %flags, align 8
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_deactivate_rx_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_CLOSE_PORT(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_fold_software_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_flow_steer_promisc_remove(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_unicast_promisc_remove(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_multicast_promisc_remove(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_multicast_detach(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_flow_detach(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_MCAST_FLTR(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_free_tx_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_en_alloc_resources(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prof1 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %prof1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prof1, align 4
  %tx_ring_size = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 3
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp3177.not = icmp eq i32 %3, 0
  br i1 %cmp3177.not, label %entry.for.inc15_crit_edge, label %for.body4.lr.ph

entry.for.inc15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15

for.body4.lr.ph:                                  ; preds = %entry
  %arrayidx5 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 0
  %arrayidx8 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 0
  br label %for.body4

for.body20.lr.ph:                                 ; preds = %for.inc15.1
  %rx_ring_size = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 4
  %stride = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 32
  br label %for.body20

for.cond2:                                        ; preds = %if.end
  %inc = add nuw i32 %i.0178, 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %cmp3 = icmp ult i32 %inc, %5
  br i1 %cmp3, label %for.cond2.for.body4_crit_edge, label %for.cond2.for.inc15_crit_edge

for.cond2.for.inc15_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15

for.cond2.for.body4_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.for.body4_crit_edge, %for.body4.lr.ph
  %i.0178 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.cond2.for.body4_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %6 = load volatile i32, ptr @__num_online_cpus, align 4
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr ptr, ptr %8, i32 %i.0178
  %9 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_ring_size, align 4
  %call7 = tail call i32 @mlx4_en_create_cq(ptr noundef %priv, ptr noundef %arrayidx6, i32 noundef %10, i32 noundef %i.0178, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %for.body4.err_crit_edge

for.body4.err_crit_edge:                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end:                                           ; preds = %for.body4
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr ptr, ptr %12, i32 %i.0178
  %13 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_ring_size, align 4
  %call11 = tail call i32 @mlx4_en_create_tx_ring(ptr noundef %priv, ptr noundef %arrayidx9, i32 noundef %14, i16 noundef zeroext 64, i32 noundef 0, i32 noundef %i.0178) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.cond2, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

for.inc15:                                        ; preds = %for.cond2.for.inc15_crit_edge, %entry.for.inc15_crit_edge
  %arrayidx.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp3177.not.1 = icmp eq i32 %16, 0
  br i1 %cmp3177.not.1, label %for.inc15.for.inc15.1_crit_edge, label %for.body4.lr.ph.1

for.inc15.for.inc15.1_crit_edge:                  ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15.1

for.body4.lr.ph.1:                                ; preds = %for.inc15
  %arrayidx5.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 1
  %arrayidx8.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 1
  br label %for.body4.1

for.body4.1:                                      ; preds = %for.cond2.1.for.body4.1_crit_edge, %for.body4.lr.ph.1
  %i.0178.1 = phi i32 [ 0, %for.body4.lr.ph.1 ], [ %inc.1, %for.cond2.1.for.body4.1_crit_edge ]
  %call.i.i.i.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %17 = load volatile i32, ptr @__num_online_cpus, align 4
  %18 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5.1, align 4
  %arrayidx6.1 = getelementptr ptr, ptr %19, i32 %i.0178.1
  %20 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_ring_size, align 4
  %call7.1 = tail call i32 @mlx4_en_create_cq(ptr noundef %priv, ptr noundef %arrayidx6.1, i32 noundef %21, i32 noundef %i.0178.1, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %tobool.not.1 = icmp eq i32 %call7.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.body4.1.err_crit_edge

for.body4.1.err_crit_edge:                        ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end.1:                                         ; preds = %for.body4.1
  %22 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8.1, align 4
  %arrayidx9.1 = getelementptr ptr, ptr %23, i32 %i.0178.1
  %24 = ptrtoint ptr %tx_ring_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_ring_size, align 4
  %call11.1 = tail call i32 @mlx4_en_create_tx_ring(ptr noundef %priv, ptr noundef %arrayidx9.1, i32 noundef %25, i16 noundef zeroext 64, i32 noundef 0, i32 noundef %i.0178.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %for.cond2.1, label %if.end.1.err_crit_edge

if.end.1.err_crit_edge:                           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

for.cond2.1:                                      ; preds = %if.end.1
  %inc.1 = add nuw i32 %i.0178.1, 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp ult i32 %inc.1, %27
  br i1 %cmp3.1, label %for.cond2.1.for.body4.1_crit_edge, label %for.cond2.1.for.inc15.1_crit_edge

for.cond2.1.for.inc15.1_crit_edge:                ; preds = %for.cond2.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc15.1

for.cond2.1.for.body4.1_crit_edge:                ; preds = %for.cond2.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body4.1

for.inc15.1:                                      ; preds = %for.cond2.1.for.inc15.1_crit_edge, %for.inc15.for.inc15.1_crit_edge
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %28 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp19181.not = icmp eq i32 %29, 0
  br i1 %cmp19181.not, label %for.inc15.1.for.end36_crit_edge, label %for.body20.lr.ph

for.inc15.1.for.end36_crit_edge:                  ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.cond18:                                       ; preds = %if.end27
  %inc35 = add nuw i32 %i.1182, 1
  %30 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ring_num, align 4
  %cmp19 = icmp ult i32 %inc35, %31
  br i1 %cmp19, label %for.cond18.for.body20_crit_edge, label %for.cond18.for.end36_crit_edge

for.cond18.for.end36_crit_edge:                   ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end36

for.cond18.for.body20_crit_edge:                  ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body20

for.body20:                                       ; preds = %for.cond18.for.body20_crit_edge, %for.body20.lr.ph
  %i.1182 = phi i32 [ 0, %for.body20.lr.ph ], [ %inc35, %for.cond18.for.body20_crit_edge ]
  %call.i.i.i175 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %32 = load volatile i32, ptr @__num_online_cpus, align 4
  %arrayidx23 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55, i32 %i.1182
  %33 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_ring_size, align 4
  %call24 = tail call i32 @mlx4_en_create_cq(ptr noundef %priv, ptr noundef %arrayidx23, i32 noundef %34, i32 noundef %i.1182, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.body20.err_crit_edge

for.body20.err_crit_edge:                         ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end27:                                         ; preds = %for.body20
  %arrayidx28 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %i.1182
  %35 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ring_size, align 4
  %37 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stride, align 8
  %conv = trunc i32 %38 to i16
  %call30 = tail call i32 @mlx4_en_create_rx_ring(ptr noundef %priv, ptr noundef %arrayidx28, i32 noundef %36, i16 noundef zeroext %conv, i32 noundef 0, i32 noundef %i.1182) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %for.cond18, label %if.end27.err_crit_edge

if.end27.err_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

for.end36:                                        ; preds = %for.cond18.for.end36_crit_edge, %for.inc15.1.for.end36_crit_edge
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %call37 = tail call ptr @mlx4_get_cpu_rmap(ptr noundef %42, i32 noundef %44) #12
  %dev38 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %45 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev38, align 8
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 100
  %47 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call37, ptr %rx_cpu_rmap, align 4
  br label %cleanup

err:                                              ; preds = %if.end27.err_crit_edge, %for.body20.err_crit_edge, %if.end.1.err_crit_edge, %for.body4.1.err_crit_edge, %if.end.err_crit_edge, %for.body4.err_crit_edge
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.80) #12
  %rx_ring_num40 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %48 = ptrtoint ptr %rx_ring_num40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_ring_num40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp41183.not = icmp eq i32 %49, 0
  br i1 %cmp41183.not, label %err.for.cond64.preheader_crit_edge, label %for.body43.lr.ph

err.for.cond64.preheader_crit_edge:               ; preds = %err
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond64.preheader

for.body43.lr.ph:                                 ; preds = %err
  %rx_ring_size50 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %1, i32 0, i32 4
  %stride51 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 32
  br label %for.body43

for.cond64.preheader:                             ; preds = %for.inc61.for.cond64.preheader_crit_edge, %err.for.cond64.preheader_crit_edge
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp71185.not = icmp eq i32 %51, 0
  br i1 %cmp71185.not, label %for.cond64.preheader.for.inc95_crit_edge, label %for.body73.lr.ph

for.cond64.preheader.for.inc95_crit_edge:         ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc95

for.body43:                                       ; preds = %for.inc61.for.body43_crit_edge, %for.body43.lr.ph
  %i.2184 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc62, %for.inc61.for.body43_crit_edge ]
  %arrayidx45 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %i.2184
  %52 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %53, null
  br i1 %tobool46.not, label %for.body43.if.end53_crit_edge, label %if.then47

for.body43.if.end53_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then47:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %rx_ring_size50 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_ring_size50, align 4
  %56 = ptrtoint ptr %stride51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stride51, align 8
  %conv52 = trunc i32 %57 to i16
  tail call void @mlx4_en_destroy_rx_ring(ptr noundef %priv, ptr noundef %arrayidx45, i32 noundef %55, i16 noundef zeroext %conv52) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %for.body43.if.end53_crit_edge
  %arrayidx55 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55, i32 %i.2184
  %58 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %59, null
  br i1 %tobool56.not, label %if.end53.for.inc61_crit_edge, label %if.then57

if.end53.for.inc61_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc61

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_cq(ptr noundef %priv, ptr noundef %arrayidx55) #12
  br label %for.inc61

for.inc61:                                        ; preds = %if.then57, %if.end53.for.inc61_crit_edge
  %inc62 = add nuw i32 %i.2184, 1
  %60 = ptrtoint ptr %rx_ring_num40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ring_num40, align 4
  %cmp41 = icmp ult i32 %inc62, %61
  br i1 %cmp41, label %for.inc61.for.body43_crit_edge, label %for.inc61.for.cond64.preheader_crit_edge

for.inc61.for.cond64.preheader_crit_edge:         ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond64.preheader

for.inc61.for.body43_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body43

for.body73.lr.ph:                                 ; preds = %for.cond64.preheader
  %arrayidx75 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 0
  %arrayidx84 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 0
  br label %for.body73

for.body73:                                       ; preds = %for.inc92.for.body73_crit_edge, %for.body73.lr.ph
  %i.3186 = phi i32 [ 0, %for.body73.lr.ph ], [ %inc93, %for.inc92.for.body73_crit_edge ]
  %62 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx75, align 4
  %arrayidx76 = getelementptr ptr, ptr %63, i32 %i.3186
  %64 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %65, null
  br i1 %tobool77.not, label %for.body73.if.end82_crit_edge, label %if.then78

for.body73.if.end82_crit_edge:                    ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.then78:                                        ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_tx_ring(ptr noundef %priv, ptr noundef %arrayidx76) #12
  br label %if.end82

if.end82:                                         ; preds = %if.then78, %for.body73.if.end82_crit_edge
  %66 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx84, align 4
  %arrayidx85 = getelementptr ptr, ptr %67, i32 %i.3186
  %68 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %69, null
  br i1 %tobool86.not, label %if.end82.for.inc92_crit_edge, label %if.then87

if.end82.for.inc92_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc92

if.then87:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_cq(ptr noundef %priv, ptr noundef %arrayidx85) #12
  br label %for.inc92

for.inc92:                                        ; preds = %if.then87, %if.end82.for.inc92_crit_edge
  %inc93 = add nuw i32 %i.3186, 1
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx, align 4
  %cmp71 = icmp ult i32 %inc93, %71
  br i1 %cmp71, label %for.inc92.for.body73_crit_edge, label %for.inc92.for.inc95_crit_edge

for.inc92.for.inc95_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc95

for.inc92.for.body73_crit_edge:                   ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body73

for.inc95:                                        ; preds = %for.inc92.for.inc95_crit_edge, %for.cond64.preheader.for.inc95_crit_edge
  %arrayidx70.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 1
  %72 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx70.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp71185.not.1 = icmp eq i32 %73, 0
  br i1 %cmp71185.not.1, label %for.inc95.cleanup_crit_edge, label %for.body73.lr.ph.1

for.inc95.cleanup_crit_edge:                      ; preds = %for.inc95
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body73.lr.ph.1:                               ; preds = %for.inc95
  %arrayidx75.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 1
  %arrayidx84.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 1
  br label %for.body73.1

for.body73.1:                                     ; preds = %for.inc92.1.for.body73.1_crit_edge, %for.body73.lr.ph.1
  %i.3186.1 = phi i32 [ 0, %for.body73.lr.ph.1 ], [ %inc93.1, %for.inc92.1.for.body73.1_crit_edge ]
  %74 = ptrtoint ptr %arrayidx75.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx75.1, align 4
  %arrayidx76.1 = getelementptr ptr, ptr %75, i32 %i.3186.1
  %76 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx76.1, align 4
  %tobool77.not.1 = icmp eq ptr %77, null
  br i1 %tobool77.not.1, label %for.body73.1.if.end82.1_crit_edge, label %if.then78.1

for.body73.1.if.end82.1_crit_edge:                ; preds = %for.body73.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82.1

if.then78.1:                                      ; preds = %for.body73.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_tx_ring(ptr noundef %priv, ptr noundef %arrayidx76.1) #12
  br label %if.end82.1

if.end82.1:                                       ; preds = %if.then78.1, %for.body73.1.if.end82.1_crit_edge
  %78 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx84.1, align 4
  %arrayidx85.1 = getelementptr ptr, ptr %79, i32 %i.3186.1
  %80 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx85.1, align 4
  %tobool86.not.1 = icmp eq ptr %81, null
  br i1 %tobool86.not.1, label %if.end82.1.for.inc92.1_crit_edge, label %if.then87.1

if.end82.1.for.inc92.1_crit_edge:                 ; preds = %if.end82.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc92.1

if.then87.1:                                      ; preds = %if.end82.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_cq(ptr noundef %priv, ptr noundef %arrayidx85.1) #12
  br label %for.inc92.1

for.inc92.1:                                      ; preds = %if.then87.1, %if.end82.1.for.inc92.1_crit_edge
  %inc93.1 = add nuw i32 %i.3186.1, 1
  %82 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx70.1, align 4
  %cmp71.1 = icmp ult i32 %inc93.1, %83
  br i1 %cmp71.1, label %for.inc92.1.for.body73.1_crit_edge, label %for.inc92.1.cleanup_crit_edge

for.inc92.1.cleanup_crit_edge:                    ; preds = %for.inc92.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc92.1.for.body73.1_crit_edge:               ; preds = %for.inc92.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body73.1

cleanup:                                          ; preds = %for.inc92.1.cleanup_crit_edge, %for.inc95.cleanup_crit_edge, %for.end36
  %retval.0 = phi i32 [ 0, %for.end36 ], [ -12, %for.inc95.cleanup_crit_edge ], [ -12, %for.inc92.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_en_free_resources(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %rx_cpu_rmap = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 100
  %2 = ptrtoint ptr %rx_cpu_rmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx_cpu_rmap, align 4
  %arrayidx = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp291.not = icmp eq i32 %4, 0
  br i1 %cmp291.not, label %entry.for.end_crit_edge, label %for.body3.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body3.lr.ph:                                  ; preds = %entry
  %arrayidx4 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 0
  %arrayidx12 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 0
  br label %for.body3

for.body33.lr.ph:                                 ; preds = %for.end.1
  %prof = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 1
  %stride = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 32
  br label %for.body33

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %i.092 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.inc.for.body3_crit_edge ]
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body3.if.end_crit_edge, label %land.lhs.true

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %arrayidx7 = getelementptr ptr, ptr %6, i32 %i.092
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_tx_ring(ptr noundef %priv, ptr noundef %arrayidx7) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body3.if.end_crit_edge
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %10, null
  br i1 %tobool13.not, label %if.end.for.inc_crit_edge, label %land.lhs.true14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true14:                                  ; preds = %if.end
  %arrayidx17 = getelementptr ptr, ptr %10, i32 %i.092
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %land.lhs.true14.for.inc_crit_edge, label %if.then19

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then19:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_cq(ptr noundef %priv, ptr noundef %arrayidx17) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %land.lhs.true14.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.092, 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp ult i32 %inc, %14
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %arrayidx25 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 0
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx25, align 4
  tail call void @kfree(ptr noundef %16) #12
  %arrayidx27 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 0
  %17 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx27, align 4
  tail call void @kfree(ptr noundef %18) #12
  %arrayidx.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 44, i32 1
  %19 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp291.not.1 = icmp eq i32 %20, 0
  br i1 %cmp291.not.1, label %for.end.for.end.1_crit_edge, label %for.body3.lr.ph.1

for.end.for.end.1_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.1

for.body3.lr.ph.1:                                ; preds = %for.end
  %arrayidx4.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 1
  %arrayidx12.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 1
  br label %for.body3.1

for.body3.1:                                      ; preds = %for.inc.1.for.body3.1_crit_edge, %for.body3.lr.ph.1
  %i.092.1 = phi i32 [ 0, %for.body3.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body3.1_crit_edge ]
  %21 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx4.1, align 4
  %tobool.not.1 = icmp eq ptr %22, null
  br i1 %tobool.not.1, label %for.body3.1.if.end.1_crit_edge, label %land.lhs.true.1

for.body3.1.if.end.1_crit_edge:                   ; preds = %for.body3.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %for.body3.1
  %arrayidx7.1 = getelementptr ptr, ptr %22, i32 %i.092.1
  %23 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx7.1, align 4
  %tobool8.not.1 = icmp eq ptr %24, null
  br i1 %tobool8.not.1, label %land.lhs.true.1.if.end.1_crit_edge, label %if.then.1

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.1

if.then.1:                                        ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_tx_ring(ptr noundef %priv, ptr noundef %arrayidx7.1) #12
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %land.lhs.true.1.if.end.1_crit_edge, %for.body3.1.if.end.1_crit_edge
  %25 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx12.1, align 4
  %tobool13.not.1 = icmp eq ptr %26, null
  br i1 %tobool13.not.1, label %if.end.1.for.inc.1_crit_edge, label %land.lhs.true14.1

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true14.1:                                ; preds = %if.end.1
  %arrayidx17.1 = getelementptr ptr, ptr %26, i32 %i.092.1
  %27 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx17.1, align 4
  %tobool18.not.1 = icmp eq ptr %28, null
  br i1 %tobool18.not.1, label %land.lhs.true14.1.for.inc.1_crit_edge, label %if.then19.1

land.lhs.true14.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true14.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then19.1:                                      ; preds = %land.lhs.true14.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_cq(ptr noundef %priv, ptr noundef %arrayidx17.1) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1, %land.lhs.true14.1.for.inc.1_crit_edge, %if.end.1.for.inc.1_crit_edge
  %inc.1 = add nuw i32 %i.092.1, 1
  %29 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp ult i32 %inc.1, %30
  br i1 %cmp2.1, label %for.inc.1.for.body3.1_crit_edge, label %for.inc.1.for.end.1_crit_edge

for.inc.1.for.end.1_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.1

for.inc.1.for.body3.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.1

for.end.1:                                        ; preds = %for.inc.1.for.end.1_crit_edge, %for.end.for.end.1_crit_edge
  %arrayidx25.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 52, i32 1
  %31 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx25.1, align 4
  tail call void @kfree(ptr noundef %32) #12
  %arrayidx27.1 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 54, i32 1
  %33 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx27.1, align 4
  tail call void @kfree(ptr noundef %34) #12
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 45
  %35 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ring_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp3297.not = icmp eq i32 %36, 0
  br i1 %cmp3297.not, label %for.end.1.for.end48_crit_edge, label %for.body33.lr.ph

for.end.1.for.end48_crit_edge:                    ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48

for.body33:                                       ; preds = %for.inc46.for.body33_crit_edge, %for.body33.lr.ph
  %i.198 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc47, %for.inc46.for.body33_crit_edge ]
  %arrayidx34 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 53, i32 %i.198
  %37 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %38, null
  br i1 %tobool35.not, label %for.body33.if.end39_crit_edge, label %if.then36

for.body33.if.end39_crit_edge:                    ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then36:                                        ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prof, align 4
  %rx_ring_size = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %rx_ring_size to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_ring_size, align 4
  %43 = ptrtoint ptr %stride to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stride, align 8
  %conv = trunc i32 %44 to i16
  tail call void @mlx4_en_destroy_rx_ring(ptr noundef %priv, ptr noundef %arrayidx34, i32 noundef %42, i16 noundef zeroext %conv) #12
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %for.body33.if.end39_crit_edge
  %arrayidx40 = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 55, i32 %i.198
  %45 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx40, align 4
  %tobool41.not = icmp eq ptr %46, null
  br i1 %tobool41.not, label %if.end39.for.inc46_crit_edge, label %if.then42

if.end39.for.inc46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc46

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_destroy_cq(ptr noundef %priv, ptr noundef %arrayidx40) #12
  br label %for.inc46

for.inc46:                                        ; preds = %if.then42, %if.end39.for.inc46_crit_edge
  %inc47 = add nuw i32 %i.198, 1
  %47 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_ring_num, align 4
  %cmp32 = icmp ult i32 %inc47, %48
  br i1 %cmp32, label %for.inc46.for.body33_crit_edge, label %for.inc46.for.end48_crit_edge

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48

for.inc46.for.body33_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body33

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %for.end.1.for.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_destroy_netdev(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.34, i32 noundef %5) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %registered = getelementptr i8, ptr %dev, i32 51656
  %6 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %registered, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %do.end.if.end7_crit_edge, label %if.then3

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %port5 = getelementptr i8, ptr %dev, i32 51652
  %10 = ptrtoint ptr %port5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port5, align 4
  %call6 = tail call ptr @mlx4_get_devlink_port(ptr noundef %9, i32 noundef %11) #12
  tail call void @devlink_port_type_clear(ptr noundef %call6) #12
  tail call void @unregister_netdev(ptr noundef %dev) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %do.end.if.end7_crit_edge
  %allocated = getelementptr i8, ptr %dev, i32 51660
  %12 = ptrtoint ptr %allocated to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %res = getelementptr i8, ptr %dev, i32 51588
  tail call void @mlx4_free_hwq_res(ptr noundef %15, ptr noundef %res, i32 noundef 4096) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %stats_task = getelementptr i8, ptr %dev, i32 62752
  %call12 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %stats_task) #12
  %service_task = getelementptr i8, ptr %dev, i32 62852
  %call13 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %service_task) #12
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %workqueue, align 8
  tail call void @flush_workqueue(ptr noundef %17) #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %19, i32 0, i32 3, i32 61
  %20 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %flags2, align 8
  %and15 = and i64 %21, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.end11.if.end18_crit_edge, label %if.then17

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_remove_timestamp(ptr noundef %1) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end11.if.end18_crit_edge
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %port19 = getelementptr i8, ptr %dev, i32 51652
  %22 = ptrtoint ptr %port19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port19, align 4
  %arrayidx = getelementptr %struct.mlx4_en_dev, ptr %1, i32 0, i32 3, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  %25 = load i32, ptr %port19, align 4
  %arrayidx21 = getelementptr %struct.mlx4_en_dev, ptr %1, i32 0, i32 4, i32 %25
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx21, align 4
  tail call void @mlx4_en_cleanup_filters(ptr noundef %add.ptr.i)
  tail call fastcc void @mlx4_en_free_resources(ptr noundef %add.ptr.i)
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  tail call void @free_netdev(ptr noundef %dev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_get_devlink_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_remove_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_netdev_event(ptr nocapture noundef %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %this, i32 -716
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not206 = icmp slt i32 %7, 1
  br i1 %cmp.not206, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %pndev = getelementptr i8, ptr %this, i32 -616
  %upper = getelementptr i8, ptr %this, i32 -604
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0211 = phi i8 [ 0, %for.body.lr.ph ], [ %port.2, %for.inc.for.body_crit_edge ]
  %do_bond.0.off0210 = phi i1 [ true, %for.body.lr.ph ], [ %do_bond.2.off0, %for.inc.for.body_crit_edge ]
  %num_eth_ports.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %num_eth_ports.1, %for.inc.for.body_crit_edge ]
  %i.0207 = phi i32 [ 1, %for.body.lr.ph ], [ %inc37, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 77, i32 %i.0207
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp5 = icmp eq i32 %9, 2
  br i1 %cmp5, label %if.then6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then6:                                         ; preds = %for.body
  %inc = add i32 %num_eth_ports.0209, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port.0211)
  %tobool7.not = icmp eq i8 %port.0211, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8 = getelementptr [3 x ptr], ptr %pndev, i32 0, i32 %i.0207
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %cmp9 = icmp eq ptr %11, %1
  %conv = trunc i32 %i.0207 to i8
  %spec.select = select i1 %cmp9, i8 %conv, i8 0
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.then6.if.end11_crit_edge
  %port.1 = phi i8 [ %port.0211, %if.then6.if.end11_crit_edge ], [ %spec.select, %land.lhs.true ]
  %arrayidx13 = getelementptr [3 x ptr], ptr %pndev, i32 0, i32 %i.0207
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end11.cond.end_crit_edge, label %cond.true

if.end11.cond.end_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call ptr @netdev_master_upper_dev_get(ptr noundef nonnull %13) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end11.cond.end_crit_edge
  %cond = phi ptr [ %call17, %cond.true ], [ null, %if.end11.cond.end_crit_edge ]
  %arrayidx18 = getelementptr [3 x ptr], ptr %upper, i32 0, i32 %i.0207
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cond, ptr %arrayidx18, align 4
  %tobool21.not = icmp ne ptr %cond, null
  %spec.select194 = select i1 %tobool21.not, i1 %do_bond.0.off0210, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp24 = icmp slt i32 %inc, 2
  br i1 %cmp24, label %cond.end.for.inc_crit_edge, label %if.end27

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end27:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add i32 %i.0207, -1
  %arrayidx31 = getelementptr [3 x ptr], ptr %upper, i32 0, i32 %sub
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx31, align 4
  %cmp32.not = icmp eq ptr %cond, %16
  %spec.select195 = select i1 %cmp32.not, i1 %spec.select194, i1 false
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %cond.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %num_eth_ports.1 = phi i32 [ %inc, %cond.end.for.inc_crit_edge ], [ %num_eth_ports.0209, %for.body.for.inc_crit_edge ], [ %inc, %if.end27 ]
  %do_bond.2.off0 = phi i1 [ %spec.select194, %cond.end.for.inc_crit_edge ], [ %do_bond.0.off0210, %for.body.for.inc_crit_edge ], [ %spec.select195, %if.end27 ]
  %port.2 = phi i8 [ %port.1, %cond.end.for.inc_crit_edge ], [ %port.0211, %for.body.for.inc_crit_edge ], [ %port.1, %if.end27 ]
  %inc37 = add i32 %i.0207, 1
  %17 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc37, %18
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num_eth_ports.1)
  %cmp38 = icmp eq i32 %num_eth_ports.1, 2
  %narrow = select i1 %cmp38, i1 %do_bond.2.off0, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %event)
  %cmp50.not = icmp ne i32 %event, 25
  %19 = and i1 %cmp50.not, %narrow
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %port.2)
  %tobool52.not = icmp eq i8 %port.2, 0
  %or.cond197 = select i1 %19, i1 true, i1 %tobool52.not
  br i1 %or.cond197, label %for.end.cleanup_crit_edge, label %if.end54

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end54:                                         ; preds = %for.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  br i1 %narrow, label %if.then57, label %if.end54.if.end135_crit_edge

if.end54.if.end135_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then57:                                        ; preds = %if.end54
  %master = getelementptr inbounds %struct.netdev_notifier_bonding_info, ptr %ptr, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %master, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %21, label %if.then57.if.end135_crit_edge [
    i32 1, label %if.then57.if.end72_crit_edge
    i32 2, label %if.then57.if.end72_crit_edge226
    i32 4, label %if.then57.if.end72_crit_edge227
  ]

if.then57.if.end72_crit_edge227:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then57.if.end72_crit_edge226:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then57.if.end72_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then57.if.end135_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.end72:                                         ; preds = %if.then57.if.end72_crit_edge, %if.then57.if.end72_crit_edge226, %if.then57.if.end72_crit_edge227
  %num_slaves = getelementptr inbounds %struct.netdev_notifier_bonding_info, ptr %ptr, i32 0, i32 1, i32 1, i32 1
  %23 = ptrtoint ptr %num_slaves to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp74.not = icmp eq i32 %24, 2
  br i1 %cmp74.not, label %if.then79, label %if.end72.if.end135_crit_edge

if.end72.if.end135_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end135

if.then79:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp82 = icmp eq i32 %21, 1
  br i1 %cmp82, label %if.then84, label %if.else102

if.then84:                                        ; preds = %if.then79
  %state = getelementptr inbounds %struct.netdev_notifier_bonding_info, ptr %ptr, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp86 = icmp eq i8 %26, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %port.2)
  %cmp90 = icmp eq i8 %port.2, 1
  br i1 %cmp86, label %if.then88, label %if.else94

if.then88:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %. = select i1 %cmp90, i8 2, i8 1
  br label %if.end135

if.else94:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %.199 = select i1 %cmp90, i8 1, i8 2
  br label %if.end135

if.else102:                                       ; preds = %if.then79
  %link104 = getelementptr inbounds %struct.netdev_notifier_bonding_info, ptr %ptr, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %link104 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %link104, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %port.2)
  %cmp106 = icmp eq i8 %port.2, 1
  %not.cmp106 = xor i1 %cmp106, true
  %.200 = zext i1 %not.cmp106 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %switch = icmp ult i8 %28, 2
  br i1 %switch, label %if.then118, label %if.else125

if.then118:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  %..200 = select i1 %cmp106, i8 1, i8 %.200
  br label %if.end135

if.else125:                                       ; preds = %if.else102
  call void @__sanitizer_cov_trace_pc() #14
  %..200202 = select i1 %cmp106, i8 2, i8 %.200
  %.201.203 = select i1 %cmp106, i8 2, i8 1
  br label %if.end135

if.end135:                                        ; preds = %if.else125, %if.then118, %if.else94, %if.then88, %if.end72.if.end135_crit_edge, %if.then57.if.end135_crit_edge, %if.end54.if.end135_crit_edge
  %do_bond.5.off0 = phi i32 [ 0, %if.end54.if.end135_crit_edge ], [ 1, %if.then118 ], [ 1, %if.else125 ], [ 1, %if.else94 ], [ 1, %if.then88 ], [ 0, %if.end72.if.end135_crit_edge ], [ 0, %if.then57.if.end135_crit_edge ]
  %v2p_port1.3 = phi i8 [ 0, %if.end54.if.end135_crit_edge ], [ %..200, %if.then118 ], [ %..200202, %if.else125 ], [ %.199, %if.else94 ], [ %., %if.then88 ], [ 0, %if.end72.if.end135_crit_edge ], [ 0, %if.then57.if.end135_crit_edge ]
  %v2p_port2.3 = phi i8 [ 0, %if.end54.if.end135_crit_edge ], [ 2, %if.then118 ], [ %.201.203, %if.else125 ], [ %.199, %if.else94 ], [ %., %if.then88 ], [ 0, %if.end72.if.end135_crit_edge ], [ 0, %if.then57.if.end135_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 2848, i32 noundef 56) #16
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end135.cleanup_crit_edge, label %do.body.i

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %if.end135
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #12
  %30 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @mlx4_en_queue_bond_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry4.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mlx4_en_bond_work, ptr %func.i, align 4
  %priv6.i = getelementptr inbounds %struct.mlx4_en_bond, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %priv6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr.i, ptr %priv6.i, align 4
  %is_bonded7.i = getelementptr inbounds %struct.mlx4_en_bond, ptr %call7.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %is_bonded7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %do_bond.5.off0, ptr %is_bonded7.i, align 8
  %port_map.i = getelementptr inbounds %struct.mlx4_en_bond, ptr %call7.i.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %port_map.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %v2p_port1.3, ptr %port_map.i, align 4
  %port2.i = getelementptr inbounds %struct.mlx4_en_bond, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %port2.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %v2p_port2.3, ptr %port2.i, align 1
  %dev.i = getelementptr i8, ptr %1, i32 2312
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %do.body.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

do.body.i.dev_hold.exit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %do.body.i
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !318
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i.i = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %49, %43
  %50 = inttoptr i32 %add.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i.i = add i32 %52, 1
  store i32 %add13.i.i, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !319
  %and.i.i.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !320

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #12, !srcloc !321
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %do.body.i.dev_hold.exit.i_crit_edge
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr.i, align 8
  %workqueue.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %workqueue.i, align 8
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %dev_hold.exit.i, %if.end135.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_update_pfc_stats_bitmap(ptr nocapture noundef readonly %dev, ptr noundef %stats_bitmap, i8 noundef zeroext %rx_ppp, i8 noundef zeroext %rx_pause, i8 noundef zeroext %tx_ppp, i8 noundef zeroext %tx_pause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 61
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags2, align 8
  %and = and i64 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end30_crit_edge, label %if.then

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then:                                          ; preds = %land.lhs.true
  %mutex = getelementptr inbounds %struct.mlx4_en_stats_bitmap, ptr %stats_bitmap, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  tail call void @__bitmap_clear(ptr noundef %stats_bitmap, i32 noundef 35, i32 noundef 54) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rx_ppp)
  %tobool2.not = icmp eq i8 %rx_ppp, 0
  br i1 %tobool2.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 35, i32 noundef 24) #12
  br label %if.end12

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rx_pause)
  %tobool6.not.not = icmp eq i8 %rx_pause, 0
  br i1 %tobool6.not.not, label %if.end.if.end12_crit_edge, label %if.then9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 59, i32 noundef 3) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end.if.end12_crit_edge, %if.end.thread
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_ppp)
  %tobool14.not = icmp eq i8 %tx_ppp, 0
  br i1 %tobool14.not, label %if.end18, label %if.end18.thread

if.end18.thread:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 62, i32 noundef 24) #12
  br label %if.end27

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tx_pause)
  %tobool21.not.not = icmp eq i8 %tx_pause, 0
  br i1 %tobool21.not.not, label %if.end18.if.end27_crit_edge, label %if.then24

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 86, i32 noundef 3) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end18.if.end27_crit_edge, %if.end18.thread
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_en_set_stats_bitmap(ptr nocapture noundef readonly %dev, ptr noundef %stats_bitmap, i8 noundef zeroext %rx_ppp, i8 noundef zeroext %rx_pause, i8 noundef zeroext %tx_ppp, i8 noundef zeroext %tx_pause) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mlx4_en_stats_bitmap, ptr %stats_bitmap, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.35, ptr noundef nonnull @mlx4_en_set_stats_bitmap.__key) #12
  %0 = call ptr @memset(ptr %stats_bitmap, i32 0, i32 20)
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %stats_bitmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stats_bitmap, align 4
  %or.i.i89 = or i32 %4, 207
  store i32 %or.i.i89, ptr %stats_bitmap, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 0, i32 noundef 21) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 21, i32 noundef 10) #12
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i91 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool25.not = icmp eq i32 %and.i91, 0
  br i1 %tobool25.not, label %if.end.if.end29_crit_edge, label %if.then26

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 31, i32 noundef 4) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end.if.end29_crit_edge
  tail call void @mlx4_en_update_pfc_stats_bitmap(ptr noundef %dev, ptr noundef %stats_bitmap, i8 noundef zeroext %rx_ppp, i8 noundef zeroext %rx_pause, i8 noundef zeroext %tx_ppp, i8 noundef zeroext %tx_pause)
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i93 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool33.not = icmp eq i32 %and.i93, 0
  br i1 %tobool33.not, label %if.then34, label %if.end29.if.end37_crit_edge

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 89, i32 noundef 43) #12
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end29.if.end37_crit_edge
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 132, i32 noundef 5) #12
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i95 = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool43.not = icmp eq i32 %and.i95, 0
  br i1 %tobool43.not, label %if.then44, label %if.end37.if.end47_crit_edge

if.end37.if.end47_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__bitmap_set(ptr noundef %stats_bitmap, i32 noundef 137, i32 noundef 4) #12
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end37.if.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_init_netdev(ptr noundef %mdev, i32 noundef %port, ptr noundef %prof) local_unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %vlan_offload_disabled = alloca i8, align 1
  %phv = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 66376, i32 noundef 256, i32 noundef 128) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ring_num = getelementptr %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 1
  %0 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_ring_num, align 4
  %call1 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %call, i32 noundef %1) #12
  %rx_ring_num = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 2
  %2 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring_num, align 4
  %call2 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %call, i32 noundef %3) #12
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev4, ptr %parent, align 8
  %11 = trunc i32 %port to i16
  %conv = add i16 %11, -1
  %dev_port = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 61
  %12 = ptrtoint ptr %dev_port to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %dev_port, align 4
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %13 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 66376)
  %14 = load ptr, ptr %mdev, align 8
  %max_counters = getelementptr inbounds %struct.mlx4_dev, ptr %14, i32 0, i32 3, i32 79
  %15 = ptrtoint ptr %max_counters to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_counters, align 4
  %sub8 = add i32 %16, -1
  %counter_index = getelementptr i8, ptr %call, i32 68340
  %17 = ptrtoint ptr %counter_index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub8, ptr %counter_index, align 4
  %stats_lock = getelementptr i8, ptr %call, i32 2844
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @mlx4_en_init_netdev.__key, i16 noundef signext 3) #12
  %rx_mode_task = getelementptr i8, ptr %call, i32 62620
  tail call void @__init_work(ptr noundef %rx_mode_task, i32 noundef 0) #12
  %18 = ptrtoint ptr %rx_mode_task to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %rx_mode_task, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 62636
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.38, ptr noundef nonnull @mlx4_en_init_netdev.__key.37, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry14 = getelementptr i8, ptr %call, i32 62624
  %19 = ptrtoint ptr %entry14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %entry14, ptr %entry14, align 4
  %prev.i = getelementptr i8, ptr %call, i32 62628
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %entry14, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 62632
  %21 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mlx4_en_do_set_rx_mode, ptr %func, align 4
  %restart_task = getelementptr i8, ptr %call, i32 62664
  tail call void @__init_work(ptr noundef %restart_task, i32 noundef 0) #12
  %22 = ptrtoint ptr %restart_task to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %restart_task, align 8
  %lockdep_map24 = getelementptr i8, ptr %call, i32 62680
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map24, ptr noundef nonnull @.str.40, ptr noundef nonnull @mlx4_en_init_netdev.__key.39, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry26 = getelementptr i8, ptr %call, i32 62668
  %23 = ptrtoint ptr %entry26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry26, ptr %entry26, align 4
  %prev.i724 = getelementptr i8, ptr %call, i32 62672
  %24 = ptrtoint ptr %prev.i724 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry26, ptr %prev.i724, align 4
  %func28 = getelementptr i8, ptr %call, i32 62676
  %25 = ptrtoint ptr %func28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx4_en_restart, ptr %func28, align 4
  %linkstate_task = getelementptr i8, ptr %call, i32 62708
  tail call void @__init_work(ptr noundef %linkstate_task, i32 noundef 0) #12
  %26 = ptrtoint ptr %linkstate_task to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %linkstate_task, align 4
  %lockdep_map37 = getelementptr i8, ptr %call, i32 62724
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map37, ptr noundef nonnull @.str.42, ptr noundef nonnull @mlx4_en_init_netdev.__key.41, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry39 = getelementptr i8, ptr %call, i32 62712
  %27 = ptrtoint ptr %entry39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry39, ptr %entry39, align 4
  %prev.i725 = getelementptr i8, ptr %call, i32 62716
  %28 = ptrtoint ptr %prev.i725 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry39, ptr %prev.i725, align 4
  %func41 = getelementptr i8, ptr %call, i32 62720
  %29 = ptrtoint ptr %func41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mlx4_en_linkstate_work, ptr %func41, align 4
  %stats_task = getelementptr i8, ptr %call, i32 62752
  tail call void @__init_work(ptr noundef %stats_task, i32 noundef 0) #12
  %30 = ptrtoint ptr %stats_task to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %stats_task, align 8
  %lockdep_map53 = getelementptr i8, ptr %call, i32 62768
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map53, ptr noundef nonnull @.str.44, ptr noundef nonnull @mlx4_en_init_netdev.__key.43, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry56 = getelementptr i8, ptr %call, i32 62756
  %31 = ptrtoint ptr %entry56 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry56, ptr %entry56, align 4
  %prev.i726 = getelementptr i8, ptr %call, i32 62760
  %32 = ptrtoint ptr %prev.i726 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry56, ptr %prev.i726, align 4
  %func59 = getelementptr i8, ptr %call, i32 62764
  %33 = ptrtoint ptr %func59 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mlx4_en_do_get_stats, ptr %func59, align 4
  %timer = getelementptr i8, ptr %call, i32 62796
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.46, ptr noundef nonnull @mlx4_en_init_netdev.__key.45) #12
  %service_task = getelementptr i8, ptr %call, i32 62852
  tail call void @__init_work(ptr noundef %service_task, i32 noundef 0) #12
  %34 = ptrtoint ptr %service_task to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %service_task, align 4
  %lockdep_map78 = getelementptr i8, ptr %call, i32 62868
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map78, ptr noundef nonnull @.str.48, ptr noundef nonnull @mlx4_en_init_netdev.__key.47, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry81 = getelementptr i8, ptr %call, i32 62856
  %35 = ptrtoint ptr %entry81 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry81, ptr %entry81, align 4
  %prev.i727 = getelementptr i8, ptr %call, i32 62860
  %36 = ptrtoint ptr %prev.i727 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry81, ptr %prev.i727, align 4
  %func84 = getelementptr i8, ptr %call, i32 62864
  %37 = ptrtoint ptr %func84 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mlx4_en_service_task, ptr %func84, align 4
  %timer89 = getelementptr i8, ptr %call, i32 62896
  tail call void @init_timer_key(ptr noundef %timer89, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.50, ptr noundef nonnull @mlx4_en_init_netdev.__key.49) #12
  %filters = getelementptr i8, ptr %call, i32 68540
  %38 = ptrtoint ptr %filters to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %filters, ptr %filters, align 4
  %prev.i728 = getelementptr i8, ptr %call, i32 68544
  %39 = ptrtoint ptr %prev.i728 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %filters, ptr %prev.i728, align 4
  %filters_lock = getelementptr i8, ptr %call, i32 68492
  tail call void @__raw_spin_lock_init(ptr noundef %filters_lock, ptr noundef nonnull @.str.52, ptr noundef nonnull @mlx4_en_init_netdev.__key.51, i16 noundef signext 3) #12
  %dev98 = getelementptr i8, ptr %call, i32 2312
  %40 = ptrtoint ptr %dev98 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call, ptr %dev98, align 8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %mdev, ptr %add.ptr.i, align 8
  %pdev100 = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 1
  %42 = ptrtoint ptr %pdev100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev100, align 4
  %dev101 = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %ddev = getelementptr i8, ptr %call, i32 67300
  %44 = ptrtoint ptr %ddev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev101, ptr %ddev, align 4
  %prof102 = getelementptr i8, ptr %call, i32 2308
  %45 = ptrtoint ptr %prof102 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %prof, ptr %prof102, align 4
  %port103 = getelementptr i8, ptr %call, i32 51652
  %46 = ptrtoint ptr %port103 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %port, ptr %port103, align 4
  %port_up = getelementptr i8, ptr %call, i32 51648
  %47 = ptrtoint ptr %port_up to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %port_up, align 8
  %48 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %prof, align 4
  %flags104 = getelementptr i8, ptr %call, i32 61440
  %50 = ptrtoint ptr %flags104 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %flags104, align 8
  %pflags = getelementptr i8, ptr %call, i32 68628
  %51 = ptrtoint ptr %pflags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %pflags, align 4
  %ctrl_flags = getelementptr i8, ptr %call, i32 61436
  %52 = ptrtoint ptr %ctrl_flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 14, ptr %ctrl_flags, align 4
  %max_num_tx_rings_p_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 7, i32 5
  %53 = ptrtoint ptr %max_num_tx_rings_p_up to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %max_num_tx_rings_p_up, align 1
  %num_tx_rings_p_up = getelementptr i8, ptr %call, i32 61444
  %55 = ptrtoint ptr %num_tx_rings_p_up to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %num_tx_rings_p_up, align 4
  %tx_work_limit = getelementptr i8, ptr %call, i32 61448
  %56 = ptrtoint ptr %tx_work_limit to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 256, ptr %tx_work_limit, align 8
  %rss_key = getelementptr i8, ptr %call, i32 68632
  tail call void @netdev_rss_key_fill(ptr noundef %rss_key, i32 noundef 40) #12
  %57 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_ring_num, align 4
  %arrayidx110 = getelementptr i8, ptr %call, i32 61452
  %59 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not = icmp eq i32 %58, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end114

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end114:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %60 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx116 = getelementptr i8, ptr %call, i32 61508
  %61 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %arrayidx116, align 4
  %tobool119.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool119.not, label %if.end114.out_crit_edge, label %if.end121

if.end114.out_crit_edge:                          ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end121:                                        ; preds = %if.end114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i729 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx123 = getelementptr i8, ptr %call, i32 62028
  %63 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i729, ptr %arrayidx123, align 4
  %tobool126.not = icmp eq ptr %call7.i.i.i729, null
  br i1 %tobool126.not, label %if.end121.out_crit_edge, label %if.end121.for.inc_crit_edge

if.end121.for.inc_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc:                                          ; preds = %if.end121.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %arrayidx108.1 = getelementptr %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx108.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx108.1, align 4
  %arrayidx110.1 = getelementptr i8, ptr %call, i32 61456
  %66 = ptrtoint ptr %arrayidx110.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx110.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.1 = icmp eq i32 %65, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end114.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end114.1:                                      ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %67 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx116.1 = getelementptr i8, ptr %call, i32 61512
  %68 = ptrtoint ptr %arrayidx116.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i.i.1, ptr %arrayidx116.1, align 4
  %tobool119.not.1 = icmp eq ptr %call7.i.i.i.1, null
  br i1 %tobool119.not.1, label %if.end114.1.out_crit_edge, label %if.end121.1

if.end114.1.out_crit_edge:                        ; preds = %if.end114.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end121.1:                                      ; preds = %if.end114.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %69 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i729.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %69, i32 noundef 3520, i32 noundef 1024) #16
  %arrayidx123.1 = getelementptr i8, ptr %call, i32 62032
  %70 = ptrtoint ptr %arrayidx123.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i.i729.1, ptr %arrayidx123.1, align 4
  %tobool126.not.1 = icmp eq ptr %call7.i.i.i729.1, null
  br i1 %tobool126.not.1, label %if.end121.1.out_crit_edge, label %if.end121.1.for.inc.1_crit_edge

if.end121.1.for.inc.1_crit_edge:                  ; preds = %if.end121.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end121.1.out_crit_edge:                        ; preds = %if.end121.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc.1:                                        ; preds = %if.end121.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %71 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %rx_ring_num, align 4
  %rx_ring_num130 = getelementptr i8, ptr %call, i32 61460
  %73 = ptrtoint ptr %rx_ring_num130 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %rx_ring_num130, align 4
  %74 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mdev, align 8
  %cqe_size = getelementptr inbounds %struct.mlx4_dev, ptr %75, i32 0, i32 3, i32 83
  %76 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cqe_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %77)
  %cmp133 = icmp eq i32 %77, 64
  %cond = zext i1 %cmp133 to i32
  %cqe_factor = getelementptr i8, ptr %call, i32 51688
  %78 = ptrtoint ptr %cqe_factor to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond, ptr %cqe_factor, align 8
  %79 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mdev, align 8
  %cqe_size137 = getelementptr inbounds %struct.mlx4_dev, ptr %80, i32 0, i32 3, i32 83
  %81 = ptrtoint ptr %cqe_size137 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %cqe_size137, align 4
  %cqe_size138 = getelementptr i8, ptr %call, i32 51692
  %83 = ptrtoint ptr %cqe_size138 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %cqe_size138, align 4
  %mac_index = getelementptr i8, ptr %call, i32 51676
  %84 = ptrtoint ptr %mac_index to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %mac_index, align 4
  %msg_enable = getelementptr i8, ptr %call, i32 51576
  %85 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 20, ptr %msg_enable, align 8
  %86 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %add.ptr.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %91, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool142.not = icmp eq i32 %and.i, 0
  br i1 %tobool142.not, label %for.body148.preheader, label %for.inc.1.if.end172_crit_edge

for.inc.1.if.end172_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172

for.body148.preheader:                            ; preds = %for.inc.1
  %uglygep = getelementptr i8, ptr %call, i32 68363
  %92 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 -1, ptr %uglygep, align 1
  %arrayidx149 = getelementptr i8, ptr %call, i32 68371
  %93 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %arrayidx149, align 1
  %arrayidx149.1 = getelementptr i8, ptr %call, i32 68372
  %94 = ptrtoint ptr %arrayidx149.1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %arrayidx149.1, align 1
  %arrayidx149.2 = getelementptr i8, ptr %call, i32 68373
  %95 = ptrtoint ptr %arrayidx149.2 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 2, ptr %arrayidx149.2, align 1
  %arrayidx149.3 = getelementptr i8, ptr %call, i32 68374
  %96 = ptrtoint ptr %arrayidx149.3 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 3, ptr %arrayidx149.3, align 1
  %arrayidx149.4 = getelementptr i8, ptr %call, i32 68375
  %97 = ptrtoint ptr %arrayidx149.4 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %arrayidx149.4, align 1
  %arrayidx149.5 = getelementptr i8, ptr %call, i32 68376
  %98 = ptrtoint ptr %arrayidx149.5 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 5, ptr %arrayidx149.5, align 1
  %arrayidx149.6 = getelementptr i8, ptr %call, i32 68377
  %99 = ptrtoint ptr %arrayidx149.6 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 6, ptr %arrayidx149.6, align 1
  %arrayidx149.7 = getelementptr i8, ptr %call, i32 68378
  %100 = ptrtoint ptr %arrayidx149.7 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 7, ptr %arrayidx149.7, align 1
  %dcbx_cap = getelementptr i8, ptr %call, i32 68488
  %101 = ptrtoint ptr %dcbx_cap to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 13, ptr %dcbx_cap, align 8
  %102 = ptrtoint ptr %flags104 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %flags104, align 8
  %or = or i32 %103, 3
  store i32 %or, ptr %flags104, align 8
  %cee_config = getelementptr i8, ptr %call, i32 68452
  %104 = ptrtoint ptr %cee_config to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %cee_config, align 4
  %uglygep744 = getelementptr i8, ptr %call, i32 68456
  %105 = call ptr @memset(ptr %uglygep744, i32 0, i32 32)
  %106 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mdev, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %107, i32 0, i32 3, i32 61
  %108 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %flags2, align 8
  %and = and i64 %109, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool168.not = icmp eq i64 %and, 0
  br i1 %tobool168.not, label %if.else, label %for.body148.preheader.if.end172.sink.split_crit_edge

for.body148.preheader.if.end172.sink.split_crit_edge: ; preds = %for.body148.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end172.sink.split

if.else:                                          ; preds = %for.body148.preheader
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.54) #12
  br label %if.end172.sink.split

if.end172.sink.split:                             ; preds = %if.else, %for.body148.preheader.if.end172.sink.split_crit_edge
  %mlx4_en_dcbnl_ops.sink = phi ptr [ @mlx4_en_dcbnl_pfc_ops, %if.else ], [ @mlx4_en_dcbnl_ops, %for.body148.preheader.if.end172.sink.split_crit_edge ]
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 139
  %110 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %mlx4_en_dcbnl_ops.sink, ptr %dcbnl_ops, align 16
  br label %if.end172

if.end172:                                        ; preds = %if.end172.sink.split, %for.inc.1.if.end172_crit_edge
  %uglygep745 = getelementptr i8, ptr %call, i32 67304
  %111 = call ptr @memset(ptr %uglygep745, i32 0, i32 1024)
  %112 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mdev, align 8
  %114 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %port103, align 4
  %arrayidx184 = getelementptr %struct.mlx4_dev, ptr %113, i32 0, i32 3, i32 7, i32 %115
  %116 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx184, align 4
  %max_mtu = getelementptr i8, ptr %call, i32 51680
  %118 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %max_mtu, align 8
  %119 = load ptr, ptr %mdev, align 8
  %arrayidx188 = getelementptr %struct.mlx4_dev, ptr %119, i32 0, i32 3, i32 90, i32 %115
  %120 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx188, align 1
  %122 = and i8 %121, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool191.not = icmp eq i8 %122, 0
  br i1 %tobool191.not, label %if.end172.if.end195_crit_edge, label %if.then192

if.end172.if.end195_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end195

if.then192:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  %123 = ptrtoint ptr %flags104 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags104, align 8
  %or194 = or i32 %124, 32
  store i32 %or194, ptr %flags104, align 8
  br label %if.end195

if.end195:                                        ; preds = %if.then192, %if.end172.if.end195_crit_edge
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 56
  %125 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 6, ptr %addr_len, align 1
  %126 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mdev, align 8
  %128 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %port103, align 4
  %arrayidx199 = getelementptr %struct.mlx4_dev, ptr %127, i32 0, i32 3, i32 6, i32 %129
  %130 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %arrayidx199, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %132 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %133 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %134 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %135 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %136 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %conv.i.i = trunc i64 %131 to i8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %conv.i.i, ptr %136, align 1
  %shr.i.i = lshr i64 %131, 8
  %conv.1.i.i = trunc i64 %shr.i.i to i8
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv.1.i.i, ptr %135, align 1
  %shr.1.i.i = lshr i64 %131, 16
  %conv.2.i.i = trunc i64 %shr.1.i.i to i8
  %139 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv.2.i.i, ptr %134, align 1
  %shr.2.i.i = lshr i64 %131, 24
  %conv.3.i.i = trunc i64 %shr.2.i.i to i8
  %140 = ptrtoint ptr %133 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv.3.i.i, ptr %133, align 1
  %shr.3.i.i = lshr i64 %131, 32
  %conv.4.i.i = trunc i64 %shr.3.i.i to i8
  %141 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv.4.i.i, ptr %132, align 1
  %shr.4.i.i = lshr i64 %131, 40
  %conv.5.i.i = trunc i64 %shr.4.i.i to i8
  %142 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv.5.i.i, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %143 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_addr, align 64
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %147 = and i32 %146, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %tobool.i.not.i = icmp eq i32 %147, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end195.if.then201_crit_edge

if.end195.if.then201_crit_edge:                   ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then201

is_valid_ether_addr.exit:                         ; preds = %if.end195
  %add.ptr.i.i = getelementptr i8, ptr %144, i32 4
  %148 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i730 = zext i16 %149 to i32
  %or.i.i = or i32 %146, %conv.i.i730
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then201_crit_edge, label %if.else204

is_valid_ether_addr.exit.if.then201_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then201

if.then201:                                       ; preds = %is_valid_ether_addr.exit.if.then201_crit_edge, %if.end195.if.then201_crit_edge
  %150 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %port103, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.55, i32 noundef %151, ptr noundef %144) #12
  br label %out

if.else204:                                       ; preds = %is_valid_ether_addr.exit
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 8
  %flags.i731 = getelementptr inbounds %struct.mlx4_dev, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %flags.i731 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %flags.i731, align 4
  %and.i732 = and i32 %157, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i732)
  %tobool208.not = icmp eq i32 %and.i732, 0
  br i1 %tobool208.not, label %if.else204.if.end221_crit_edge, label %land.lhs.true

if.else204.if.end221_crit_edge:                   ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end221

land.lhs.true:                                    ; preds = %if.else204
  %port_random_macs = getelementptr inbounds %struct.mlx4_dev, ptr %155, i32 0, i32 8
  %158 = ptrtoint ptr %port_random_macs to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %port_random_macs, align 1
  %conv211 = zext i8 %159 to i32
  %160 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %port103, align 4
  %shl = shl nuw i32 1, %161
  %and213 = and i32 %shl, %conv211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %land.lhs.true.if.end221_crit_edge, label %if.then215

land.lhs.true.if.end221_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end221

if.then215:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %162 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %addr_assign_type, align 4
  %164 = or i8 %163, 1
  store i8 %164, ptr %addr_assign_type, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.56, ptr noundef %144) #12
  br label %if.end221

if.end221:                                        ; preds = %if.then215, %land.lhs.true.if.end221_crit_edge, %if.else204.if.end221_crit_edge
  %current_mac = getelementptr i8, ptr %call, i32 51668
  %165 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev_addr, align 64
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_loadN_noabort(i32 %167, i32 8)
  %168 = load i64, ptr %166, align 1
  %169 = ptrtoint ptr %current_mac to i32
  call void @__asan_storeN_noabort(i32 %169, i32 8)
  store i64 %168, ptr %current_mac, align 4
  %stride = getelementptr i8, ptr %call, i32 51664
  %170 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 64, ptr %stride, align 8
  %call224 = call fastcc i32 @mlx4_en_alloc_resources(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end227, label %if.end221.out_crit_edge

if.end221.out_crit_edge:                          ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end227:                                        ; preds = %if.end221
  %hwtstamp_config = getelementptr i8, ptr %call, i32 68328
  %171 = ptrtoint ptr %hwtstamp_config to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %hwtstamp_config, align 8
  %tx_type = getelementptr i8, ptr %call, i32 68332
  %172 = ptrtoint ptr %tx_type to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %tx_type, align 4
  %rx_filter = getelementptr i8, ptr %call, i32 68336
  %173 = ptrtoint ptr %rx_filter to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %rx_filter, align 8
  %174 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mdev, align 8
  %res = getelementptr i8, ptr %call, i32 51588
  %call232 = call i32 @mlx4_alloc_hwq_res(ptr noundef %175, ptr noundef %res, i32 noundef 4096) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end235, label %if.then234

if.then234:                                       ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.57) #12
  br label %out

if.end235:                                        ; preds = %if.end227
  %allocated = getelementptr i8, ptr %call, i32 51660
  %176 = ptrtoint ptr %allocated to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 1, ptr %allocated, align 4
  %177 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %add.ptr.i, align 8
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 8
  %flags.i733 = getelementptr inbounds %struct.mlx4_dev, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %flags.i733 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flags.i733, align 4
  %and.i734 = and i32 %182, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i734)
  %tobool239.not = icmp eq i32 %and.i734, 0
  %spec.select = select i1 %tobool239.not, ptr @mlx4_netdev_ops, ptr @mlx4_netdev_ops_master
  %183 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %spec.select, ptr %183, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %185 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1500, ptr %watchdog_timeo, align 4
  %tx_ring_num244 = getelementptr i8, ptr %call, i32 61452
  %186 = ptrtoint ptr %tx_ring_num244 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tx_ring_num244, align 4
  %call246 = call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %call, i32 noundef %187) #12
  %188 = ptrtoint ptr %rx_ring_num130 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rx_ring_num130, align 4
  %call248 = call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %call, i32 noundef %189) #12
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %190 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @mlx4_en_ethtool_ops, ptr %ethtool_ops, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %191 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %191)
  store i64 19, ptr %hw_features, align 8
  %LSO_support = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 8
  %192 = ptrtoint ptr %LSO_support to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %LSO_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool249.not = icmp eq i32 %193, 0
  %spec.store.select = select i1 %tobool249.not, i64 19, i64 1114131
  %194 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %spec.store.select, ptr %hw_features, align 8
  %195 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mdev, align 8
  %tunnel_offload_mode = getelementptr inbounds %struct.mlx4_dev, ptr %196, i32 0, i32 3, i32 89
  %197 = ptrtoint ptr %tunnel_offload_mode to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %tunnel_offload_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp256 = icmp eq i32 %198, 1
  br i1 %cmp256, label %if.then258, label %if.end235.if.end262_crit_edge

if.end235.if.end262_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end262

if.then258:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #14
  %or260 = or i64 %spec.store.select, 469762048
  %199 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 %or260, ptr %hw_features, align 8
  %gso_partial_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 29
  %200 = ptrtoint ptr %gso_partial_features to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 134217728, ptr %gso_partial_features, align 64
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 27
  %201 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 1099982503954, ptr %hw_enc_features, align 16
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 152
  %202 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @mlx4_udp_tunnels, ptr %udp_tunnel_nic_info, align 4
  br label %if.end262

if.end262:                                        ; preds = %if.then258, %if.end235.if.end262_crit_edge
  %203 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 26
  %205 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 %204, ptr %vlan_features, align 8
  %or270 = or i64 %204, 1649267442592
  %features271 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %206 = ptrtoint ptr %features271 to i32
  call void @__asan_store8_noabort(i32 %206)
  store i64 %or270, ptr %features271, align 16
  %or273 = or i64 %204, 6047313953152
  store i64 %or273, ptr %hw_features, align 8
  %207 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %mdev, align 8
  %flags2276 = getelementptr inbounds %struct.mlx4_dev, ptr %208, i32 0, i32 3, i32 61
  %209 = ptrtoint ptr %flags2276 to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %flags2276, align 8
  %and277 = and i64 %210, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and277)
  %tobool278.not = icmp eq i64 %and277, 0
  br i1 %tobool278.not, label %if.then279, label %if.end262.if.end284_crit_edge

if.end262.if.end284_crit_edge:                    ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end284

if.then279:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #14
  %or281 = or i64 %204, 212755499975584
  %211 = ptrtoint ptr %features271 to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %or281, ptr %features271, align 16
  %or283 = or i64 %204, 76416058130816
  %212 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 %or283, ptr %hw_features, align 8
  br label %if.end284

if.end284:                                        ; preds = %if.then279, %if.end262.if.end284_crit_edge
  %213 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %mdev, align 8
  %flags.i735 = getelementptr inbounds %struct.mlx4_dev, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %flags.i735 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %flags.i735, align 4
  %and.i736 = and i32 %216, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i736)
  %tobool287.not = icmp eq i32 %and.i736, 0
  br i1 %tobool287.not, label %if.else314, label %if.then288

if.then288:                                       ; preds = %if.end284
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %vlan_offload_disabled) #12
  %217 = ptrtoint ptr %vlan_offload_disabled to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 -1, ptr %vlan_offload_disabled, align 1, !annotation !316
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phv) #12
  %218 = ptrtoint ptr %phv to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 -1, ptr %phv, align 4, !annotation !316
  %conv290 = trunc i32 %port to i8
  %call291 = call i32 @get_phv_bit(ptr noundef %214, i8 noundef zeroext %conv290, ptr noundef nonnull %phv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %land.lhs.true293, label %if.then288.if.end300_crit_edge

if.then288.if.end300_crit_edge:                   ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

land.lhs.true293:                                 ; preds = %if.then288
  %219 = ptrtoint ptr %phv to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %phv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool294.not = icmp eq i32 %220, 0
  br i1 %tobool294.not, label %land.lhs.true293.if.end300_crit_edge, label %if.then295

land.lhs.true293.if.end300_crit_edge:             ; preds = %land.lhs.true293
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end300

if.then295:                                       ; preds = %land.lhs.true293
  call void @__sanitizer_cov_trace_pc() #14
  %221 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %hw_features, align 8
  %or297 = or i64 %222, 35184372088832
  store i64 %or297, ptr %hw_features, align 8
  %223 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pflags, align 4
  %or299 = or i32 %224, 2
  store i32 %or299, ptr %pflags, align 4
  br label %if.end300

if.end300:                                        ; preds = %if.then295, %land.lhs.true293.if.end300_crit_edge, %if.then288.if.end300_crit_edge
  %225 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mdev, align 8
  %call303 = call i32 @mlx4_get_is_vlan_offload_disabled(ptr noundef %226, i8 noundef zeroext %conv290, ptr noundef nonnull %vlan_offload_disabled) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %land.lhs.true305, label %if.end300.if.end313_crit_edge

if.end300.if.end313_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end313

land.lhs.true305:                                 ; preds = %if.end300
  %227 = ptrtoint ptr %vlan_offload_disabled to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %vlan_offload_disabled, align 1, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool306.not = icmp eq i8 %228, 0
  br i1 %tobool306.not, label %land.lhs.true305.if.end313_crit_edge, label %if.then308

land.lhs.true305.if.end313_crit_edge:             ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end313

if.then308:                                       ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #14
  %229 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %hw_features, align 8
  %and310 = and i64 %230, -105553116266881
  store i64 %and310, ptr %hw_features, align 8
  %231 = ptrtoint ptr %features271 to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %features271, align 16
  %and312 = and i64 %232, -105553116266881
  store i64 %and312, ptr %features271, align 16
  br label %if.end313

if.end313:                                        ; preds = %if.then308, %land.lhs.true305.if.end313_crit_edge, %if.end300.if.end313_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phv) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %vlan_offload_disabled) #12
  br label %if.end330

if.else314:                                       ; preds = %if.end284
  %flags2317 = getelementptr inbounds %struct.mlx4_dev, ptr %214, i32 0, i32 3, i32 61
  %233 = ptrtoint ptr %flags2317 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %flags2317, align 8
  %235 = and i64 %234, 1610612736
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %235)
  %236 = icmp eq i64 %235, 536870912
  br i1 %236, label %if.then326, label %if.else314.if.end330_crit_edge

if.else314.if.end330_crit_edge:                   ; preds = %if.else314
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end330

if.then326:                                       ; preds = %if.else314
  call void @__sanitizer_cov_trace_pc() #14
  %237 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %hw_features, align 8
  %or328 = or i64 %238, 35184372088832
  store i64 %or328, ptr %hw_features, align 8
  br label %if.end330

if.end330:                                        ; preds = %if.then326, %if.else314.if.end330_crit_edge, %if.end313
  %239 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mdev, align 8
  %flags333 = getelementptr inbounds %struct.mlx4_dev, ptr %240, i32 0, i32 3, i32 60
  %241 = ptrtoint ptr %flags333 to i32
  call void @__asan_load8_noabort(i32 %241)
  %242 = load i64, ptr %flags333, align 8
  %and334 = and i64 %242, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and334)
  %tobool335.not = icmp eq i64 %and334, 0
  br i1 %tobool335.not, label %if.end330.if.end339_crit_edge, label %if.then336

if.end330.if.end339_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end339

if.then336:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #14
  %243 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %243)
  %244 = load i64, ptr %hw_features, align 8
  %or338 = or i64 %244, 8796093022208
  store i64 %or338, ptr %hw_features, align 8
  br label %if.end339

if.end339:                                        ; preds = %if.then336, %if.end330.if.end339_crit_edge
  %245 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mdev, align 8
  %flags2342 = getelementptr inbounds %struct.mlx4_dev, ptr %246, i32 0, i32 3, i32 61
  %247 = ptrtoint ptr %flags2342 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %flags2342, align 8
  %and343 = and i64 %248, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and343)
  %tobool344.not = icmp eq i64 %and343, 0
  br i1 %tobool344.not, label %if.end339.if.end348_crit_edge, label %if.then345

if.end339.if.end348_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end348

if.then345:                                       ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #14
  %249 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %hw_features, align 8
  %or347 = or i64 %250, 17592186044416
  store i64 %or347, ptr %hw_features, align 8
  br label %if.end348

if.end348:                                        ; preds = %if.then345, %if.end339.if.end348_crit_edge
  %251 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mdev, align 8
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %252, i32 0, i32 3, i32 50
  %253 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %254)
  %cmp351 = icmp eq i32 %254, 2
  br i1 %cmp351, label %land.lhs.true353, label %if.end348.if.end361_crit_edge

if.end348.if.end361_crit_edge:                    ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end361

land.lhs.true353:                                 ; preds = %if.end348
  %dmfs_high_steer_mode = getelementptr inbounds %struct.mlx4_dev, ptr %252, i32 0, i32 3, i32 51
  %255 = ptrtoint ptr %dmfs_high_steer_mode to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %dmfs_high_steer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %256)
  %cmp356.not = icmp eq i32 %256, 2
  br i1 %cmp356.not, label %land.lhs.true353.if.end361_crit_edge, label %if.then358

land.lhs.true353.if.end361_crit_edge:             ; preds = %land.lhs.true353
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end361

if.then358:                                       ; preds = %land.lhs.true353
  call void @__sanitizer_cov_trace_pc() #14
  %257 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %hw_features, align 8
  %or360 = or i64 %258, 274877906944
  store i64 %or360, ptr %hw_features, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then358, %land.lhs.true353.if.end361_crit_edge, %if.end348.if.end361_crit_edge
  %259 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mdev, align 8
  %steering_mode364 = getelementptr inbounds %struct.mlx4_dev, ptr %260, i32 0, i32 3, i32 50
  %261 = ptrtoint ptr %steering_mode364 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %steering_mode364, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %cmp365.not = icmp eq i32 %262, 0
  br i1 %cmp365.not, label %if.end361.if.end369_crit_edge, label %if.then367

if.end361.if.end369_crit_edge:                    ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end369

if.then367:                                       ; preds = %if.end361
  call void @__sanitizer_cov_trace_pc() #14
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %263 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %priv_flags, align 16
  %or368 = or i64 %264, 4096
  store i64 %or368, ptr %priv_flags, align 16
  br label %if.end369

if.end369:                                        ; preds = %if.then367, %if.end361.if.end369_crit_edge
  %265 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mdev, align 8
  %flags2372 = getelementptr inbounds %struct.mlx4_dev, ptr %266, i32 0, i32 3, i32 61
  %267 = ptrtoint ptr %flags2372 to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %flags2372, align 8
  %and373 = and i64 %268, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and373)
  %tobool374.not = icmp eq i64 %and373, 0
  br i1 %tobool374.not, label %if.else376, label %if.end369.if.end387_crit_edge

if.end369.if.end387_crit_edge:                    ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end387

if.else376:                                       ; preds = %if.end369
  %and380 = and i64 %268, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and380)
  %tobool381.not = icmp eq i64 %and380, 0
  br i1 %tobool381.not, label %if.else384, label %if.else376.if.end387_crit_edge

if.else376.if.end387_crit_edge:                   ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end387

if.else384:                                       ; preds = %if.else376
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.58) #12
  br label %if.end387

if.end387:                                        ; preds = %if.else384, %if.else376.if.end387_crit_edge, %if.end369.if.end387_crit_edge
  %.sink = phi i8 [ 1, %if.else384 ], [ 1, %if.end369.if.end387_crit_edge ], [ 2, %if.else376.if.end387_crit_edge ]
  %rss_hash_fn383 = getelementptr i8, ptr %call, i32 68672
  %269 = ptrtoint ptr %rss_hash_fn383 to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 %.sink, ptr %rss_hash_fn383, align 8
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %270 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 68, ptr %min_mtu, align 8
  %271 = ptrtoint ptr %max_mtu to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %max_mtu, align 8
  %max_mtu389 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %273 = ptrtoint ptr %max_mtu389 to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %272, ptr %max_mtu389, align 4
  %arrayidx390 = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 3, i32 %port
  %274 = ptrtoint ptr %arrayidx390 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %call, ptr %arrayidx390, align 4
  %arrayidx391 = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 4, i32 %port
  %275 = ptrtoint ptr %arrayidx391 to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr null, ptr %arrayidx391, align 4
  call void @netif_carrier_off(ptr noundef nonnull %call) #12
  %rx_frames.i = getelementptr i8, ptr %call, i32 51546
  %276 = ptrtoint ptr %rx_frames.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 44, ptr %rx_frames.i, align 2
  %rx_usecs.i = getelementptr i8, ptr %call, i32 51544
  %277 = ptrtoint ptr %rx_usecs.i to i32
  call void @__asan_store2_noabort(i32 %277)
  store i16 16, ptr %rx_usecs.i, align 8
  %tx_frames.i = getelementptr i8, ptr %call, i32 51550
  %278 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_store2_noabort(i32 %278)
  store i16 16, ptr %tx_frames.i, align 2
  %tx_usecs.i = getelementptr i8, ptr %call, i32 51548
  %279 = ptrtoint ptr %tx_usecs.i to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 16, ptr %tx_usecs.i, align 4
  %280 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %msg_enable, align 8
  %and.i737 = and i32 %281, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i737)
  %tobool.not.i = icmp eq i32 %and.i737, 0
  br i1 %tobool.not.i, label %if.end387.do.end.i_crit_edge, label %if.then.i

if.end387.do.end.i_crit_edge:                     ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then.i:                                        ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #14
  %282 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %dev98, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %283, i32 0, i32 20
  %284 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %mtu.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.151, i32 noundef %285, i32 noundef 44, i32 noundef 16) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end387.do.end.i_crit_edge
  %286 = ptrtoint ptr %rx_ring_num130 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %rx_ring_num130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %cmp72.not.i = icmp eq i32 %287, 0
  br i1 %cmp72.not.i, label %do.end.i.for.cond10.preheader.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.cond10.preheader.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond10.preheader.i

for.cond10.preheader.i:                           ; preds = %for.body.i.for.cond10.preheader.i_crit_edge, %do.end.i.for.cond10.preheader.i_crit_edge
  %288 = ptrtoint ptr %tx_ring_num244 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %tx_ring_num244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %cmp1674.not.i = icmp eq i32 %289, 0
  br i1 %cmp1674.not.i, label %for.cond10.preheader.i.for.inc28.i_crit_edge, label %for.body18.lr.ph.i

for.cond10.preheader.i.for.inc28.i_crit_edge:     ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc28.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %i.073.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 55, i32 %i.073.i
  %290 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx.i, align 4
  %292 = ptrtoint ptr %rx_frames.i to i32
  call void @__asan_load2_noabort(i32 %292)
  %293 = load i16, ptr %rx_frames.i, align 2
  %moder_cnt.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %291, i32 0, i32 10
  %294 = ptrtoint ptr %moder_cnt.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 %293, ptr %moder_cnt.i, align 2
  %295 = ptrtoint ptr %rx_usecs.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %rx_usecs.i, align 8
  %moder_time.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %291, i32 0, i32 9
  %297 = ptrtoint ptr %moder_time.i to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 %296, ptr %moder_time.i, align 8
  %arrayidx7.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 12, i32 %i.073.i
  %298 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 65535, ptr %arrayidx7.i, align 4
  %arrayidx8.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 8, i32 %i.073.i
  %299 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 0, ptr %arrayidx8.i, align 4
  %arrayidx9.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 10, i32 %i.073.i
  %300 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 0, ptr %arrayidx9.i, align 4
  %inc.i = add nuw i32 %i.073.i, 1
  %301 = ptrtoint ptr %rx_ring_num130 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %rx_ring_num130, align 4
  %cmp.i = icmp ult i32 %inc.i, %302
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond10.preheader.i_crit_edge

for.body.i.for.cond10.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond10.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body18.lr.ph.i:                               ; preds = %for.cond10.preheader.i
  %arrayidx19.i = getelementptr i8, ptr %call, i32 62028
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %i.175.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc26.i, %for.body18.i.for.body18.i_crit_edge ]
  %303 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %arrayidx19.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %304, i32 %i.175.i
  %305 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %arrayidx20.i, align 4
  %307 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %tx_frames.i, align 2
  %moder_cnt22.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %306, i32 0, i32 10
  %309 = ptrtoint ptr %moder_cnt22.i to i32
  call void @__asan_store2_noabort(i32 %309)
  store i16 %308, ptr %moder_cnt22.i, align 2
  %310 = ptrtoint ptr %tx_usecs.i to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %tx_usecs.i, align 4
  %moder_time24.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %306, i32 0, i32 9
  %312 = ptrtoint ptr %moder_time24.i to i32
  call void @__asan_store2_noabort(i32 %312)
  store i16 %311, ptr %moder_time24.i, align 8
  %inc26.i = add nuw i32 %i.175.i, 1
  %313 = ptrtoint ptr %tx_ring_num244 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %tx_ring_num244, align 4
  %cmp16.i = icmp ult i32 %inc26.i, %314
  br i1 %cmp16.i, label %for.body18.i.for.body18.i_crit_edge, label %for.body18.i.for.inc28.i_crit_edge

for.body18.i.for.inc28.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc28.i

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.i

for.inc28.i:                                      ; preds = %for.body18.i.for.inc28.i_crit_edge, %for.cond10.preheader.i.for.inc28.i_crit_edge
  %arrayidx15.1.i = getelementptr i8, ptr %call, i32 61456
  %315 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx15.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %cmp1674.not.1.i = icmp eq i32 %316, 0
  br i1 %cmp1674.not.1.i, label %for.inc28.i.mlx4_en_set_default_moderation.exit_crit_edge, label %for.body18.lr.ph.1.i

for.inc28.i.mlx4_en_set_default_moderation.exit_crit_edge: ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_set_default_moderation.exit

for.body18.lr.ph.1.i:                             ; preds = %for.inc28.i
  %arrayidx19.1.i = getelementptr i8, ptr %call, i32 62032
  br label %for.body18.1.i

for.body18.1.i:                                   ; preds = %for.body18.1.i.for.body18.1.i_crit_edge, %for.body18.lr.ph.1.i
  %i.175.1.i = phi i32 [ 0, %for.body18.lr.ph.1.i ], [ %inc26.1.i, %for.body18.1.i.for.body18.1.i_crit_edge ]
  %317 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %arrayidx19.1.i, align 4
  %arrayidx20.1.i = getelementptr ptr, ptr %318, i32 %i.175.1.i
  %319 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %arrayidx20.1.i, align 4
  %321 = ptrtoint ptr %tx_frames.i to i32
  call void @__asan_load2_noabort(i32 %321)
  %322 = load i16, ptr %tx_frames.i, align 2
  %moder_cnt22.1.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %320, i32 0, i32 10
  %323 = ptrtoint ptr %moder_cnt22.1.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 %322, ptr %moder_cnt22.1.i, align 2
  %324 = ptrtoint ptr %tx_usecs.i to i32
  call void @__asan_load2_noabort(i32 %324)
  %325 = load i16, ptr %tx_usecs.i, align 4
  %moder_time24.1.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %320, i32 0, i32 9
  %326 = ptrtoint ptr %moder_time24.1.i to i32
  call void @__asan_store2_noabort(i32 %326)
  store i16 %325, ptr %moder_time24.1.i, align 8
  %inc26.1.i = add nuw i32 %i.175.1.i, 1
  %327 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx15.1.i, align 4
  %cmp16.1.i = icmp ult i32 %inc26.1.i, %328
  br i1 %cmp16.1.i, label %for.body18.1.i.for.body18.1.i_crit_edge, label %for.body18.1.i.mlx4_en_set_default_moderation.exit_crit_edge

for.body18.1.i.mlx4_en_set_default_moderation.exit_crit_edge: ; preds = %for.body18.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_set_default_moderation.exit

for.body18.1.i.for.body18.1.i_crit_edge:          ; preds = %for.body18.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18.1.i

mlx4_en_set_default_moderation.exit:              ; preds = %for.body18.1.i.mlx4_en_set_default_moderation.exit_crit_edge, %for.inc28.i.mlx4_en_set_default_moderation.exit_crit_edge
  %pkt_rate_low.i = getelementptr i8, ptr %call, i32 51552
  %329 = ptrtoint ptr %pkt_rate_low.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 400000, ptr %pkt_rate_low.i, align 8
  %rx_usecs_low.i = getelementptr i8, ptr %call, i32 51556
  %330 = ptrtoint ptr %rx_usecs_low.i to i32
  call void @__asan_store2_noabort(i32 %330)
  store i16 0, ptr %rx_usecs_low.i, align 4
  %pkt_rate_high.i = getelementptr i8, ptr %call, i32 51560
  %331 = ptrtoint ptr %pkt_rate_high.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 450000, ptr %pkt_rate_high.i, align 8
  %rx_usecs_high.i = getelementptr i8, ptr %call, i32 51564
  %332 = ptrtoint ptr %rx_usecs_high.i to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 128, ptr %rx_usecs_high.i, align 4
  %sample_interval.i = getelementptr i8, ptr %call, i32 51568
  %333 = ptrtoint ptr %sample_interval.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %sample_interval.i, align 8
  %adaptive_rx_coal.i = getelementptr i8, ptr %call, i32 51572
  %334 = ptrtoint ptr %adaptive_rx_coal.i to i32
  call void @__asan_store4_noabort(i32 %334)
  store i32 1, ptr %adaptive_rx_coal.i, align 4
  %last_moder_jiffies.i = getelementptr i8, ptr %call, i32 51028
  %335 = ptrtoint ptr %last_moder_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 0, ptr %last_moder_jiffies.i, align 4
  %last_moder_tx_packets.i = getelementptr i8, ptr %call, i32 50512
  %336 = ptrtoint ptr %last_moder_tx_packets.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 0, ptr %last_moder_tx_packets.i, align 8
  %337 = ptrtoint ptr %tx_ring_num to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %tx_ring_num, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.59, i32 noundef %338) #12
  %339 = ptrtoint ptr %rx_ring_num to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %rx_ring_num, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.60, i32 noundef %340) #12
  %341 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %dev98, align 8
  %features397 = getelementptr inbounds %struct.net_device, ptr %342, i32 0, i32 23
  %343 = ptrtoint ptr %features397 to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %features397, align 16
  call void @mlx4_en_update_loopback_state(ptr noundef %342, i64 noundef %344) #12
  call void @mlx4_en_calc_rx_buf(ptr noundef %call) #12
  %345 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mdev, align 8
  %347 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %port103, align 4
  %conv400 = trunc i32 %348 to i8
  %rx_skb_size = getelementptr i8, ptr %call, i32 61464
  %349 = ptrtoint ptr %rx_skb_size to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %rx_skb_size, align 8
  %add = add i32 %350, 4
  %tx_pause = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 8
  %351 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %tx_pause, align 1
  %tx_ppp = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 9
  %353 = ptrtoint ptr %tx_ppp to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %tx_ppp, align 4
  %rx_pause = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 6
  %355 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %rx_pause, align 1
  %rx_ppp = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %prof, i32 0, i32 7
  %357 = ptrtoint ptr %rx_ppp to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %rx_ppp, align 2
  %call401 = call i32 @mlx4_SET_PORT_general(ptr noundef %346, i8 noundef zeroext %conv400, i32 noundef %add, i8 noundef zeroext %352, i8 noundef zeroext %354, i8 noundef zeroext %356, i8 noundef zeroext %358) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call401)
  %tobool402.not = icmp eq i32 %call401, 0
  br i1 %tobool402.not, label %if.end405, label %if.then403

if.then403:                                       ; preds = %mlx4_en_set_default_moderation.exit
  call void @__sanitizer_cov_trace_pc() #14
  %359 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %port103, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.16, i32 noundef %360, i32 noundef %call401) #12
  br label %out

if.end405:                                        ; preds = %mlx4_en_set_default_moderation.exit
  %361 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %mdev, align 8
  %tunnel_offload_mode408 = getelementptr inbounds %struct.mlx4_dev, ptr %362, i32 0, i32 3, i32 89
  %363 = ptrtoint ptr %tunnel_offload_mode408 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %tunnel_offload_mode408, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %364)
  %cmp409 = icmp eq i32 %364, 1
  br i1 %cmp409, label %if.then411, label %if.end405.if.end419_crit_edge

if.end405.if.end419_crit_edge:                    ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

if.then411:                                       ; preds = %if.end405
  %365 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %port103, align 4
  %conv414 = trunc i32 %366 to i8
  %call415 = call i32 @mlx4_SET_PORT_VXLAN(ptr noundef %362, i8 noundef zeroext %conv414, i8 noundef zeroext 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call415)
  %tobool416.not = icmp eq i32 %call415, 0
  br i1 %tobool416.not, label %if.then411.if.end419_crit_edge, label %if.then417

if.then411.if.end419_crit_edge:                   ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end419

if.then417:                                       ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.19, i32 noundef %call415) #12
  br label %out

if.end419:                                        ; preds = %if.then411.if.end419_crit_edge, %if.end405.if.end419_crit_edge
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.20) #12
  %367 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %mdev, align 8
  %369 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %port103, align 4
  %call422 = call i32 @mlx4_INIT_PORT(ptr noundef %368, i32 noundef %370) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call422)
  %tobool423.not = icmp eq i32 %call422, 0
  br i1 %tobool423.not, label %if.end425, label %if.then424

if.then424:                                       ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.21) #12
  br label %out

if.end425:                                        ; preds = %if.end419
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 9
  %371 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %workqueue, align 8
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %372, ptr noundef %stats_task, i32 noundef 25) #12
  %373 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %mdev, align 8
  %flags2430 = getelementptr inbounds %struct.mlx4_dev, ptr %374, i32 0, i32 3, i32 61
  %375 = ptrtoint ptr %flags2430 to i32
  call void @__asan_load8_noabort(i32 %375)
  %376 = load i64, ptr %flags2430, align 8
  %and431 = and i64 %376, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and431)
  %tobool432.not = icmp eq i64 %and431, 0
  br i1 %tobool432.not, label %if.end425.if.end434_crit_edge, label %if.then433

if.end425.if.end434_crit_edge:                    ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end434

if.then433:                                       ; preds = %if.end425
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlx4_en_init_timestamp(ptr noundef %mdev) #12
  br label %if.end434

if.end434:                                        ; preds = %if.then433, %if.end425.if.end434_crit_edge
  %377 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %workqueue, align 8
  %call.i738 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %378, ptr noundef %service_task, i32 noundef 25) #12
  %379 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %mdev, align 8
  %stats_bitmap = getelementptr i8, ptr %call, i32 63652
  %381 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %port103, align 4
  %rx_ppp443 = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 7, i32 6, i32 %382, i32 7
  %383 = ptrtoint ptr %rx_ppp443 to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %rx_ppp443, align 2
  %rx_pause448 = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 7, i32 6, i32 %382, i32 6
  %385 = ptrtoint ptr %rx_pause448 to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %rx_pause448, align 1
  %tx_ppp453 = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 7, i32 6, i32 %382, i32 9
  %387 = ptrtoint ptr %tx_ppp453 to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %tx_ppp453, align 4
  %tx_pause458 = getelementptr %struct.mlx4_en_dev, ptr %mdev, i32 0, i32 7, i32 6, i32 %382, i32 8
  %389 = ptrtoint ptr %tx_pause458 to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %tx_pause458, align 1
  call void @mlx4_en_set_stats_bitmap(ptr noundef %380, ptr noundef %stats_bitmap, i8 noundef zeroext %384, i8 noundef zeroext %386, i8 noundef zeroext %388, i8 noundef zeroext %390)
  %call459 = call i32 @register_netdev(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call459)
  %tobool460.not = icmp eq i32 %call459, 0
  br i1 %tobool460.not, label %if.end462, label %if.then461

if.then461:                                       ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.61, i32 noundef %port) #12
  br label %out

if.end462:                                        ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #14
  %registered = getelementptr i8, ptr %call, i32 51656
  %391 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 1, ptr %registered, align 8
  %392 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %mdev, align 8
  %394 = ptrtoint ptr %port103 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %port103, align 4
  %call465 = call ptr @mlx4_get_devlink_port(ptr noundef %393, i32 noundef %395) #12
  call void @devlink_port_type_eth_set(ptr noundef %call465, ptr noundef %call) #12
  br label %cleanup

out:                                              ; preds = %if.then461, %if.then424, %if.then417, %if.then403, %if.then234, %if.end221.out_crit_edge, %if.then201, %if.end121.1.out_crit_edge, %if.end114.1.out_crit_edge, %if.end121.out_crit_edge, %if.end114.out_crit_edge
  %err.0 = phi i32 [ %call224, %if.end221.out_crit_edge ], [ %call232, %if.then234 ], [ %call401, %if.then403 ], [ %call415, %if.then417 ], [ %call422, %if.then424 ], [ %call459, %if.then461 ], [ -22, %if.then201 ], [ -12, %if.end121.1.out_crit_edge ], [ -12, %if.end114.1.out_crit_edge ], [ -12, %if.end114.out_crit_edge ], [ -12, %if.end121.out_crit_edge ]
  call void @mlx4_en_destroy_netdev(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end462, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end462 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_do_set_rx_mode(ptr noundef %work) #0 align 64 {
entry:
  %mc_list.i = alloca [16 x i8], align 1
  %qp.i.i = alloca %struct.mlx4_qp, align 4
  %gid.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60316
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev2 = getelementptr i8, ptr %work, i32 -60308
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %device_up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %device_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %work, i32 -11044
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.out_crit_edge, label %if.then4

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.85) #12
  br label %out

if.end5:                                          ; preds = %entry
  %port_up = getelementptr i8, ptr %work, i32 -10972
  %8 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %do.body8, label %if.end16

do.body8:                                         ; preds = %if.end5
  %msg_enable9 = getelementptr i8, ptr %work, i32 -11044
  %10 = ptrtoint ptr %msg_enable9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable9, align 8
  %and10 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.body8.out_crit_edge, label %if.then12

do.body8.out_crit_edge:                           ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then12:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.86) #12
  br label %out

if.end16:                                         ; preds = %if.end5
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end16.if.end33_crit_edge, label %if.then17

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then17:                                        ; preds = %if.end16
  %port = getelementptr i8, ptr %work, i32 -10968
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %conv = trunc i32 %16 to i8
  %call18 = tail call i32 @mlx4_en_QUERY_PORT(ptr noundef %1, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.then17.if.end33_crit_edge

if.then17.if.end33_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then20:                                        ; preds = %if.then17
  %port_state = getelementptr i8, ptr %work, i32 -59792
  %17 = ptrtoint ptr %port_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool21.not = icmp eq i32 %18, 0
  br i1 %tobool21.not, label %if.then20.if.end33_crit_edge, label %if.then22

if.then20.if.end33_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then22:                                        ; preds = %if.then20
  tail call void @netif_carrier_on(ptr noundef %3) #12
  %msg_enable24 = getelementptr i8, ptr %work, i32 -11044
  %19 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable24, align 8
  %and25 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then22.if.end33_crit_edge, label %if.then27

if.then22.if.end33_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.87) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then22.if.end33_crit_edge, %if.then20.if.end33_crit_edge, %if.then17.if.end33_crit_edge, %if.end16.if.end33_crit_edge
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %21 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %priv_flags, align 16
  %and34 = and i64 %22, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34)
  %tobool35.not = icmp eq i64 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  %uc.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 65
  %current_mac.i = getelementptr i8, ptr %work, i32 -10952
  %add.ptr1.i.i322.i = getelementptr i8, ptr %work, i32 -10948
  %base_qpn.i = getelementptr i8, ptr %work, i32 -10936
  %qpn3.i.i = getelementptr inbounds %struct.mlx4_qp, ptr %qp.i.i, i32 0, i32 1
  %arrayidx.i.i = getelementptr inbounds [16 x i8], ptr %gid.i.i, i32 0, i32 10
  %port.i.i = getelementptr i8, ptr %work, i32 -10968
  %arrayidx4.i.i = getelementptr inbounds [16 x i8], ptr %gid.i.i, i32 0, i32 5
  %msg_enable.i = getelementptr i8, ptr %work, i32 -11044
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc69.i.for.body.i_crit_edge, %if.then36
  %i.0363.i = phi i32 [ 0, %if.then36 ], [ %inc70.i, %for.inc69.i.for.body.i_crit_edge ]
  %removed.0362.i = phi i32 [ 0, %if.then36 ], [ %removed.1.lcssa.i, %for.inc69.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 79, i32 %i.0363.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not359.i = icmp eq ptr %24, null
  br i1 %tobool5.not359.i, label %for.body.i.for.inc69.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc69.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc69.i

land.rhs.i:                                       ; preds = %for.inc57.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %entry1.0361.i = phi ptr [ %26, %for.inc57.i.land.rhs.i_crit_edge ], [ %24, %for.body.i.land.rhs.i_crit_edge ]
  %removed.1360.i = phi i32 [ %removed.2.i, %for.inc57.i.land.rhs.i_crit_edge ], [ %removed.0362.i, %for.body.i.land.rhs.i_crit_edge ]
  %25 = ptrtoint ptr %entry1.0361.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %entry1.0361.i, align 8
  %mac19.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 1
  %add.ptr.i.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 1, i32 4
  br label %for.cond13.i

for.cond13.i:                                     ; preds = %for.body18.i.for.cond13.i_crit_edge, %land.rhs.i
  %ha.0.in.i = phi ptr [ %uc.i, %land.rhs.i ], [ %ha.0.i, %for.body18.i.for.cond13.i_crit_edge ]
  %27 = ptrtoint ptr %ha.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %ha.0.i = load ptr, ptr %ha.0.in.i, align 4
  %cmp17.not.i = icmp eq ptr %ha.0.i, %uc.i
  br i1 %cmp17.not.i, label %for.cond13.i.for.end.i_crit_edge, label %for.body18.i

for.cond13.i.for.end.i_crit_edge:                 ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body18.i:                                     ; preds = %for.cond13.i
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %mac19.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac19.i, align 4
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 4
  %xor.i.i.i = xor i32 %31, %29
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0.i, i32 0, i32 2, i32 4
  %34 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %35, %33
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body18.i.for.end.i_crit_edge, label %for.body18.i.for.cond13.i_crit_edge

for.body18.i.for.cond13.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond13.i

for.body18.i.for.end.i_crit_edge:                 ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body18.i.for.end.i_crit_edge, %for.cond13.i.for.end.i_crit_edge
  %36 = xor i1 %cmp17.not.i, true
  %37 = ptrtoint ptr %mac19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mac19.i, align 4
  %39 = ptrtoint ptr %current_mac.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %current_mac.i, align 4
  %xor.i.i320.i = xor i32 %40, %38
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i.i, align 2
  %43 = ptrtoint ptr %add.ptr1.i.i322.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr1.i.i322.i, align 2
  %xor37.i.i323.i = xor i16 %44, %42
  %xor3.i.i324.i = zext i16 %xor37.i.i323.i to i32
  %or.i.i325.i = or i32 %xor.i.i320.i, %xor3.i.i324.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i325.i)
  %cmp.i.i326.i = icmp eq i32 %or.i.i325.i, 0
  %spec.select316.i = select i1 %cmp.i.i326.i, i1 true, i1 %36
  br i1 %spec.select316.i, label %for.end.i.for.inc57.i_crit_edge, label %if.then33.i

for.end.i.for.inc57.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc57.i

if.then33.i:                                      ; preds = %for.end.i
  %45 = ptrtoint ptr %mac19.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mac19.i, align 1
  %conv.i.i = zext i8 %46 to i64
  %arrayidx.1.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %48 to i64
  %49 = shl nuw nsw i64 %conv.i.i, 16
  %50 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %50, %49
  %arrayidx.2.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %52 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 1, i32 3
  %53 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %54 to i64
  %55 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr.i.i.i, align 1
  %conv.4.i.i = zext i8 %56 to i64
  %57 = shl nuw nsw i64 %or.2.i.i, 24
  %58 = shl nuw nsw i64 %conv.3.i.i, 16
  %59 = shl nuw nsw i64 %conv.4.i.i, 8
  %60 = or i64 %59, %58
  %shl.5.i.i = or i64 %60, %57
  %arrayidx.5.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 1, i32 5
  %61 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %62 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %steering_mode.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %66, i32 0, i32 3, i32 50
  %67 = ptrtoint ptr %steering_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %steering_mode.i.i, align 8
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %68, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %base_qpn.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %base_qpn.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp.i.i) #12
  %72 = call ptr @memset(ptr %qp.i.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid.i.i) #12
  %73 = call ptr @memset(ptr %gid.i.i, i32 0, i32 10)
  %74 = ptrtoint ptr %qpn3.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %71, ptr %qpn3.i.i, align 4
  %75 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %mac19.i, i32 6)
  %76 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port.i.i, align 4
  %conv.i327.i = trunc i32 %77 to i8
  %78 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv.i327.i, ptr %arrayidx4.i.i, align 1
  %call.i.i = call i32 @mlx4_unicast_detach(ptr noundef %66, ptr noundef nonnull %qp.i.i, ptr noundef nonnull %gid.i.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid.i.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp.i.i) #12
  br label %mlx4_en_uc_steer_release.exit.i

sw.bb5.i.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  %reg_id.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 2
  %79 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %reg_id.i, align 8
  %call6.i.i = call i32 @mlx4_flow_detach(ptr noundef %66, i64 noundef %80) #12
  br label %mlx4_en_uc_steer_release.exit.i

sw.default.i.i:                                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.76) #12
  br label %mlx4_en_uc_steer_release.exit.i

mlx4_en_uc_steer_release.exit.i:                  ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 8
  %83 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port.i.i, align 4
  %conv.i = trunc i32 %84 to i8
  call void @mlx4_unregister_mac(ptr noundef %82, i8 noundef zeroext %conv.i, i64 noundef %or.5.i.i) #12
  %85 = ptrtoint ptr %entry1.0361.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %entry1.0361.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry1.0361.i, i32 0, i32 1
  %87 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pprev2.i.i.i, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %86, ptr %88, align 4
  %tobool.not.i.i.i = icmp eq ptr %86, null
  br i1 %tobool.not.i.i.i, label %mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge: ; preds = %mlx4_en_uc_steer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %mlx4_en_uc_steer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %86, i32 0, i32 1
  %90 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %88, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge
  %91 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rcu.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry1.0361.i, i32 0, i32 3
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 24 to ptr)) #12
  %92 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool48.not.i, label %hlist_del_rcu.exit.i.do.end55.i_crit_edge, label %if.then49.i

hlist_del_rcu.exit.i.do.end55.i_crit_edge:        ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55.i

if.then49.i:                                      ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port.i.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.88, ptr noundef %mac19.i, i32 noundef %95) #12
  br label %do.end55.i

do.end55.i:                                       ; preds = %if.then49.i, %hlist_del_rcu.exit.i.do.end55.i_crit_edge
  %inc.i = add i32 %removed.1360.i, 1
  br label %for.inc57.i

for.inc57.i:                                      ; preds = %do.end55.i, %for.end.i.for.inc57.i_crit_edge
  %removed.2.i = phi i32 [ %removed.1360.i, %for.end.i.for.inc57.i_crit_edge ], [ %inc.i, %do.end55.i ]
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %for.inc57.i.for.inc69.i_crit_edge, label %for.inc57.i.land.rhs.i_crit_edge

for.inc57.i.land.rhs.i_crit_edge:                 ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.inc57.i.for.inc69.i_crit_edge:                ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc69.i

for.inc69.i:                                      ; preds = %for.inc57.i.for.inc69.i_crit_edge, %for.body.i.for.inc69.i_crit_edge
  %removed.1.lcssa.i = phi i32 [ %removed.0362.i, %for.body.i.for.inc69.i_crit_edge ], [ %removed.2.i, %for.inc57.i.for.inc69.i_crit_edge ]
  %inc70.i = add nuw nsw i32 %i.0363.i, 1
  %exitcond.not.i = icmp eq i32 %inc70.i, 256
  br i1 %exitcond.not.i, label %for.end71.i, label %for.inc69.i.for.body.i_crit_edge

for.inc69.i.for.body.i_crit_edge:                 ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end71.i:                                      ; preds = %for.inc69.i
  %flags.i = getelementptr i8, ptr %work, i32 -1180
  %96 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flags.i, align 8
  %and72.i = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp ne i32 %and72.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %removed.1.lcssa.i)
  %cmp74.i = icmp eq i32 %removed.1.lcssa.i, 0
  %or.cond.i = select i1 %tobool73.not.i, i1 %cmp74.i, i1 false
  br i1 %or.cond.i, label %for.end71.i.if.end37_crit_edge, label %if.end77.i

for.end71.i.if.end37_crit_edge:                   ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end77.i:                                       ; preds = %for.end71.i
  %and80.i = and i32 %97, -17
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and80.i, ptr %flags.i, align 8
  %99 = ptrtoint ptr %uc.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %ha.1364.i = load ptr, ptr %uc.i, align 4
  %cmp91.not365.i = icmp eq ptr %ha.1364.i, %uc.i
  br i1 %cmp91.not365.i, label %if.end77.i.for.end205.i_crit_edge, label %if.end77.i.for.body94.i_crit_edge

if.end77.i.for.body94.i_crit_edge:                ; preds = %if.end77.i
  br label %for.body94.i

if.end77.i.for.end205.i_crit_edge:                ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end205.i

for.body94.i:                                     ; preds = %for.inc199.i.for.body94.i_crit_edge, %if.end77.i.for.body94.i_crit_edge
  %ha.1366.i = phi ptr [ %ha.1.i, %for.inc199.i.for.body94.i_crit_edge ], [ %ha.1364.i, %if.end77.i.for.body94.i_crit_edge ]
  %addr96.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1366.i, i32 0, i32 2
  %arrayidx97.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1366.i, i32 0, i32 2, i32 5
  %100 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx97.i, align 1
  %idxprom.i = zext i8 %101 to i32
  %arrayidx98.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 79, i32 %idxprom.i
  %add.ptr1.i.i330.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1366.i, i32 0, i32 2, i32 4
  br label %for.cond110.i

for.cond110.i:                                    ; preds = %for.body112.i.for.cond110.i_crit_edge, %for.body94.i
  %entry1.1.in.i = phi ptr [ %arrayidx98.i, %for.body94.i ], [ %entry1.1.i, %for.body112.i.for.cond110.i_crit_edge ]
  %102 = ptrtoint ptr %entry1.1.in.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %entry1.1.i = load ptr, ptr %entry1.1.in.i, align 4
  %tobool111.not.i = icmp eq ptr %entry1.1.i, null
  br i1 %tobool111.not.i, label %if.then135.critedge.i, label %for.body112.i

for.body112.i:                                    ; preds = %for.cond110.i
  %mac113.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry1.1.i, i32 0, i32 1
  %103 = ptrtoint ptr %mac113.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mac113.i, align 4
  %105 = ptrtoint ptr %addr96.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr96.i, align 4
  %xor.i.i328.i = xor i32 %106, %104
  %add.ptr.i.i329.i = getelementptr %struct.mlx4_mac_entry, ptr %entry1.1.i, i32 0, i32 1, i32 4
  %107 = ptrtoint ptr %add.ptr.i.i329.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %add.ptr.i.i329.i, align 2
  %109 = ptrtoint ptr %add.ptr1.i.i330.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr1.i.i330.i, align 2
  %xor37.i.i331.i = xor i16 %110, %108
  %xor3.i.i332.i = zext i16 %xor37.i.i331.i to i32
  %or.i.i333.i = or i32 %xor.i.i328.i, %xor3.i.i332.i
  %cmp.i.i334.i = icmp eq i32 %or.i.i333.i, 0
  br i1 %cmp.i.i334.i, label %for.body112.i.for.inc199.i_crit_edge, label %for.body112.i.for.cond110.i_crit_edge

for.body112.i.for.cond110.i_crit_edge:            ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond110.i

for.body112.i.for.inc199.i_crit_edge:             ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc199.i

if.then135.critedge.i:                            ; preds = %for.cond110.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %111 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %111, i32 noundef 3264, i32 noundef 32) #16
  %tobool137.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool137.not.i, label %if.then138.i, label %if.end143.i

if.then138.i:                                     ; preds = %if.then135.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %port.i.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.89, ptr noundef %addr96.i, i32 noundef %113) #12
  br label %for.end205.sink.split.i

if.end143.i:                                      ; preds = %if.then135.critedge.i
  %114 = ptrtoint ptr %addr96.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %addr96.i, align 1
  %conv.i335.i = zext i8 %115 to i64
  %arrayidx.1.i336.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1366.i, i32 0, i32 2, i32 1
  %116 = ptrtoint ptr %arrayidx.1.i336.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.1.i336.i, align 1
  %conv.1.i337.i = zext i8 %117 to i64
  %118 = shl nuw nsw i64 %conv.i335.i, 16
  %119 = shl nuw nsw i64 %conv.1.i337.i, 8
  %shl.2.i338.i = or i64 %119, %118
  %arrayidx.2.i339.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1366.i, i32 0, i32 2, i32 2
  %120 = ptrtoint ptr %arrayidx.2.i339.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.2.i339.i, align 1
  %conv.2.i340.i = zext i8 %121 to i64
  %or.2.i341.i = or i64 %shl.2.i338.i, %conv.2.i340.i
  %arrayidx.3.i342.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1366.i, i32 0, i32 2, i32 3
  %122 = ptrtoint ptr %arrayidx.3.i342.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx.3.i342.i, align 1
  %conv.3.i343.i = zext i8 %123 to i64
  %124 = ptrtoint ptr %add.ptr1.i.i330.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %add.ptr1.i.i330.i, align 1
  %conv.4.i346.i = zext i8 %125 to i64
  %126 = shl nuw nsw i64 %or.2.i341.i, 24
  %127 = shl nuw nsw i64 %conv.3.i343.i, 16
  %128 = shl nuw nsw i64 %conv.4.i346.i, 8
  %129 = or i64 %128, %127
  %shl.5.i348.i = or i64 %129, %126
  %130 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx97.i, align 1
  %conv.5.i350.i = zext i8 %131 to i64
  %or.5.i351.i = or i64 %shl.5.i348.i, %conv.5.i350.i
  %mac147.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %call7.i.i, i32 0, i32 1
  %132 = call ptr @memcpy(ptr %mac147.i, ptr %addr96.i, i32 6)
  %133 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %1, align 8
  %135 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port.i.i, align 4
  %conv153.i = trunc i32 %136 to i8
  %call154.i = call i32 @mlx4_register_mac(ptr noundef %134, i8 noundef zeroext %conv153.i, i64 noundef %or.5.i351.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154.i)
  %cmp155.i = icmp slt i32 %call154.i, 0
  br i1 %cmp155.i, label %if.then157.i, label %if.end163.i

if.then157.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port.i.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.90, ptr noundef %addr96.i, i32 noundef %138, i32 noundef %call154.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %for.end205.sink.split.i

if.end163.i:                                      ; preds = %if.end143.i
  %reg_id167.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %call7.i.i, i32 0, i32 2
  %call168.i = call fastcc i32 @mlx4_en_uc_steer_add(ptr noundef %add.ptr, ptr noundef %addr96.i, ptr noundef %base_qpn.i, ptr noundef %reg_id167.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool169.not.i = icmp eq i32 %call168.i, 0
  br i1 %tobool169.not.i, label %if.else.i, label %if.then170.i

if.then170.i:                                     ; preds = %if.end163.i
  call void @__sanitizer_cov_trace_pc() #14
  %139 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port.i.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.91, ptr noundef %addr96.i, i32 noundef %140, i32 noundef %call168.i) #12
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 8
  %143 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %port.i.i, align 4
  %conv176.i = trunc i32 %144 to i8
  call void @mlx4_unregister_mac(ptr noundef %142, i8 noundef zeroext %conv176.i, i64 noundef %or.5.i351.i) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %for.end205.sink.split.i

if.else.i:                                        ; preds = %if.end163.i
  %145 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %msg_enable.i, align 8
  %and182.i = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i)
  %tobool183.not.i = icmp eq i32 %and182.i, 0
  br i1 %tobool183.not.i, label %if.else.i.do.end190.i_crit_edge, label %if.then184.i

if.else.i.do.end190.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end190.i

if.then184.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %147 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port.i.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.92, ptr noundef %addr96.i, i32 noundef %148) #12
  br label %do.end190.i

do.end190.i:                                      ; preds = %if.then184.i, %if.else.i.do.end190.i_crit_edge
  %149 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx97.i, align 1
  %conv193.i = zext i8 %150 to i32
  %arrayidx195.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 79, i32 %conv193.i
  %151 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx195.i, align 4
  %153 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %call7.i.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %154 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %arrayidx195.i, ptr %pprev.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !317
  %155 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %call7.i.i, ptr %arrayidx195.i, align 4
  %tobool.not.i.i = icmp eq ptr %152, null
  br i1 %tobool.not.i.i, label %do.end190.i.for.inc199.i_crit_edge, label %do.body49.i.i

do.end190.i.for.inc199.i_crit_edge:               ; preds = %do.end190.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc199.i

do.body49.i.i:                                    ; preds = %do.end190.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %152, i32 0, i32 1
  %156 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %call7.i.i, ptr %pprev51.i.i, align 4
  br label %for.inc199.i

for.inc199.i:                                     ; preds = %do.body49.i.i, %do.end190.i.for.inc199.i_crit_edge, %for.body112.i.for.inc199.i_crit_edge
  %157 = ptrtoint ptr %ha.1366.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %ha.1.i = load ptr, ptr %ha.1366.i, align 4
  %cmp91.not.i = icmp eq ptr %ha.1.i, %uc.i
  br i1 %cmp91.not.i, label %for.inc199.i.for.end205.i_crit_edge, label %for.inc199.i.for.body94.i_crit_edge

for.inc199.i.for.body94.i_crit_edge:              ; preds = %for.inc199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body94.i

for.inc199.i.for.end205.i_crit_edge:              ; preds = %for.inc199.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end205.i

for.end205.sink.split.i:                          ; preds = %if.then170.i, %if.then157.i, %if.then138.i
  %158 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %flags.i, align 8
  %or178.i = or i32 %159, 16
  store i32 %or178.i, ptr %flags.i, align 8
  br label %for.end205.i

for.end205.i:                                     ; preds = %for.end205.sink.split.i, %for.inc199.i.for.end205.i_crit_edge, %if.end77.i.for.end205.i_crit_edge
  %160 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags.i, align 8
  %and207.i = and i32 %161, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i)
  %tobool208.not.i = icmp eq i32 %and207.i, 0
  br i1 %tobool208.not.i, label %if.else211.i, label %for.end205.i.cleanup.sink.split.i_crit_edge

for.end205.i.cleanup.sink.split.i_crit_edge:      ; preds = %for.end205.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else211.i:                                     ; preds = %for.end205.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool213.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool213.not.i, label %if.else211.i.if.end37_crit_edge, label %if.else211.i.cleanup.sink.split.i_crit_edge

if.else211.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.else211.i.if.end37_crit_edge:                  ; preds = %if.else211.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

cleanup.sink.split.i:                             ; preds = %if.else211.i.cleanup.sink.split.i_crit_edge, %for.end205.i.cleanup.sink.split.i_crit_edge
  %.str.93.sink.i = phi ptr [ @.str.93, %for.end205.i.cleanup.sink.split.i_crit_edge ], [ @.str.94, %if.else211.i.cleanup.sink.split.i_crit_edge ]
  %162 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %port.i.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr, ptr noundef nonnull %.str.93.sink.i, i32 noundef %163) #12
  br label %if.end37

if.end37:                                         ; preds = %cleanup.sink.split.i, %if.else211.i.if.end37_crit_edge, %for.end71.i.if.end37_crit_edge, %if.end33.if.end37_crit_edge
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %164 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %flags, align 8
  %and38 = and i32 %165, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %lor.lhs.false, label %if.end37.if.then43_crit_edge

if.end37.if.then43_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end37
  %flags40 = getelementptr i8, ptr %work, i32 -1180
  %166 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags40, align 8
  %and41 = and i32 %167, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end44, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end37.if.then43_crit_edge
  %flags.i79 = getelementptr i8, ptr %work, i32 -1180
  %168 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags.i79, align 8
  %and.i80 = and i32 %169, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %if.then.i, label %if.then43.out_crit_edge

if.then43.out_crit_edge:                          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i:                                        ; preds = %if.then43
  %msg_enable.i82 = getelementptr i8, ptr %work, i32 -11044
  %170 = ptrtoint ptr %msg_enable.i82 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %msg_enable.i82, align 8
  %and1.i = and i32 %171, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr, ptr noundef nonnull @.str.95) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %172 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags.i79, align 8
  %or.i = or i32 %173, 1
  store i32 %or.i, ptr %flags.i79, align 8
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 8
  %steering_mode.i = getelementptr inbounds %struct.mlx4_dev, ptr %175, i32 0, i32 3, i32 50
  %176 = ptrtoint ptr %steering_mode.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %steering_mode.i, align 8
  %178 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %177, label %if.end.i.sw.epilog.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb11.i
    i32 0, label %sw.bb35.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %port.i = getelementptr i8, ptr %work, i32 -10968
  %179 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port.i, align 4
  %conv.i83 = trunc i32 %180 to i8
  %base_qpn.i84 = getelementptr i8, ptr %work, i32 -10936
  %181 = ptrtoint ptr %base_qpn.i84 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %base_qpn.i84, align 4
  %call.i = call i32 @mlx4_flow_steer_promisc_add(ptr noundef %175, i8 noundef zeroext %conv.i83, i32 noundef %182, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %sw.bb.i.if.end8.i_crit_edge, label %if.then7.i

sw.bb.i.if.end8.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then7.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.96) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %sw.bb.i.if.end8.i_crit_edge
  %183 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %flags.i79, align 8
  %or10.i = or i32 %184, 2
  store i32 %or10.i, ptr %flags.i79, align 8
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  %base_qpn13.i = getelementptr i8, ptr %work, i32 -10936
  %185 = ptrtoint ptr %base_qpn13.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %base_qpn13.i, align 4
  %port14.i = getelementptr i8, ptr %work, i32 -10968
  %187 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %port14.i, align 4
  %conv15.i = trunc i32 %188 to i8
  %call16.i = call i32 @mlx4_unicast_promisc_add(ptr noundef %175, i32 noundef %186, i8 noundef zeroext %conv15.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %sw.bb11.i.if.end19.i_crit_edge, label %if.then18.i

sw.bb11.i.if.end19.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then18.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.97) #12
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then18.i, %sw.bb11.i.if.end19.i_crit_edge
  %189 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags.i79, align 8
  %and21.i = and i32 %190, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end19.i.sw.epilog.i_crit_edge

if.end19.i.sw.epilog.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then23.i:                                      ; preds = %if.end19.i
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 8
  %193 = ptrtoint ptr %base_qpn13.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %base_qpn13.i, align 4
  %195 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %port14.i, align 4
  %conv27.i = trunc i32 %196 to i8
  %call28.i = call i32 @mlx4_multicast_promisc_add(ptr noundef %192, i32 noundef %194, i8 noundef zeroext %conv27.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.then23.i.if.end31.i_crit_edge, label %if.then30.i

if.then23.i.if.end31.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

if.then30.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.98) #12
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %if.then23.i.if.end31.i_crit_edge
  %197 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %flags.i79, align 8
  %or33.i = or i32 %198, 2
  store i32 %or33.i, ptr %flags.i79, align 8
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end.i
  %port37.i = getelementptr i8, ptr %work, i32 -10968
  %199 = ptrtoint ptr %port37.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %port37.i, align 4
  %conv38.i = trunc i32 %200 to i8
  %base_qpn39.i = getelementptr i8, ptr %work, i32 -10936
  %201 = ptrtoint ptr %base_qpn39.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %base_qpn39.i, align 4
  %call40.i = call i32 @mlx4_SET_PORT_qpn_calc(ptr noundef %175, i8 noundef zeroext %conv38.i, i32 noundef %202, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %sw.bb35.i.sw.epilog.i_crit_edge, label %if.then42.i

sw.bb35.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then42.i:                                      ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.96) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.then42.i, %sw.bb35.i.sw.epilog.i_crit_edge, %if.end31.i, %if.end19.i.sw.epilog.i_crit_edge, %if.end8.i, %if.end.i.sw.epilog.i_crit_edge
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %1, align 8
  %port45.i = getelementptr i8, ptr %work, i32 -10968
  %205 = ptrtoint ptr %port45.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %port45.i, align 4
  %conv46.i = trunc i32 %206 to i8
  %call47.i = call i32 @mlx4_SET_MCAST_FLTR(ptr noundef %204, i8 noundef zeroext %conv46.i, i64 noundef 0, i64 noundef 0, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i85 = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i85, label %sw.epilog.i.out_crit_edge, label %if.then49.i86

sw.epilog.i.out_crit_edge:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then49.i86:                                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.99) #12
  br label %out

if.end44:                                         ; preds = %lor.lhs.false
  %and46 = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end44.if.end49_crit_edge, label %if.then48

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then48:                                        ; preds = %if.end44
  %msg_enable.i87 = getelementptr i8, ptr %work, i32 -11044
  %207 = ptrtoint ptr %msg_enable.i87 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %msg_enable.i87, align 8
  %and.i88 = and i32 %208, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool.not.i89 = icmp eq i32 %and.i88, 0
  br i1 %tobool.not.i89, label %if.then48.if.end.i94_crit_edge, label %if.then.i90

if.then48.if.end.i94_crit_edge:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i94

if.then.i90:                                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr, ptr noundef nonnull @.str.100) #12
  br label %if.end.i94

if.end.i94:                                       ; preds = %if.then.i90, %if.then48.if.end.i94_crit_edge
  %209 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %flags40, align 8
  %and1.i92 = and i32 %210, -2
  store i32 %and1.i92, ptr %flags40, align 8
  %211 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %1, align 8
  %steering_mode.i93 = getelementptr inbounds %struct.mlx4_dev, ptr %212, i32 0, i32 3, i32 50
  %213 = ptrtoint ptr %steering_mode.i93 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %steering_mode.i93, align 8
  %215 = zext i32 %214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %215, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %214, label %if.end.i94.if.end49_crit_edge [
    i32 2, label %sw.bb.i98
    i32 1, label %sw.bb8.i
    i32 0, label %sw.bb31.i
  ]

if.end.i94.if.end49_crit_edge:                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

sw.bb.i98:                                        ; preds = %if.end.i94
  %port.i95 = getelementptr i8, ptr %work, i32 -10968
  %216 = ptrtoint ptr %port.i95 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %port.i95, align 4
  %conv.i96 = trunc i32 %217 to i8
  %call.i97 = call i32 @mlx4_flow_steer_promisc_remove(ptr noundef %212, i8 noundef zeroext %conv.i96, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool3.not.i = icmp eq i32 %call.i97, 0
  br i1 %tobool3.not.i, label %sw.bb.i98.if.end5.i_crit_edge, label %if.then4.i

sw.bb.i98.if.end5.i_crit_edge:                    ; preds = %sw.bb.i98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then4.i:                                       ; preds = %sw.bb.i98
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.101) #12
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %sw.bb.i98.if.end5.i_crit_edge
  %218 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %flags40, align 8
  %and7.i = and i32 %219, -3
  store i32 %and7.i, ptr %flags40, align 8
  br label %if.end49

sw.bb8.i:                                         ; preds = %if.end.i94
  %base_qpn.i99 = getelementptr i8, ptr %work, i32 -10936
  %220 = ptrtoint ptr %base_qpn.i99 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %base_qpn.i99, align 4
  %port10.i = getelementptr i8, ptr %work, i32 -10968
  %222 = ptrtoint ptr %port10.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %port10.i, align 4
  %conv11.i = trunc i32 %223 to i8
  %call12.i = call i32 @mlx4_unicast_promisc_remove(ptr noundef %212, i32 noundef %221, i8 noundef zeroext %conv11.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %sw.bb8.i.if.end15.i_crit_edge, label %if.then14.i

sw.bb8.i.if.end15.i_crit_edge:                    ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.i

if.then14.i:                                      ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.102) #12
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %sw.bb8.i.if.end15.i_crit_edge
  %224 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %flags40, align 8
  %and17.i = and i32 %225, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end49_crit_edge, label %if.then19.i

if.end15.i.if.end49_crit_edge:                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then19.i:                                      ; preds = %if.end15.i
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 8
  %228 = ptrtoint ptr %base_qpn.i99 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %base_qpn.i99, align 4
  %230 = ptrtoint ptr %port10.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %port10.i, align 4
  %conv23.i = trunc i32 %231 to i8
  %call24.i = call i32 @mlx4_multicast_promisc_remove(ptr noundef %227, i32 noundef %229, i8 noundef zeroext %conv23.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then19.i.if.end27.i_crit_edge, label %if.then26.i

if.then19.i.if.end27.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.103) #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.then19.i.if.end27.i_crit_edge
  %232 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %flags40, align 8
  %and29.i = and i32 %233, -3
  store i32 %and29.i, ptr %flags40, align 8
  br label %if.end49

sw.bb31.i:                                        ; preds = %if.end.i94
  %port33.i = getelementptr i8, ptr %work, i32 -10968
  %234 = ptrtoint ptr %port33.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %port33.i, align 4
  %conv34.i = trunc i32 %235 to i8
  %base_qpn35.i = getelementptr i8, ptr %work, i32 -10936
  %236 = ptrtoint ptr %base_qpn35.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %base_qpn35.i, align 4
  %call36.i = call i32 @mlx4_SET_PORT_qpn_calc(ptr noundef %212, i8 noundef zeroext %conv34.i, i32 noundef %237, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %sw.bb31.i.if.end49_crit_edge, label %if.then38.i

sw.bb31.i.if.end49_crit_edge:                     ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then38.i:                                      ; preds = %sw.bb31.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.101) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then38.i, %sw.bb31.i.if.end49_crit_edge, %if.end27.i, %if.end15.i.if.end49_crit_edge, %if.end5.i, %if.end.i94.if.end49_crit_edge, %if.end44.if.end49_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mc_list.i) #12
  %238 = call ptr @memset(ptr %mc_list.i, i32 0, i32 16)
  %239 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %flags, align 8
  %and.i102 = and i32 %240, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %if.else.i120, label %if.then.i108

if.then.i108:                                     ; preds = %if.end49
  %241 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %1, align 8
  %port.i104 = getelementptr i8, ptr %work, i32 -10968
  %243 = ptrtoint ptr %port.i104 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %port.i104, align 4
  %conv.i105 = trunc i32 %244 to i8
  %call.i106 = call i32 @mlx4_SET_MCAST_FLTR(ptr noundef %242, i8 noundef zeroext %conv.i105, i64 noundef 0, i64 noundef 0, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool2.not.i107 = icmp eq i32 %call.i106, 0
  br i1 %tobool2.not.i107, label %if.then.i108.if.end.i111_crit_edge, label %if.then3.i109

if.then.i108.if.end.i111_crit_edge:               ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i111

if.then3.i109:                                    ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.99) #12
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.then3.i109, %if.then.i108.if.end.i111_crit_edge
  %245 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %flags40, align 8
  %and5.i = and i32 %246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i110 = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i110, label %if.then7.i113, label %if.end.i111.mlx4_en_do_multicast.exit_crit_edge

if.end.i111.mlx4_en_do_multicast.exit_crit_edge:  ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_do_multicast.exit

if.then7.i113:                                    ; preds = %if.end.i111
  %247 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %1, align 8
  %steering_mode.i112 = getelementptr inbounds %struct.mlx4_dev, ptr %248, i32 0, i32 3, i32 50
  %249 = ptrtoint ptr %steering_mode.i112 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %steering_mode.i112, align 8
  %251 = zext i32 %250 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %250, label %if.then7.i113.sw.epilog.i118_crit_edge [
    i32 2, label %sw.bb.i117
    i32 1, label %sw.bb13.i
  ]

if.then7.i113.sw.epilog.i118_crit_edge:           ; preds = %if.then7.i113
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i118

sw.bb.i117:                                       ; preds = %if.then7.i113
  call void @__sanitizer_cov_trace_pc() #14
  %252 = ptrtoint ptr %port.i104 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %port.i104, align 4
  %conv11.i114 = trunc i32 %253 to i8
  %base_qpn.i115 = getelementptr i8, ptr %work, i32 -10936
  %254 = ptrtoint ptr %base_qpn.i115 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %base_qpn.i115, align 4
  %call12.i116 = call i32 @mlx4_flow_steer_promisc_add(ptr noundef %248, i8 noundef zeroext %conv11.i114, i32 noundef %255, i32 noundef 3) #12
  br label %sw.epilog.i118

sw.bb13.i:                                        ; preds = %if.then7.i113
  call void @__sanitizer_cov_trace_pc() #14
  %base_qpn15.i = getelementptr i8, ptr %work, i32 -10936
  %256 = ptrtoint ptr %base_qpn15.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %base_qpn15.i, align 4
  %258 = ptrtoint ptr %port.i104 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %port.i104, align 4
  %conv17.i = trunc i32 %259 to i8
  %call18.i = call i32 @mlx4_multicast_promisc_add(ptr noundef %248, i32 noundef %257, i8 noundef zeroext %conv17.i) #12
  br label %sw.epilog.i118

sw.epilog.i118:                                   ; preds = %sw.bb13.i, %sw.bb.i117, %if.then7.i113.sw.epilog.i118_crit_edge
  %err.0.i = phi i32 [ %call.i106, %if.then7.i113.sw.epilog.i118_crit_edge ], [ %call18.i, %sw.bb13.i ], [ %call12.i116, %sw.bb.i117 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool19.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool19.not.i, label %sw.epilog.i118.if.end21.i_crit_edge, label %if.then20.i

sw.epilog.i118.if.end21.i_crit_edge:              ; preds = %sw.epilog.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then20.i:                                      ; preds = %sw.epilog.i118
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.104) #12
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %sw.epilog.i118.if.end21.i_crit_edge
  %260 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %flags40, align 8
  %or.i119 = or i32 %261, 2
  store i32 %or.i119, ptr %flags40, align 8
  br label %mlx4_en_do_multicast.exit

if.else.i120:                                     ; preds = %if.end49
  %262 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %flags40, align 8
  %and25.i = and i32 %263, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.else.i120.if.end48.i_crit_edge, label %if.then27.i

if.else.i120.if.end48.i_crit_edge:                ; preds = %if.else.i120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48.i

if.then27.i:                                      ; preds = %if.else.i120
  %264 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %1, align 8
  %steering_mode30.i = getelementptr inbounds %struct.mlx4_dev, ptr %265, i32 0, i32 3, i32 50
  %266 = ptrtoint ptr %steering_mode30.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %steering_mode30.i, align 8
  %268 = zext i32 %267 to i64
  call void @__sanitizer_cov_trace_switch(i64 %268, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %267, label %if.then27.i.if.end45.i_crit_edge [
    i32 2, label %sw.bb31.i123
    i32 1, label %sw.bb36.i
  ]

if.then27.i.if.end45.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

sw.bb31.i123:                                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  %port33.i121 = getelementptr i8, ptr %work, i32 -10968
  %269 = ptrtoint ptr %port33.i121 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %port33.i121, align 4
  %conv34.i122 = trunc i32 %270 to i8
  %call35.i = call i32 @mlx4_flow_steer_promisc_remove(ptr noundef %265, i8 noundef zeroext %conv34.i122, i32 noundef 3) #12
  br label %sw.epilog42.i

sw.bb36.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #14
  %base_qpn38.i = getelementptr i8, ptr %work, i32 -10936
  %271 = ptrtoint ptr %base_qpn38.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %base_qpn38.i, align 4
  %port39.i = getelementptr i8, ptr %work, i32 -10968
  %273 = ptrtoint ptr %port39.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %port39.i, align 4
  %conv40.i = trunc i32 %274 to i8
  %call41.i = call i32 @mlx4_multicast_promisc_remove(ptr noundef %265, i32 noundef %272, i8 noundef zeroext %conv40.i) #12
  br label %sw.epilog42.i

sw.epilog42.i:                                    ; preds = %sw.bb36.i, %sw.bb31.i123
  %err.1.i = phi i32 [ %call41.i, %sw.bb36.i ], [ %call35.i, %sw.bb31.i123 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool43.not.i = icmp eq i32 %err.1.i, 0
  br i1 %tobool43.not.i, label %sw.epilog42.i.if.end45.i_crit_edge, label %if.then44.i

sw.epilog42.i.if.end45.i_crit_edge:               ; preds = %sw.epilog42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45.i

if.then44.i:                                      ; preds = %sw.epilog42.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.103) #12
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %sw.epilog42.i.if.end45.i_crit_edge, %if.then27.i.if.end45.i_crit_edge
  %275 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %flags40, align 8
  %and47.i = and i32 %276, -3
  store i32 %and47.i, ptr %flags40, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end45.i, %if.else.i120.if.end48.i_crit_edge
  %277 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %1, align 8
  %port50.i = getelementptr i8, ptr %work, i32 -10968
  %279 = ptrtoint ptr %port50.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %port50.i, align 4
  %conv51.i = trunc i32 %280 to i8
  %call52.i = call i32 @mlx4_SET_MCAST_FLTR(ptr noundef %278, i8 noundef zeroext %conv51.i, i64 noundef 0, i64 noundef 0, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end48.i.if.end55.i_crit_edge, label %if.then54.i

if.end48.i.if.end55.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.99) #12
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %if.end48.i.if.end55.i_crit_edge
  %281 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %1, align 8
  %283 = ptrtoint ptr %port50.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %port50.i, align 4
  %conv58.i = trunc i32 %284 to i8
  %call59.i = call i32 @mlx4_SET_MCAST_FLTR(ptr noundef %282, i8 noundef zeroext %conv58.i, i64 noundef 281474976710655, i64 noundef 1, i8 noundef zeroext 0) #12
  %nested_level.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 73
  %285 = ptrtoint ptr %nested_level.i.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %nested_level.i.i, align 1
  call fastcc void @local_bh_disable() #12
  %addr_list_lock.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 63
  %conv.i.i124 = zext i8 %286 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i.i, i32 noundef %conv.i.i124) #12
  %mc_list.i.i.i = getelementptr i8, ptr %3, i32 63764
  %287 = ptrtoint ptr %mc_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %mc_list.i.i.i, align 4
  %cmp.not19.i.i.i = icmp eq ptr %288, %mc_list.i.i.i
  br i1 %cmp.not19.i.i.i, label %if.end55.i.mlx4_en_clear_list.exit.i.i_crit_edge, label %if.end55.i.for.body.i.i.i_crit_edge

if.end55.i.for.body.i.i.i_crit_edge:              ; preds = %if.end55.i
  br label %for.body.i.i.i

if.end55.i.mlx4_en_clear_list.exit.i.i_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_clear_list.exit.i.i

for.body.i.i.i:                                   ; preds = %list_del.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end55.i.for.body.i.i.i_crit_edge
  %mc_to_del.020.i.i.i = phi ptr [ %tmp.0.i.i.i, %list_del.exit.i.i.i.for.body.i.i.i_crit_edge ], [ %288, %if.end55.i.for.body.i.i.i_crit_edge ]
  %289 = ptrtoint ptr %mc_to_del.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %tmp.0.i.i.i = load ptr, ptr %mc_to_del.020.i.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mc_to_del.020.i.i.i) #12
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.i.i.i.list_del.exit.i.i.i_crit_edge

for.body.i.i.i.list_del.exit.i.i.i_crit_edge:     ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_to_del.020.i.i.i, i32 0, i32 1
  %290 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %292 = ptrtoint ptr %mc_to_del.020.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mc_to_del.020.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %294)
  store ptr %291, ptr %prev1.i.i.i.i.i.i, align 4
  %295 = ptrtoint ptr %291 to i32
  call void @__asan_store4_noabort(i32 %295)
  store volatile ptr %293, ptr %291, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %for.body.i.i.i.list_del.exit.i.i.i_crit_edge
  %296 = ptrtoint ptr %mc_to_del.020.i.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_to_del.020.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %mc_to_del.020.i.i.i, i32 0, i32 1
  %297 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %297)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  call void @kfree(ptr noundef %mc_to_del.020.i.i.i) #12
  %cmp.not.i.i.i = icmp eq ptr %tmp.0.i.i.i, %mc_list.i.i.i
  br i1 %cmp.not.i.i.i, label %list_del.exit.i.i.i.mlx4_en_clear_list.exit.i.i_crit_edge, label %list_del.exit.i.i.i.for.body.i.i.i_crit_edge

list_del.exit.i.i.i.for.body.i.i.i_crit_edge:     ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

list_del.exit.i.i.i.mlx4_en_clear_list.exit.i.i_crit_edge: ; preds = %list_del.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_clear_list.exit.i.i

mlx4_en_clear_list.exit.i.i:                      ; preds = %list_del.exit.i.i.i.mlx4_en_clear_list.exit.i.i_crit_edge, %if.end55.i.mlx4_en_clear_list.exit.i.i_crit_edge
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 66
  %298 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %ha.039.i.i = load ptr, ptr %mc.i.i, align 4
  %cmp.not40.i.i = icmp eq ptr %ha.039.i.i, %mc.i.i
  br i1 %cmp.not40.i.i, label %mlx4_en_clear_list.exit.i.i.mlx4_en_cache_mclist.exit.i_crit_edge, label %for.body.lr.ph.i.i

mlx4_en_clear_list.exit.i.i.mlx4_en_cache_mclist.exit.i_crit_edge: ; preds = %mlx4_en_clear_list.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_cache_mclist.exit.i

for.body.lr.ph.i.i:                               ; preds = %mlx4_en_clear_list.exit.i.i
  %prev.i.i.i = getelementptr i8, ptr %3, i32 63768
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_add_tail.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ha.041.i.i = phi ptr [ %ha.039.i.i, %for.body.lr.ph.i.i ], [ %ha.0.i.i, %list_add_tail.exit.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %299 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %299, i32 noundef 2848, i32 noundef 40) #16
  %tobool.not.i.i125 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i125, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %300 = ptrtoint ptr %mc_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %mc_list.i.i.i, align 4
  %cmp.not19.i26.i.i = icmp eq ptr %301, %mc_list.i.i.i
  br i1 %cmp.not19.i26.i.i, label %if.then.i.i.mlx4_en_cache_mclist.exit.i_crit_edge, label %if.then.i.i.for.body.i30.i.i_crit_edge

if.then.i.i.for.body.i30.i.i_crit_edge:           ; preds = %if.then.i.i
  br label %for.body.i30.i.i

if.then.i.i.mlx4_en_cache_mclist.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_cache_mclist.exit.i

for.body.i30.i.i:                                 ; preds = %list_del.exit.i36.i.i.for.body.i30.i.i_crit_edge, %if.then.i.i.for.body.i30.i.i_crit_edge
  %mc_to_del.020.i27.i.i = phi ptr [ %tmp.0.i28.i.i, %list_del.exit.i36.i.i.for.body.i30.i.i_crit_edge ], [ %301, %if.then.i.i.for.body.i30.i.i_crit_edge ]
  %302 = ptrtoint ptr %mc_to_del.020.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %tmp.0.i28.i.i = load ptr, ptr %mc_to_del.020.i27.i.i, align 8
  %call.i.i.i29.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mc_to_del.020.i27.i.i) #12
  br i1 %call.i.i.i29.i.i, label %if.end.i.i.i33.i.i, label %for.body.i30.i.i.list_del.exit.i36.i.i_crit_edge

for.body.i30.i.i.list_del.exit.i36.i.i_crit_edge: ; preds = %for.body.i30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i36.i.i

if.end.i.i.i33.i.i:                               ; preds = %for.body.i30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i31.i.i = getelementptr inbounds %struct.list_head, ptr %mc_to_del.020.i27.i.i, i32 0, i32 1
  %303 = ptrtoint ptr %prev.i.i.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %prev.i.i.i31.i.i, align 4
  %305 = ptrtoint ptr %mc_to_del.020.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %mc_to_del.020.i27.i.i, align 4
  %prev1.i.i.i.i32.i.i = getelementptr inbounds %struct.list_head, ptr %306, i32 0, i32 1
  %307 = ptrtoint ptr %prev1.i.i.i.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %304, ptr %prev1.i.i.i.i32.i.i, align 4
  %308 = ptrtoint ptr %304 to i32
  call void @__asan_store4_noabort(i32 %308)
  store volatile ptr %306, ptr %304, align 4
  br label %list_del.exit.i36.i.i

list_del.exit.i36.i.i:                            ; preds = %if.end.i.i.i33.i.i, %for.body.i30.i.i.list_del.exit.i36.i.i_crit_edge
  %309 = ptrtoint ptr %mc_to_del.020.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %309)
  store ptr inttoptr (i32 256 to ptr), ptr %mc_to_del.020.i27.i.i, align 4
  %prev.i.i34.i.i = getelementptr inbounds %struct.list_head, ptr %mc_to_del.020.i27.i.i, i32 0, i32 1
  %310 = ptrtoint ptr %prev.i.i34.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i34.i.i, align 4
  call void @kfree(ptr noundef %mc_to_del.020.i27.i.i) #12
  %cmp.not.i35.i.i = icmp eq ptr %tmp.0.i28.i.i, %mc_list.i.i.i
  br i1 %cmp.not.i35.i.i, label %list_del.exit.i36.i.i.mlx4_en_cache_mclist.exit.i_crit_edge, label %list_del.exit.i36.i.i.for.body.i30.i.i_crit_edge

list_del.exit.i36.i.i.for.body.i30.i.i_crit_edge: ; preds = %list_del.exit.i36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i30.i.i

list_del.exit.i36.i.i.mlx4_en_cache_mclist.exit.i_crit_edge: ; preds = %list_del.exit.i36.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_cache_mclist.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %addr.i.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %call7.i.i.i.i, i32 0, i32 2
  %addr6.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.041.i.i, i32 0, i32 2
  %311 = call ptr @memcpy(ptr %addr.i.i, ptr %addr6.i.i, i32 6)
  %312 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %313, ptr noundef %mc_list.i.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_add_tail.exit.i.i_crit_edge

if.end.i.i.list_add_tail.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %314 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %315 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %mc_list.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %316 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %313, ptr %prev3.i.i.i.i, align 4
  %317 = ptrtoint ptr %313 to i32
  call void @__asan_store4_noabort(i32 %317)
  store volatile ptr %call7.i.i.i.i, ptr %313, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end.i.i.list_add_tail.exit.i.i_crit_edge
  %318 = ptrtoint ptr %ha.041.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %ha.0.i.i = load ptr, ptr %ha.041.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ha.0.i.i, %mc.i.i
  br i1 %cmp.not.i.i, label %list_add_tail.exit.i.i.mlx4_en_cache_mclist.exit.i_crit_edge, label %list_add_tail.exit.i.i.for.body.i.i_crit_edge

list_add_tail.exit.i.i.for.body.i.i_crit_edge:    ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

list_add_tail.exit.i.i.mlx4_en_cache_mclist.exit.i_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_cache_mclist.exit.i

mlx4_en_cache_mclist.exit.i:                      ; preds = %list_add_tail.exit.i.i.mlx4_en_cache_mclist.exit.i_crit_edge, %list_del.exit.i36.i.i.mlx4_en_cache_mclist.exit.i_crit_edge, %if.then.i.i.mlx4_en_cache_mclist.exit.i_crit_edge, %mlx4_en_clear_list.exit.i.i.mlx4_en_cache_mclist.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i) #12
  %mc_list60.i = getelementptr i8, ptr %work, i32 1144
  %319 = ptrtoint ptr %mc_list60.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %mclist.0260.i = load ptr, ptr %mc_list60.i, align 4
  %cmp.not261.i = icmp eq ptr %mclist.0260.i, %mc_list60.i
  br i1 %cmp.not261.i, label %mlx4_en_cache_mclist.exit.i.for.end.i141_crit_edge, label %mlx4_en_cache_mclist.exit.i.for.body.i140_crit_edge

mlx4_en_cache_mclist.exit.i.for.body.i140_crit_edge: ; preds = %mlx4_en_cache_mclist.exit.i
  br label %for.body.i140

mlx4_en_cache_mclist.exit.i.for.end.i141_crit_edge: ; preds = %mlx4_en_cache_mclist.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i141

for.body.i140:                                    ; preds = %for.body.i140.for.body.i140_crit_edge, %mlx4_en_cache_mclist.exit.i.for.body.i140_crit_edge
  %mclist.0262.i = phi ptr [ %mclist.0.i, %for.body.i140.for.body.i140_crit_edge ], [ %mclist.0260.i, %mlx4_en_cache_mclist.exit.i.for.body.i140_crit_edge ]
  %addr.i126 = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.0262.i, i32 0, i32 2
  %320 = ptrtoint ptr %addr.i126 to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %addr.i126, align 1
  %conv.i243.i = zext i8 %321 to i64
  %arrayidx.1.i.i127 = getelementptr %struct.mlx4_en_mc_list, ptr %mclist.0262.i, i32 0, i32 2, i32 1
  %322 = ptrtoint ptr %arrayidx.1.i.i127 to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx.1.i.i127, align 1
  %conv.1.i.i128 = zext i8 %323 to i64
  %324 = shl nuw nsw i64 %conv.i243.i, 16
  %325 = shl nuw nsw i64 %conv.1.i.i128, 8
  %shl.2.i.i129 = or i64 %325, %324
  %arrayidx.2.i.i130 = getelementptr %struct.mlx4_en_mc_list, ptr %mclist.0262.i, i32 0, i32 2, i32 2
  %326 = ptrtoint ptr %arrayidx.2.i.i130 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx.2.i.i130, align 1
  %conv.2.i.i131 = zext i8 %327 to i64
  %or.2.i.i132 = or i64 %shl.2.i.i129, %conv.2.i.i131
  %arrayidx.3.i.i133 = getelementptr %struct.mlx4_en_mc_list, ptr %mclist.0262.i, i32 0, i32 2, i32 3
  %328 = ptrtoint ptr %arrayidx.3.i.i133 to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %arrayidx.3.i.i133, align 1
  %conv.3.i.i134 = zext i8 %329 to i64
  %arrayidx.4.i.i = getelementptr %struct.mlx4_en_mc_list, ptr %mclist.0262.i, i32 0, i32 2, i32 4
  %330 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i135 = zext i8 %331 to i64
  %332 = shl nuw nsw i64 %or.2.i.i132, 24
  %333 = shl nuw nsw i64 %conv.3.i.i134, 16
  %334 = shl nuw nsw i64 %conv.4.i.i135, 8
  %335 = or i64 %334, %333
  %shl.5.i.i136 = or i64 %335, %332
  %arrayidx.5.i.i137 = getelementptr %struct.mlx4_en_mc_list, ptr %mclist.0262.i, i32 0, i32 2, i32 5
  %336 = ptrtoint ptr %arrayidx.5.i.i137 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %arrayidx.5.i.i137, align 1
  %conv.5.i.i138 = zext i8 %337 to i64
  %or.5.i.i139 = or i64 %shl.5.i.i136, %conv.5.i.i138
  %338 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %1, align 8
  %340 = ptrtoint ptr %port50.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %port50.i, align 4
  %conv67.i = trunc i32 %341 to i8
  %call68.i = call i32 @mlx4_SET_MCAST_FLTR(ptr noundef %339, i8 noundef zeroext %conv67.i, i64 noundef %or.5.i.i139, i64 noundef 0, i8 noundef zeroext 0) #12
  %342 = ptrtoint ptr %mclist.0262.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %mclist.0.i = load ptr, ptr %mclist.0262.i, align 4
  %cmp.not.i = icmp eq ptr %mclist.0.i, %mc_list60.i
  br i1 %cmp.not.i, label %for.body.i140.for.end.i141_crit_edge, label %for.body.i140.for.body.i140_crit_edge

for.body.i140.for.body.i140_crit_edge:            ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i140

for.body.i140.for.end.i141_crit_edge:             ; preds = %for.body.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i141

for.end.i141:                                     ; preds = %for.body.i140.for.end.i141_crit_edge, %mlx4_en_cache_mclist.exit.i.for.end.i141_crit_edge
  %343 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %1, align 8
  %345 = ptrtoint ptr %port50.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %port50.i, align 4
  %conv76.i = trunc i32 %346 to i8
  %call77.i = call i32 @mlx4_SET_MCAST_FLTR(ptr noundef %344, i8 noundef zeroext %conv76.i, i64 noundef 0, i64 noundef 0, i8 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %for.end.i141.if.end80.i_crit_edge, label %if.then79.i

for.end.i141.if.end80.i_crit_edge:                ; preds = %for.end.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

if.then79.i:                                      ; preds = %for.end.i141
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.105) #12
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then79.i, %for.end.i141.if.end80.i_crit_edge
  %curr_list.i = getelementptr i8, ptr %work, i32 1152
  %347 = ptrtoint ptr %curr_list.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %dst_tmp.09.i.i = load ptr, ptr %curr_list.i, align 4
  %cmp.not10.i.i = icmp eq ptr %dst_tmp.09.i.i, %curr_list.i
  br i1 %cmp.not10.i.i, label %if.end80.i.for.cond30.preheader.i.i_crit_edge, label %if.end80.i.for.cond5.preheader.i.i_crit_edge

if.end80.i.for.cond5.preheader.i.i_crit_edge:     ; preds = %if.end80.i
  br label %for.cond5.preheader.i.i

if.end80.i.for.cond30.preheader.i.i_crit_edge:    ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader.i.i

for.cond5.preheader.i.i:                          ; preds = %for.inc19.i.i.for.cond5.preheader.i.i_crit_edge, %if.end80.i.for.cond5.preheader.i.i_crit_edge
  %dst_tmp.011.i.i = phi ptr [ %dst_tmp.0.i.i, %for.inc19.i.i.for.cond5.preheader.i.i_crit_edge ], [ %dst_tmp.09.i.i, %if.end80.i.for.cond5.preheader.i.i_crit_edge ]
  %addr.i244.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %dst_tmp.011.i.i, i32 0, i32 2
  %add.ptr.i.i.i142 = getelementptr %struct.mlx4_en_mc_list, ptr %dst_tmp.011.i.i, i32 0, i32 2, i32 4
  br label %for.cond5.i.i

for.cond30.preheader.i.i:                         ; preds = %for.inc19.i.i.for.cond30.preheader.i.i_crit_edge, %if.end80.i.for.cond30.preheader.i.i_crit_edge
  %348 = ptrtoint ptr %mc_list60.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %src_tmp.112.i.i = load ptr, ptr %mc_list60.i, align 4
  %cmp32.not13.i.i = icmp eq ptr %src_tmp.112.i.i, %mc_list60.i
  br i1 %cmp32.not13.i.i, label %for.cond30.preheader.i.i.update_mclist_flags.exit.i_crit_edge, label %for.cond39.preheader.lr.ph.i.i

for.cond30.preheader.i.i.update_mclist_flags.exit.i_crit_edge: ; preds = %for.cond30.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_mclist_flags.exit.i

for.cond39.preheader.lr.ph.i.i:                   ; preds = %for.cond30.preheader.i.i
  %prev.i.i245.i = getelementptr i8, ptr %work, i32 1156
  br label %for.cond39.preheader.i.i

for.cond5.i.i:                                    ; preds = %for.body9.i.i.for.cond5.i.i_crit_edge, %for.cond5.preheader.i.i
  %src_tmp.0.in.i.i = phi ptr [ %src_tmp.0.i.i, %for.body9.i.i.for.cond5.i.i_crit_edge ], [ %mc_list60.i, %for.cond5.preheader.i.i ]
  %349 = ptrtoint ptr %src_tmp.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %src_tmp.0.i.i = load ptr, ptr %src_tmp.0.in.i.i, align 4
  %cmp7.not.i.i = icmp eq ptr %src_tmp.0.i.i, %mc_list60.i
  br i1 %cmp7.not.i.i, label %if.then17.critedge.i.i, label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.cond5.i.i
  %addr10.i.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %src_tmp.0.i.i, i32 0, i32 2
  %350 = ptrtoint ptr %addr.i244.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %addr.i244.i, align 4
  %352 = ptrtoint ptr %addr10.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %addr10.i.i, align 4
  %xor.i.i.i143 = xor i32 %353, %351
  %354 = ptrtoint ptr %add.ptr.i.i.i142 to i32
  call void @__asan_load2_noabort(i32 %354)
  %355 = load i16, ptr %add.ptr.i.i.i142, align 2
  %add.ptr1.i.i.i144 = getelementptr %struct.mlx4_en_mc_list, ptr %src_tmp.0.i.i, i32 0, i32 2, i32 4
  %356 = ptrtoint ptr %add.ptr1.i.i.i144 to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %add.ptr1.i.i.i144, align 2
  %xor37.i.i.i145 = xor i16 %357, %355
  %xor3.i.i.i146 = zext i16 %xor37.i.i.i145 to i32
  %or.i.i.i147 = or i32 %xor.i.i.i143, %xor3.i.i.i146
  %cmp.i.i.i148 = icmp eq i32 %or.i.i.i147, 0
  br i1 %cmp.i.i.i148, label %for.body9.i.i.for.inc19.i.i_crit_edge, label %for.body9.i.i.for.cond5.i.i_crit_edge

for.body9.i.i.for.cond5.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.i.i

for.body9.i.i.for.inc19.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc19.i.i

if.then17.critedge.i.i:                           ; preds = %for.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %action.i.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %dst_tmp.011.i.i, i32 0, i32 1
  %358 = ptrtoint ptr %action.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 1, ptr %action.i.i, align 8
  br label %for.inc19.i.i

for.inc19.i.i:                                    ; preds = %if.then17.critedge.i.i, %for.body9.i.i.for.inc19.i.i_crit_edge
  %359 = ptrtoint ptr %dst_tmp.011.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %dst_tmp.0.i.i = load ptr, ptr %dst_tmp.011.i.i, align 4
  %cmp.not.i246.i = icmp eq ptr %dst_tmp.0.i.i, %curr_list.i
  br i1 %cmp.not.i246.i, label %for.inc19.i.i.for.cond30.preheader.i.i_crit_edge, label %for.inc19.i.i.for.cond5.preheader.i.i_crit_edge

for.inc19.i.i.for.cond5.preheader.i.i_crit_edge:  ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond5.preheader.i.i

for.inc19.i.i.for.cond30.preheader.i.i_crit_edge: ; preds = %for.inc19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond30.preheader.i.i

for.cond39.preheader.i.i:                         ; preds = %for.inc68.i.i.for.cond39.preheader.i.i_crit_edge, %for.cond39.preheader.lr.ph.i.i
  %src_tmp.114.i.i = phi ptr [ %src_tmp.112.i.i, %for.cond39.preheader.lr.ph.i.i ], [ %src_tmp.1.i.i, %for.inc68.i.i.for.cond39.preheader.i.i_crit_edge ]
  %addr46.i.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %src_tmp.114.i.i, i32 0, i32 2
  %add.ptr1.i3.i.i = getelementptr %struct.mlx4_en_mc_list, ptr %src_tmp.114.i.i, i32 0, i32 2, i32 4
  br label %for.cond39.i.i

for.cond39.i.i:                                   ; preds = %for.body43.i.i.for.cond39.i.i_crit_edge, %for.cond39.preheader.i.i
  %dst_tmp.1.in.i.i = phi ptr [ %dst_tmp.1.i.i, %for.body43.i.i.for.cond39.i.i_crit_edge ], [ %curr_list.i, %for.cond39.preheader.i.i ]
  %360 = ptrtoint ptr %dst_tmp.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %dst_tmp.1.i.i = load ptr, ptr %dst_tmp.1.in.i.i, align 4
  %cmp41.not.i.i = icmp eq ptr %dst_tmp.1.i.i, %curr_list.i
  br i1 %cmp41.not.i.i, label %if.then60.critedge.i.i, label %for.body43.i.i

for.body43.i.i:                                   ; preds = %for.cond39.i.i
  %addr44.i.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %dst_tmp.1.i.i, i32 0, i32 2
  %361 = ptrtoint ptr %addr44.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %addr44.i.i, align 4
  %363 = ptrtoint ptr %addr46.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %addr46.i.i, align 4
  %xor.i1.i.i = xor i32 %364, %362
  %add.ptr.i2.i.i = getelementptr %struct.mlx4_en_mc_list, ptr %dst_tmp.1.i.i, i32 0, i32 2, i32 4
  %365 = ptrtoint ptr %add.ptr.i2.i.i to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %add.ptr.i2.i.i, align 2
  %367 = ptrtoint ptr %add.ptr1.i3.i.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %add.ptr1.i3.i.i, align 2
  %xor37.i4.i.i = xor i16 %368, %366
  %xor3.i5.i.i = zext i16 %xor37.i4.i.i to i32
  %or.i6.i.i = or i32 %xor.i1.i.i, %xor3.i5.i.i
  %cmp.i7.i.i = icmp eq i32 %or.i6.i.i, 0
  br i1 %cmp.i7.i.i, label %if.then49.i.i, label %for.body43.i.i.for.cond39.i.i_crit_edge

for.body43.i.i.for.cond39.i.i_crit_edge:          ; preds = %for.body43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond39.i.i

if.then49.i.i:                                    ; preds = %for.body43.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %action50.i.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %dst_tmp.1.i.i, i32 0, i32 1
  %369 = ptrtoint ptr %action50.i.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 0, ptr %action50.i.i, align 8
  br label %for.inc68.i.i

if.then60.critedge.i.i:                           ; preds = %for.cond39.i.i
  %call61.i.i = call ptr @kmemdup(ptr noundef %src_tmp.114.i.i, i32 noundef 40, i32 noundef 3264) #12
  %tobool62.not.i.i = icmp eq ptr %call61.i.i, null
  br i1 %tobool62.not.i.i, label %if.then60.critedge.i.i.update_mclist_flags.exit.i_crit_edge, label %if.end64.i.i

if.then60.critedge.i.i.update_mclist_flags.exit.i_crit_edge: ; preds = %if.then60.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_mclist_flags.exit.i

if.end64.i.i:                                     ; preds = %if.then60.critedge.i.i
  %action65.i.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %call61.i.i, i32 0, i32 1
  %370 = ptrtoint ptr %action65.i.i to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 2, ptr %action65.i.i, align 8
  %371 = ptrtoint ptr %prev.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %prev.i.i245.i, align 4
  %call.i.i.i247.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call61.i.i, ptr noundef %372, ptr noundef %curr_list.i) #12
  br i1 %call.i.i.i247.i, label %if.end.i.i.i249.i, label %if.end64.i.i.for.inc68.i.i_crit_edge

if.end64.i.i.for.inc68.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc68.i.i

if.end.i.i.i249.i:                                ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %373 = ptrtoint ptr %prev.i.i245.i to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr %call61.i.i, ptr %prev.i.i245.i, align 4
  %374 = ptrtoint ptr %call61.i.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store ptr %curr_list.i, ptr %call61.i.i, align 4
  %prev3.i.i.i248.i = getelementptr inbounds %struct.list_head, ptr %call61.i.i, i32 0, i32 1
  %375 = ptrtoint ptr %prev3.i.i.i248.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store ptr %372, ptr %prev3.i.i.i248.i, align 4
  %376 = ptrtoint ptr %372 to i32
  call void @__asan_store4_noabort(i32 %376)
  store volatile ptr %call61.i.i, ptr %372, align 4
  br label %for.inc68.i.i

for.inc68.i.i:                                    ; preds = %if.end.i.i.i249.i, %if.end64.i.i.for.inc68.i.i_crit_edge, %if.then49.i.i
  %377 = ptrtoint ptr %src_tmp.114.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %src_tmp.1.i.i = load ptr, ptr %src_tmp.114.i.i, align 4
  %cmp32.not.i.i = icmp eq ptr %src_tmp.1.i.i, %mc_list60.i
  br i1 %cmp32.not.i.i, label %for.inc68.i.i.update_mclist_flags.exit.i_crit_edge, label %for.inc68.i.i.for.cond39.preheader.i.i_crit_edge

for.inc68.i.i.for.cond39.preheader.i.i_crit_edge: ; preds = %for.inc68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond39.preheader.i.i

for.inc68.i.i.update_mclist_flags.exit.i_crit_edge: ; preds = %for.inc68.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %update_mclist_flags.exit.i

update_mclist_flags.exit.i:                       ; preds = %for.inc68.i.i.update_mclist_flags.exit.i_crit_edge, %if.then60.critedge.i.i.update_mclist_flags.exit.i_crit_edge, %for.cond30.preheader.i.i.update_mclist_flags.exit.i_crit_edge
  %378 = ptrtoint ptr %curr_list.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %curr_list.i, align 4
  %cmp95.not264.i = icmp eq ptr %379, %curr_list.i
  br i1 %cmp95.not264.i, label %update_mclist_flags.exit.i.mlx4_en_do_multicast.exit_crit_edge, label %for.body98.lr.ph.i

update_mclist_flags.exit.i.mlx4_en_do_multicast.exit_crit_edge: ; preds = %update_mclist_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_do_multicast.exit

for.body98.lr.ph.i:                               ; preds = %update_mclist_flags.exit.i
  %arrayidx129.i = getelementptr inbounds [16 x i8], ptr %mc_list.i, i32 0, i32 10
  %arrayidx134.i = getelementptr inbounds [16 x i8], ptr %mc_list.i, i32 0, i32 5
  %indir_qp137.i = getelementptr i8, ptr %work, i32 -1192
  %base_qpn147.i = getelementptr i8, ptr %work, i32 -10936
  %msg_enable.i.i = getelementptr i8, ptr %work, i32 -11044
  br label %for.body98.i

for.body98.i:                                     ; preds = %for.inc155.i.for.body98.i_crit_edge, %for.body98.lr.ph.i
  %mclist.1265.i = phi ptr [ %379, %for.body98.lr.ph.i ], [ %tmp.0267.i, %for.inc155.i.for.body98.i_crit_edge ]
  %380 = ptrtoint ptr %mclist.1265.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %tmp.0267.i = load ptr, ptr %mclist.1265.i, align 8
  %action.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.1265.i, i32 0, i32 1
  %381 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load i32, ptr %action.i, align 8
  %383 = zext i32 %382 to i64
  call void @__sanitizer_cov_trace_switch(i64 %383, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %382, label %for.body98.i.for.inc155.i_crit_edge [
    i32 1, label %if.then101.i
    i32 2, label %if.then128.i
  ]

for.body98.i.for.inc155.i_crit_edge:              ; preds = %for.body98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc155.i

if.then101.i:                                     ; preds = %for.body98.i
  %addr102.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.1265.i, i32 0, i32 2
  %384 = call ptr @memcpy(ptr %arrayidx129.i, ptr %addr102.i, i32 6)
  %385 = ptrtoint ptr %port50.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %port50.i, align 4
  %conv105.i = trunc i32 %386 to i8
  %387 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store1_noabort(i32 %387)
  store i8 %conv105.i, ptr %arrayidx134.i, align 1
  %388 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %1, align 8
  %390 = ptrtoint ptr %indir_qp137.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %indir_qp137.i, align 4
  %reg_id.i149 = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.1265.i, i32 0, i32 3
  %392 = ptrtoint ptr %reg_id.i149 to i32
  call void @__asan_load8_noabort(i32 %392)
  %393 = load i64, ptr %reg_id.i149, align 8
  %call109.i = call i32 @mlx4_multicast_detach(ptr noundef %389, ptr noundef %391, ptr noundef nonnull %mc_list.i, i32 noundef 1, i64 noundef %393) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i)
  %tobool110.not.i = icmp eq i32 %call109.i, 0
  br i1 %tobool110.not.i, label %if.then101.i.if.end112.i_crit_edge, label %if.then111.i

if.then101.i.if.end112.i_crit_edge:               ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end112.i

if.then111.i:                                     ; preds = %if.then101.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.106) #12
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then111.i, %if.then101.i.if.end112.i_crit_edge
  %tunnel_reg_id.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.1265.i, i32 0, i32 4
  %394 = ptrtoint ptr %tunnel_reg_id.i to i32
  call void @__asan_load8_noabort(i32 %394)
  %395 = load i64, ptr %tunnel_reg_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %395)
  %tobool113.not.i = icmp eq i64 %395, 0
  br i1 %tobool113.not.i, label %if.end112.i.if.end122.i_crit_edge, label %if.then114.i

if.end112.i.if.end122.i_crit_edge:                ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122.i

if.then114.i:                                     ; preds = %if.end112.i
  %396 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %add.ptr, align 8
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %397, align 8
  %call118.i = call i32 @mlx4_flow_detach(ptr noundef %399, i64 noundef %395) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.then114.i.if.end122.i_crit_edge, label %if.then120.i

if.then114.i.if.end122.i_crit_edge:               ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end122.i

if.then120.i:                                     ; preds = %if.then114.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.107) #12
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then120.i, %if.then114.i.if.end122.i_crit_edge, %if.end112.i.if.end122.i_crit_edge
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %mclist.1265.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end122.i.list_del.exit.i_crit_edge

if.end122.i.list_del.exit.i_crit_edge:            ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i250.i = getelementptr inbounds %struct.list_head, ptr %mclist.1265.i, i32 0, i32 1
  %400 = ptrtoint ptr %prev.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %prev.i.i250.i, align 4
  %402 = ptrtoint ptr %mclist.1265.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %mclist.1265.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %403, i32 0, i32 1
  %404 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %404)
  store ptr %401, ptr %prev1.i.i.i.i, align 4
  %405 = ptrtoint ptr %401 to i32
  call void @__asan_store4_noabort(i32 %405)
  store volatile ptr %403, ptr %401, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end122.i.list_del.exit.i_crit_edge
  %406 = ptrtoint ptr %mclist.1265.i to i32
  call void @__asan_store4_noabort(i32 %406)
  store ptr inttoptr (i32 256 to ptr), ptr %mclist.1265.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mclist.1265.i, i32 0, i32 1
  %407 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %mclist.1265.i) #12
  br label %for.inc155.i

if.then128.i:                                     ; preds = %for.body98.i
  %addr130.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.1265.i, i32 0, i32 2
  %408 = call ptr @memcpy(ptr %arrayidx129.i, ptr %addr130.i, i32 6)
  %409 = ptrtoint ptr %port50.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %port50.i, align 4
  %conv133.i = trunc i32 %410 to i8
  %411 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_store1_noabort(i32 %411)
  store i8 %conv133.i, ptr %arrayidx134.i, align 1
  %412 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %1, align 8
  %414 = ptrtoint ptr %indir_qp137.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %indir_qp137.i, align 4
  %reg_id141.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.1265.i, i32 0, i32 3
  %call142.i = call i32 @mlx4_multicast_attach(ptr noundef %413, ptr noundef %415, ptr noundef nonnull %mc_list.i, i8 noundef zeroext %conv133.i, i32 noundef 0, i32 noundef 1, ptr noundef %reg_id141.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142.i)
  %tobool143.not.i = icmp eq i32 %call142.i, 0
  br i1 %tobool143.not.i, label %if.then128.i.if.end145.i_crit_edge, label %if.then144.i

if.then128.i.if.end145.i_crit_edge:               ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.i

if.then144.i:                                     ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.108) #12
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.then144.i, %if.then128.i.if.end145.i_crit_edge
  %416 = ptrtoint ptr %base_qpn147.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %base_qpn147.i, align 4
  %tunnel_reg_id148.i = getelementptr inbounds %struct.mlx4_en_mc_list, ptr %mclist.1265.i, i32 0, i32 4
  %418 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %add.ptr, align 8
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %419, align 8
  %tunnel_offload_mode.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %421, i32 0, i32 3, i32 89
  %422 = ptrtoint ptr %tunnel_offload_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %tunnel_offload_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %423)
  %cmp.not.i251.i = icmp eq i32 %423, 1
  br i1 %cmp.not.i251.i, label %lor.lhs.false.i.i, label %if.end145.i.for.inc155.i_crit_edge

if.end145.i.for.inc155.i_crit_edge:               ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc155.i

lor.lhs.false.i.i:                                ; preds = %if.end145.i
  %dmfs_high_steer_mode.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %421, i32 0, i32 3, i32 51
  %424 = ptrtoint ptr %dmfs_high_steer_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %dmfs_high_steer_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %425)
  %cmp4.i.i = icmp eq i32 %425, 2
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.for.inc155.i_crit_edge, label %if.end.i253.i

lor.lhs.false.i.i.for.inc155.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc155.i

if.end.i253.i:                                    ; preds = %lor.lhs.false.i.i
  %426 = ptrtoint ptr %port50.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %port50.i, align 4
  %call.i.i150 = call i32 @mlx4_tunnel_steer_add(ptr noundef %421, ptr noundef %arrayidx129.i, i32 noundef %427, i32 noundef %417, i16 noundef zeroext 20480, ptr noundef %tunnel_reg_id148.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i150)
  %tobool.not.i252.i = icmp eq i32 %call.i.i150, 0
  br i1 %tobool.not.i252.i, label %do.body.i.i, label %if.then151.i

do.body.i.i:                                      ; preds = %if.end.i253.i
  %428 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %429, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body.i.i.for.inc155.i_crit_edge, label %if.then10.i.i

do.body.i.i.for.inc155.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc155.i

if.then10.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %430 = ptrtoint ptr %tunnel_reg_id148.i to i32
  call void @__asan_load8_noabort(i32 %430)
  %431 = load i64, ptr %tunnel_reg_id148.i, align 8
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.75, ptr noundef %arrayidx129.i, i64 noundef %431) #12
  br label %for.inc155.i

if.then151.i:                                     ; preds = %if.end.i253.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.74, i32 noundef %call.i.i150) #12
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.109) #12
  br label %for.inc155.i

for.inc155.i:                                     ; preds = %if.then151.i, %if.then10.i.i, %do.body.i.i.for.inc155.i_crit_edge, %lor.lhs.false.i.i.for.inc155.i_crit_edge, %if.end145.i.for.inc155.i_crit_edge, %list_del.exit.i, %for.body98.i.for.inc155.i_crit_edge
  %cmp95.not.i = icmp eq ptr %tmp.0267.i, %curr_list.i
  br i1 %cmp95.not.i, label %for.inc155.i.mlx4_en_do_multicast.exit_crit_edge, label %for.inc155.i.for.body98.i_crit_edge

for.inc155.i.for.body98.i_crit_edge:              ; preds = %for.inc155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body98.i

for.inc155.i.mlx4_en_do_multicast.exit_crit_edge: ; preds = %for.inc155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_do_multicast.exit

mlx4_en_do_multicast.exit:                        ; preds = %for.inc155.i.mlx4_en_do_multicast.exit_crit_edge, %update_mclist_flags.exit.i.mlx4_en_do_multicast.exit_crit_edge, %if.end21.i, %if.end.i111.mlx4_en_do_multicast.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mc_list.i) #12
  br label %out

out:                                              ; preds = %mlx4_en_do_multicast.exit, %if.then49.i86, %sw.epilog.i.out_crit_edge, %if.then43.out_crit_edge, %if.then12, %do.body8.out_crit_edge, %if.then4, %do.body.out_crit_edge
  call void @mutex_unlock(ptr noundef %state_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_restart(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60360
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev2 = getelementptr i8, ptr %work, i32 -60352
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %msg_enable = getelementptr i8, ptr %work, i32 -11088
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr i8, ptr %work, i32 -11012
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.110, i32 noundef %7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  tail call void @rtnl_lock() #12
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %port_up = getelementptr i8, ptr %work, i32 -11016
  %8 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %do.end.if.end9_crit_edge, label %if.then4

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then4:                                         ; preds = %do.end
  tail call void @mlx4_en_stop_port(ptr noundef %3, i32 noundef 1)
  %call = tail call i32 @mlx4_en_start_port(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then4.if.end9_crit_edge, label %if.then6

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %port7 = getelementptr i8, ptr %work, i32 -11012
  %10 = ptrtoint ptr %port7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port7, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.111, i32 noundef %11) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then4.if.end9_crit_edge, %do.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  tail call void @rtnl_unlock() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_linkstate_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60404
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  tail call fastcc void @mlx4_en_linkstate(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_do_get_stats(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60448
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %device_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then:                                          ; preds = %entry
  %port_up = getelementptr i8, ptr %work, i32 -11104
  %4 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.then.if.end10_crit_edge, label %if.then3

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then3:                                         ; preds = %if.then
  %port = getelementptr i8, ptr %work, i32 -11100
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %conv = trunc i32 %7 to i8
  %call4 = tail call i32 @mlx4_en_DUMP_ETH_STATS(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end9_crit_edge, label %do.body

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

do.body:                                          ; preds = %if.then3
  %msg_enable = getelementptr i8, ptr %work, i32 -11176
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.if.end9_crit_edge, label %if.then8

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr, ptr noundef nonnull @.str.113) #12
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.body.if.end9_crit_edge, %if.then3.if.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %last_moder_jiffies.i = getelementptr i8, ptr %work, i32 -11724
  %11 = ptrtoint ptr %last_moder_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_moder_jiffies.i, align 4
  %sub.i = sub i32 %10, %12
  %adaptive_rx_coal.i = getelementptr i8, ptr %work, i32 -11180
  %13 = ptrtoint ptr %adaptive_rx_coal.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adaptive_rx_coal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.end9.if.end10_crit_edge, label %lor.lhs.false.i

if.end9.if.end10_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

lor.lhs.false.i:                                  ; preds = %if.end9
  %sample_interval.i = getelementptr i8, ptr %work, i32 -11184
  %15 = ptrtoint ptr %sample_interval.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sample_interval.i, align 8
  %mul.i = mul i32 %16, 100
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul.i)
  %cmp.i = icmp ult i32 %sub.i, %mul.i
  br i1 %cmp.i, label %lor.lhs.false.i.if.end10_crit_edge, label %do.end.i

lor.lhs.false.i.if.end10_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end.i:                                         ; preds = %lor.lhs.false.i
  %pkt_rate_low1.i = getelementptr i8, ptr %work, i32 -11200
  %17 = ptrtoint ptr %pkt_rate_low1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %pkt_rate_low1.i, align 8
  %pkt_rate_high6.i = getelementptr i8, ptr %work, i32 -11192
  %19 = ptrtoint ptr %pkt_rate_high6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %pkt_rate_high6.i, align 8
  %rx_ring_num.i = getelementptr i8, ptr %work, i32 -1292
  %21 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_ring_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7151.not.i = icmp eq i32 %22, 0
  br i1 %cmp7151.not.i, label %do.end.i.for.end.i_crit_edge, label %do.end10.lr.ph.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.end10.lr.ph.i:                                 ; preds = %do.end.i
  %rx_usecs_low.i = getelementptr i8, ptr %work, i32 -11196
  %rx_usecs_high.i = getelementptr i8, ptr %work, i32 -11188
  %sub45.i = sub i32 %20, %18
  %rx_frames.i = getelementptr i8, ptr %work, i32 -11206
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.end74.i.do.end10.i_crit_edge, %do.end10.lr.ph.i
  %23 = phi i32 [ %22, %do.end10.lr.ph.i ], [ %60, %if.end74.i.do.end10.i_crit_edge ]
  %ring.0152.i = phi i32 [ 0, %do.end10.lr.ph.i ], [ %inc.i, %if.end74.i.do.end10.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 53, i32 %ring.0152.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %packets12.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %packets12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %packets12.i, align 16
  %bytes.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %25, i32 0, i32 15
  %28 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %bytes.i, align 4
  %arrayidx19.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 8, i32 %ring.0152.i
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19.i, align 4
  %sub20.i = sub i32 %27, %31
  %mul21.i = mul i32 %sub20.i, 100
  %div.i = udiv i32 %mul21.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %tobool22.not.i = icmp eq i32 %27, %31
  br i1 %tobool22.not.i, label %do.end10.i.if.else51.i_crit_edge, label %cond.end.i

do.end10.i.if.else51.i_crit_edge:                 ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else51.i

cond.end.i:                                       ; preds = %do.end10.i
  %arrayidx23.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 10, i32 %ring.0152.i
  %32 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx23.i, align 4
  %sub24.i = sub i32 %29, %33
  %div25.i = udiv i32 %sub24.i, %sub20.i
  %div27.i = udiv i32 7812, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %div27.i)
  %cmp28.i = icmp ugt i32 %div.i, %div27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div25.i)
  %cmp29.i = icmp ugt i32 %div25.i, 256
  %or.cond.i = select i1 %cmp28.i, i1 %cmp29.i, i1 false
  br i1 %or.cond.i, label %if.then30.i, label %cond.end.i.if.else51.i_crit_edge

cond.end.i.if.else51.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else51.i

if.then30.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %18)
  %cmp31.not.i = icmp ugt i32 %div.i, %18
  br i1 %cmp31.not.i, label %if.else.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %rx_usecs_low.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %rx_usecs_low.i, align 4
  %conv.i = zext i16 %35 to i32
  br label %if.end54.i

if.else.i:                                        ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %20)
  %cmp33.not.i = icmp ult i32 %div.i, %20
  br i1 %cmp33.not.i, label %if.else37.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %rx_usecs_high.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rx_usecs_high.i, align 4
  %conv36.i = zext i16 %37 to i32
  br label %if.end54.i

if.else37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub38.i = sub i32 %div.i, %18
  %38 = ptrtoint ptr %rx_usecs_high.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %rx_usecs_high.i, align 4
  %conv40.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %rx_usecs_low.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %rx_usecs_low.i, align 4
  %conv42.i = zext i16 %41 to i32
  %sub43.i = sub nsw i32 %conv40.i, %conv42.i
  %mul44.i = mul i32 %sub43.i, %sub38.i
  %div46.i = udiv i32 %mul44.i, %sub45.i
  %add.i = add i32 %div46.i, %conv42.i
  br label %if.end54.i

if.else51.i:                                      ; preds = %cond.end.i.if.else51.i_crit_edge, %do.end10.i.if.else51.i_crit_edge
  %42 = ptrtoint ptr %rx_usecs_low.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rx_usecs_low.i, align 4
  %conv53.i = zext i16 %43 to i32
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else51.i, %if.else37.i, %if.then35.i, %if.then32.i
  %moder_time.0.i = phi i32 [ %conv.i, %if.then32.i ], [ %conv36.i, %if.then35.i ], [ %add.i, %if.else37.i ], [ %conv53.i, %if.else51.i ]
  %arrayidx55.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 55, i32 %ring.0152.i
  %44 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx55.i, align 4
  %arrayidx56.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 12, i32 %ring.0152.i
  %46 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx56.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %moder_time.0.i, i32 %47)
  %cmp57.not.i = icmp eq i32 %moder_time.0.i, %47
  br i1 %cmp57.not.i, label %lor.lhs.false59.i, label %if.end54.i.if.then64.i_crit_edge

if.end54.i.if.then64.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

lor.lhs.false59.i:                                ; preds = %if.end54.i
  %moder_cnt.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %45, i32 0, i32 10
  %48 = ptrtoint ptr %moder_cnt.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %moder_cnt.i, align 2
  %50 = ptrtoint ptr %rx_frames.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %rx_frames.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %51)
  %cmp62.not.i = icmp eq i16 %49, %51
  br i1 %cmp62.not.i, label %lor.lhs.false59.i.if.end74.i_crit_edge, label %lor.lhs.false59.i.if.then64.i_crit_edge

lor.lhs.false59.i.if.then64.i_crit_edge:          ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64.i

lor.lhs.false59.i.if.end74.i_crit_edge:           ; preds = %lor.lhs.false59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

if.then64.i:                                      ; preds = %lor.lhs.false59.i.if.then64.i_crit_edge, %if.end54.i.if.then64.i_crit_edge
  %52 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %moder_time.0.i, ptr %arrayidx56.i, align 4
  %conv67.i = trunc i32 %moder_time.0.i to i16
  %moder_time68.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %45, i32 0, i32 9
  %53 = ptrtoint ptr %moder_time68.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv67.i, ptr %moder_time68.i, align 8
  %54 = ptrtoint ptr %rx_frames.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %rx_frames.i, align 2
  %moder_cnt70.i = getelementptr inbounds %struct.mlx4_en_cq, ptr %45, i32 0, i32 10
  %56 = ptrtoint ptr %moder_cnt70.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %moder_cnt70.i, align 2
  %call.i = tail call i32 @mlx4_en_set_cq_moder(ptr noundef %add.ptr, ptr noundef %45) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool71.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool71.not.i, label %if.then64.i.if.end74.i_crit_edge, label %if.then72.i

if.then64.i.if.end74.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74.i

if.then72.i:                                      ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr, ptr noundef nonnull @.str.114, i32 noundef %ring.0152.i) #12
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then72.i, %if.then64.i.if.end74.i_crit_edge, %lor.lhs.false59.i.if.end74.i_crit_edge
  %57 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %27, ptr %arrayidx19.i, align 4
  %arrayidx78.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr, i32 0, i32 10, i32 %ring.0152.i
  %58 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %29, ptr %arrayidx78.i, align 4
  %inc.i = add nuw i32 %ring.0152.i, 1
  %59 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_ring_num.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %60
  br i1 %cmp7.i, label %if.end74.i.do.end10.i_crit_edge, label %if.end74.i.for.end.i_crit_edge

if.end74.i.for.end.i_crit_edge:                   ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end74.i.do.end10.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

for.end.i:                                        ; preds = %if.end74.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %62 = ptrtoint ptr %last_moder_jiffies.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %last_moder_jiffies.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %for.end.i, %lor.lhs.false.i.if.end10_crit_edge, %if.end9.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 9
  %63 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %workqueue, align 8
  %call.i39 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %64, ptr noundef %work, i32 noundef 25) #12
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %entry.if.end12_crit_edge
  %port13 = getelementptr i8, ptr %work, i32 -11100
  %65 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %port13, align 4
  %sub = sub i32 3, %66
  %arrayidx = getelementptr %struct.mlx4_en_dev, ptr %1, i32 0, i32 16, i32 %sub
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool14.not = icmp eq i8 %68, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %current_mac = getelementptr i8, ptr %work, i32 -11084
  %call16 = tail call fastcc i32 @mlx4_en_do_set_mac(ptr noundef %add.ptr, ptr noundef %current_mac)
  %69 = ptrtoint ptr %port13 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port13, align 4
  %sub19 = sub i32 3, %70
  %arrayidx20 = getelementptr %struct.mlx4_en_dev, ptr %1, i32 0, i32 16, i32 %sub19
  %71 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %arrayidx20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end12.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_service_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -60548
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %device_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 61
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags2, align 8
  %and = and i64 %7, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool2.not = icmp eq i64 %and, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mlx4_en_ptp_overflow_check(ptr noundef %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @mlx4_en_recover_from_oom(ptr noundef %add.ptr) #12
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %workqueue, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work, i32 noundef 25) #12
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rss_key_fill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_alloc_hwq_res(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_phv_bit(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_is_vlan_offload_disabled(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_update_loopback_state(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_init_timestamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_eth_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_en_reset_config(ptr noundef %dev, [3 x i32] %ts_config.coerce, i64 noundef %features) local_unnamed_addr #0 align 64 {
entry:
  %new_prof = alloca %struct.mlx4_en_port_profile, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ts_config.coerce.fca.0.extract = extractvalue [3 x i32] %ts_config.coerce, 0
  %ts_config.coerce.fca.1.extract = extractvalue [3 x i32] %ts_config.coerce, 1
  %ts_config.coerce.fca.2.extract = extractvalue [3 x i32] %ts_config.coerce, 2
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %new_prof) #12
  %tx_type = getelementptr i8, ptr %dev, i32 68332
  %2 = ptrtoint ptr %tx_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ts_config.coerce.fca.1.extract)
  %cmp = icmp eq i32 %3, %ts_config.coerce.fca.1.extract
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rx_filter = getelementptr i8, ptr %dev, i32 68336
  %4 = ptrtoint ptr %rx_filter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_filter, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ts_config.coerce.fca.2.extract)
  %cmp5 = icmp eq i32 %5, %ts_config.coerce.fca.2.extract
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %features7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %6 = ptrtoint ptr %features7 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features7, align 16
  %and162 = xor i64 %7, %features
  %8 = and i64 %and162, 8796093022464
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %features15 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %10 = ptrtoint ptr %features15 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features15, align 16
  %and16 = and i64 %11, 256
  %and17 = and i64 %features, 256
  call void @__sanitizer_cov_trace_cmp8(i64 %and16, i64 %and17)
  %tobool19.not = icmp eq i64 %and16, %and17
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool22.not = icmp eq i64 %and17, 0
  %or.cond = or i1 %tobool22.not, %tobool19.not
  br i1 %or.cond, label %if.end.if.end28_crit_edge, label %land.lhs.true23

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true23:                                  ; preds = %if.end
  %rx_filter25 = getelementptr i8, ptr %dev, i32 68336
  %12 = ptrtoint ptr %rx_filter25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_filter25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp26.not = icmp eq i32 %13, 0
  br i1 %cmp26.not, label %land.lhs.true23.if.end28_crit_edge, label %if.then27

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.62) #12
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true23.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 66376, i32 noundef 3520, i32 noundef 5) #15
  %tobool30.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end32

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %prof = getelementptr i8, ptr %dev, i32 2308
  %14 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prof, align 4
  %16 = call ptr @memcpy(ptr %new_prof, ptr %15, i32 40)
  %hwtstamp_config33 = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 13
  %17 = ptrtoint ptr %hwtstamp_config33 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %ts_config.coerce.fca.0.extract, ptr %hwtstamp_config33, align 4
  %ts_config.sroa.2.0.hwtstamp_config33.sroa_idx = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %ts_config.sroa.2.0.hwtstamp_config33.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ts_config.coerce.fca.1.extract, ptr %ts_config.sroa.2.0.hwtstamp_config33.sroa_idx, align 4
  %ts_config.sroa.4.0.hwtstamp_config33.sroa_idx = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof, i32 0, i32 13, i32 2
  %19 = ptrtoint ptr %ts_config.sroa.4.0.hwtstamp_config33.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %ts_config.coerce.fca.2.extract, ptr %ts_config.sroa.4.0.hwtstamp_config33.sroa_idx, align 4
  %call34 = call i32 @mlx4_en_try_alloc_resources(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %new_prof, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end37:                                         ; preds = %if.end32
  %port_up38 = getelementptr i8, ptr %dev, i32 51648
  %20 = ptrtoint ptr %port_up38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port_up38, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool39.not = icmp eq i8 %21, 0
  br i1 %tobool39.not, label %if.end37.if.end41_crit_edge, label %if.then40

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1)
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.end37.if.end41_crit_edge
  call fastcc void @mlx4_en_free_resources(ptr noundef %add.ptr.i) #12
  %rx_ring.i.i = getelementptr i8, ptr %dev, i32 61516
  %rx_ring1.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 53
  %rx_ring_num.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 45
  %22 = ptrtoint ptr %rx_ring_num.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_ring_num.i.i, align 4
  %mul.i.i = shl i32 %23, 2
  %24 = call ptr @memcpy(ptr %rx_ring.i.i, ptr %rx_ring1.i.i, i32 %mul.i.i)
  %rx_cq.i.i = getelementptr i8, ptr %dev, i32 62036
  %rx_cq4.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 55
  %25 = call ptr @memcpy(ptr %rx_cq.i.i, ptr %rx_cq4.i.i, i32 %mul.i.i)
  %hwtstamp_config.i.i = getelementptr i8, ptr %dev, i32 68328
  %hwtstamp_config8.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 80
  %26 = call ptr @memcpy(ptr %hwtstamp_config.i.i, ptr %hwtstamp_config8.i.i, i32 12)
  %arrayidx.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 44, i32 0
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %dev, i32 61452
  %29 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx10.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 52, i32 0
  %30 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr i8, ptr %dev, i32 61508
  %32 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %arrayidx13.i.i, align 4
  %arrayidx14.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 54, i32 0
  %33 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx14.i.i, align 4
  %arrayidx16.i.i = getelementptr i8, ptr %dev, i32 62028
  %35 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx16.i.i, align 4
  %arrayidx.1.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 44, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.1.i.i, align 16
  %arrayidx10.1.i.i = getelementptr i8, ptr %dev, i32 61456
  %38 = ptrtoint ptr %arrayidx10.1.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx10.1.i.i, align 4
  %arrayidx11.1.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 52, i32 1
  %39 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx11.1.i.i, align 8
  %arrayidx13.1.i.i = getelementptr i8, ptr %dev, i32 61512
  %41 = ptrtoint ptr %arrayidx13.1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %arrayidx13.1.i.i, align 4
  %arrayidx14.1.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 54, i32 1
  %42 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx14.1.i.i, align 16
  %arrayidx16.1.i.i = getelementptr i8, ptr %dev, i32 62032
  %44 = ptrtoint ptr %arrayidx16.1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %arrayidx16.1.i.i, align 4
  %num_tx_rings_p_up.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 42
  %45 = ptrtoint ptr %num_tx_rings_p_up.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_tx_rings_p_up.i.i, align 4
  %num_tx_rings_p_up17.i.i = getelementptr i8, ptr %dev, i32 61444
  %47 = ptrtoint ptr %num_tx_rings_p_up17.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %num_tx_rings_p_up17.i.i, align 4
  %rx_ring_num19.i.i = getelementptr i8, ptr %dev, i32 61460
  %48 = ptrtoint ptr %rx_ring_num19.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %23, ptr %rx_ring_num19.i.i, align 4
  %49 = ptrtoint ptr %prof to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prof, align 4
  %prof20.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %prof20.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prof20.i.i, align 4
  %53 = call ptr @memcpy(ptr %50, ptr %52, i32 52)
  %54 = ptrtoint ptr %features15 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %features15, align 16
  %and43 = and i64 %55, 256
  call void @__sanitizer_cov_trace_cmp8(i64 %and43, i64 %and17)
  %tobool46.not = icmp eq i64 %and43, %and17
  br i1 %tobool46.not, label %if.else55, label %if.then47

if.then47:                                        ; preds = %if.end41
  br i1 %tobool22.not, label %if.else, label %if.then50

if.then50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i64 %55, 256
  br label %if.end69.sink.split

if.else:                                          ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %and53 = and i64 %55, -257
  br label %if.end69.sink.split

if.else55:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ts_config.coerce.fca.2.extract)
  %cmp57 = icmp eq i32 %ts_config.coerce.fca.2.extract, 0
  br i1 %cmp57, label %if.then58, label %if.else55.if.end69_crit_edge

if.else55.if.end69_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then58:                                        ; preds = %if.else55
  %wanted_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 25
  %56 = ptrtoint ptr %wanted_features to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %wanted_features, align 32
  %and59 = and i64 %57, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and59)
  %tobool60.not = icmp eq i64 %and59, 0
  br i1 %tobool60.not, label %if.else64, label %if.then61

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %or63 = or i64 %55, 256
  br label %if.end69.sink.split

if.else64:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  %and66 = and i64 %55, -257
  br label %if.end69.sink.split

if.end69.sink.split:                              ; preds = %if.else64, %if.then61, %if.else, %if.then50
  %and66.sink = phi i64 [ %and66, %if.else64 ], [ %or63, %if.then61 ], [ %or, %if.then50 ], [ %and53, %if.else ]
  %58 = ptrtoint ptr %features15 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %and66.sink, ptr %features15, align 16
  br label %if.end69

if.end69:                                         ; preds = %if.end69.sink.split, %if.else55.if.end69_crit_edge
  %59 = ptrtoint ptr %features15 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %features15, align 16
  %and71 = and i64 %60, 8796093022208
  %and72 = and i64 %features, 8796093022208
  call void @__sanitizer_cov_trace_cmp8(i64 %and71, i64 %and72)
  %tobool74.not = icmp eq i64 %and71, %and72
  br i1 %tobool74.not, label %if.end69.if.end85_crit_edge, label %if.then75

if.end69.if.end85_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then75:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %and83 = and i64 %60, -8796093022209
  %or80.sink = or i64 %and83, %and72
  %61 = ptrtoint ptr %features15 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %or80.sink, ptr %features15, align 16
  br label %if.end85

if.end85:                                         ; preds = %if.then75, %if.end69.if.end85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ts_config.coerce.fca.2.extract)
  %cmp87.not = icmp eq i32 %ts_config.coerce.fca.2.extract, 0
  br i1 %cmp87.not, label %if.end85.if.end96_crit_edge, label %if.then88

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end96

if.then88:                                        ; preds = %if.end85
  %62 = ptrtoint ptr %features15 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %features15, align 16
  %and90 = and i64 %63, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and90)
  %tobool91.not = icmp eq i64 %and90, 0
  br i1 %tobool91.not, label %if.then88.if.end93_crit_edge, label %if.then92

if.then88.if.end93_crit_edge:                     ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.63) #12
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %if.then88.if.end93_crit_edge
  %64 = ptrtoint ptr %features15 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %features15, align 16
  %and95 = and i64 %65, -257
  store i64 %and95, ptr %features15, align 16
  br label %if.end96

if.end96:                                         ; preds = %if.end93, %if.end85.if.end96_crit_edge
  br i1 %tobool39.not, label %if.end96.if.then105_crit_edge, label %if.then98

if.end96.if.then105_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.then98:                                        ; preds = %if.end96
  %call99 = call i32 @mlx4_en_start_port(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then98.if.then105_crit_edge, label %if.end103

if.then98.if.then105_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then105

if.end103:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.64) #12
  br label %out

if.then105:                                       ; preds = %if.then98.if.then105_crit_edge, %if.end96.if.then105_crit_edge
  %call106 = call i32 @mlx4_en_moderation_update(ptr noundef %add.ptr.i) #12
  br label %out

out:                                              ; preds = %if.then105, %if.end103, %if.end32.out_crit_edge
  %err.1 = phi i32 [ %call34, %if.end32.out_crit_edge ], [ %call99, %if.end103 ], [ %call106, %if.then105 ]
  call void @mutex_unlock(ptr noundef %state_lock) #12
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool109.not = icmp eq i32 %err.1, 0
  br i1 %tobool109.not, label %if.then110, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then110:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void @netdev_features_change(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %out.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then27, %land.lhs.true6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then27 ], [ -12, %if.end28.cleanup_crit_edge ], [ 0, %if.then110 ], [ %err.1, %out.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %new_prof) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_moderation_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_features_change(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpumask_local_spread(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_register_mac(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_base_qpn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_reserve_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_unregister_mac(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_recycle_tx_desc(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_en_uc_steer_add(ptr noundef %priv, ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %qpn, ptr noundef %reg_id) unnamed_addr #0 align 64 {
entry:
  %qp = alloca %struct.mlx4_qp, align 4
  %gid = alloca [16 x i8], align 1
  %spec_eth = alloca %struct.mlx4_spec_list, align 4
  %rule = alloca %struct.mlx4_net_trans_rule, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 50
  %4 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steering_mode, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp) #12
  %7 = call ptr @memset(ptr %qp, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid) #12
  %8 = call ptr @memset(ptr %gid, i32 0, i32 10)
  %9 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qpn, align 4
  %qpn3 = getelementptr inbounds %struct.mlx4_qp, ptr %qp, i32 0, i32 1
  %11 = ptrtoint ptr %qpn3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %qpn3, align 4
  %arrayidx = getelementptr inbounds [16 x i8], ptr %gid, i32 0, i32 10
  %12 = call ptr @memcpy(ptr %arrayidx, ptr %mac, i32 6)
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %conv = trunc i32 %14 to i8
  %arrayidx4 = getelementptr inbounds [16 x i8], ptr %gid, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx4, align 1
  %call = call i32 @mlx4_unicast_attach(ptr noundef %3, ptr noundef nonnull %qp, ptr noundef nonnull %gid, i32 noundef 0, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp) #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %spec_eth) #12
  %16 = call ptr @memset(ptr %spec_eth, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rule) #12
  %17 = call ptr @memcpy(ptr %rule, ptr @__const.mlx4_en_uc_steer_add.rule, i32 24)
  %port6 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %18 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port6, align 4
  %conv7 = trunc i32 %19 to i8
  %port8 = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 5
  %20 = ptrtoint ptr %port8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv7, ptr %port8, align 4
  %21 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qpn, align 4
  %qpn9 = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 7
  %23 = ptrtoint ptr %qpn9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %qpn9, align 4
  %24 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %rule, ptr %rule, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %rule, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rule, ptr %prev.i, align 4
  %id = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_eth, i32 0, i32 1
  %26 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %id, align 4
  %27 = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_eth, i32 0, i32 2
  %28 = call ptr @memcpy(ptr %27, ptr %mac, i32 6)
  %dst_mac_msk = getelementptr inbounds %struct.mlx4_spec_eth, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %dst_mac_msk to i32
  call void @__asan_storeN_noabort(i32 %29, i32 6)
  store i48 -1, ptr %dst_mac_msk, align 2
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %spec_eth, ptr noundef nonnull %rule, ptr noundef nonnull %rule) #12
  br i1 %call.i.i, label %if.end.i.i, label %sw.bb5.list_add_tail.exit_crit_edge

sw.bb5.list_add_tail.exit_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spec_eth, ptr %prev.i, align 4
  %31 = ptrtoint ptr %spec_eth to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rule, ptr %spec_eth, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %spec_eth, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rule, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %spec_eth, ptr %rule, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sw.bb5.list_add_tail.exit_crit_edge
  %call14 = call i32 @mlx4_flow_attach(ptr noundef %3, ptr noundef nonnull %rule, ptr noundef %reg_id) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rule) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %spec_eth) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %list_add_tail.exit, %sw.bb
  %err.0 = phi i32 [ %call14, %list_add_tail.exit ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not = icmp eq i32 %err.0, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %priv, ptr noundef nonnull @.str.73) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %err.0, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_unicast_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_flow_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_tunnel_steer_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_unicast_detach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_release_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_create_cq(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_create_tx_ring(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_create_rx_ring(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_get_cpu_rmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_destroy_rx_ring(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_destroy_cq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_destroy_tx_ring(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_bond_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mlx4_en_bond, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %is_bonded = getelementptr inbounds %struct.mlx4_en_bond, ptr %work, i32 0, i32 2
  %6 = ptrtoint ptr %is_bonded to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_bonded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %flags.i49 = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i49, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool21.not, label %if.then3, label %if.then.if.then10_crit_edge

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 @mlx4_bond(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.then10_crit_edge, label %if.then6

if.then3.if.then10_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then10

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %12, ptr noundef nonnull @.str.82) #12
  br label %if.end29

if.then10:                                        ; preds = %if.then3.if.then10_crit_edge, %if.then.if.then10_crit_edge
  %port_map = getelementptr inbounds %struct.mlx4_en_bond, ptr %work, i32 0, i32 3
  %call11 = tail call i32 @mlx4_port_map_set(ptr noundef %5, ptr noundef %port_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end29_crit_edge, label %if.then13

if.then10.if.end29_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %15 = ptrtoint ptr %port_map to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_map, align 4
  %conv = zext i8 %16 to i32
  %port2 = getelementptr inbounds %struct.mlx4_en_bond, ptr %work, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %port2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port2, align 1
  %conv17 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %14, ptr noundef nonnull @.str.83, i32 noundef %conv, i32 noundef %conv17, i32 noundef %call11) #12
  br label %if.end29

if.else:                                          ; preds = %entry
  br i1 %tobool21.not, label %if.else.if.end29_crit_edge, label %if.then22

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then22:                                        ; preds = %if.else
  %call23 = tail call i32 @mlx4_unbond(ptr noundef %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.if.end29_crit_edge, label %if.then25

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %20, ptr noundef nonnull @.str.84) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %if.then22.if.end29_crit_edge, %if.else.if.end29_crit_edge, %if.then13, %if.then10.if.end29_crit_edge, %if.then6
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %dev31 = getelementptr inbounds %struct.mlx4_en_priv, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end29.dev_put.exit_crit_edge, label %do.body1.i

if.end29.dev_put.exit_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end29
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !318
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 118
  %26 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcpu_refcnt.i, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %34, %28
  %35 = inttoptr i32 %add.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add13.i = add i32 %37, -1
  store i32 %add13.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !319
  %and.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !320

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #12, !srcloc !321
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end29.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef %work) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_bond(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_port_map_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_unbond(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_QUERY_PORT(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_flow_steer_promisc_add(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_unicast_promisc_add(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_multicast_promisc_add(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_en_linkstate(ptr noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_state1 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev3 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 8
  %port = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %conv = trunc i32 %5 to i8
  %call = tail call i32 @mlx4_en_QUERY_PORT(ptr noundef %1, i8 noundef zeroext %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %port_state1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %port_state1, align 4
  %state.i27 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %state.i27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i27, align 4
  %9 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i28 = icmp eq i32 %9, 0
  br i1 %tobool.not.i28, label %if.then.if.then15_crit_edge, label %if.then12.thread

if.then.if.then15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then12.thread:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_event(ptr noundef %3) #12
  br label %if.then15

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %port_state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %port_state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %14 = xor i1 %cmp, %tobool.not.i
  br i1 %14, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.end
  tail call void @netif_carrier_event(ptr noundef %3) #12
  br i1 %cmp, label %if.then12.if.else_crit_edge, label %if.then12.if.then15_crit_edge

if.then12.if.then15_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.then12.if.else_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end13:                                         ; preds = %if.end
  br i1 %cmp, label %if.end13.if.else_crit_edge, label %if.end13.if.then15_crit_edge

if.end13.if.then15_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then15

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then15:                                        ; preds = %if.end13.if.then15_crit_edge, %if.then12.if.then15_crit_edge, %if.then12.thread, %if.then.if.then15_crit_edge
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %priv, ptr noundef nonnull @.str.112) #12
  tail call void @netif_carrier_off(ptr noundef %3) #12
  br label %if.end16

if.else:                                          ; preds = %if.end13.if.else_crit_edge, %if.then12.if.else_crit_edge
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %priv, ptr noundef nonnull @.str.87) #12
  tail call void @netif_carrier_on(ptr noundef %3) #12
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_DUMP_ETH_STATS(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_en_do_set_mac(ptr noundef %priv, ptr noundef %new_mac) unnamed_addr #0 align 64 {
entry:
  %qp.i.i = alloca %struct.mlx4_qp, align 4
  %gid.i.i = alloca [16 x i8], align 1
  %qpn.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_up = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %base_qpn = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 36
  %2 = ptrtoint ptr %base_qpn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_qpn, align 4
  %current_mac = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qpn.addr.i)
  %4 = ptrtoint ptr %qpn.addr.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %qpn.addr.i, align 4
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %new_mac to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %new_mac, align 1
  %conv.i.i = zext i8 %10 to i64
  %arrayidx.1.i.i = getelementptr i8, ptr %new_mac, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1.i.i, align 1
  %conv.1.i.i = zext i8 %12 to i64
  %13 = shl nuw nsw i64 %conv.i.i, 16
  %14 = shl nuw nsw i64 %conv.1.i.i, 8
  %shl.2.i.i = or i64 %14, %13
  %arrayidx.2.i.i = getelementptr i8, ptr %new_mac, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.2.i.i, align 1
  %conv.2.i.i = zext i8 %16 to i64
  %or.2.i.i = or i64 %shl.2.i.i, %conv.2.i.i
  %arrayidx.3.i.i = getelementptr i8, ptr %new_mac, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.3.i.i, align 1
  %conv.3.i.i = zext i8 %18 to i64
  %arrayidx.4.i.i = getelementptr i8, ptr %new_mac, i32 4
  %19 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4.i.i, align 1
  %conv.4.i.i = zext i8 %20 to i64
  %21 = shl nuw nsw i64 %or.2.i.i, 24
  %22 = shl nuw nsw i64 %conv.3.i.i, 16
  %23 = shl nuw nsw i64 %conv.4.i.i, 8
  %24 = or i64 %23, %22
  %shl.5.i.i = or i64 %24, %21
  %arrayidx.5.i.i = getelementptr i8, ptr %new_mac, i32 5
  %25 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv.5.i.i = zext i8 %26 to i64
  %or.5.i.i = or i64 %shl.5.i.i, %conv.5.i.i
  %steering_mode.i = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 50
  %27 = ptrtoint ptr %steering_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %steering_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 0
  br i1 %cmp.not.i, label %mlx4_en_replace_mac.exit, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %29 = ptrtoint ptr %current_mac to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %current_mac, align 1
  %conv.i104.i = zext i8 %30 to i64
  %arrayidx.1.i105.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i105.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.1.i105.i, align 1
  %conv.1.i106.i = zext i8 %32 to i64
  %33 = shl nuw nsw i64 %conv.i104.i, 16
  %34 = shl nuw nsw i64 %conv.1.i106.i, 8
  %shl.2.i107.i = or i64 %34, %33
  %arrayidx.2.i108.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i108.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.2.i108.i, align 1
  %conv.2.i109.i = zext i8 %36 to i64
  %or.2.i110.i = or i64 %shl.2.i107.i, %conv.2.i109.i
  %arrayidx.3.i111.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33, i32 3
  %37 = ptrtoint ptr %arrayidx.3.i111.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.3.i111.i, align 1
  %conv.3.i112.i = zext i8 %38 to i64
  %arrayidx.4.i114.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33, i32 4
  %39 = ptrtoint ptr %arrayidx.4.i114.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.4.i114.i, align 1
  %conv.4.i115.i = zext i8 %40 to i64
  %41 = shl nuw nsw i64 %or.2.i110.i, 24
  %42 = shl nuw nsw i64 %conv.3.i112.i, 16
  %43 = shl nuw nsw i64 %conv.4.i115.i, 8
  %44 = or i64 %43, %42
  %shl.5.i117.i = or i64 %44, %41
  %arrayidx.5.i118.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33, i32 5
  %45 = ptrtoint ptr %arrayidx.5.i118.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.5.i118.i, align 1
  %conv.5.i119.i = zext i8 %46 to i64
  %or.5.i120.i = or i64 %shl.5.i117.i, %conv.5.i119.i
  %idxprom.i = zext i8 %46 to i32
  %arrayidx6.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 79, i32 %idxprom.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %if.then.i
  %entry3.0.in.i = phi ptr [ %arrayidx6.i, %if.then.i ], [ %entry3.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %47 = ptrtoint ptr %entry3.0.in.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %entry3.0.i = load ptr, ptr %entry3.0.in.i, align 4
  %tobool9.not.i = icmp eq ptr %entry3.0.i, null
  br i1 %tobool9.not.i, label %for.cond.i.mlx4_en_replace_mac.exit.thread25_crit_edge, label %land.rhs.i

for.cond.i.mlx4_en_replace_mac.exit.thread25_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_replace_mac.exit.thread25

land.rhs.i:                                       ; preds = %for.cond.i
  %mac.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry3.0.i, i32 0, i32 1
  %48 = ptrtoint ptr %mac.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mac.i, align 4
  %50 = ptrtoint ptr %current_mac to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %current_mac, align 4
  %xor.i.i.i = xor i32 %51, %49
  %add.ptr.i.i.i = getelementptr %struct.mlx4_mac_entry, ptr %entry3.0.i, i32 0, i32 1, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i.i.i, align 2
  %54 = ptrtoint ptr %arrayidx.4.i114.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx.4.i114.i, align 2
  %xor37.i.i.i = xor i16 %55, %53
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then13.i, label %land.rhs.i.for.cond.i_crit_edge

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

if.then13.i:                                      ; preds = %land.rhs.i
  %reg_id.i = getelementptr inbounds %struct.mlx4_mac_entry, ptr %entry3.0.i, i32 0, i32 2
  %56 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %28, label %sw.default.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp.i.i) #12
  %57 = call ptr @memset(ptr %qp.i.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid.i.i) #12
  %58 = call ptr @memset(ptr %gid.i.i, i32 0, i32 10)
  %qpn3.i.i = getelementptr inbounds %struct.mlx4_qp, ptr %qp.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %qpn3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %3, ptr %qpn3.i.i, align 4
  %arrayidx.i.i = getelementptr inbounds [16 x i8], ptr %gid.i.i, i32 0, i32 10
  %60 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %mac.i, i32 6)
  %port.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %61 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.i.i, align 4
  %conv.i121.i = trunc i32 %62 to i8
  %arrayidx4.i.i = getelementptr inbounds [16 x i8], ptr %gid.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv.i121.i, ptr %arrayidx4.i.i, align 1
  %call.i.i = call i32 @mlx4_unicast_detach(ptr noundef %8, ptr noundef nonnull %qp.i.i, ptr noundef nonnull %gid.i.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid.i.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp.i.i) #12
  br label %mlx4_en_uc_steer_release.exit.i

sw.bb5.i.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  %64 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %reg_id.i, align 8
  %call6.i.i = tail call i32 @mlx4_flow_detach(ptr noundef %8, i64 noundef %65) #12
  br label %mlx4_en_uc_steer_release.exit.i

sw.default.i.i:                                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.76) #12
  br label %mlx4_en_uc_steer_release.exit.i

mlx4_en_uc_steer_release.exit.i:                  ; preds = %sw.default.i.i, %sw.bb5.i.i, %sw.bb.i.i
  %port.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %66 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port.i, align 4
  %conv.i = trunc i32 %67 to i8
  call void @mlx4_unregister_mac(ptr noundef %8, i8 noundef zeroext %conv.i, i64 noundef %or.5.i120.i) #12
  %68 = ptrtoint ptr %entry3.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %entry3.0.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %entry3.0.i, i32 0, i32 1
  %70 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pprev2.i.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %69, ptr %71, align 4
  %tobool.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i, label %mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge, label %do.body13.i.i.i

mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge: ; preds = %mlx4_en_uc_steer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_rcu.exit.i

do.body13.i.i.i:                                  ; preds = %mlx4_en_uc_steer_release.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %69, i32 0, i32 1
  %73 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %pprev14.i.i.i, align 4
  br label %hlist_del_rcu.exit.i

hlist_del_rcu.exit.i:                             ; preds = %do.body13.i.i.i, %mlx4_en_uc_steer_release.exit.i.hlist_del_rcu.exit.i_crit_edge
  %74 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @synchronize_rcu() #12
  %75 = call ptr @memcpy(ptr %mac.i, ptr %new_mac, i32 6)
  %76 = ptrtoint ptr %reg_id.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 0, ptr %reg_id.i, align 8
  %77 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.5.i.i, align 1
  %conv21.i = zext i8 %78 to i32
  %arrayidx24.i = getelementptr %struct.mlx4_en_priv, ptr %priv, i32 0, i32 79, i32 %conv21.i
  %79 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx24.i, align 4
  %81 = ptrtoint ptr %entry3.0.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %entry3.0.i, align 4
  %82 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %arrayidx24.i, ptr %pprev2.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !317
  %83 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %entry3.0.i, ptr %arrayidx24.i, align 4
  %tobool.not.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i, label %hlist_del_rcu.exit.i.hlist_add_head_rcu.exit.i_crit_edge, label %do.body49.i.i

hlist_del_rcu.exit.i.hlist_add_head_rcu.exit.i_crit_edge: ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head_rcu.exit.i

do.body49.i.i:                                    ; preds = %hlist_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev51.i.i = getelementptr inbounds %struct.hlist_node, ptr %80, i32 0, i32 1
  %84 = ptrtoint ptr %pprev51.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %entry3.0.i, ptr %pprev51.i.i, align 4
  br label %hlist_add_head_rcu.exit.i

hlist_add_head_rcu.exit.i:                        ; preds = %do.body49.i.i, %hlist_del_rcu.exit.i.hlist_add_head_rcu.exit.i_crit_edge
  %85 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port.i, align 4
  %conv26.i = trunc i32 %86 to i8
  %call27.i = call i32 @mlx4_register_mac(ptr noundef %8, i8 noundef zeroext %conv26.i, i64 noundef %or.5.i.i) #12
  %call29.i = call fastcc i32 @mlx4_en_uc_steer_add(ptr noundef %priv, ptr noundef %new_mac, ptr noundef nonnull %qpn.addr.i, ptr noundef %reg_id.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end.i, label %hlist_add_head_rcu.exit.i.mlx4_en_replace_mac.exit.thread25_crit_edge

hlist_add_head_rcu.exit.i.mlx4_en_replace_mac.exit.thread25_crit_edge: ; preds = %hlist_add_head_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_replace_mac.exit.thread25

if.end.i:                                         ; preds = %hlist_add_head_rcu.exit.i
  %tunnel_reg_id.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 91
  %87 = ptrtoint ptr %tunnel_reg_id.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %tunnel_reg_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %88)
  %tobool32.not.i = icmp eq i64 %88, 0
  br i1 %tobool32.not.i, label %if.end.i.if.end39.i_crit_edge, label %if.then33.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %89 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %call37.i = call i32 @mlx4_flow_detach(ptr noundef %92, i64 noundef %88) #12
  %93 = ptrtoint ptr %tunnel_reg_id.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 0, ptr %tunnel_reg_id.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then33.i, %if.end.i.if.end39.i_crit_edge
  %94 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %priv, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 8
  %tunnel_offload_mode.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %97, i32 0, i32 3, i32 89
  %98 = ptrtoint ptr %tunnel_offload_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tunnel_offload_mode.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.not.i.i = icmp eq i32 %99, 1
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end39.i.mlx4_en_replace_mac.exit.thread_crit_edge

if.end39.i.mlx4_en_replace_mac.exit.thread_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_replace_mac.exit.thread

lor.lhs.false.i.i:                                ; preds = %if.end39.i
  %dmfs_high_steer_mode.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %97, i32 0, i32 3, i32 51
  %100 = ptrtoint ptr %dmfs_high_steer_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dmfs_high_steer_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp4.i.i = icmp eq i32 %101, 2
  br i1 %cmp4.i.i, label %lor.lhs.false.i.i.mlx4_en_replace_mac.exit.thread_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.mlx4_en_replace_mac.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_replace_mac.exit.thread

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %102 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port.i, align 4
  %call.i123.i = call i32 @mlx4_tunnel_steer_add(ptr noundef %97, ptr noundef %new_mac, i32 noundef %103, i32 noundef %3, i16 noundef zeroext 20480, ptr noundef %tunnel_reg_id.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123.i)
  %tobool.not.i124.i = icmp eq i32 %call.i123.i, 0
  br i1 %tobool.not.i124.i, label %do.body.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.74, i32 noundef %call.i123.i) #12
  br label %mlx4_en_replace_mac.exit.thread25

do.body.i.i:                                      ; preds = %if.end.i.i
  %msg_enable.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %104 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_enable.i.i, align 8
  %and.i.i = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool9.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool9.not.i.i, label %do.body.i.i.mlx4_en_replace_mac.exit.thread_crit_edge, label %if.then10.i.i

do.body.i.i.mlx4_en_replace_mac.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_replace_mac.exit.thread

if.then10.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %106 = ptrtoint ptr %tunnel_reg_id.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %tunnel_reg_id.i, align 8
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %priv, ptr noundef nonnull @.str.75, ptr noundef %new_mac, i64 noundef %107) #12
  br label %mlx4_en_replace_mac.exit.thread

mlx4_en_replace_mac.exit.thread:                  ; preds = %if.then10.i.i, %do.body.i.i.mlx4_en_replace_mac.exit.thread_crit_edge, %lor.lhs.false.i.i.mlx4_en_replace_mac.exit.thread_crit_edge, %if.end39.i.mlx4_en_replace_mac.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qpn.addr.i)
  br label %if.then8

mlx4_en_replace_mac.exit.thread25:                ; preds = %if.then7.i.i, %hlist_add_head_rcu.exit.i.mlx4_en_replace_mac.exit.thread25_crit_edge, %for.cond.i.mlx4_en_replace_mac.exit.thread25_crit_edge
  %retval.1.i.ph = phi i32 [ %call.i123.i, %if.then7.i.i ], [ %call29.i, %hlist_add_head_rcu.exit.i.mlx4_en_replace_mac.exit.thread25_crit_edge ], [ -22, %for.cond.i.mlx4_en_replace_mac.exit.thread25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qpn.addr.i)
  br label %if.end6

mlx4_en_replace_mac.exit:                         ; preds = %if.then
  %port58.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 29
  %108 = ptrtoint ptr %port58.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port58.i, align 4
  %conv59.i = trunc i32 %109 to i8
  %call60.i = tail call i32 @__mlx4_replace_mac(ptr noundef %8, i8 noundef zeroext %conv59.i, i32 noundef %3, i64 noundef %or.5.i.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qpn.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool1.not = icmp eq i32 %call60.i, 0
  br i1 %tobool1.not, label %mlx4_en_replace_mac.exit.if.then8_crit_edge, label %mlx4_en_replace_mac.exit.if.end6_crit_edge

mlx4_en_replace_mac.exit.if.end6_crit_edge:       ; preds = %mlx4_en_replace_mac.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

mlx4_en_replace_mac.exit.if.then8_crit_edge:      ; preds = %mlx4_en_replace_mac.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 23
  %110 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %msg_enable, align 8
  %and = and i32 %111, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.if.then8_crit_edge, label %if.then4

do.body.if.then8_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %priv, ptr noundef nonnull @.str.116) #12
  br label %if.then8

if.end6:                                          ; preds = %mlx4_en_replace_mac.exit.if.end6_crit_edge, %mlx4_en_replace_mac.exit.thread25
  %retval.1.i28 = phi i32 [ %retval.1.i.ph, %mlx4_en_replace_mac.exit.thread25 ], [ %call60.i, %mlx4_en_replace_mac.exit.if.end6_crit_edge ]
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %priv, ptr noundef nonnull @.str.115) #12
  br label %if.end11

if.then8:                                         ; preds = %if.then4, %do.body.if.then8_crit_edge, %mlx4_en_replace_mac.exit.if.then8_crit_edge, %mlx4_en_replace_mac.exit.thread
  %current_mac9 = getelementptr inbounds %struct.mlx4_en_priv, ptr %priv, i32 0, i32 33
  %112 = ptrtoint ptr %new_mac to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %new_mac, align 1
  %114 = ptrtoint ptr %current_mac9 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 8)
  store i64 %113, ptr %current_mac9, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6
  %err.031 = phi i32 [ 0, %if.then8 ], [ %retval.1.i28, %if.end6 ]
  ret i32 %err.031
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_replace_mac(ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_ptp_overflow_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_en_recover_from_oom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %device_up to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %device_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.117) #12
  br label %out

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.if.end10.i_crit_edge

if.end.if.end10.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then.i:                                        ; preds = %if.end
  %port.i = getelementptr i8, ptr %dev, i32 51652
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port.i, align 4
  %conv.i = trunc i32 %11 to i8
  %call4.i = tail call i32 @mlx4_en_DUMP_ETH_STATS(ptr noundef %5, i8 noundef zeroext %conv.i, i8 noundef zeroext 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end10.i_crit_edge, label %do.body.i

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

do.body.i:                                        ; preds = %if.then.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 51576
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %do.body.i.if.end10.i_crit_edge, label %if.then8.i

do.body.i.if.end10.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.119) #12
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %do.body.i.if.end10.i_crit_edge, %if.then.i.if.end10.i_crit_edge, %if.end.if.end10.i_crit_edge
  %pkstats.i = getelementptr i8, ptr %dev, i32 62952
  %rx_priority_flowstats.i = getelementptr i8, ptr %dev, i32 63144
  %tx_ring11.i = getelementptr i8, ptr %dev, i32 61508
  %14 = call ptr @memset(ptr %pkstats.i, i32 0, i32 188)
  %15 = call ptr @memset(ptr %rx_priority_flowstats.i, i32 0, i32 472)
  %16 = ptrtoint ptr %tx_ring11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring11.i, align 4
  %tx_ring_num.i = getelementptr i8, ptr %dev, i32 61452
  %18 = ptrtoint ptr %tx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp82.not.i = icmp eq i32 %19, 0
  br i1 %cmp82.not.i, label %if.end10.i.for.cond22.preheader.i_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  br label %for.body.i

if.end10.i.for.cond22.preheader.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond22.preheader.i

for.cond22.preheader.i:                           ; preds = %for.body.i.for.cond22.preheader.i_crit_edge, %if.end10.i.for.cond22.preheader.i_crit_edge
  %rx_ring_num.i = getelementptr i8, ptr %dev, i32 61460
  %20 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_ring_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp2384.not.i = icmp eq i32 %21, 0
  br i1 %cmp2384.not.i, label %for.cond22.preheader.i.mlx4_en_clear_stats.exit_crit_edge, label %for.cond22.preheader.i.for.body25.i_crit_edge

for.cond22.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond22.preheader.i
  br label %for.body25.i

for.cond22.preheader.i.mlx4_en_clear_stats.exit_crit_edge: ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_clear_stats.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10.i.for.body.i_crit_edge
  %i.083.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end10.i.for.body.i_crit_edge ]
  %arrayidx14.i = getelementptr ptr, ptr %17, i32 %i.083.i
  %22 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx14.i, align 4
  %bytes.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bytes.i, align 8
  %25 = load ptr, ptr %arrayidx14.i, align 4
  %packets.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %packets.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %packets.i, align 4
  %27 = load ptr, ptr %arrayidx14.i, align 4
  %tx_csum.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %tx_csum.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %tx_csum.i, align 16
  %29 = load ptr, ptr %arrayidx14.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %tx_dropped.i, align 4
  %31 = load ptr, ptr %arrayidx14.i, align 4
  %queue_stopped.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %31, i32 0, i32 30
  %32 = ptrtoint ptr %queue_stopped.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %queue_stopped.i, align 4
  %33 = load ptr, ptr %arrayidx14.i, align 4
  %wake_queue.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %wake_queue.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %wake_queue.i, align 8
  %35 = load ptr, ptr %arrayidx14.i, align 4
  %tso_packets.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %35, i32 0, i32 12
  %36 = ptrtoint ptr %tso_packets.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %tso_packets.i, align 4
  %37 = load ptr, ptr %arrayidx14.i, align 4
  %xmit_more.i = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %37, i32 0, i32 13
  %38 = ptrtoint ptr %xmit_more.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %xmit_more.i, align 8
  %inc.i = add nuw i32 %i.083.i, 1
  %39 = ptrtoint ptr %tx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_ring_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %40
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.cond22.preheader.i_crit_edge

for.body.i.for.cond22.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond22.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.cond22.preheader.i.for.body25.i_crit_edge
  %i.185.i = phi i32 [ %inc38.i, %for.body25.i.for.body25.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body25.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 53, i32 %i.185.i
  %41 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx26.i, align 4
  %bytes27.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %42, i32 0, i32 15
  %43 = ptrtoint ptr %bytes27.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bytes27.i, align 4
  %44 = load ptr, ptr %arrayidx26.i, align 4
  %packets30.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %packets30.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %packets30.i, align 16
  %46 = load ptr, ptr %arrayidx26.i, align 4
  %csum_ok.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %46, i32 0, i32 17
  %47 = ptrtoint ptr %csum_ok.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %csum_ok.i, align 4
  %48 = load ptr, ptr %arrayidx26.i, align 4
  %csum_none.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %csum_none.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %csum_none.i, align 8
  %50 = load ptr, ptr %arrayidx26.i, align 4
  %csum_complete.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %50, i32 0, i32 19
  %51 = ptrtoint ptr %csum_complete.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %csum_complete.i, align 4
  %inc38.i = add nuw i32 %i.185.i, 1
  %52 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_ring_num.i, align 4
  %cmp23.i = icmp ult i32 %inc38.i, %53
  br i1 %cmp23.i, label %for.body25.i.for.body25.i_crit_edge, label %for.body25.i.mlx4_en_clear_stats.exit_crit_edge

for.body25.i.mlx4_en_clear_stats.exit_crit_edge:  ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_clear_stats.exit

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body25.i

mlx4_en_clear_stats.exit:                         ; preds = %for.body25.i.mlx4_en_clear_stats.exit_crit_edge, %for.cond22.preheader.i.mlx4_en_clear_stats.exit_crit_edge
  %call2 = tail call i32 @mlx4_en_start_port(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %mlx4_en_clear_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr i8, ptr %dev, i32 51652
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.118, i32 noundef %55) #12
  br label %out

if.end5:                                          ; preds = %mlx4_en_clear_stats.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @mlx4_en_linkstate(ptr noundef %add.ptr.i)
  br label %out

out:                                              ; preds = %if.end5, %if.then4, %if.then
  %err.0 = phi i32 [ %call2, %if.then4 ], [ 0, %if.end5 ], [ -16, %if.then ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.120) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  tail call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 0)
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_en_xmit(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlx4_en_features_check(ptr noundef %skb, ptr nocapture noundef readonly %dev, i64 noundef %features) #0 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol1.i.i, align 8
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %entry.skb_vlan_tagged_multi.exit.i_crit_edge

entry.skb_vlan_tagged_multi.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_vlan_tagged_multi.exit.i

if.then.i.i:                                      ; preds = %entry
  %3 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.164)
  switch i16 %1, label %if.then.i.i.vlan_features_check.exit_crit_edge [
    i16 -30552, label %if.then.i.i.if.end.i.i_crit_edge
    i16 -32512, label %if.then.i.i.if.end.i.i_crit_edge47
  ]

if.then.i.i.if.end.i.i_crit_edge47:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i.vlan_features_check.exit_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_features_check.exit

if.end.i.i:                                       ; preds = %if.then.i.i.if.end.i.i_crit_edge, %if.then.i.i.if.end.i.i_crit_edge47
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i.i, 17
  br i1 %cmp.i.i, label %if.end.i.i.cleanup.i.i_crit_edge, label %if.end.i2.i, !prof !315

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

if.end.i2.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %5)
  %cmp3.i.i = icmp ult i32 %5, 18
  br i1 %cmp3.i.i, label %if.end.i2.i.vlan_features_check.exit_crit_edge, label %pskb_may_pull.exit.i, !prof !320

if.end.i2.i.vlan_features_check.exit_crit_edge:   ; preds = %if.end.i2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_features_check.exit

pskb_may_pull.exit.i:                             ; preds = %if.end.i2.i
  %sub.i.i = sub nuw nsw i32 18, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #12
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge, label %pskb_may_pull.exit.i.cleanup.i.i_crit_edge, !prof !320

pskb_may_pull.exit.i.cleanup.i.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i.i

pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_features_check.exit

cleanup.i.i:                                      ; preds = %pskb_may_pull.exit.i.cleanup.i.i_crit_edge, %if.end.i.i.cleanup.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  br label %skb_vlan_tagged_multi.exit.i

skb_vlan_tagged_multi.exit.i:                     ; preds = %cleanup.i.i, %entry.skb_vlan_tagged_multi.exit.i_crit_edge
  %protocol.1.i.i = phi i16 [ %1, %entry.skb_vlan_tagged_multi.exit.i_crit_edge ], [ %11, %cleanup.i.i ]
  %12 = zext i16 %protocol.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.165)
  switch i16 %protocol.1.i.i, label %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge [
    i16 -30552, label %skb_vlan_tagged_multi.exit.i._crit_edge
    i16 -32512, label %skb_vlan_tagged_multi.exit.i._crit_edge48
  ]

skb_vlan_tagged_multi.exit.i._crit_edge48:        ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %13

skb_vlan_tagged_multi.exit.i._crit_edge:          ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %13

skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge: ; preds = %skb_vlan_tagged_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_features_check.exit

13:                                               ; preds = %skb_vlan_tagged_multi.exit.i._crit_edge, %skb_vlan_tagged_multi.exit.i._crit_edge48
  %and.i = and i64 %features, 35184372089065
  br label %vlan_features_check.exit

vlan_features_check.exit:                         ; preds = %13, %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge, %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge, %if.end.i2.i.vlan_features_check.exit_crit_edge, %if.then.i.i.vlan_features_check.exit_crit_edge
  %14 = phi i64 [ %and.i, %13 ], [ %features, %skb_vlan_tagged_multi.exit.i.vlan_features_check.exit_crit_edge ], [ %features, %if.then.i.i.vlan_features_check.exit_crit_edge ], [ %features, %pskb_may_pull.exit.i.vlan_features_check.exit_crit_edge ], [ %features, %if.end.i2.i.vlan_features_check.exit_crit_edge ]
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %16 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not.i = icmp eq i16 %16, 0
  br i1 %tobool.not.i, label %vlan_features_check.exit.vxlan_features_check.exit_crit_edge, label %if.end.i

vlan_features_check.exit.vxlan_features_check.exit_crit_edge: ; preds = %vlan_features_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

if.end.i:                                         ; preds = %vlan_features_check.exit
  %17 = ptrtoint ptr %protocol1.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %protocol1.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %19 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %20 to i32
  %21 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.166)
  switch i16 %18, label %if.end.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %if.end.i.if.then.i.i.i_crit_edge
    i16 -32512, label %if.end.i.if.then.i.i.i_crit_edge49
  ]

if.end.i.if.then.i.i.i_crit_edge49:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i

if.end.i.vlan_get_protocol.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge49
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %20)
  %cmp.i.i.i = icmp ult i16 %20, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !320

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.121, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %vxlan_features_check.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i34 = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i34, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %22 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %23 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !316
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %22, align 2, !annotation !316
  %25 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %29 = add i32 %vlan_depth.1.i.i.i, %28
  %sub.i1.i.i.i.i = sub i32 %26, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !315

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %31, i32 %vlan_depth.1.i.i.i
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
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !320
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %32 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !320
  br i1 %32, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !320

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  br label %vxlan_features_check.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #12
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %34, label %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge50
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge50: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vlan_get_protocol.exit.i

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge50
  %add.i.i.i = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

vlan_get_protocol.exit.i:                         ; preds = %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge, %if.end.i.vlan_get_protocol.exit.i_crit_edge
  %retval.2.i.i.i = phi i16 [ %18, %if.end.i.vlan_get_protocol.exit.i_crit_edge ], [ %34, %do.cond42.i.i.i.vlan_get_protocol.exit.i_crit_edge ]
  %36 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.168)
  switch i16 %retval.2.i.i.i, label %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb2.i
  ]

vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge: ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

sw.bb.i:                                          ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %39 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i47.i = zext i16 %40 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %conv.i.i47.i
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i48.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i48.i, align 8
  %network_header.i.i49.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i.i49.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i49.i, align 4
  %conv.i.i50.i = zext i16 %44 to i32
  %add.ptr.i.i51.i = getelementptr i8, ptr %42, i32 %conv.i.i50.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i51.i, i32 0, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %l4_hdr.0.in.i = phi ptr [ %nexthdr.i, %sw.bb2.i ], [ %protocol.i, %sw.bb.i ]
  %45 = ptrtoint ptr %l4_hdr.0.in.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %l4_hdr.0.i = load i8, ptr %l4_hdr.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %l4_hdr.0.i)
  %cmp.i = icmp eq i8 %l4_hdr.0.i, 17
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.epilog.i.vxlan_features_check.exit_crit_edge

sw.epilog.i.vxlan_features_check.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

land.lhs.true.i:                                  ; preds = %sw.epilog.i
  %46 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load6.i = load i32, ptr %vlan_present.i.i, align 2
  %47 = and i32 %bf.load6.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp11.not.i = icmp eq i32 %47, 0
  br i1 %cmp11.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then32.i_crit_edge

land.lhs.true.i.if.then32.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 14
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %48, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 25944, i16 %50)
  %cmp14.not.i = icmp eq i16 %50, 25944
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false.i.if.then32.i_crit_edge

lor.lhs.false.i.if.then32.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %51 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i, align 8
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 17
  %53 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %inner_mac_header.i.i, align 2
  %conv.i.i = zext i16 %54 to i32
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %55 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %transport_header.i.i, align 2
  %conv.i53.i = zext i16 %56 to i32
  %add.ptr.i54.i = getelementptr i8, ptr %52, i32 %conv.i53.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i54.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i)
  %cmp19.not.i = icmp eq i32 %sub.ptr.sub.i, 16
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false16.i.if.then32.i_crit_edge

lor.lhs.false16.i.if.then32.i_crit_edge:          ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false16.i
  %57 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load22.i = load i16, ptr %encapsulation.i, align 8
  %58 = and i16 %bf.load22.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp27.not.i = icmp eq i16 %58, 0
  br i1 %cmp27.not.i, label %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge, label %land.lhs.true29.i

lor.lhs.false21.i.vxlan_features_check.exit_crit_edge: ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

land.lhs.true29.i:                                ; preds = %lor.lhs.false21.i
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %h_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30458, i16 %60)
  %cmp.i.i35 = icmp eq i16 %60, -30458
  br i1 %cmp.i.i35, label %if.then.i.i36, label %if.end.i.i37

if.then.i.i36:                                    ; preds = %land.lhs.true29.i
  %and.i.i = and i64 %14, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.i.i36.if.then32.i_crit_edge, label %if.then.i.i36.vxlan_features_check.exit_crit_edge

if.then.i.i36.vxlan_features_check.exit_crit_edge: ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

if.then.i.i36.if.then32.i_crit_edge:              ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

if.end.i.i37:                                     ; preds = %land.lhs.true29.i
  %and3.i.i = and i64 %14, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3.i.i)
  %tobool4.not.i.i = icmp eq i64 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %if.end.i.i37.vxlan_features_check.exit_crit_edge

if.end.i.i37.vxlan_features_check.exit_crit_edge: ; preds = %if.end.i.i37
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

if.end6.i.i:                                      ; preds = %if.end.i.i37
  %61 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.169)
  switch i16 %60, label %if.end6.i.i.if.then32.i_crit_edge [
    i16 2048, label %can_checksum_protocol.exit.i
    i16 -31011, label %sw.bb12.i.i
  ]

if.end6.i.i.if.then32.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

sw.bb12.i.i:                                      ; preds = %if.end6.i.i
  %and13.i.i = and i64 %14, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13.i.i)
  %tobool14.i.not.i = icmp eq i64 %and13.i.i, 0
  br i1 %tobool14.i.not.i, label %sw.bb12.i.i.if.then32.i_crit_edge, label %sw.bb12.i.i.vxlan_features_check.exit_crit_edge

sw.bb12.i.i.vxlan_features_check.exit_crit_edge:  ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

sw.bb12.i.i.if.then32.i_crit_edge:                ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

can_checksum_protocol.exit.i:                     ; preds = %if.end6.i.i
  %and8.i.i = and i64 %14, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8.i.i)
  %tobool9.i.not.i = icmp eq i64 %and8.i.i, 0
  br i1 %tobool9.i.not.i, label %can_checksum_protocol.exit.i.if.then32.i_crit_edge, label %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge

can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge: ; preds = %can_checksum_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vxlan_features_check.exit

can_checksum_protocol.exit.i.if.then32.i_crit_edge: ; preds = %can_checksum_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then32.i

if.then32.i:                                      ; preds = %can_checksum_protocol.exit.i.if.then32.i_crit_edge, %sw.bb12.i.i.if.then32.i_crit_edge, %if.end6.i.i.if.then32.i_crit_edge, %if.then.i.i36.if.then32.i_crit_edge, %lor.lhs.false16.i.if.then32.i_crit_edge, %lor.lhs.false.i.if.then32.i_crit_edge, %land.lhs.true.i.if.then32.i_crit_edge
  %and.i38 = and i64 %14, -34359672859
  br label %vxlan_features_check.exit

vxlan_features_check.exit:                        ; preds = %if.then32.i, %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge, %sw.bb12.i.i.vxlan_features_check.exit_crit_edge, %if.end.i.i37.vxlan_features_check.exit_crit_edge, %if.then.i.i36.vxlan_features_check.exit_crit_edge, %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge, %sw.epilog.i.vxlan_features_check.exit_crit_edge, %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %vlan_features_check.exit.vxlan_features_check.exit_crit_edge
  %retval.0.i = phi i64 [ %and.i38, %if.then32.i ], [ %14, %vlan_features_check.exit.vxlan_features_check.exit_crit_edge ], [ %14, %vlan_get_protocol.exit.i.vxlan_features_check.exit_crit_edge ], [ %14, %can_checksum_protocol.exit.i.vxlan_features_check.exit_crit_edge ], [ %14, %lor.lhs.false21.i.vxlan_features_check.exit_crit_edge ], [ %14, %sw.epilog.i.vxlan_features_check.exit_crit_edge ], [ %14, %if.then.i.i36.vxlan_features_check.exit_crit_edge ], [ %14, %sw.bb12.i.i.vxlan_features_check.exit_crit_edge ], [ %14, %do.end.i.i.i ], [ %14, %cleanup.thread.i.i.i ], [ %14, %if.end.i.i37.vxlan_features_check.exit_crit_edge ]
  %62 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load = load i16, ptr %encapsulation.i, align 8
  %63 = and i16 %bf.load, 1540
  call void @__sanitizer_cov_trace_const_cmp2(i16 1540, i16 %63)
  %64 = icmp eq i16 %63, 1540
  br i1 %64, label %if.then, label %vxlan_features_check.exit.if.end24_crit_edge

vxlan_features_check.exit.if.end24_crit_edge:     ; preds = %vxlan_features_check.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then:                                          ; preds = %vxlan_features_check.exit
  %vxlan_port = getelementptr i8, ptr %dev, i32 68624
  %65 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vxlan_port, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool9.not = icmp eq i16 %66, 0
  br i1 %tobool9.not, label %if.then.if.then23_crit_edge, label %lor.lhs.false

if.then.if.then23_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.then
  %head.i.i39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %67 = ptrtoint ptr %head.i.i39 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i.i39, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %69 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i40 = zext i16 %70 to i32
  %add.ptr.i.i41 = getelementptr i8, ptr %68, i32 %conv.i.i40
  %71 = ptrtoint ptr %add.ptr.i.i41 to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load11 = load i8, ptr %add.ptr.i.i41, align 4
  %bf.lshr12.mask = and i8 %bf.load11, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr12.mask)
  %cmp14.not = icmp eq i8 %bf.lshr12.mask, 64
  br i1 %cmp14.not, label %lor.lhs.false16, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

lor.lhs.false16:                                  ; preds = %lor.lhs.false
  %transport_header.i.i43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %72 = ptrtoint ptr %transport_header.i.i43 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %transport_header.i.i43, align 2
  %conv.i.i44 = zext i16 %73 to i32
  %add.ptr.i.i45 = getelementptr i8, ptr %68, i32 %conv.i.i44
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i45, i32 0, i32 1
  %74 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %75, i16 %66)
  %cmp21.not = icmp eq i16 %75, %66
  br i1 %cmp21.not, label %lor.lhs.false16.if.end24_crit_edge, label %lor.lhs.false16.if.then23_crit_edge

lor.lhs.false16.if.then23_crit_edge:              ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

lor.lhs.false16.if.end24_crit_edge:               ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %lor.lhs.false16.if.then23_crit_edge, %lor.lhs.false.if.then23_crit_edge, %if.then.if.then23_crit_edge
  %and = and i64 %retval.0.i, -34359672859
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %lor.lhs.false16.if.end24_crit_edge, %vxlan_features_check.exit.if.end24_crit_edge
  %features.addr.1 = phi i64 [ %retval.0.i, %vxlan_features_check.exit.if.end24_crit_edge ], [ %and, %if.then23 ], [ %retval.0.i, %lor.lhs.false16.if.end24_crit_edge ]
  ret i64 %features.addr.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlx4_en_select_queue(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %0 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 8
  %rx_mode_task = getelementptr i8, ptr %dev, i32 62620
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %rx_mode_task) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_mac(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  %new_mac = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_mac) #12
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %new_mac, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -1, ptr %2, align 1
  %4 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sa_data, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %9 = call ptr @memcpy(ptr %new_mac, ptr %sa_data, i32 6)
  %call7 = call fastcc i32 @mlx4_en_do_set_mac(ptr noundef %add.ptr.i, ptr noundef nonnull %new_mac)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end9:                                          ; preds = %if.end
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %flags2.i = getelementptr inbounds %struct.mlx4_dev, ptr %13, i32 0, i32 3, i32 61
  %14 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags2.i, align 8
  %and.i = and i64 %15, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end9.out_crit_edge, label %if.end.i

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i:                                         ; preds = %if.end9
  %port.i = getelementptr i8, ptr %dev, i32 51652
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %conv.i = trunc i32 %17 to i8
  %call.i = call i32 @mlx4_SET_PORT_user_mac(ptr noundef %13, i8 noundef zeroext %conv.i, ptr noundef nonnull %new_mac) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end.i.out_crit_edge, label %if.then4.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.122, ptr noundef nonnull %new_mac, i32 noundef %19, i32 noundef %call.i) #12
  br label %out

out:                                              ; preds = %if.then4.i, %if.end.i.out_crit_edge, %if.end9.out_crit_edge, %if.end.out_crit_edge
  call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %out ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_mac) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.123, i32 noundef %5, i32 noundef %new_mtu) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %arrayidx = getelementptr i8, ptr %dev, i32 61456
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3562, i32 %new_mtu)
  %cmp.i = icmp sgt i32 %new_mtu, 3562
  %or.cond = and i1 %cmp.i, %tobool2.not
  br i1 %or.cond, label %mlx4_en_check_xdp_mtu.exit, label %if.end5

mlx4_en_check_xdp_mtu.exit:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.126, i32 noundef %new_mtu, i32 noundef 3562) #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %mtu6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %8 = ptrtoint ptr %mtu6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %new_mtu, ptr %mtu6, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %device_up to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %device_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %do.body11, label %if.else

do.body11:                                        ; preds = %if.then8
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and13 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.if.end28_crit_edge, label %if.then15

do.body11.if.end28_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.124) #12
  br label %if.end28

if.else:                                          ; preds = %if.then8
  tail call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1)
  %call19 = tail call i32 @mlx4_en_start_port(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.if.end28_crit_edge, label %if.then21

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then21:                                        ; preds = %if.else
  %port = getelementptr i8, ptr %dev, i32 51652
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.125, i32 noundef %16) #12
  %state = getelementptr i8, ptr %dev, i32 68676
  %call22 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then24, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %workqueue, align 8
  %restart_task = getelementptr i8, ptr %dev, i32 62664
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %restart_task) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then21.if.end28_crit_edge, %if.else.if.end28_crit_edge, %if.then15, %do.body11.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end5.cleanup_crit_edge, %mlx4_en_check_xdp_mtu.exit
  %retval.0 = phi i32 [ -95, %mlx4_en_check_xdp_mtu.exit ], [ 0, %if.end28 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %tx_ring2 = getelementptr i8, ptr %dev, i32 61508
  %2 = ptrtoint ptr %tx_ring2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring2, align 4
  %arrayidx3 = getelementptr ptr, ptr %3, i32 %txqueue
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %port = getelementptr i8, ptr %dev, i32 51652
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.127, i32 noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 24
  %10 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qpn, align 16
  %sp_cqn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 38
  %12 = ptrtoint ptr %sp_cqn to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sp_cqn, align 2
  %conv = zext i16 %13 to i32
  %cons = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %cons to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cons, align 4
  %prod = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %prod to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prod, align 128
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.128, i32 noundef %txqueue, i32 noundef %11, i32 noundef %conv, i32 noundef %15, i32 noundef %17) #12
  %tx_timeout = getelementptr i8, ptr %dev, i32 63592
  %18 = ptrtoint ptr %tx_timeout to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_timeout, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %tx_timeout, align 8
  %state = getelementptr i8, ptr %dev, i32 68676
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

do.body:                                          ; preds = %if.end
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 8
  %and8 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body.do.end_crit_edge, label %if.then10

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.129) #12
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body.do.end_crit_edge
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %workqueue, align 8
  %restart_task = getelementptr i8, ptr %dev, i32 62664
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %restart_task) #12
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_get_stats64(ptr noundef %dev, ptr noundef %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_lock = getelementptr i8, ptr %dev, i32 2844
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #12
  tail call void @mlx4_en_fold_software_stats(ptr noundef %dev) #12
  %stats1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  tail call void @netdev_stats_to_stats64(ptr noundef %stats, ptr noundef %stats1) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #12
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !316
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 8
  %and = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.pre = zext i16 %vid to i32
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.130, i32 noundef %.pre) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %active_vlans = getelementptr i8, ptr %dev, i32 2316
  tail call void @_set_bit(i32 noundef %.pre, ptr noundef %active_vlans) #12
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %device_up to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %device_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %do.end.if.end13_crit_edge, label %land.lhs.true

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

land.lhs.true:                                    ; preds = %do.end
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %7 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end13_crit_edge, label %if.then7

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call9 = tail call i32 @mlx4_SET_VLAN_FLTR(ptr noundef %10, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then11

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.131) #12
  br label %out

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %conv15 = trunc i32 %14 to i8
  %call16 = call i32 @mlx4_register_vlan(ptr noundef %12, i8 noundef zeroext %conv15, i16 noundef zeroext %vid, ptr noundef nonnull %idx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end13.out_crit_edge, label %do.body19

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body19:                                        ; preds = %if.end13
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 8
  %and21 = and i32 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %do.body19.out_crit_edge, label %if.then23

do.body19.out_crit_edge:                          ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.132, i32 noundef %.pre) #12
  br label %out

out:                                              ; preds = %if.then23, %do.body19.out_crit_edge, %if.end13.out_crit_edge, %if.then11
  %err.0 = phi i32 [ %call9, %if.then11 ], [ %call16, %if.then23 ], [ %call16, %do.body19.out_crit_edge ], [ 0, %if.end13.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %state_lock) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_vlan_rx_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %msg_enable = getelementptr i8, ptr %dev, i32 51576
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.pre = zext i16 %vid to i32
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.3, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.133, i32 noundef %.pre) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %active_vlans = getelementptr i8, ptr %dev, i32 2316
  tail call void @_clear_bit(i32 noundef %.pre, ptr noundef %active_vlans) #12
  %state_lock = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %conv4 = trunc i32 %7 to i8
  tail call void @mlx4_unregister_vlan(ptr noundef %5, i8 noundef zeroext %conv4, i16 noundef zeroext %vid) #12
  %device_up = getelementptr inbounds %struct.mlx4_en_dev, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %device_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %device_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %do.end.if.end15_crit_edge, label %land.lhs.true

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %do.end
  %port_up = getelementptr i8, ptr %dev, i32 51648
  %10 = ptrtoint ptr %port_up to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port_up, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %if.then9

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call11 = tail call i32 @mlx4_SET_VLAN_FLTR(ptr noundef %13, ptr noundef %add.ptr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %if.then13

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.131) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %do.end.if.end15_crit_edge
  %err.0 = phi i32 [ %call11, %if.then13 ], [ 0, %if.then9.if.end15_crit_edge ], [ 0, %land.lhs.true.if.end15_crit_edge ], [ 0, %do.end.if.end15_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_vf_mac(ptr nocapture noundef readonly %dev, i32 noundef %queue, ptr noundef %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call3 = tail call i32 @mlx4_set_vf_mac(ptr noundef %3, i32 noundef %5, i32 noundef %queue, ptr noundef %mac) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_vf_vlan(ptr nocapture noundef readonly %dev, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call3 = tail call i32 @mlx4_set_vf_vlan(ptr noundef %3, i32 noundef %5, i32 noundef %vf, i16 noundef zeroext %vlan, i8 noundef zeroext %qos, i16 noundef zeroext %vlan_proto) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_vf_rate(ptr nocapture noundef readonly %dev, i32 noundef %vf, i32 noundef %min_tx_rate, i32 noundef %max_tx_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call3 = tail call i32 @mlx4_set_vf_rate(ptr noundef %3, i32 noundef %5, i32 noundef %vf, i32 noundef %min_tx_rate, i32 noundef %max_tx_rate) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_vf_spoofchk(ptr nocapture noundef readonly %dev, i32 noundef %vf, i1 noundef zeroext %setting) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call3 = tail call i32 @mlx4_set_vf_spoofchk(ptr noundef %3, i32 noundef %5, i32 noundef %vf, i1 noundef zeroext %setting) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_vf_config(ptr nocapture noundef readonly %dev, i32 noundef %vf, ptr noundef %ivf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call3 = tail call i32 @mlx4_get_vf_config(ptr noundef %3, i32 noundef %5, i32 noundef %vf, ptr noundef %ivf) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_vf_link_state(ptr nocapture noundef readonly %dev, i32 noundef %vf, i32 noundef %link_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call3 = tail call i32 @mlx4_set_vf_link_state(ptr noundef %3, i32 noundef %5, i32 noundef %vf, i32 noundef %link_state) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_vf_stats(ptr nocapture noundef readonly %dev, i32 noundef %vf, ptr noundef %vf_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %call3 = tail call i32 @mlx4_get_vf_stats(ptr noundef %3, i32 noundef %5, i32 noundef %vf, ptr noundef %vf_stats) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__mlx4_en_setup_tc(ptr noundef %dev, i32 noundef %type, ptr nocapture noundef %type_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type_data, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.170)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.if.end6_crit_edge
    i8 8, label %if.end.if.end6_crit_edge11
  ]

if.end.if.end6_crit_edge11:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge11
  %hw = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %hw, align 1
  %call = tail call i32 @mlx4_en_alloc_tx_queue_per_tc(ptr noundef %dev, i8 noundef zeroext %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end6 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_filter_rfs(ptr noundef %net_dev, ptr nocapture noundef readonly %skb, i16 noundef zeroext %rxq_index, i32 noundef %flow_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
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
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %encapsulation, align 8
  %7 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp.not = icmp eq i16 %9, 2048
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %5, i32 %sub.ptr.sub.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 4
  %10 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frag_off.i, align 2
  %12 = and i16 %11, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp.i.not = icmp eq i16 %12, 0
  br i1 %cmp.i.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %protocol8 = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 6
  %13 = ptrtoint ptr %protocol8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protocol8, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.171)
  switch i8 %14, label %if.end7.cleanup_crit_edge [
    i8 6, label %if.end7.if.end17_crit_edge
    i8 17, label %if.end7.if.end17_crit_edge105
  ]

if.end7.if.end17_crit_edge105:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end7.if.end17_crit_edge, %if.end7.if.end17_crit_edge105
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load20 = load i8, ptr %add.ptr, align 4
  %bf.clear21 = shl i8 %bf.load20, 2
  %17 = and i8 %bf.clear21, 60
  %mul = zext i8 %17 to i32
  %add.ptr23 = getelementptr i8, ptr %add.ptr, i32 %mul
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 8
  %18 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 9
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  %22 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr23, align 2
  %arrayidx25 = getelementptr i16, ptr %add.ptr23, i32 1
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx25, align 2
  %filters_lock = getelementptr i8, ptr %net_dev, i32 68492
  tail call void @_raw_spin_lock_bh(ptr noundef %filters_lock) #12
  %conv.i.i83 = zext i16 %23 to i32
  %conv1.i.i = zext i16 %25 to i32
  %shl.i.i = shl nuw nsw i32 %conv1.i.i, 2
  %or.i.i = or i32 %shl.i.i, %conv.i.i83
  %xor.i.i = xor i32 %21, %19
  %xor2.i.i = xor i32 %xor.i.i, %or.i.i
  %mul.i.i.i.i = mul i32 %xor2.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 28
  %arrayidx.i.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i, i32 0, i32 90, i32 %shr.i.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  %add.ptr.i84 = getelementptr i8, ptr %27, i32 -100
  %tobool2.not5054.i = icmp eq ptr %add.ptr.i84, null
  %tobool2.not50.i = or i1 %tobool.not.i, %tobool2.not5054.i
  br i1 %tobool2.not50.i, label %if.end17.if.else_crit_edge, label %if.end17.for.body.i_crit_edge

if.end17.for.body.i_crit_edge:                    ; preds = %if.end17
  br label %for.body.i

if.end17.if.else_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end17.for.body.i_crit_edge
  %filter.051.i = phi ptr [ %add.ptr29.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i84, %if.end17.for.body.i_crit_edge ]
  %src_ip3.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.051.i, i32 0, i32 3
  %28 = ptrtoint ptr %src_ip3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_ip3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %19)
  %cmp.i85 = icmp eq i32 %29, %19
  br i1 %cmp.i85, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %dst_ip4.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.051.i, i32 0, i32 4
  %30 = ptrtoint ptr %dst_ip4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_ip4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %21)
  %cmp5.i = icmp eq i32 %31, %21
  br i1 %cmp5.i, label %land.lhs.true6.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %ip_proto7.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.051.i, i32 0, i32 2
  %32 = ptrtoint ptr %ip_proto7.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ip_proto7.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %14)
  %cmp9.i = icmp eq i8 %33, %14
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true6.i.for.inc.i_crit_edge

land.lhs.true6.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true6.i
  %src_port12.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.051.i, i32 0, i32 5
  %34 = ptrtoint ptr %src_port12.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %src_port12.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %23)
  %cmp15.i = icmp eq i16 %35, %23
  br i1 %cmp15.i, label %land.lhs.true17.i, label %land.lhs.true11.i.for.inc.i_crit_edge

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true17.i:                                ; preds = %land.lhs.true11.i
  %dst_port18.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.051.i, i32 0, i32 6
  %36 = ptrtoint ptr %dst_port18.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dst_port18.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %25)
  %cmp21.i = icmp eq i16 %37, %25
  br i1 %cmp21.i, label %if.then28, label %land.lhs.true17.i.for.inc.i_crit_edge

land.lhs.true17.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true17.i.for.inc.i_crit_edge, %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true6.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %filter_chain.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.051.i, i32 0, i32 13
  %38 = ptrtoint ptr %filter_chain.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %filter_chain.i, align 4
  %tobool25.not.i = icmp eq ptr %39, null
  %add.ptr29.i = getelementptr i8, ptr %39, i32 -100
  %tobool2.not55.i = icmp eq ptr %add.ptr29.i, null
  %tobool2.not.i = or i1 %tobool25.not.i, %tobool2.not55.i
  br i1 %tobool2.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true17.i
  %rxq_index29 = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.051.i, i32 0, i32 7
  %40 = ptrtoint ptr %rxq_index29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rxq_index29, align 4
  %conv30 = zext i16 %rxq_index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv30)
  %cmp31 = icmp eq i32 %41, %conv30
  br i1 %cmp31, label %if.then28.out_crit_edge, label %if.end34

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end34:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %rxq_index29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv30, ptr %rxq_index29, align 4
  br label %if.end42

if.else:                                          ; preds = %for.inc.i.if.else_crit_edge, %if.end17.if.else_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 2848, i32 noundef 112) #16
  %tobool.not.i86 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i86, label %if.else.err_crit_edge, label %if.end.i

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end.i:                                         ; preds = %if.else
  %conv37 = zext i16 %rxq_index to i32
  %priv1.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 8
  %44 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr.i, ptr %priv1.i, align 8
  %rxq_index2.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 7
  %45 = ptrtoint ptr %rxq_index2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv37, ptr %rxq_index2.i, align 4
  %work.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #12
  %46 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.134, ptr noundef nonnull @mlx4_en_filter_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry6.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mlx4_en_filter_work, ptr %func.i, align 4
  %src_ip8.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %src_ip8.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %19, ptr %src_ip8.i, align 8
  %dst_ip9.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 4
  %51 = ptrtoint ptr %dst_ip9.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %21, ptr %dst_ip9.i, align 4
  %ip_proto10.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %ip_proto10.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %14, ptr %ip_proto10.i, align 4
  %src_port11.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %src_port11.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %23, ptr %src_port11.i, align 8
  %dst_port12.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %dst_port12.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %25, ptr %dst_port12.i, align 2
  %flow_id13.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %flow_id13.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %flow_id, ptr %flow_id13.i, align 4
  %last_filter_id.i = getelementptr i8, ptr %net_dev, i32 68536
  %56 = ptrtoint ptr %last_filter_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_filter_id.i, align 8
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %last_filter_id.i, align 8
  %rem.i = srem i32 %57, 65535
  %id.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 10
  %58 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %rem.i, ptr %id.i, align 8
  %filters.i = getelementptr i8, ptr %net_dev, i32 68540
  %prev.i39.i = getelementptr i8, ptr %net_dev, i32 68544
  %59 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i39.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %60, ptr noundef %filters.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i.i, ptr %prev.i39.i, align 4
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %filters.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %call7.i.i.i, ptr %60, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  %filter_chain.i87 = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 13
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 4
  %67 = ptrtoint ptr %filter_chain.i87 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %filter_chain.i87, align 4
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %list_add_tail.exit.i.mlx4_en_filter_alloc.exit_crit_edge, label %do.body12.i.i

list_add_tail.exit.i.mlx4_en_filter_alloc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_filter_alloc.exit

do.body12.i.i:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %filter_chain.i87, ptr %pprev.i.i, align 4
  br label %mlx4_en_filter_alloc.exit

mlx4_en_filter_alloc.exit:                        ; preds = %do.body12.i.i, %list_add_tail.exit.i.mlx4_en_filter_alloc.exit_crit_edge
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %filter_chain.i87, ptr %arrayidx.i.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %70 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %arrayidx.i.i, ptr %pprev34.i.i, align 8
  br label %if.end42

if.end42:                                         ; preds = %mlx4_en_filter_alloc.exit, %if.end34
  %filter.0 = phi ptr [ %filter.051.i, %if.end34 ], [ %call7.i.i.i, %mlx4_en_filter_alloc.exit ]
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 8
  %workqueue = getelementptr inbounds %struct.mlx4_en_dev, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %workqueue, align 8
  %work = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %work) #12
  br label %out

out:                                              ; preds = %if.end42, %if.then28.out_crit_edge
  %filter.1 = phi ptr [ %filter.051.i, %if.then28.out_crit_edge ], [ %filter.0, %if.end42 ]
  %id = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.1, i32 0, i32 10
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id, align 8
  br label %err

err:                                              ; preds = %out, %if.else.err_crit_edge
  %ret.0 = phi i32 [ %76, %out ], [ -12, %if.else.err_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %filters_lock) #12
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -93, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -93, %if.end4.cleanup_crit_edge ], [ -93, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @mlx4_en_fix_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 61
  %4 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %flags2, align 8
  %and2 = and i64 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i64 %features, 70368744177664
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %and4 = and i64 %features, -70368744177665
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %features.addr.0 = phi i64 [ %and4, %if.else ], [ %or, %if.then ]
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_features(ptr noundef %netdev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %and = and i64 %1, 8796093022208
  %and2 = and i64 %features, 8796093022208
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %and2)
  %tobool.not = icmp eq i64 %and, %and2
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool4.not = icmp eq i64 %and2, 0
  %cond = select i1 %tobool4.not, ptr @.str.139, ptr @.str.138
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.137, ptr noundef nonnull %cond) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = xor i1 %tobool.not, true
  %3 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features1, align 16
  %and6 = and i64 %4, 17592186044416
  %and7 = and i64 %features, 17592186044416
  call void @__sanitizer_cov_trace_cmp8(i64 %and6, i64 %and7)
  %tobool9.not = icmp eq i64 %and6, %and7
  br i1 %tobool9.not, label %if.end.if.end22_crit_edge, label %if.then10

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then10:                                        ; preds = %if.end
  %and7.lobit = lshr exact i64 %and7, 44
  %5 = trunc i64 %and7.lobit to i8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool15.not = icmp eq i64 %and7, 0
  %cond16 = select i1 %tobool15.not, ptr @.str.139, ptr @.str.138
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.140, ptr noundef nonnull %cond16) #12
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %port = getelementptr i8, ptr %netdev, i32 51652
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %conv17 = trunc i32 %11 to i8
  %call18 = tail call i32 @mlx4_SET_PORT_fcs_check(ptr noundef %9, i8 noundef zeroext %conv17, i8 noundef zeroext %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then10.if.end22_crit_edge, label %if.then10.cleanup70_crit_edge

if.then10.cleanup70_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.end22:                                         ; preds = %if.then10.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %12 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features1, align 16
  %and24 = and i64 %13, 256
  %and25 = and i64 %features, 256
  call void @__sanitizer_cov_trace_cmp8(i64 %and24, i64 %and25)
  %tobool27.not = icmp eq i64 %and24, %and25
  br i1 %tobool27.not, label %if.end22.if.end32_crit_edge, label %if.then28

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end32

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool30.not = icmp eq i64 %and25, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.139, ptr @.str.138
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.141, ptr noundef nonnull %cond31) #12
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.end22.if.end32_crit_edge
  %reset.1.off0 = phi i1 [ true, %if.then28 ], [ %2, %if.end22.if.end32_crit_edge ]
  %14 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features1, align 16
  %and34 = and i64 %15, 128
  %and35 = and i64 %features, 128
  call void @__sanitizer_cov_trace_cmp8(i64 %and34, i64 %and35)
  %tobool37.not = icmp eq i64 %and34, %and35
  br i1 %tobool37.not, label %if.end32.if.end42_crit_edge, label %if.then38

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool40.not = icmp eq i64 %and35, 0
  %cond41 = select i1 %tobool40.not, ptr @.str.139, ptr @.str.138
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.142, ptr noundef nonnull %cond41) #12
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end32.if.end42_crit_edge
  %16 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features1, align 16
  %and44 = and i64 %17, 35184372088832
  %and45 = and i64 %features, 35184372088832
  call void @__sanitizer_cov_trace_cmp8(i64 %and44, i64 %and45)
  %tobool47.not = icmp eq i64 %and44, %and45
  br i1 %tobool47.not, label %if.end42.if.end52_crit_edge, label %if.then48

if.end42.if.end52_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45)
  %tobool50.not = icmp eq i64 %and45, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.139, ptr @.str.138
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.143, ptr noundef nonnull %cond51) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end42.if.end52_crit_edge
  %18 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features1, align 16
  %and54 = and i64 %19, 4398046511104
  %and55 = and i64 %features, 4398046511104
  call void @__sanitizer_cov_trace_cmp8(i64 %and54, i64 %and55)
  %tobool57.not = icmp eq i64 %and54, %and55
  br i1 %tobool57.not, label %if.end52.if.end62_crit_edge, label %if.then58

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end62

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55)
  %tobool60.not = icmp eq i64 %and55, 0
  %cond61 = select i1 %tobool60.not, ptr @.str.139, ptr @.str.138
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.53, ptr noundef %add.ptr.i, ptr noundef nonnull @.str.144, ptr noundef nonnull %cond61) #12
  tail call void @mlx4_en_update_loopback_state(ptr noundef %netdev, i64 noundef %features) #12
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end52.if.end62_crit_edge
  br i1 %reset.1.off0, label %if.then64, label %if.end62.if.end69_crit_edge

if.end62.if.end69_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.then64:                                        ; preds = %if.end62
  %hwtstamp_config = getelementptr i8, ptr %netdev, i32 68328
  %20 = ptrtoint ptr %hwtstamp_config to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack = load i32, ptr %hwtstamp_config, align 8
  %21 = insertvalue [3 x i32] undef, i32 %.unpack, 0
  %.elt107 = getelementptr i8, ptr %netdev, i32 68332
  %22 = ptrtoint ptr %.elt107 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack108 = load i32, ptr %.elt107, align 4
  %23 = insertvalue [3 x i32] %21, i32 %.unpack108, 1
  %.elt109 = getelementptr i8, ptr %netdev, i32 68336
  %24 = ptrtoint ptr %.elt109 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.unpack110 = load i32, ptr %.elt109, align 8
  %25 = insertvalue [3 x i32] %23, i32 %.unpack110, 2
  %call65 = tail call i32 @mlx4_en_reset_config(ptr noundef %netdev, [3 x i32] %25, i64 noundef %features)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end69_crit_edge, label %if.then64.cleanup70_crit_edge

if.then64.cleanup70_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup70

if.then64.if.end69_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

if.end69:                                         ; preds = %if.then64.if.end69_crit_edge, %if.end62.if.end69_crit_edge
  br label %cleanup70

cleanup70:                                        ; preds = %if.end69, %if.then64.cleanup70_crit_edge, %if.then10.cleanup70_crit_edge
  %retval.1 = phi i32 [ 0, %if.end69 ], [ %call18, %if.then10.cleanup70_crit_edge ], [ %call65, %if.then64.cleanup70_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_get_phys_port_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ppid) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %port = getelementptr i8, ptr %dev, i32 51652
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 88, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not = icmp eq i64 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %8 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %id_len, align 1
  %conv = trunc i64 %7 to i8
  %arrayidx4 = getelementptr [32 x i8], ptr %ppid, i32 0, i32 7
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx4, align 1
  %shr = lshr i64 %7, 8
  %conv.1 = trunc i64 %shr to i8
  %arrayidx4.1 = getelementptr [32 x i8], ptr %ppid, i32 0, i32 6
  %10 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.1, ptr %arrayidx4.1, align 1
  %shr.1 = lshr i64 %7, 16
  %conv.2 = trunc i64 %shr.1 to i8
  %arrayidx4.2 = getelementptr [32 x i8], ptr %ppid, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.2, ptr %arrayidx4.2, align 1
  %shr.2 = lshr i64 %7, 24
  %conv.3 = trunc i64 %shr.2 to i8
  %arrayidx4.3 = getelementptr [32 x i8], ptr %ppid, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.3, ptr %arrayidx4.3, align 1
  %shr.3 = lshr i64 %7, 32
  %conv.4 = trunc i64 %shr.3 to i8
  %arrayidx4.4 = getelementptr [32 x i8], ptr %ppid, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.4, ptr %arrayidx4.4, align 1
  %shr.4 = lshr i64 %7, 40
  %conv.5 = trunc i64 %shr.4 to i8
  %arrayidx4.5 = getelementptr [32 x i8], ptr %ppid, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.5, ptr %arrayidx4.5, align 1
  %shr.5 = lshr i64 %7, 48
  %conv.6 = trunc i64 %shr.5 to i8
  %arrayidx4.6 = getelementptr [32 x i8], ptr %ppid, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.6, ptr %arrayidx4.6, align 1
  %shr.6 = lshr i64 %7, 56
  %conv.7 = trunc i64 %shr.6 to i8
  %16 = ptrtoint ptr %ppid to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.7, ptr %ppid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_set_tx_maxrate(ptr nocapture noundef readonly %dev, i32 noundef %queue_index, i32 noundef %maxrate) #0 align 64 {
entry:
  %params = alloca %struct.mlx4_update_qp_params, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_ring1 = getelementptr i8, ptr %dev, i32 61508
  %0 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1, align 4
  %arrayidx2 = getelementptr ptr, ptr %1, i32 %queue_index
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %params) #12
  %4 = call ptr @memset(ptr %params, i32 255, i32 12)
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 61
  %9 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %flags2, align 8
  %and = and i64 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %maxrate)
  %tobool4.not = icmp ult i32 %maxrate, 4096
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rate_unit = getelementptr inbounds %struct.mlx4_update_qp_params, ptr %params, i32 0, i32 3
  %11 = ptrtoint ptr %rate_unit to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 3, ptr %rate_unit, align 4
  %div = udiv i32 %maxrate, 1000
  %conv = trunc i32 %div to i16
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxrate)
  %tobool6.not = icmp eq i32 %maxrate, 0
  %rate_unit12 = getelementptr inbounds %struct.mlx4_update_qp_params, ptr %params, i32 0, i32 3
  br i1 %tobool6.not, label %if.else11, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %rate_unit12 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %rate_unit12, align 4
  %conv9 = trunc i32 %maxrate to i16
  br label %if.end15

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %rate_unit12 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %rate_unit12, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then7, %if.then5
  %conv9.sink = phi i16 [ %conv9, %if.then7 ], [ 0, %if.else11 ], [ %conv, %if.then5 ]
  %rate_val10 = getelementptr inbounds %struct.mlx4_update_qp_params, ptr %params, i32 0, i32 4
  %14 = ptrtoint ptr %rate_val10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv9.sink, ptr %rate_val10, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 8
  %qpn = getelementptr inbounds %struct.mlx4_en_tx_ring, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qpn, align 16
  %call18 = call i32 @mlx4_update_qp(ptr noundef %16, i32 noundef %18, i32 noundef 4, ptr noundef nonnull %params) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end15 ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %params) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_xdp(ptr noundef %dev, ptr nocapture noundef readonly %xdp) #0 align 64 {
entry:
  %new_prof.i = alloca %struct.mlx4_en_port_profile, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  %prog = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %new_prof.i) #12
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %cond.end.i, label %cond.end.thread.i

cond.end.i:                                       ; preds = %sw.bb
  %arrayidx.i = getelementptr i8, ptr %dev, i32 61456
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %cond.end.i.if.end.i_crit_edge, label %cond.end.i.if.end65.i_crit_edge

cond.end.i.if.end65.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

cond.end.thread.i:                                ; preds = %sw.bb
  %rx_ring_num.i = getelementptr i8, ptr %dev, i32 61460
  %8 = ptrtoint ptr %rx_ring_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_ring_num.i, align 4
  %arrayidx281.i = getelementptr i8, ptr %dev, i32 61456
  %10 = ptrtoint ptr %arrayidx281.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx281.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp282.i = icmp eq i32 %11, %9
  br i1 %cmp282.i, label %if.then3.i, label %cond.end.thread.i.if.end65.i_crit_edge

cond.end.thread.i.if.end65.i_crit_edge:           ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65.i

if.then3.i:                                       ; preds = %cond.end.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add i32 %9, -1
  tail call void @bpf_prog_add(ptr noundef nonnull %3, i32 noundef %sub.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %cond.end.i.if.end.i_crit_edge
  %state_lock.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #12
  %rx_ring_num5.i = getelementptr i8, ptr %dev, i32 61460
  %12 = ptrtoint ptr %rx_ring_num5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_ring_num5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6288.not.i = icmp eq i32 %13, 0
  br i1 %cmp6288.not.i, label %if.end.i.for.end.i_crit_edge, label %do.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

do.body.lr.ph.i:                                  ; preds = %if.end.i
  %dep_map.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %5, i32 0, i32 2, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.0289.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %for.inc.i.do.body.i_crit_edge ]
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %do.body.i.do.end.i_crit_edge

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call10.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %.b276.i = load i1, ptr @mlx4_xdp_set.__warned, align 1
  br i1 %.b276.i, label %land.lhs.true12.i.do.end.i_crit_edge, label %if.then14.i

land.lhs.true12.i.do.end.i_crit_edge:             ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx4_xdp_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 2756, ptr noundef nonnull @.str.33) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then14.i, %land.lhs.true12.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx17.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i.i, i32 0, i32 53, i32 %i.0289.i
  %14 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx17.i, align 4
  %xdp_prog.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xdp_prog.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !322
  %18 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17.i, align 4
  %xdp_prog49.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %xdp_prog49.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %3, ptr %xdp_prog49.i, align 4
  %tobool61.not.i = icmp eq ptr %17, null
  br i1 %tobool61.not.i, label %do.end.i.for.inc.i_crit_edge, label %if.then62.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then62.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @bpf_prog_put(ptr noundef nonnull %17) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then62.i, %do.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0289.i, 1
  %21 = ptrtoint ptr %rx_ring_num5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_ring_num5.i, align 4
  %cmp6.i = icmp ult i32 %inc.i, %22
  br i1 %cmp6.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #12
  br label %mlx4_xdp_set.exit

if.end65.i:                                       ; preds = %cond.end.thread.i.if.end65.i_crit_edge, %cond.end.i.if.end65.i_crit_edge
  %arrayidx285.i = phi ptr [ %arrayidx281.i, %cond.end.thread.i.if.end65.i_crit_edge ], [ %arrayidx.i, %cond.end.i.if.end65.i_crit_edge ]
  %cond283.i = phi i32 [ %9, %cond.end.thread.i.if.end65.i_crit_edge ], [ 0, %cond.end.i.if.end65.i_crit_edge ]
  %tx_ring_num284.i = getelementptr i8, ptr %dev, i32 61452
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %23 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3562, i32 %24)
  %cmp.i.i = icmp sgt i32 %24, 3562
  br i1 %cmp.i.i, label %mlx4_en_check_xdp_mtu.exit.i, label %if.end68.i

mlx4_en_check_xdp_mtu.exit.i:                     ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.126, i32 noundef %24, i32 noundef 3562) #12
  br label %mlx4_xdp_set.exit

if.end68.i:                                       ; preds = %if.end65.i
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 66376, i32 noundef 3520, i32 noundef 5) #15
  %tobool70.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool70.not.i, label %if.end68.i.mlx4_xdp_set.exit_crit_edge, label %if.end72.i

if.end68.i.mlx4_xdp_set.exit_crit_edge:           ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_xdp_set.exit

if.end72.i:                                       ; preds = %if.end68.i
  br i1 %tobool.not.i, label %if.end72.i.if.end77.i_crit_edge, label %if.then74.i

if.end72.i.if.end77.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77.i

if.then74.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_ring_num75.i = getelementptr i8, ptr %dev, i32 61460
  %25 = ptrtoint ptr %rx_ring_num75.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_ring_num75.i, align 4
  %sub76.i = add i32 %26, -1
  tail call void @bpf_prog_add(ptr noundef nonnull %3, i32 noundef %sub76.i) #12
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then74.i, %if.end72.i.if.end77.i_crit_edge
  %state_lock78.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %state_lock78.i, i32 noundef 0) #12
  %prof.i = getelementptr i8, ptr %dev, i32 2308
  %27 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prof.i, align 4
  %29 = call ptr @memcpy(ptr %new_prof.i, ptr %28, i32 52)
  %arrayidx80.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond283.i, ptr %arrayidx80.i, align 4
  %31 = ptrtoint ptr %tx_ring_num284.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_ring_num284.i, align 4
  %add.i = add i32 %32, %cond283.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp83.i = icmp ugt i32 %add.i, 256
  br i1 %cmp83.i, label %if.then84.i, label %if.end77.i.if.end95.i_crit_edge

if.end77.i.if.end95.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95.i

if.then84.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_ring_num79.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %new_prof.i, i32 0, i32 1
  %num_up.i = getelementptr inbounds %struct.mlx4_en_port_profile, ptr %28, i32 0, i32 10
  %33 = ptrtoint ptr %num_up.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_up.i, align 1
  %conv.i = zext i8 %34 to i32
  %sub86.i = add i32 %cond283.i, -1
  %add87.i = add i32 %sub86.i, %conv.i
  %neg.i = sub nsw i32 0, %conv.i
  %and.i = and i32 %add87.i, %neg.i
  %sub92.i = sub i32 256, %and.i
  %35 = ptrtoint ptr %tx_ring_num79.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub92.i, ptr %tx_ring_num79.i, align 4
  tail call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.145) #12
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then84.i, %if.end77.i.if.end95.i_crit_edge
  %call96.i = call i32 @mlx4_en_try_alloc_resources(ptr noundef %add.ptr.i.i, ptr noundef nonnull %call1.i.i.i.i, ptr noundef nonnull %new_prof.i, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %if.end104.i, label %if.then98.i

if.then98.i:                                      ; preds = %if.end95.i
  br i1 %tobool.not.i, label %if.then98.i.unlock_out.i_crit_edge, label %if.then100.i

if.then98.i.unlock_out.i_crit_edge:               ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out.i

if.then100.i:                                     ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_ring_num101.i = getelementptr i8, ptr %dev, i32 61460
  %36 = ptrtoint ptr %rx_ring_num101.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_ring_num101.i, align 4
  %sub102.i = add i32 %37, -1
  call void @bpf_prog_sub(ptr noundef nonnull %3, i32 noundef %sub102.i) #12
  br label %unlock_out.i

if.end104.i:                                      ; preds = %if.end95.i
  %port_up105.i = getelementptr i8, ptr %dev, i32 51648
  %38 = ptrtoint ptr %port_up105.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port_up105.i, align 8, !range !313
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool106.not.i = icmp eq i8 %39, 0
  br i1 %tobool106.not.i, label %if.end104.i.if.end108.i_crit_edge, label %if.then107.i

if.end104.i.if.end108.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end108.i

if.then107.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @mlx4_en_stop_port(ptr noundef %dev, i32 noundef 1) #12
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then107.i, %if.end104.i.if.end108.i_crit_edge
  call fastcc void @mlx4_en_free_resources(ptr noundef %add.ptr.i.i) #12
  %rx_ring.i.i.i = getelementptr i8, ptr %dev, i32 61516
  %rx_ring1.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 53
  %rx_ring_num.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 45
  %40 = ptrtoint ptr %rx_ring_num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_ring_num.i.i.i, align 4
  %mul.i.i.i = shl i32 %41, 2
  %42 = call ptr @memcpy(ptr %rx_ring.i.i.i, ptr %rx_ring1.i.i.i, i32 %mul.i.i.i)
  %rx_cq.i.i.i = getelementptr i8, ptr %dev, i32 62036
  %rx_cq4.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 55
  %43 = call ptr @memcpy(ptr %rx_cq.i.i.i, ptr %rx_cq4.i.i.i, i32 %mul.i.i.i)
  %hwtstamp_config.i.i.i = getelementptr i8, ptr %dev, i32 68328
  %hwtstamp_config8.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 80
  %44 = call ptr @memcpy(ptr %hwtstamp_config.i.i.i, ptr %hwtstamp_config8.i.i.i, i32 12)
  %arrayidx.i.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 44, i32 0
  %45 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i.i, align 4
  %47 = ptrtoint ptr %tx_ring_num284.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %tx_ring_num284.i, align 4
  %arrayidx11.i.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 52, i32 0
  %48 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx11.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr i8, ptr %dev, i32 61508
  %50 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %arrayidx13.i.i.i, align 4
  %arrayidx14.i.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 54, i32 0
  %51 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx14.i.i.i, align 4
  %arrayidx16.i.i.i = getelementptr i8, ptr %dev, i32 62028
  %53 = ptrtoint ptr %arrayidx16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %arrayidx16.i.i.i, align 4
  %arrayidx.1.i.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 44, i32 1
  %54 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.1.i.i.i, align 16
  %56 = ptrtoint ptr %arrayidx285.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx285.i, align 4
  %arrayidx11.1.i.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 52, i32 1
  %57 = ptrtoint ptr %arrayidx11.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx11.1.i.i.i, align 8
  %arrayidx13.1.i.i.i = getelementptr i8, ptr %dev, i32 61512
  %59 = ptrtoint ptr %arrayidx13.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %arrayidx13.1.i.i.i, align 4
  %arrayidx14.1.i.i.i = getelementptr %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 54, i32 1
  %60 = ptrtoint ptr %arrayidx14.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx14.1.i.i.i, align 16
  %arrayidx16.1.i.i.i = getelementptr i8, ptr %dev, i32 62032
  %62 = ptrtoint ptr %arrayidx16.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %arrayidx16.1.i.i.i, align 4
  %num_tx_rings_p_up.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 42
  %63 = ptrtoint ptr %num_tx_rings_p_up.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num_tx_rings_p_up.i.i.i, align 4
  %num_tx_rings_p_up17.i.i.i = getelementptr i8, ptr %dev, i32 61444
  %65 = ptrtoint ptr %num_tx_rings_p_up17.i.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %num_tx_rings_p_up17.i.i.i, align 4
  %rx_ring_num19.i.i.i = getelementptr i8, ptr %dev, i32 61460
  %66 = ptrtoint ptr %rx_ring_num19.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %41, ptr %rx_ring_num19.i.i.i, align 4
  %67 = ptrtoint ptr %prof.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prof.i, align 4
  %prof20.i.i.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %call1.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prof20.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prof20.i.i.i, align 4
  %71 = call ptr @memcpy(ptr %68, ptr %70, i32 52)
  br i1 %cmp83.i, label %if.then110.i, label %if.end108.i.if.end114.i_crit_edge

if.end108.i.if.end114.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end114.i

if.then110.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #14
  %72 = ptrtoint ptr %tx_ring_num284.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_ring_num284.i, align 4
  %call113.i = call i32 @netif_set_real_num_tx_queues(ptr noundef %dev, i32 noundef %73) #12
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then110.i, %if.end108.i.if.end114.i_crit_edge
  %74 = ptrtoint ptr %rx_ring_num19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_ring_num19.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp117286.not.i = icmp eq i32 %75, 0
  br i1 %cmp117286.not.i, label %if.end114.i.for.end189.i_crit_edge, label %do.body120.lr.ph.i

if.end114.i.for.end189.i_crit_edge:               ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end189.i

do.body120.lr.ph.i:                               ; preds = %if.end114.i
  %dep_map122.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %5, i32 0, i32 2, i32 5
  br label %do.body120.i

do.body120.i:                                     ; preds = %for.inc187.i.do.body120.i_crit_edge, %do.body120.lr.ph.i
  %i.1287.i = phi i32 [ 0, %do.body120.lr.ph.i ], [ %inc188.i, %for.inc187.i.do.body120.i_crit_edge ]
  %call.i277.i = call i32 @lock_is_held_type(ptr noundef %dep_map122.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277.i)
  %tobool124.not.i = icmp eq i32 %call.i277.i, 0
  br i1 %tobool124.not.i, label %land.lhs.true125.i, label %do.body120.i.do.end133.i_crit_edge

do.body120.i.do.end133.i_crit_edge:               ; preds = %do.body120.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end133.i

land.lhs.true125.i:                               ; preds = %do.body120.i
  %call126.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool127.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool127.not.i, label %land.lhs.true125.i.do.end133.i_crit_edge, label %land.lhs.true128.i

land.lhs.true125.i.do.end133.i_crit_edge:         ; preds = %land.lhs.true125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end133.i

land.lhs.true128.i:                               ; preds = %land.lhs.true125.i
  %.b274275.i = load i1, ptr @mlx4_xdp_set.__warned.146, align 1
  br i1 %.b274275.i, label %land.lhs.true128.i.do.end133.i_crit_edge, label %if.then130.i

land.lhs.true128.i.do.end133.i_crit_edge:         ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end133.i

if.then130.i:                                     ; preds = %land.lhs.true128.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlx4_xdp_set.__warned.146, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 2805, ptr noundef nonnull @.str.33) #12
  br label %do.end133.i

do.end133.i:                                      ; preds = %if.then130.i, %land.lhs.true128.i.do.end133.i_crit_edge, %land.lhs.true125.i.do.end133.i_crit_edge, %do.body120.i.do.end133.i_crit_edge
  %arrayidx136.i = getelementptr %struct.mlx4_en_priv, ptr %add.ptr.i.i, i32 0, i32 53, i32 %i.1287.i
  %76 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx136.i, align 4
  %xdp_prog137.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %77, i32 0, i32 13
  %78 = ptrtoint ptr %xdp_prog137.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %xdp_prog137.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !323
  %80 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx136.i, align 4
  %xdp_prog172.i = getelementptr inbounds %struct.mlx4_en_rx_ring, ptr %81, i32 0, i32 13
  %82 = ptrtoint ptr %xdp_prog172.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %3, ptr %xdp_prog172.i, align 4
  %tobool184.not.i = icmp eq ptr %79, null
  br i1 %tobool184.not.i, label %do.end133.i.for.inc187.i_crit_edge, label %if.then185.i

do.end133.i.for.inc187.i_crit_edge:               ; preds = %do.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc187.i

if.then185.i:                                     ; preds = %do.end133.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @bpf_prog_put(ptr noundef nonnull %79) #12
  br label %for.inc187.i

for.inc187.i:                                     ; preds = %if.then185.i, %do.end133.i.for.inc187.i_crit_edge
  %inc188.i = add nuw i32 %i.1287.i, 1
  %83 = ptrtoint ptr %rx_ring_num19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_ring_num19.i.i.i, align 4
  %cmp117.i = icmp ult i32 %inc188.i, %84
  br i1 %cmp117.i, label %for.inc187.i.do.body120.i_crit_edge, label %for.inc187.i.for.end189.i_crit_edge

for.inc187.i.for.end189.i_crit_edge:              ; preds = %for.inc187.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end189.i

for.inc187.i.do.body120.i_crit_edge:              ; preds = %for.inc187.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body120.i

for.end189.i:                                     ; preds = %for.inc187.i.for.end189.i_crit_edge, %if.end114.i.for.end189.i_crit_edge
  br i1 %tobool106.not.i, label %for.end189.i.unlock_out.i_crit_edge, label %if.then191.i

for.end189.i.unlock_out.i_crit_edge:              ; preds = %for.end189.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out.i

if.then191.i:                                     ; preds = %for.end189.i
  %call192.i = call i32 @mlx4_en_start_port(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192.i)
  %tobool193.not.i = icmp eq i32 %call192.i, 0
  br i1 %tobool193.not.i, label %if.then191.i.unlock_out.i_crit_edge, label %if.then194.i

if.then191.i.unlock_out.i_crit_edge:              ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out.i

if.then194.i:                                     ; preds = %if.then191.i
  %port.i = getelementptr i8, ptr %dev, i32 51652
  %85 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port.i, align 4
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %add.ptr.i.i, ptr noundef nonnull @.str.147, i32 noundef %86) #12
  %state.i = getelementptr i8, ptr %dev, i32 68676
  %call195.i = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i)
  %tobool196.not.i = icmp eq i32 %call195.i, 0
  br i1 %tobool196.not.i, label %if.then197.i, label %if.then194.i.unlock_out.i_crit_edge

if.then194.i.unlock_out.i_crit_edge:              ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock_out.i

if.then197.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #14
  %workqueue.i = getelementptr inbounds %struct.mlx4_en_dev, ptr %5, i32 0, i32 9
  %87 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %workqueue.i, align 8
  %restart_task.i = getelementptr i8, ptr %dev, i32 62664
  %call.i278.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %88, ptr noundef %restart_task.i) #12
  br label %unlock_out.i

unlock_out.i:                                     ; preds = %if.then197.i, %if.then194.i.unlock_out.i_crit_edge, %if.then191.i.unlock_out.i_crit_edge, %for.end189.i.unlock_out.i_crit_edge, %if.then100.i, %if.then98.i.unlock_out.i_crit_edge
  %err.0.i = phi i32 [ %call96.i, %if.then100.i ], [ %call96.i, %if.then98.i.unlock_out.i_crit_edge ], [ %call192.i, %if.then194.i.unlock_out.i_crit_edge ], [ %call192.i, %if.then197.i ], [ 0, %if.then191.i.unlock_out.i_crit_edge ], [ 0, %for.end189.i.unlock_out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %state_lock78.i) #12
  call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #12
  br label %mlx4_xdp_set.exit

mlx4_xdp_set.exit:                                ; preds = %unlock_out.i, %if.end68.i.mlx4_xdp_set.exit_crit_edge, %mlx4_en_check_xdp_mtu.exit.i, %for.end.i
  %retval.0.i = phi i32 [ 0, %for.end.i ], [ %err.0.i, %unlock_out.i ], [ -95, %mlx4_en_check_xdp_mtu.exit.i ], [ -12, %if.end68.i.mlx4_xdp_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %new_prof.i) #12
  br label %return

return:                                           ; preds = %mlx4_xdp_set.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mlx4_xdp_set.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_user_mac(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_stats_to_stats64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_VLAN_FLTR(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_register_vlan(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_unregister_vlan(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_set_vf_mac(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_set_vf_vlan(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_set_vf_rate(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_set_vf_spoofchk(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_vf_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_set_vf_link_state(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_vf_stats(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_en_filter_work(ptr noundef %work) #0 align 64 {
entry:
  %del_list.i = alloca %struct.list_head, align 4
  %spec_tcp_udp = alloca %struct.mlx4_spec_list, align 4
  %spec_ip = alloca %struct.mlx4_spec_list, align 8
  %spec_eth = alloca %struct.mlx4_spec_list, align 4
  %rule = alloca %struct.mlx4_net_trans_rule, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %work, i32 64
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %spec_tcp_udp) #12
  %2 = call ptr @memset(ptr %spec_tcp_udp, i32 0, i32 52)
  %id = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_tcp_udp, i32 0, i32 1
  %ip_proto = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ip_proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %switch.selectcmp.i = icmp eq i8 %4, 6
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4, i32 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %4)
  %switch.selectcmp2.i = icmp eq i8 %4, 17
  %switch.select3.i = select i1 %switch.selectcmp2.i, i32 5, i32 %switch.select.i
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %switch.select3.i, ptr %id, align 4
  %6 = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_tcp_udp, i32 0, i32 2
  %dst_port2 = getelementptr i8, ptr %work, i32 58
  %7 = ptrtoint ptr %dst_port2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dst_port2, align 2
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %6, align 4
  %dst_port_msk = getelementptr inbounds %struct.mlx4_spec_tcp_udp, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %dst_port_msk to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %dst_port_msk, align 2
  %src_port = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_tcp_udp, i32 0, i32 2, i32 0, i32 1
  %src_port3 = getelementptr i8, ptr %work, i32 56
  %11 = ptrtoint ptr %src_port3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %src_port3, align 8
  %13 = ptrtoint ptr %src_port to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %src_port, align 4
  %src_port_msk = getelementptr inbounds %struct.mlx4_spec_tcp_udp, ptr %6, i32 0, i32 3
  %14 = ptrtoint ptr %src_port_msk to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %src_port_msk, align 2
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %spec_ip) #12
  %15 = getelementptr inbounds i8, ptr %spec_ip, i32 24
  %16 = call ptr @memset(ptr %15, i32 255, i32 28)
  %17 = ptrtoint ptr %spec_ip to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %spec_ip, align 8
  %id4 = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_ip, i32 0, i32 1
  %18 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %id4, align 8
  %19 = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_ip, i32 0, i32 2
  %dst_ip5 = getelementptr i8, ptr %work, i32 52
  %20 = ptrtoint ptr %dst_ip5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst_ip5, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %19, align 4
  %dst_ip_msk = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_ip, i32 0, i32 2, i32 0, i32 1
  %23 = ptrtoint ptr %dst_ip_msk to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %dst_ip_msk, align 8
  %src_ip = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_ip, i32 0, i32 2, i32 0, i32 2
  %src_ip6 = getelementptr i8, ptr %work, i32 48
  %24 = ptrtoint ptr %src_ip6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_ip6, align 8
  %26 = ptrtoint ptr %src_ip to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %src_ip, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %spec_eth) #12
  %27 = call ptr @memset(ptr %spec_eth, i32 0, i32 52)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %rule) #12
  %28 = getelementptr inbounds i8, ptr %rule, i32 12
  %29 = call ptr @memset(ptr %28, i32 255, i32 12)
  %30 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rule, ptr %rule, align 4
  %prev = getelementptr inbounds %struct.list_head, ptr %rule, i32 0, i32 1
  %31 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %rule, ptr %prev, align 4
  %queue_mode = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 1
  %32 = ptrtoint ptr %queue_mode to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %queue_mode, align 4
  %exclusive = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 2
  %33 = ptrtoint ptr %exclusive to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %exclusive, align 4
  %allow_loopback = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 3
  %34 = ptrtoint ptr %allow_loopback to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %allow_loopback, align 1
  %promisc_mode = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 4
  %35 = ptrtoint ptr %promisc_mode to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %promisc_mode, align 4
  %port = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 5
  %port10 = getelementptr inbounds %struct.mlx4_en_priv, ptr %1, i32 0, i32 29
  %36 = ptrtoint ptr %port10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port10, align 4
  %conv = trunc i32 %37 to i8
  %38 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %port, align 4
  %priority = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 6
  %39 = ptrtoint ptr %priority to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 12288, ptr %priority, align 2
  %qpn = getelementptr inbounds %struct.mlx4_net_trans_rule, ptr %rule, i32 0, i32 7
  %40 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %qpn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.select3.i)
  %cmp = icmp eq i32 %switch.select3.i, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv14 = zext i8 %4 to i32
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str.30, ptr noundef %1, ptr noundef nonnull @.str.135, i32 noundef %conv14) #12
  br label %ignore

if.end:                                           ; preds = %entry
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %spec_eth, ptr noundef nonnull %rule, ptr noundef nonnull %rule) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %spec_eth, ptr %prev, align 4
  %42 = ptrtoint ptr %spec_eth to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %rule, ptr %spec_eth, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %spec_eth, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %rule, ptr %prev3.i.i, align 4
  %44 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %spec_eth, ptr %rule, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %45 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev, align 4
  %call.i.i67 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %spec_ip, ptr noundef %46, ptr noundef nonnull %rule) #12
  br i1 %call.i.i67, label %if.end.i.i69, label %list_add_tail.exit.list_add_tail.exit70_crit_edge

list_add_tail.exit.list_add_tail.exit70_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit70

if.end.i.i69:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %spec_ip, ptr %prev, align 4
  %48 = ptrtoint ptr %spec_ip to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %rule, ptr %spec_ip, align 8
  %prev3.i.i68 = getelementptr inbounds %struct.list_head, ptr %spec_ip, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i68, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %spec_ip, ptr %46, align 4
  br label %list_add_tail.exit70

list_add_tail.exit70:                             ; preds = %if.end.i.i69, %list_add_tail.exit.list_add_tail.exit70_crit_edge
  %51 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev, align 4
  %call.i.i72 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %spec_tcp_udp, ptr noundef %52, ptr noundef nonnull %rule) #12
  br i1 %call.i.i72, label %if.end.i.i74, label %list_add_tail.exit70.list_add_tail.exit75_crit_edge

list_add_tail.exit70.list_add_tail.exit75_crit_edge: ; preds = %list_add_tail.exit70
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit75

if.end.i.i74:                                     ; preds = %list_add_tail.exit70
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %spec_tcp_udp, ptr %prev, align 4
  %54 = ptrtoint ptr %spec_tcp_udp to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %rule, ptr %spec_tcp_udp, align 4
  %prev3.i.i73 = getelementptr inbounds %struct.list_head, ptr %spec_tcp_udp, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i73 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i73, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %spec_tcp_udp, ptr %52, align 4
  br label %list_add_tail.exit75

list_add_tail.exit75:                             ; preds = %if.end.i.i74, %list_add_tail.exit70.list_add_tail.exit75_crit_edge
  %rxq_index = getelementptr i8, ptr %work, i32 60
  %57 = ptrtoint ptr %rxq_index to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rxq_index, align 4
  %qpn21 = getelementptr %struct.mlx4_en_priv, ptr %1, i32 0, i32 39, i32 1, i32 %58, i32 1
  %59 = ptrtoint ptr %qpn21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qpn21, align 4
  %61 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %qpn, align 4
  %62 = getelementptr inbounds %struct.mlx4_spec_list, ptr %spec_eth, i32 0, i32 2
  %dev = getelementptr inbounds %struct.mlx4_en_priv, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %64, i32 0, i32 86
  %65 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_addr, align 64
  %67 = call ptr @memcpy(ptr %62, ptr %66, i32 6)
  %dst_mac_msk = getelementptr inbounds %struct.mlx4_spec_eth, ptr %62, i32 0, i32 1
  %68 = ptrtoint ptr %dst_mac_msk to i32
  call void @__asan_storeN_noabort(i32 %68, i32 6)
  store i48 -1, ptr %dst_mac_msk, align 2
  %activated = getelementptr i8, ptr %work, i32 88
  %69 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %activated, align 8
  %reg_id = getelementptr i8, ptr %work, i32 80
  %70 = ptrtoint ptr %reg_id to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %reg_id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %71)
  %tobool.not = icmp eq i64 %71, 0
  br i1 %tobool.not, label %list_add_tail.exit75.if.end33_crit_edge, label %if.then24

list_add_tail.exit75.if.end33_crit_edge:          ; preds = %list_add_tail.exit75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then24:                                        ; preds = %list_add_tail.exit75
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 8
  %call27 = call i32 @mlx4_flow_detach(ptr noundef %75, i64 noundef %71) #12
  %76 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %call27, label %if.then31 [
    i32 0, label %if.then24.if.end33_crit_edge
    i32 -2, label %if.then24.if.end33_crit_edge77
  ]

if.then24.if.end33_crit_edge77:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %call27) #12
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.then24.if.end33_crit_edge, %if.then24.if.end33_crit_edge77, %list_add_tail.exit75.if.end33_crit_edge
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 8
  %call37 = call i32 @mlx4_flow_attach(ptr noundef %80, ptr noundef nonnull %rule, ptr noundef %reg_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end33.ignore_crit_edge, label %if.then39

if.end33.ignore_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %ignore

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @.str.136, i32 noundef %call37) #12
  br label %ignore

ignore:                                           ; preds = %if.then39, %if.end33.ignore_crit_edge, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %del_list.i) #12
  %81 = getelementptr inbounds %struct.list_head, ptr %del_list.i, i32 0, i32 1
  %82 = ptrtoint ptr %del_list.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %del_list.i, ptr %del_list.i, align 4
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %del_list.i, ptr %81, align 4
  %filters_lock.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %1, i32 0, i32 87
  call void @_raw_spin_lock_bh(ptr noundef %filters_lock.i) #12
  %filters.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %1, i32 0, i32 89
  %84 = ptrtoint ptr %filters.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %filters.i, align 4
  %cmp.not97.i = icmp eq ptr %85, %filters.i
  br i1 %cmp.not97.i, label %ignore.if.end35.i_crit_edge, label %if.end.lr.ph.i

ignore.if.end35.i_crit_edge:                      ; preds = %ignore
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.end.lr.ph.i:                                   ; preds = %ignore
  %dev.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %1, i32 0, i32 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.end19.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %filter.0100.i = phi ptr [ %85, %if.end.lr.ph.i ], [ %tmp.0101.i, %if.end19.i.if.end.i_crit_edge ]
  %last_filter.099.i = phi ptr [ null, %if.end.lr.ph.i ], [ %last_filter.1.i, %if.end19.i.if.end.i_crit_edge ]
  %i.098.i = phi i32 [ 0, %if.end.lr.ph.i ], [ %inc.i, %if.end19.i.if.end.i_crit_edge ]
  %86 = ptrtoint ptr %filter.0100.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %tmp.0101.i = load ptr, ptr %filter.0100.i, align 8
  %activated.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0100.i, i32 0, i32 12
  %87 = ptrtoint ptr %activated.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %activated.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i = icmp eq i8 %88, 0
  br i1 %tobool.not.i, label %if.end.i.if.end19.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %work.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0100.i, i32 0, i32 1
  %89 = ptrtoint ptr %work.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %work.i, align 4
  %and1.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool11.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %land.lhs.true.i.if.end19.i_crit_edge

land.lhs.true.i.if.end19.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 8
  %rxq_index.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0100.i, i32 0, i32 7
  %93 = ptrtoint ptr %rxq_index.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rxq_index.i, align 4
  %conv13.i = trunc i32 %94 to i16
  %flow_id.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0100.i, i32 0, i32 9
  %95 = ptrtoint ptr %flow_id.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flow_id.i, align 4
  %id.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0100.i, i32 0, i32 10
  %97 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id.i, align 8
  %conv14.i = trunc i32 %98 to i16
  %call15.i = call zeroext i1 @rps_may_expire_flow(ptr noundef %92, i16 noundef zeroext %conv13.i, i32 noundef %96, i16 noundef zeroext %conv14.i) #12
  br i1 %call15.i, label %if.then17.i, label %land.lhs.true12.i.if.end19.i_crit_edge

land.lhs.true12.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then17.i:                                      ; preds = %land.lhs.true12.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %filter.0100.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then17.i.__list_del_entry.exit.i.i_crit_edge

if.then17.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %filter.0100.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i, align 4
  %101 = ptrtoint ptr %filter.0100.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %filter.0100.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then17.i.__list_del_entry.exit.i.i_crit_edge
  %105 = ptrtoint ptr %del_list.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %del_list.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %filter.0100.i, ptr noundef nonnull %del_list.i, ptr noundef %106) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %filter.0100.i, ptr %prev1.i.i2.i.i, align 4
  %108 = ptrtoint ptr %filter.0100.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %106, ptr %filter.0100.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %filter.0100.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %del_list.i, ptr %prev3.i.i.i.i, align 4
  %110 = ptrtoint ptr %del_list.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %filter.0100.i, ptr %del_list.i, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  %filter_chain.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0100.i, i32 0, i32 13
  %111 = ptrtoint ptr %filter_chain.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %filter_chain.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.0100.i, i32 0, i32 13, i32 1
  %113 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pprev2.i.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %112, ptr %114, align 4
  %tobool.not.i.i.i = icmp eq ptr %112, null
  br i1 %tobool.not.i.i.i, label %list_move.exit.i.hlist_del.exit.i_crit_edge, label %do.body13.i.i.i

list_move.exit.i.hlist_del.exit.i_crit_edge:      ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del.exit.i

do.body13.i.i.i:                                  ; preds = %list_move.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %112, i32 0, i32 1
  %116 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %114, ptr %pprev14.i.i.i, align 4
  br label %hlist_del.exit.i

hlist_del.exit.i:                                 ; preds = %do.body13.i.i.i, %list_move.exit.i.hlist_del.exit.i_crit_edge
  %117 = ptrtoint ptr %filter_chain.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 256 to ptr), ptr %filter_chain.i, align 4
  %118 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %hlist_del.exit.i, %land.lhs.true12.i.if.end19.i_crit_edge, %land.lhs.true.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  %last_filter.1.i = phi ptr [ %last_filter.099.i, %hlist_del.exit.i ], [ %filter.0100.i, %land.lhs.true12.i.if.end19.i_crit_edge ], [ %filter.0100.i, %land.lhs.true.i.if.end19.i_crit_edge ], [ %filter.0100.i, %if.end.i.if.end19.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.098.i, 1
  %cmp.not.i = icmp eq ptr %tmp.0101.i, %filters.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %i.098.i)
  %cmp10.i = icmp ugt i32 %i.098.i, 59
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %for.end.i, label %if.end19.i.if.end.i_crit_edge

if.end19.i.if.end.i_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

for.end.i:                                        ; preds = %if.end19.i
  %tobool25.not.i = icmp eq ptr %last_filter.1.i, null
  br i1 %tobool25.not.i, label %for.end.i.if.end35.i_crit_edge, label %land.lhs.true26.i

for.end.i.if.end35.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

land.lhs.true26.i:                                ; preds = %for.end.i
  %119 = ptrtoint ptr %filters.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %filters.i, align 4
  %cmp30.not.i = icmp eq ptr %last_filter.1.i, %120
  br i1 %cmp30.not.i, label %land.lhs.true26.i.if.end35.i_crit_edge, label %if.then32.i

land.lhs.true26.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.then32.i:                                      ; preds = %land.lhs.true26.i
  %call.i.i83.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %filters.i) #12
  br i1 %call.i.i83.i, label %if.end.i.i86.i, label %if.then32.i.__list_del_entry.exit.i88.i_crit_edge

if.then32.i.__list_del_entry.exit.i88.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i88.i

if.end.i.i86.i:                                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i84.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %1, i32 0, i32 89, i32 1
  %121 = ptrtoint ptr %prev.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i84.i, align 4
  %123 = ptrtoint ptr %filters.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %filters.i, align 4
  %prev1.i.i.i85.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i85.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %__list_del_entry.exit.i88.i

__list_del_entry.exit.i88.i:                      ; preds = %if.end.i.i86.i, %if.then32.i.__list_del_entry.exit.i88.i_crit_edge
  %127 = ptrtoint ptr %last_filter.1.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %last_filter.1.i, align 4
  %call.i.i.i87.i = call zeroext i1 @__list_add_valid(ptr noundef %filters.i, ptr noundef nonnull %last_filter.1.i, ptr noundef %128) #12
  br i1 %call.i.i.i87.i, label %if.end.i.i.i91.i, label %__list_del_entry.exit.i88.i.if.end35.i_crit_edge

__list_del_entry.exit.i88.i.if.end35.i_crit_edge: ; preds = %__list_del_entry.exit.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i

if.end.i.i.i91.i:                                 ; preds = %__list_del_entry.exit.i88.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i2.i89.i = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i2.i89.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %filters.i, ptr %prev1.i.i2.i89.i, align 4
  %130 = ptrtoint ptr %filters.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %128, ptr %filters.i, align 4
  %prev3.i.i.i90.i = getelementptr inbounds %struct.mlx4_en_priv, ptr %1, i32 0, i32 89, i32 1
  %131 = ptrtoint ptr %prev3.i.i.i90.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %last_filter.1.i, ptr %prev3.i.i.i90.i, align 4
  %132 = ptrtoint ptr %last_filter.1.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %filters.i, ptr %last_filter.1.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.end.i.i.i91.i, %__list_del_entry.exit.i88.i.if.end35.i_crit_edge, %land.lhs.true26.i.if.end35.i_crit_edge, %for.end.i.if.end35.i_crit_edge, %ignore.if.end35.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %filters_lock.i) #12
  %133 = ptrtoint ptr %del_list.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %del_list.i, align 4
  %cmp48.not102.i = icmp eq ptr %134, %del_list.i
  br i1 %cmp48.not102.i, label %if.end35.i.mlx4_en_filter_rfs_expire.exit_crit_edge, label %if.end35.i.for.body51.i_crit_edge

if.end35.i.for.body51.i_crit_edge:                ; preds = %if.end35.i
  br label %for.body51.i

if.end35.i.mlx4_en_filter_rfs_expire.exit_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_filter_rfs_expire.exit

for.body51.i:                                     ; preds = %mlx4_en_filter_free.exit.i.for.body51.i_crit_edge, %if.end35.i.for.body51.i_crit_edge
  %filter.1103.i = phi ptr [ %tmp.1.i, %mlx4_en_filter_free.exit.i.for.body51.i_crit_edge ], [ %134, %if.end35.i.for.body51.i_crit_edge ]
  %135 = ptrtoint ptr %filter.1103.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %tmp.1.i = load ptr, ptr %filter.1103.i, align 8
  %priv1.i.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.1103.i, i32 0, i32 8
  %136 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %priv1.i.i, align 8
  %call.i.i.i93.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %filter.1103.i) #12
  br i1 %call.i.i.i93.i, label %if.end.i.i.i94.i, label %for.body51.i.list_del.exit.i.i_crit_edge

for.body51.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i.i

if.end.i.i.i94.i:                                 ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %filter.1103.i, i32 0, i32 1
  %138 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %prev.i.i.i.i, align 4
  %140 = ptrtoint ptr %filter.1103.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %filter.1103.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %139, ptr %prev1.i.i.i.i.i, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %141, ptr %139, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i94.i, %for.body51.i.list_del.exit.i.i_crit_edge
  %144 = ptrtoint ptr %filter.1103.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 256 to ptr), ptr %filter.1103.i, align 4
  %prev.i.i95.i = getelementptr inbounds %struct.list_head, ptr %filter.1103.i, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i95.i, align 4
  %146 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %137, align 8
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %reg_id.i.i = getelementptr inbounds %struct.mlx4_en_filter, ptr %filter.1103.i, i32 0, i32 11
  %150 = ptrtoint ptr %reg_id.i.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %reg_id.i.i, align 8
  %call.i.i76 = call i32 @mlx4_flow_detach(ptr noundef %149, i64 noundef %151) #12
  %152 = zext i32 %call.i.i76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %152, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call.i.i76, label %if.then.i.i [
    i32 0, label %list_del.exit.i.i.mlx4_en_filter_free.exit.i_crit_edge
    i32 -2, label %list_del.exit.i.i.mlx4_en_filter_free.exit.i_crit_edge78
  ]

list_del.exit.i.i.mlx4_en_filter_free.exit.i_crit_edge78: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_filter_free.exit.i

list_del.exit.i.i.mlx4_en_filter_free.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_filter_free.exit.i

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @en_print(ptr noundef nonnull @.str, ptr noundef %137, ptr noundef nonnull @.str.65, i32 noundef %call.i.i76) #12
  br label %mlx4_en_filter_free.exit.i

mlx4_en_filter_free.exit.i:                       ; preds = %if.then.i.i, %list_del.exit.i.i.mlx4_en_filter_free.exit.i_crit_edge, %list_del.exit.i.i.mlx4_en_filter_free.exit.i_crit_edge78
  call void @kfree(ptr noundef %filter.1103.i) #12
  %cmp48.not.i = icmp eq ptr %tmp.1.i, %del_list.i
  br i1 %cmp48.not.i, label %mlx4_en_filter_free.exit.i.mlx4_en_filter_rfs_expire.exit_crit_edge, label %mlx4_en_filter_free.exit.i.for.body51.i_crit_edge

mlx4_en_filter_free.exit.i.for.body51.i_crit_edge: ; preds = %mlx4_en_filter_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body51.i

mlx4_en_filter_free.exit.i.mlx4_en_filter_rfs_expire.exit_crit_edge: ; preds = %mlx4_en_filter_free.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_filter_rfs_expire.exit

mlx4_en_filter_rfs_expire.exit:                   ; preds = %mlx4_en_filter_free.exit.i.mlx4_en_filter_rfs_expire.exit_crit_edge, %if.end35.i.mlx4_en_filter_rfs_expire.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %del_list.i) #12
  %activated41 = getelementptr i8, ptr %work, i32 88
  %153 = ptrtoint ptr %activated41 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %activated41, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %rule) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %spec_eth) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %spec_ip) #12
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %spec_tcp_udp) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rps_may_expire_flow(ptr noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_SET_PORT_fcs_check(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_update_qp(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_sub(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_en_ioctl(ptr noundef %dev, ptr nocapture noundef readonly %ifr, i32 noundef %cmd) #0 align 64 {
entry:
  %config.i = alloca %struct.hwtstamp_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %cmd, label %entry.return_crit_edge [
    i32 35248, label %sw.bb
    i32 35249, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %config.i) #12
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %config.i, align 4, !annotation !316
  %4 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !316
  %6 = getelementptr inbounds %struct.hwtstamp_config, ptr %config.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !316
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %8 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ifr_ifru.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.150, i32 noundef 156) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 12, i32 -1226833920) #18, !srcloc !324
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !315

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %config.i, i32 noundef 12) #12
  %11 = call i32 @llvm.read_register.i32(metadata !303) #12
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !325
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !327
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %config.i, ptr noundef %9, i32 noundef 12) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !326
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !327
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !315

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %sw.bb.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %config.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %mlx4_en_hwtstamp_set.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 8
  %flags2.i = getelementptr inbounds %struct.mlx4_dev, ptr %16, i32 0, i32 3, i32 61
  %17 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %flags2.i, align 8
  %and.i = and i64 %18, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.mlx4_en_hwtstamp_set.exit_crit_edge, label %if.end6.i

if.end.i.mlx4_en_hwtstamp_set.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_hwtstamp_set.exit

if.end6.i:                                        ; preds = %if.end.i
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch.i = icmp ult i32 %20, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.end6.i.mlx4_en_hwtstamp_set.exit_crit_edge

if.end6.i.mlx4_en_hwtstamp_set.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_hwtstamp_set.exit

sw.epilog.i:                                      ; preds = %if.end6.i
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %6, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %22, label %sw.epilog.i.mlx4_en_hwtstamp_set.exit_crit_edge [
    i32 0, label %sw.epilog.i.sw.epilog10.i_crit_edge
    i32 1, label %sw.epilog.i.sw.bb7.i_crit_edge
    i32 2, label %sw.epilog.i.sw.bb7.i_crit_edge14
    i32 3, label %sw.epilog.i.sw.bb7.i_crit_edge15
    i32 4, label %sw.epilog.i.sw.bb7.i_crit_edge16
    i32 5, label %sw.epilog.i.sw.bb7.i_crit_edge17
    i32 6, label %sw.epilog.i.sw.bb7.i_crit_edge18
    i32 7, label %sw.epilog.i.sw.bb7.i_crit_edge19
    i32 8, label %sw.epilog.i.sw.bb7.i_crit_edge20
    i32 9, label %sw.epilog.i.sw.bb7.i_crit_edge21
    i32 10, label %sw.epilog.i.sw.bb7.i_crit_edge22
    i32 11, label %sw.epilog.i.sw.bb7.i_crit_edge23
    i32 12, label %sw.epilog.i.sw.bb7.i_crit_edge24
    i32 13, label %sw.epilog.i.sw.bb7.i_crit_edge25
    i32 14, label %sw.epilog.i.sw.bb7.i_crit_edge26
    i32 15, label %sw.epilog.i.sw.bb7.i_crit_edge27
  ]

sw.epilog.i.sw.bb7.i_crit_edge27:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge26:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge25:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge24:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge23:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge22:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge21:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge20:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge19:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge18:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge17:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge16:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge15:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge14:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.bb7.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7.i

sw.epilog.i.sw.epilog10.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog10.i

sw.epilog.i.mlx4_en_hwtstamp_set.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_hwtstamp_set.exit

sw.bb7.i:                                         ; preds = %sw.epilog.i.sw.bb7.i_crit_edge, %sw.epilog.i.sw.bb7.i_crit_edge14, %sw.epilog.i.sw.bb7.i_crit_edge15, %sw.epilog.i.sw.bb7.i_crit_edge16, %sw.epilog.i.sw.bb7.i_crit_edge17, %sw.epilog.i.sw.bb7.i_crit_edge18, %sw.epilog.i.sw.bb7.i_crit_edge19, %sw.epilog.i.sw.bb7.i_crit_edge20, %sw.epilog.i.sw.bb7.i_crit_edge21, %sw.epilog.i.sw.bb7.i_crit_edge22, %sw.epilog.i.sw.bb7.i_crit_edge23, %sw.epilog.i.sw.bb7.i_crit_edge24, %sw.epilog.i.sw.bb7.i_crit_edge25, %sw.epilog.i.sw.bb7.i_crit_edge26, %sw.epilog.i.sw.bb7.i_crit_edge27
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %6, align 4
  br label %sw.epilog10.i

sw.epilog10.i:                                    ; preds = %sw.bb7.i, %sw.epilog.i.sw.epilog10.i_crit_edge
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %25 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %features.i, align 16
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.fca.0.load.i = load i32, ptr %config.i, align 4
  %.fca.0.insert.i = insertvalue [3 x i32] poison, i32 %.fca.0.load.i, 0
  %.fca.1.insert.i = insertvalue [3 x i32] %.fca.0.insert.i, i32 %20, 1
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.fca.2.load.i = load i32, ptr %6, align 4
  %.fca.2.insert.i = insertvalue [3 x i32] %.fca.1.insert.i, i32 %.fca.2.load.i, 2
  %call11.i = call i32 @mlx4_en_reset_config(ptr noundef %dev, [3 x i32] %.fca.2.insert.i, i64 noundef %26) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %sw.epilog10.i.if.then.i28.i_crit_edge, label %if.then13.i

sw.epilog10.i.if.then.i28.i_crit_edge:            ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i28.i

if.then13.i:                                      ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %4, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %6, align 4
  br label %if.then.i28.i

if.then.i28.i:                                    ; preds = %if.then13.i, %sw.epilog10.i.if.then.i28.i_crit_edge
  %31 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ifr_ifru.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.150, i32 noundef 174) #12
  %call.i.i27.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i27.i, label %if.then.i28.i.mlx4_en_hwtstamp_set.exit_crit_edge, label %if.end.i.i31.i

if.then.i28.i.mlx4_en_hwtstamp_set.exit_crit_edge: ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_hwtstamp_set.exit

if.end.i.i31.i:                                   ; preds = %if.then.i28.i
  %33 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %32, i32 12, i32 -1226833920) #18, !srcloc !328
  %asmresult.i.i29.i = extractvalue { i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i29.i)
  %cmp.i.i30.i = icmp eq i32 %asmresult.i.i29.i, 0
  br i1 %cmp.i.i30.i, label %copy_to_user.exit.i, label %if.end.i.i31.i.mlx4_en_hwtstamp_set.exit_crit_edge

if.end.i.i31.i.mlx4_en_hwtstamp_set.exit_crit_edge: ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlx4_en_hwtstamp_set.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i32.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %config.i, i32 noundef 12) #12
  %call.i1.i.i.i = call i32 @arm_copy_to_user(ptr noundef %32, ptr noundef nonnull %config.i, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i)
  %tobool19.not.i = icmp eq i32 %call.i1.i.i.i, 0
  %spec.select.i = select i1 %tobool19.not.i, i32 0, i32 -14
  br label %mlx4_en_hwtstamp_set.exit

mlx4_en_hwtstamp_set.exit:                        ; preds = %copy_to_user.exit.i, %if.end.i.i31.i.mlx4_en_hwtstamp_set.exit_crit_edge, %if.then.i28.i.mlx4_en_hwtstamp_set.exit_crit_edge, %sw.epilog.i.mlx4_en_hwtstamp_set.exit_crit_edge, %if.end6.i.mlx4_en_hwtstamp_set.exit_crit_edge, %if.end.i.mlx4_en_hwtstamp_set.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i = phi i32 [ -22, %if.end.i.mlx4_en_hwtstamp_set.exit_crit_edge ], [ -34, %if.end6.i.mlx4_en_hwtstamp_set.exit_crit_edge ], [ -34, %sw.epilog.i.mlx4_en_hwtstamp_set.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.then.i28.i.mlx4_en_hwtstamp_set.exit_crit_edge ], [ -14, %if.end.i.i31.i.mlx4_en_hwtstamp_set.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %config.i) #12
  br label %return

sw.bb1:                                           ; preds = %entry
  %ifr_ifru.i5 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %34 = ptrtoint ptr %ifr_ifru.i5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ifr_ifru.i5, align 4
  %hwtstamp_config.i = getelementptr i8, ptr %dev, i32 68328
  tail call void @__might_fault(ptr noundef nonnull @.str.150, i32 noundef 174) #12
  %call.i.i.i6 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i6, label %sw.bb1.return_crit_edge, label %if.end.i.i.i9

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i.i.i9:                                    ; preds = %sw.bb1
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %35, i32 12, i32 -1226833920) #18, !srcloc !328
  %asmresult.i.i.i7 = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i7)
  %cmp.i.i.i8 = icmp eq i32 %asmresult.i.i.i7, 0
  br i1 %cmp.i.i.i8, label %copy_to_user.exit.i13, label %if.end.i.i.i9.return_crit_edge

if.end.i.i.i9.return_crit_edge:                   ; preds = %if.end.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

copy_to_user.exit.i13:                            ; preds = %if.end.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i10 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hwtstamp_config.i, i32 noundef 12) #12
  %call.i1.i.i.i11 = tail call i32 @arm_copy_to_user(ptr noundef %35, ptr noundef %hwtstamp_config.i, i32 noundef 12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i.i11)
  %tobool.not.i = icmp eq i32 %call.i1.i.i.i11, 0
  %spec.select.i12 = select i1 %tobool.not.i, i32 0, i32 -14
  br label %return

return:                                           ; preds = %copy_to_user.exit.i13, %if.end.i.i.i9.return_crit_edge, %sw.bb1.return_crit_edge, %mlx4_en_hwtstamp_set.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mlx4_en_hwtstamp_set.exit ], [ -95, %entry.return_crit_edge ], [ -14, %sw.bb1.return_crit_edge ], [ -14, %if.end.i.i.i9.return_crit_edge ], [ %spec.select.i12, %copy_to_user.exit.i13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_udp_tunnel_sync(ptr noundef %dev, i32 noundef %table) #0 align 64 {
entry:
  %ti = alloca %struct.udp_tunnel_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ti) #12
  %0 = ptrtoint ptr %ti to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %ti, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  %1 = load ptr, ptr @udp_tunnel_nic_ops, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.udp_tunnel_nic_get_port.exit_crit_edge, label %if.then.i

entry.udp_tunnel_nic_get_port.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %udp_tunnel_nic_get_port.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void %3(ptr noundef %dev, i32 noundef %table, i32 noundef 0, ptr noundef nonnull %ti) #12
  br label %udp_tunnel_nic_get_port.exit

udp_tunnel_nic_get_port.exit:                     ; preds = %if.then.i, %entry.udp_tunnel_nic_get_port.exit_crit_edge
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %port, align 4
  %vxlan_port = getelementptr i8, ptr %dev, i32 68624
  %6 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vxlan_port, align 8
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call3 = call i32 @mlx4_config_vxlan_port(ptr noundef %10, i16 noundef zeroext %5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %udp_tunnel_nic_get_port.exit.cleanup_crit_edge

udp_tunnel_nic_get_port.exit.cleanup_crit_edge:   ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %udp_tunnel_nic_get_port.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %port6 = getelementptr i8, ptr %dev, i32 51652
  %15 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port6, align 4
  %conv = trunc i32 %16 to i8
  %17 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vxlan_port, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool8 = icmp ne i16 %18, 0
  %lnot.ext = zext i1 %tobool8 to i32
  %call10 = call i32 @mlx4_SET_PORT_VXLAN(ptr noundef %14, i8 noundef zeroext %conv, i8 noundef zeroext 1, i32 noundef %lnot.ext) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %udp_tunnel_nic_get_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call3, %udp_tunnel_nic_get_port.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ti) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_config_vxlan_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 156)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !56, !57, !59, !60, !61, !63, !65, !66, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !264, !266, !268, !270, !271, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !295, !297, !299, !301}
!llvm.named.register.sp = !{!303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 113, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 131, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1639, i32 3}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1652, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1657, i32 3}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1665, i32 4}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1671, i32 4}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1686, i32 4}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1697, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1700, i32 3}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1710, i32 3}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1728, i32 5}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1737, i32 4}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1747, i32 5}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1779, i32 3}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1786, i32 3}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1794, i32 3}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1801, i32 4}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1808, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1811, i32 3}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1818, i32 3}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mlx4_en_start_port._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @mlx4_en_start_port._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1826, i32 3}
!50 = !{ptr @mlx4_en_start_port._entry.25, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mlx4_en_start_port._entry_ptr.27, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1895, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1970, i32 3}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2294, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__func__.mlx4_en_try_alloc_resources, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2300, i32 3}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2311, i32 13}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2337, i32 2}
!68 = !{ptr @mlx4_en_set_stats_bitmap.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3112, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mlx4_en_init_netdev.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3184, i32 2}
!73 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mlx4_en_init_netdev.__key.37, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3185, i32 2}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mlx4_en_init_netdev.__key.39, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3186, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mlx4_en_init_netdev.__key.41, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3187, i32 2}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mlx4_en_init_netdev.__key.43, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3188, i32 2}
!85 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mlx4_en_init_netdev.__key.45, !84, !"__key", i1 false, i1 false}
!87 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mlx4_en_init_netdev.__key.47, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3189, i32 2}
!90 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mlx4_en_init_netdev.__key.49, !89, !"__key", i1 false, i1 false}
!92 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @mlx4_en_init_netdev.__key.51, !94, !"__key", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3192, i32 2}
!95 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3254, i32 4}
!98 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3274, i32 3}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3284, i32 3}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3304, i32 3}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3411, i32 3}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3426, i32 2}
!109 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3427, i32 2}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3476, i32 3}
!113 = !{ptr @.str.62, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3511, i32 3}
!115 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3563, i32 4}
!117 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 3570, i32 4}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 331, i32 3}
!121 = distinct !{null, !122, !"__already_done", i1 false, i1 false}
!122 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!123 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 650, i32 2}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 655, i32 3}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 660, i32 2}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 670, i32 2}
!132 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 672, i32 3}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1622, i32 2}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 608, i32 3}
!138 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 553, i32 3}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 556, i32 2}
!142 = !{ptr @.str.76, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 637, i32 3}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 688, i32 3}
!146 = !{ptr @.str.78, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 692, i32 3}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1353, i32 4}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2194, i32 2}
!152 = !{ptr @mlx4_en_queue_bond_work.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2942, i32 2}
!154 = !{ptr @.str.81, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2914, i32 5}
!157 = !{ptr @.str.83, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2919, i32 5}
!159 = !{ptr @.str.84, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2927, i32 4}
!161 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1265, i32 3}
!163 = !{ptr @.str.86, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1269, i32 3}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1277, i32 5}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1181, i32 5}
!169 = !{ptr @.str.89, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1211, i32 5}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1220, i32 5}
!173 = !{ptr @.str.91, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1230, i32 5}
!175 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1238, i32 5}
!177 = !{ptr @.str.93, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1248, i32 3}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1251, i32 3}
!181 = !{ptr @.str.95, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 902, i32 4}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 913, i32 5}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 922, i32 5}
!187 = !{ptr @.str.98, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 932, i32 6}
!189 = !{ptr @.str.99, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 951, i32 4}
!191 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 961, i32 3}
!193 = !{ptr @.str.101, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 971, i32 4}
!195 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 980, i32 4}
!197 = !{ptr @.str.103, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 987, i32 5}
!199 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1038, i32 5}
!201 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1087, i32 4}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1101, i32 6}
!205 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1106, i32 7}
!207 = !{ptr @.str.108, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1124, i32 6}
!209 = !{ptr @.str.109, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1129, i32 6}
!211 = !{ptr @.str.110, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2023, i32 2}
!213 = !{ptr @.str.111, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2030, i32 4}
!215 = !{ptr @.str.112, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1577, i32 3}
!217 = !{ptr @.str.113, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1527, i32 5}
!219 = !{ptr @.str.114, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1504, i32 5}
!221 = !{ptr @.str.115, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 774, i32 4}
!223 = !{ptr @.str.116, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 776, i32 3}
!225 = !{ptr @mlx4_netdev_ops_master, !226, !"mlx4_netdev_ops_master", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2863, i32 36}
!227 = !{ptr @.str.117, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2086, i32 3}
!229 = !{ptr @.str.118, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2096, i32 3}
!231 = !{ptr @.str.119, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2045, i32 4}
!233 = !{ptr @.str.120, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2111, i32 2}
!235 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 760, i32 3}
!239 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2391, i32 2}
!241 = !{ptr @.str.124, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2405, i32 4}
!243 = !{ptr @.str.125, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2410, i32 5}
!245 = !{ptr @.str.126, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2377, i32 3}
!247 = !{ptr @.str.127, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1377, i32 3}
!249 = !{ptr @.str.128, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1379, i32 2}
!251 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1385, i32 3}
!253 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 484, i32 2}
!255 = !{ptr @.str.131, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 493, i32 4}
!257 = !{ptr @.str.132, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 499, i32 3}
!259 = !{ptr @.str.133, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 513, i32 2}
!261 = !{ptr @mlx4_en_filter_alloc.__key, !262, !"__key", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 302, i32 2}
!263 = !{ptr @.str.134, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 243, i32 3}
!266 = !{ptr @.str.136, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 265, i32 3}
!268 = !{ptr @.str.137, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2525, i32 3}
!270 = !{ptr @.str.138, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.139, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.140, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2533, i32 3}
!274 = !{ptr @.str.141, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2542, i32 3}
!276 = !{ptr @.str.142, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2548, i32 3}
!278 = !{ptr @.str.143, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2552, i32 3}
!280 = !{ptr @.str.144, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2556, i32 3}
!282 = distinct !{null, !283, !"__warned", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2754, i32 15}
!284 = !{ptr @.str.145, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2783, i32 3}
!286 = distinct !{null, !287, !"__warned", i1 false, i1 false}
!287 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2803, i32 14}
!288 = !{ptr @.str.147, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2814, i32 4}
!290 = !{ptr @mlx4_netdev_ops, !291, !"mlx4_netdev_ops", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2837, i32 36}
!292 = distinct !{null, !293, !"__already_done", i1 false, i1 false}
!293 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!294 = distinct !{null, !293, !"<string literal>", i1 false, i1 false}
!295 = distinct !{null, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!297 = !{ptr @.str.150, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!299 = !{ptr @mlx4_udp_tunnels, !300, !"mlx4_udp_tunnels", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 2670, i32 41}
!301 = !{ptr @.str.151, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/mellanox/mlx4/en_netdev.c", i32 1417, i32 2}
!303 = !{!"sp"}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{i8 0, i8 2}
!314 = !{i64 2159681501}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{!"auto-init"}
!317 = !{i64 2152413870}
!318 = !{i64 1184177, i64 1184238}
!319 = !{i64 1186909}
!320 = !{!"branch_weights", i32 1, i32 2000}
!321 = !{i64 1187194}
!322 = !{i64 2159699196}
!323 = !{i64 2159709650}
!324 = !{i64 2153411424, i64 2153411449}
!325 = !{i64 5906979}
!326 = !{i64 5907176}
!327 = !{i64 2153392409}
!328 = !{i64 2153412105, i64 2153412130}
