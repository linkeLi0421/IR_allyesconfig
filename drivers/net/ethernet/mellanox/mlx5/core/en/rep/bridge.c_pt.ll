; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.43, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.66, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.66 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.56, i32, %struct.spinlock }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mlx5e_rq = type { %union.anon.185, %struct.anon.199, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.185 = type { %struct.anon.192 }
%struct.anon.192 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.194 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.193, i64, i32, [28 x i8] }
%union.anon.193 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { %struct.anon.196, [0 x %struct.mlx5_mtt] }
%struct.anon.196 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.199 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.182, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.182 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.188, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.191, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i8, i8, i16, i32 }
%union.anon.191 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.200, i32 }
%union.anon.200 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.183, i32, i32 }
%union.anon.183 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.187 }
%union.anon.187 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.214, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.214 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.215 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.215 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.216 }
%struct.anon.216 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.mlx5e_stats = type { %struct.mlx5e_sw_stats, %struct.mlx5e_qcounter_stats, %struct.mlx5e_vnic_env_stats, %struct.mlx5e_vport_stats, %struct.mlx5e_pport_stats, %struct.rtnl_link_stats64, %struct.mlx5e_pcie_stats }
%struct.mlx5e_sw_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_qcounter_stats = type { i32, i32 }
%struct.mlx5e_vnic_env_stats = type { [66 x i64] }
%struct.mlx5e_vport_stats = type { [66 x i64] }
%struct.mlx5e_pport_stats = type { [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [32 x i64], [32 x i64], [32 x i64], [8 x [32 x i64]], [8 x [32 x i64]] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_pcie_stats = type { [32 x i64] }
%struct.mlx5e_channel_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats, [48 x i8], %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats, %struct.mlx5e_xdpsq_stats }
%struct.mlx5e_ch_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_sq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [48 x i8], i64, i64, i64, [104 x i8] }
%struct.mlx5e_rq_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5e_xdpsq_stats = type { i64, i64, i64, i64, i64, i64, [80 x i8], i64, [120 x i8] }
%struct.mlx5e_ptp_stats = type { %struct.mlx5e_ch_stats, [80 x i8], [8 x %struct.mlx5e_sq_stats], [8 x %struct.mlx5e_ptp_cq_stats], %struct.mlx5e_rq_stats, [24 x i8] }
%struct.mlx5e_ptp_cq_stats = type { i64, i64, i64, i64 }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.mlx5e_dcbx = type { i32, %struct.mlx5e_cee_config, i8, [8 x i8], i8, i8, i32, i32, i16 }
%struct.mlx5e_cee_config = type { [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.mlx5e_xsk = type { ptr, i16, i8 }
%struct.mlx5e_scratchpad = type { ptr }
%struct.mlx5e_htb = type { [256 x %struct.hlist_head], [8 x i32], ptr, i16, i16, i16 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.166, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.172, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.166 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.171] }
%struct.anon.171 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.172 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_esw_bridge_offloads = type { ptr, %struct.list_head, %struct.xarray, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5_bridge_switchdev_fdb_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, ptr, i8 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.switchdev_notifier_port_obj_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_port_vlan = type { %struct.switchdev_obj, i16, i16 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.169, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.170, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.167, i32 }
%union.anon.167 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.168, ptr }
%struct.anon.168 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.atomic64_t = type { i64 }
%struct.anon.169 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.170 = type { i32 }
%struct.switchdev_notifier_port_attr_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.222 }
%union.anon.222 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.mlx5_eswitch_rep = type { [2 x %struct.mlx5_eswitch_rep_data], i16, i16, i16, i32, ptr }
%struct.mlx5_eswitch_rep_data = type { ptr, %struct.atomic_t }

@mlx5e_rep_bridge_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 469, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"E-Switch: Failed to init esw bridge (err=%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_rep_bridge_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_rep_bridge_init._entry_ptr = internal global ptr @mlx5e_rep_bridge_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx5_bridge_wq\00", [17 x i8] zeroinitializer }, align 32
@mlx5e_rep_bridge_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 475, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"E-Switch: Failed to allocate bridge offloads workqueue\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_rep_bridge_init._entry_ptr.8 = internal global ptr @mlx5e_rep_bridge_init._entry.6, section ".printk_index", align 4
@mlx5e_rep_bridge_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 482, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"E-Switch: Failed to register switchdev notifier (err=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_rep_bridge_init._entry_ptr.11 = internal global ptr @mlx5e_rep_bridge_init._entry.9, section ".printk_index", align 4
@mlx5e_rep_bridge_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"E-Switch: Failed to register blocking switchdev notifier (err=%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5e_rep_bridge_init._entry_ptr.14 = internal global ptr @mlx5e_rep_bridge_init._entry.12, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@mlx5e_rep_bridge_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"E-Switch: Failed to register bridge offloads netdevice notifier (err=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@mlx5e_rep_bridge_init._entry_ptr.17 = internal global ptr @mlx5e_rep_bridge_init._entry.15, section ".printk_index", align 4
@mlx5e_rep_bridge_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&br_offloads->update_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_rep_bridge_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&br_offloads->update_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_switchdev_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to init switchdev work, err=%ld\00", [57 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_port_obj_attr_set.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_core: Flag is not supported\00", [63 x i8] zeroinitializer }, align 32
@mlx5_esw_bridge_init_switchdev_fdb_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 469, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 473, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 475, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 482, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 489, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 496, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 500, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 430, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 258, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 354, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @mlx5e_rep_bridge_init._entry, ptr @mlx5e_rep_bridge_init._entry.12, ptr @mlx5e_rep_bridge_init._entry.15, ptr @mlx5e_rep_bridge_init._entry.6, ptr @mlx5e_rep_bridge_init._entry.9, ptr @mlx5e_rep_bridge_init._entry_ptr, ptr @mlx5e_rep_bridge_init._entry_ptr.11, ptr @mlx5e_rep_bridge_init._entry_ptr.14, ptr @mlx5e_rep_bridge_init._entry_ptr.17, ptr @mlx5e_rep_bridge_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @mlx5e_rep_bridge_init.__key, ptr @.str.18, ptr @mlx5e_rep_bridge_init.__key.19, ptr @.str.20, ptr @.str.21, ptr @mlx5_esw_bridge_port_obj_attr_set.__msg, ptr @mlx5_esw_bridge_init_switchdev_fdb_work.__key, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_bridge_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_bridge_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_bridge_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_bridge_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_bridge_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_bridge_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_bridge_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_port_obj_attr_set.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_esw_bridge_init_switchdev_fdb_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_bridge_init(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  tail call void @rtnl_lock() #6
  %call = tail call ptr @mlx5_esw_bridge_init(ptr noundef %3) #6
  tail call void @rtnl_unlock() #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.5, i32 noundef 655362, i32 noundef 1) #6
  %wq = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 6
  %7 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %wq, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.7) #9
  br label %err_alloc_wq

if.end12:                                         ; preds = %if.end
  %nb = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 5
  %10 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlx5_esw_bridge_switchdev_event, ptr %nb, align 4
  %call14 = tail call i32 @register_switchdev_notifier(ptr noundef %nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef %call14) #9
  br label %err_register_swdev

if.end21:                                         ; preds = %if.end12
  %nb_blk = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 4
  %13 = ptrtoint ptr %nb_blk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlx5_esw_bridge_event_blocking, ptr %nb_blk, align 4
  %call24 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef %nb_blk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %call24) #9
  br label %err_register_swdev_blk

if.end31:                                         ; preds = %if.end21
  %netdev_nb = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %netdev_nb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlx5_esw_bridge_switchdev_port_event, ptr %netdev_nb, align 4
  %call34 = tail call i32 @register_netdevice_notifier_net(ptr noundef nonnull @init_net, ptr noundef %netdev_nb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body43, label %do.end39

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.16, i32 noundef %call34) #9
  %call66 = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef %nb_blk) #6
  br label %err_register_swdev_blk

do.body43:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %update_work = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 7
  tail call void @__init_work(ptr noundef %update_work, i32 noundef 0) #6
  %19 = ptrtoint ptr %update_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %update_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @mlx5e_rep_bridge_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry50 = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %entry50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry50, ptr %entry50, align 4
  %prev.i = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 7, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry50, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 7, i32 0, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlx5_esw_bridge_update_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %call, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.20, ptr noundef nonnull @mlx5e_rep_bridge_init.__key.19) #6
  %23 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %update_work, i32 noundef 100) #6
  br label %cleanup

err_register_swdev_blk:                           ; preds = %do.end39, %do.end29
  %call68 = tail call i32 @unregister_switchdev_notifier(ptr noundef %nb) #6
  br label %err_register_swdev

err_register_swdev:                               ; preds = %err_register_swdev_blk, %do.end19
  %25 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %26) #6
  br label %err_alloc_wq

err_alloc_wq:                                     ; preds = %err_register_swdev, %do.end10
  tail call void @rtnl_lock() #6
  tail call void @mlx5_esw_bridge_cleanup(ptr noundef %3) #6
  tail call void @rtnl_unlock() #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_wq, %do.body43, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_esw_bridge_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_esw_bridge_switchdev_event(ptr noundef %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  %vport_num = alloca i16, align 2
  %esw_owner_vhca_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -88
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num) #6
  %4 = ptrtoint ptr %vport_num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %vport_num, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %esw_owner_vhca_id) #6
  %5 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %esw_owner_vhca_id, align 2, !annotation !49
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call fastcc i32 @mlx5_esw_bridge_port_obj_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not.i = icmp eq i32 %call2, 0
  %sub.i = sub i32 1, %call2
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %1) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %call10 = call fastcc ptr @mlx5_esw_bridge_rep_vport_num_vhca_id_get(ptr noundef %1, ptr noundef %3, ptr noundef nonnull %vport_num, ptr noundef nonnull %esw_owner_vhca_id)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end13.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb20
    i32 3, label %if.end13.sw.bb24_crit_edge
    i32 4, label %if.end13.sw.bb24_crit_edge120
  ]

if.end13.sw.bb24_crit_edge120:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

if.end13.sw.bb24_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %call14 = tail call fastcc zeroext i1 @mlx5_esw_bridge_is_local(ptr noundef %1, ptr noundef nonnull %call10, ptr noundef %3)
  br i1 %call14, label %if.end16, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %vport_num to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vport_num, align 2
  %11 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %esw_owner_vhca_id, align 2
  tail call void @mlx5_esw_bridge_fdb_update_used(ptr noundef %1, i16 noundef zeroext %10, i16 noundef zeroext %12, ptr noundef %add.ptr, ptr noundef %ptr) #6
  br label %cleanup

sw.bb20:                                          ; preds = %if.end13
  %call21 = tail call fastcc zeroext i1 @mlx5_esw_bridge_is_local(ptr noundef %1, ptr noundef nonnull %call10, ptr noundef %3)
  br i1 %call21, label %sw.bb20.cleanup_crit_edge, label %sw.bb20.sw.bb24_crit_edge

sw.bb20.sw.bb24_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb24

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb24:                                          ; preds = %sw.bb20.sw.bb24_crit_edge, %if.end13.sw.bb24_crit_edge, %if.end13.sw.bb24_crit_edge120
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event)
  %cmp28 = icmp eq i32 %event, 3
  %frombool.i = zext i1 %cmp28 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 2848, i32 noundef 76) #10
  %tobool.not.i110 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i110, label %sw.bb24.land.end_crit_edge, label %do.body.i

sw.bb24.land.end_crit_edge:                       ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

do.body.i:                                        ; preds = %sw.bb24
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #6
  %14 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @mlx5_esw_bridge_init_switchdev_fdb_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry6.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry6.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mlx5_esw_bridge_switchdev_fdb_event_work, ptr %func.i, align 4
  %fdb_info8.i = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %call7.i.i.i, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %fdb_info8.i, ptr %ptr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i39.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2848, i32 noundef 6) #10
  %tobool10.not.i = icmp eq ptr %call7.i.i39.i, null
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end13.i

if.then11.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %land.end

if.end13.i:                                       ; preds = %do.body.i
  %addr14.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %20 = ptrtoint ptr %addr14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %addr14.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %call7.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i.i39.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call7.i.i39.i, i32 4
  %27 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %add.ptr1.i.i, align 4
  %addr16.i = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %addr16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i39.i, ptr %addr16.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end13.i.mlx5_esw_bridge_init_switchdev_fdb_work.exit_crit_edge, label %do.body1.i.i

if.end13.i.mlx5_esw_bridge_init_switchdev_fdb_work.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_init_switchdev_fdb_work.exit

do.body1.i.i:                                     ; preds = %if.end13.i
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !50
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %30 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !39) #6
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add13.i.i = add i32 %41, 1
  store i32 %add13.i.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !51
  %and.i.i.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !52

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #6, !srcloc !53
  br label %mlx5_esw_bridge_init_switchdev_fdb_work.exit

mlx5_esw_bridge_init_switchdev_fdb_work.exit:     ; preds = %do.end30.i.i, %if.end13.i.mlx5_esw_bridge_init_switchdev_fdb_work.exit_crit_edge
  %dev17.i = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %call7.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %dev17.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %1, ptr %dev17.i, align 8
  %br_offloads18.i = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %call7.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %br_offloads18.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr, ptr %br_offloads18.i, align 4
  %add20.i = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %call7.i.i.i, i32 0, i32 4
  %45 = ptrtoint ptr %add20.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool.i, ptr %add20.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_esw_bridge_init_switchdev_fdb_work.exit.land.end_crit_edge, label %if.end71

mlx5_esw_bridge_init_switchdev_fdb_work.exit.land.end_crit_edge: ; preds = %mlx5_esw_bridge_init_switchdev_fdb_work.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.end:                                         ; preds = %mlx5_esw_bridge_init_switchdev_fdb_work.exit.land.end_crit_edge, %if.then11.i, %sw.bb24.land.end_crit_edge
  %retval.0.i111118 = phi ptr [ %call7.i.i.i, %mlx5_esw_bridge_init_switchdev_fdb_work.exit.land.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then11.i ], [ inttoptr (i32 -12 to ptr), %sw.bb24.land.end_crit_edge ]
  %.b109 = load i1, ptr @mlx5_esw_bridge_switchdev_event.__already_done, align 1
  br i1 %.b109, label %land.end.if.end61_crit_edge, label %if.then37, !prof !54

land.end.if.end61_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = ptrtoint ptr %retval.0.i111118 to i32
  br label %if.end61

if.then37:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mlx5_esw_bridge_switchdev_event.__already_done, align 1
  %46 = ptrtoint ptr %retval.0.i111118 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %46) #6
  br label %if.end61

if.end61:                                         ; preds = %if.then37, %land.end.if.end61_crit_edge
  %.pre-phi = phi i32 [ %.pre, %land.end.if.end61_crit_edge ], [ %46, %if.then37 ]
  %sub.i113 = sub i32 1, %.pre-phi
  %or.i114 = or i32 %sub.i113, 32768
  br label %cleanup

if.end71:                                         ; preds = %mlx5_esw_bridge_init_switchdev_fdb_work.exit
  call void @__sanitizer_cov_trace_pc() #8
  %wq = getelementptr i8, ptr %nb, i32 12
  %47 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %48, ptr noundef nonnull %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end61, %sw.bb20.cleanup_crit_edge, %if.end16, %sw.bb.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %retval.0.i, %if.then ], [ %or.i114, %if.end61 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %sw.bb20.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end71 ], [ 0, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %esw_owner_vhca_id) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_esw_bridge_event_blocking(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef %ptr) #0 align 64 {
entry:
  %vport_num.i14 = alloca i16, align 2
  %esw_owner_vhca_id.i15 = alloca i16, align 2
  %vport_num.i = alloca i16, align 2
  %esw_owner_vhca_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -76
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %event, label %entry.sw.epilog.thread_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb2
    i32 9, label %sw.bb4
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  %extack.i.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %extack.i.i, align 4
  %obj1.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %obj1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %obj1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num.i) #6
  %7 = ptrtoint ptr %vport_num.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %vport_num.i, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %esw_owner_vhca_id.i) #6
  %8 = ptrtoint ptr %esw_owner_vhca_id.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %esw_owner_vhca_id.i, align 2, !annotation !49
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %call2.i = call fastcc ptr @mlx5_esw_bridge_rep_vport_num_vhca_id_get(ptr noundef %1, ptr noundef %10, ptr noundef nonnull %vport_num.i, ptr noundef nonnull %esw_owner_vhca_id.i) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %sw.bb.mlx5_esw_bridge_port_obj_add.exit_crit_edge, label %if.end.i

sw.bb.mlx5_esw_bridge_port_obj_add.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_port_obj_add.exit

if.end.i:                                         ; preds = %sw.bb
  %handled.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %11 = ptrtoint ptr %handled.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %handled.i, align 4
  %id.i = getelementptr inbounds %struct.switchdev_obj, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cond.i = icmp eq i32 %13, 1
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.mlx5_esw_bridge_port_obj_add.exit_crit_edge

if.end.i.mlx5_esw_bridge_port_obj_add.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_port_obj_add.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %vport_num.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vport_num.i, align 2
  %16 = ptrtoint ptr %esw_owner_vhca_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %esw_owner_vhca_id.i, align 2
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %6, i32 0, i32 2
  %18 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vid.i, align 2
  %flags.i = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %6, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i, align 4
  %call3.i = tail call i32 @mlx5_esw_bridge_port_vlan_add(i16 noundef zeroext %15, i16 noundef zeroext %17, i16 noundef zeroext %19, i16 noundef zeroext %21, ptr noundef %add.ptr, ptr noundef %4) #6
  br label %mlx5_esw_bridge_port_obj_add.exit

mlx5_esw_bridge_port_obj_add.exit:                ; preds = %sw.bb.i, %if.end.i.mlx5_esw_bridge_port_obj_add.exit_crit_edge, %sw.bb.mlx5_esw_bridge_port_obj_add.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %sw.bb.i ], [ 0, %sw.bb.mlx5_esw_bridge_port_obj_add.exit_crit_edge ], [ -95, %if.end.i.mlx5_esw_bridge_port_obj_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %esw_owner_vhca_id.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %obj1.i16 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %22 = ptrtoint ptr %obj1.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %obj1.i16, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num.i14) #6
  %24 = ptrtoint ptr %vport_num.i14 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %vport_num.i14, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %esw_owner_vhca_id.i15) #6
  %25 = ptrtoint ptr %esw_owner_vhca_id.i15 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %esw_owner_vhca_id.i15, align 2, !annotation !49
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %call.i = call fastcc ptr @mlx5_esw_bridge_rep_vport_num_vhca_id_get(ptr noundef %1, ptr noundef %27, ptr noundef nonnull %vport_num.i14, ptr noundef nonnull %esw_owner_vhca_id.i15) #6
  %tobool.not.i17 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i17, label %sw.bb2.mlx5_esw_bridge_port_obj_del.exit_crit_edge, label %if.end.i21

sw.bb2.mlx5_esw_bridge_port_obj_del.exit_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_port_obj_del.exit

if.end.i21:                                       ; preds = %sw.bb2
  %handled.i18 = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %28 = ptrtoint ptr %handled.i18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %handled.i18, align 4
  %id.i19 = getelementptr inbounds %struct.switchdev_obj, ptr %23, i32 0, i32 2
  %29 = ptrtoint ptr %id.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cond.i20 = icmp eq i32 %30, 1
  br i1 %cond.i20, label %sw.bb.i23, label %if.end.i21.mlx5_esw_bridge_port_obj_del.exit_crit_edge

if.end.i21.mlx5_esw_bridge_port_obj_del.exit_crit_edge: ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_port_obj_del.exit

sw.bb.i23:                                        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %vport_num.i14 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vport_num.i14, align 2
  %33 = ptrtoint ptr %esw_owner_vhca_id.i15 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %esw_owner_vhca_id.i15, align 2
  %vid.i22 = getelementptr inbounds %struct.switchdev_obj_port_vlan, ptr %23, i32 0, i32 2
  %35 = ptrtoint ptr %vid.i22 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vid.i22, align 2
  tail call void @mlx5_esw_bridge_port_vlan_del(i16 noundef zeroext %32, i16 noundef zeroext %34, i16 noundef zeroext %36, ptr noundef %add.ptr) #6
  br label %mlx5_esw_bridge_port_obj_del.exit

mlx5_esw_bridge_port_obj_del.exit:                ; preds = %sw.bb.i23, %if.end.i21.mlx5_esw_bridge_port_obj_del.exit_crit_edge, %sw.bb2.mlx5_esw_bridge_port_obj_del.exit_crit_edge
  %retval.0.i24 = phi i32 [ 0, %sw.bb.i23 ], [ 0, %sw.bb2.mlx5_esw_bridge_port_obj_del.exit_crit_edge ], [ -95, %if.end.i21.mlx5_esw_bridge_port_obj_del.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %esw_owner_vhca_id.i15) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i14) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call fastcc i32 @mlx5_esw_bridge_port_obj_attr_set(ptr noundef %1, ptr noundef %ptr, ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %mlx5_esw_bridge_port_obj_del.exit, %mlx5_esw_bridge_port_obj_add.exit
  %err.0 = phi i32 [ %call5, %sw.bb4 ], [ %retval.0.i24, %mlx5_esw_bridge_port_obj_del.exit ], [ %retval.0.i, %mlx5_esw_bridge_port_obj_add.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool.not.i25 = icmp eq i32 %err.0, 0
  %sub.i = sub i32 1, %err.0
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i25, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog._crit_edge

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %37

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  br label %37

37:                                               ; preds = %sw.epilog.thread, %sw.epilog._crit_edge
  %38 = phi i32 [ 1, %sw.epilog.thread ], [ %or.i, %sw.epilog._crit_edge ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_esw_bridge_switchdev_port_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %vport_num.i = alloca i16, align 2
  %esw_owner_vhca_id.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %event)
  %cond = icmp eq i32 %event, 21
  br i1 %cond, label %sw.bb, label %entry.sw.epilog.thread_crit_edge

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %nb, i32 -64
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %upper_dev.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %upper_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %upper_dev.i, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num.i) #6
  %6 = ptrtoint ptr %vport_num.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %vport_num.i, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %esw_owner_vhca_id.i) #6
  %7 = ptrtoint ptr %esw_owner_vhca_id.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %esw_owner_vhca_id.i, align 2, !annotation !49
  %ifindex2.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %ifindex2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifindex2.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %11, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb.sw.epilog.thread8_crit_edge, label %if.end.i

sw.bb.sw.epilog.thread8_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread8

if.end.i:                                         ; preds = %sw.bb
  %call4.i = call fastcc ptr @mlx5_esw_bridge_rep_vport_num_vhca_id_get(ptr noundef %1, ptr noundef %5, ptr noundef nonnull %vport_num.i, ptr noundef nonnull %esw_owner_vhca_id.i) #6
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i.sw.epilog.thread8_crit_edge, label %if.end6.i

if.end.i.sw.epilog.thread8_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread8

if.end6.i:                                        ; preds = %if.end.i
  %extack.i.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %12 = ptrtoint ptr %extack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %extack.i.i, align 4
  %mdev.i.i.i = getelementptr i8, ptr %call4.i, i32 11328
  %14 = ptrtoint ptr %mdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i.i.i, align 64
  %eswitch.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %15, i32 0, i32 17, i32 28
  %16 = ptrtoint ptr %eswitch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eswitch.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %17, %5
  br i1 %cmp.i.i.i, label %if.end.i.i, label %if.end6.i.if.else.i_crit_edge

if.end6.i.if.else.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end.i.i:                                       ; preds = %if.end6.i
  %flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.netif_is_lag_master.exit.i.i_crit_edge, label %netif_is_bond_master.exit.i.i.i

if.end.i.i.netif_is_lag_master.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit.i.i

netif_is_bond_master.exit.i.i.i:                  ; preds = %if.end.i.i
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i.i.i.i, align 16
  %and1.i.i.i.i = and i64 %21, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i.i)
  %tobool2.i.not.i.i.i = icmp eq i64 %and1.i.i.i.i, 0
  br i1 %tobool2.i.not.i.i.i, label %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge, label %netif_is_bond_master.exit.i.i.i.if.then4.i.i_crit_edge

netif_is_bond_master.exit.i.i.i.if.then4.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit.i.i

netif_is_lag_master.exit.i.i:                     ; preds = %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge, %if.end.i.i.netif_is_lag_master.exit.i.i_crit_edge
  %priv_flags.i3.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i3.i.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i3.i.i.i, align 16
  %and.i4.i.i.i = and i64 %23, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i64 %and.i4.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %netif_is_lag_master.exit.i.i.if.then10.i_crit_edge, label %netif_is_lag_master.exit.i.i.if.then4.i.i_crit_edge

netif_is_lag_master.exit.i.i.if.then4.i.i_crit_edge: ; preds = %netif_is_lag_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4.i.i

netif_is_lag_master.exit.i.i.if.then10.i_crit_edge: ; preds = %netif_is_lag_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then4.i.i:                                     ; preds = %netif_is_lag_master.exit.i.i.if.then4.i.i_crit_edge, %netif_is_bond_master.exit.i.i.i.if.then4.i.i_crit_edge
  %call5.i.i = tail call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef %15) #6
  br i1 %call5.i.i, label %mlx5_esw_bridge_is_local.exit.i, label %if.then4.i.i.if.else.i_crit_edge

if.then4.i.i.if.else.i_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

mlx5_esw_bridge_is_local.exit.i:                  ; preds = %if.then4.i.i
  %call6.i.i = tail call zeroext i1 @mlx5_lag_is_master(ptr noundef %15) #6
  br i1 %call6.i.i, label %mlx5_esw_bridge_is_local.exit.i.if.then10.i_crit_edge, label %mlx5_esw_bridge_is_local.exit.i.if.else.i_crit_edge

mlx5_esw_bridge_is_local.exit.i.if.else.i_crit_edge: ; preds = %mlx5_esw_bridge_is_local.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

mlx5_esw_bridge_is_local.exit.i.if.then10.i_crit_edge: ; preds = %mlx5_esw_bridge_is_local.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then10.i:                                      ; preds = %mlx5_esw_bridge_is_local.exit.i.if.then10.i_crit_edge, %netif_is_lag_master.exit.i.i.if.then10.i_crit_edge
  %linking.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %24 = ptrtoint ptr %linking.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %linking.i, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool11.not.i = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %vport_num.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vport_num.i, align 2
  %28 = ptrtoint ptr %esw_owner_vhca_id.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %esw_owner_vhca_id.i, align 2
  br i1 %tobool11.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 @mlx5_esw_bridge_vport_link(i32 noundef %9, i16 noundef zeroext %27, i16 noundef zeroext %29, ptr noundef %add.ptr.i, ptr noundef %13) #6
  br label %sw.epilog

cond.false.i:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @mlx5_esw_bridge_vport_unlink(i32 noundef %9, i16 noundef zeroext %27, i16 noundef zeroext %29, ptr noundef %add.ptr.i, ptr noundef %13) #6
  br label %sw.epilog

if.else.i:                                        ; preds = %mlx5_esw_bridge_is_local.exit.i.if.else.i_crit_edge, %if.then4.i.i.if.else.i_crit_edge, %if.end6.i.if.else.i_crit_edge
  %30 = ptrtoint ptr %mdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdev.i.i.i, align 64
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 8
  %call3.i.i = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %31) #6
  %call4.i.i = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %33) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i.i, i64 %call4.i.i)
  %cmp.i.i = icmp eq i64 %call3.i.i, %call4.i.i
  br i1 %cmp.i.i, label %if.then15.i, label %if.else.i.sw.epilog.thread8_crit_edge

if.else.i.sw.epilog.thread8_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread8

if.then15.i:                                      ; preds = %if.else.i
  %linking16.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %34 = ptrtoint ptr %linking16.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %linking16.i, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool17.not.i = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %vport_num.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vport_num.i, align 2
  %38 = ptrtoint ptr %esw_owner_vhca_id.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %esw_owner_vhca_id.i, align 2
  br i1 %tobool17.not.i, label %cond.false20.i, label %cond.true18.i

cond.true18.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = tail call i32 @mlx5_esw_bridge_vport_peer_link(i32 noundef %9, i16 noundef zeroext %37, i16 noundef zeroext %39, ptr noundef %add.ptr.i, ptr noundef %13) #6
  br label %sw.epilog

cond.false20.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %call21.i = tail call i32 @mlx5_esw_bridge_vport_peer_unlink(i32 noundef %9, i16 noundef zeroext %37, i16 noundef zeroext %39, ptr noundef %add.ptr.i, ptr noundef %13) #6
  br label %sw.epilog

sw.epilog.thread8:                                ; preds = %if.else.i.sw.epilog.thread8_crit_edge, %if.end.i.sw.epilog.thread8_crit_edge, %sw.bb.sw.epilog.thread8_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %esw_owner_vhca_id.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i) #6
  br label %sw.epilog.thread

sw.epilog:                                        ; preds = %cond.false20.i, %cond.true18.i, %cond.false.i, %cond.true.i
  %retval.0.i = phi i32 [ %call12.i, %cond.true.i ], [ %call13.i, %cond.false.i ], [ %call19.i, %cond.true18.i ], [ %call21.i, %cond.false20.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %esw_owner_vhca_id.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not.i2 = icmp eq i32 %retval.0.i, 0
  %sub.i = sub i32 1, %retval.0.i
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i2, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog._crit_edge

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %40

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %sw.epilog.thread8, %entry.sw.epilog.thread_crit_edge
  br label %40

40:                                               ; preds = %sw.epilog.thread, %sw.epilog._crit_edge
  %41 = phi i32 [ 1, %sw.epilog.thread ], [ %or.i, %sw.epilog._crit_edge ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_esw_bridge_update_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  tail call void @rtnl_lock() #6
  tail call void @mlx5_esw_bridge_update(ptr noundef %add.ptr) #6
  tail call void @rtnl_unlock() #6
  %wq = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work, i32 noundef 100) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_bridge_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_bridge_cleanup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %br_offloads3 = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %br_offloads3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %br_offloads3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %update_work = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %5, i32 0, i32 7
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %update_work) #6
  %netdev_nb = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %5, i32 0, i32 3
  %call4 = tail call i32 @unregister_netdevice_notifier_net(ptr noundef nonnull @init_net, ptr noundef %netdev_nb) #6
  %nb_blk = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %5, i32 0, i32 4
  %call5 = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef %nb_blk) #6
  %nb = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %5, i32 0, i32 5
  %call6 = tail call i32 @unregister_switchdev_notifier(ptr noundef %nb) #6
  %wq = getelementptr inbounds %struct.mlx5_esw_bridge_offloads, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 4
  tail call void @destroy_workqueue(ptr noundef %7) #6
  tail call void @rtnl_lock() #6
  tail call void @mlx5_esw_bridge_cleanup(ptr noundef %3) #6
  tail call void @rtnl_unlock() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier_net(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_esw_bridge_port_obj_attr_set(ptr noundef %dev, ptr nocapture noundef %port_attr_info, ptr noundef %br_offloads) unnamed_addr #0 align 64 {
entry:
  %vport_num = alloca i16, align 2
  %esw_owner_vhca_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %extack.i = getelementptr inbounds %struct.switchdev_notifier_info, ptr %port_attr_info, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %attr1 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %port_attr_info, i32 0, i32 1
  %2 = ptrtoint ptr %attr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num) #6
  %4 = ptrtoint ptr %vport_num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %vport_num, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %esw_owner_vhca_id) #6
  %5 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %esw_owner_vhca_id, align 2, !annotation !49
  %6 = ptrtoint ptr %br_offloads to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %br_offloads, align 4
  %call2 = call fastcc ptr @mlx5_esw_bridge_lower_rep_vport_num_vhca_id_get(ptr noundef %dev, ptr noundef %7, ptr noundef nonnull %vport_num, ptr noundef nonnull %esw_owner_vhca_id)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %handled = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %port_attr_info, i32 0, i32 2
  %8 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %handled, align 4
  %id = getelementptr inbounds %struct.switchdev_attr, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %10, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %if.end.cleanup_crit_edge
    i32 5, label %sw.bb9
    i32 6, label %sw.bb12
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %mask = getelementptr inbounds %struct.switchdev_attr, ptr %3, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %and = and i32 %13, -2145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %sw.bb.cleanup_crit_edge, label %do.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_esw_bridge_port_obj_attr_set.__msg) #6
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mlx5_esw_bridge_port_obj_attr_set.__msg, ptr %1, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %vport_num to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vport_num, align 2
  %17 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %esw_owner_vhca_id, align 2
  %u10 = getelementptr inbounds %struct.switchdev_attr, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %u10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %u10, align 4
  %call11 = tail call i32 @mlx5_esw_bridge_ageing_time_set(i16 noundef zeroext %16, i16 noundef zeroext %18, i32 noundef %20, ptr noundef %br_offloads) #6
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %vport_num to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vport_num, align 2
  %23 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %esw_owner_vhca_id, align 2
  %u13 = getelementptr inbounds %struct.switchdev_attr, ptr %3, i32 0, i32 5
  %25 = ptrtoint ptr %u13 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %u13, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool14 = icmp ne i8 %26, 0
  %call15 = tail call i32 @mlx5_esw_bridge_vlan_filtering_set(i16 noundef zeroext %22, i16 noundef zeroext %24, i1 noundef zeroext %tobool14, ptr noundef %br_offloads) #6
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb12, %sw.bb9, %if.then6, %do.body.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %sw.default ], [ %call15, %sw.bb12 ], [ %call11, %sw.bb9 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ -22, %if.then6 ], [ -22, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %esw_owner_vhca_id) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_esw_bridge_rep_vport_num_vhca_id_get(ptr noundef %dev, ptr noundef readonly %esw, ptr nocapture noundef writeonly %vport_num, ptr nocapture noundef writeonly %esw_owner_vhca_id) unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

entry.netif_is_lag_master.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %entry
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %3, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then_crit_edge

netif_is_bond_master.exit.i.if.then_crit_edge:    ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %entry.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.if.end_crit_edge, label %netif_is_lag_master.exit.if.then_crit_edge

netif_is_lag_master.exit.if.then_crit_edge:       ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

netif_is_lag_master.exit.if.end_crit_edge:        ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %netif_is_lag_master.exit.if.then_crit_edge, %netif_is_bond_master.exit.i.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter.i) #6
  %lower1.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %lower1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lower1.i, align 8
  %8 = ptrtoint ptr %iter.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %iter.i, align 4
  %call.i = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter.i) #6
  %tobool.not22.i = icmp eq ptr %call.i, null
  br i1 %tobool.not22.i, label %if.then.mlx5_esw_bridge_lag_rep_get.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mlx5_esw_bridge_lag_rep_get.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_lag_rep_get.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %lower.023.i = phi ptr [ %call10.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.then.for.body.i_crit_edge ]
  %call.i.i = call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef nonnull %lower.023.i) #6
  br i1 %call.i.i, label %for.body.i.if.end.i_crit_edge, label %mlx5e_eswitch_rep.exit.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

mlx5e_eswitch_rep.exit.i:                         ; preds = %for.body.i
  %call1.i.i = call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef nonnull %lower.023.i) #6
  br i1 %call1.i.i, label %mlx5e_eswitch_rep.exit.i.if.end.i_crit_edge, label %mlx5e_eswitch_rep.exit.i.for.inc.i_crit_edge

mlx5e_eswitch_rep.exit.i.for.inc.i_crit_edge:     ; preds = %mlx5e_eswitch_rep.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

mlx5e_eswitch_rep.exit.i.if.end.i_crit_edge:      ; preds = %mlx5e_eswitch_rep.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %mlx5e_eswitch_rep.exit.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %mdev4.i = getelementptr i8, ptr %lower.023.i, i32 11328
  %9 = ptrtoint ptr %mdev4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev4.i, align 64
  %call5.i = call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef %10) #6
  br i1 %call5.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %11 = ptrtoint ptr %mdev4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev4.i, align 64
  %eswitch.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %12, i32 0, i32 17, i32 28
  %13 = ptrtoint ptr %eswitch.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eswitch.i.i, align 4
  %cmp.i.i = icmp eq ptr %14, %esw
  br i1 %cmp.i.i, label %land.lhs.true.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_lag_rep_get.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %mlx5e_eswitch_rep.exit.i.for.inc.i_crit_edge
  %call10.i = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter.i) #6
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %for.inc.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_lag_rep_get.exit

mlx5_esw_bridge_lag_rep_get.exit:                 ; preds = %for.inc.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge, %land.lhs.true.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge, %if.then.mlx5_esw_bridge_lag_rep_get.exit_crit_edge
  %lower.0.lcssa.i = phi ptr [ null, %if.then.mlx5_esw_bridge_lag_rep_get.exit_crit_edge ], [ null, %for.inc.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge ], [ %lower.023.i, %land.lhs.true.i.mlx5_esw_bridge_lag_rep_get.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter.i) #6
  br label %if.end

if.end:                                           ; preds = %mlx5_esw_bridge_lag_rep_get.exit, %netif_is_lag_master.exit.if.end_crit_edge
  %dev.addr.0 = phi ptr [ %lower.0.lcssa.i, %mlx5_esw_bridge_lag_rep_get.exit ], [ %dev, %netif_is_lag_master.exit.if.end_crit_edge ]
  %tobool.not = icmp eq ptr %dev.addr.0, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call.i17 = call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef nonnull %dev.addr.0) #6
  br i1 %call.i17, label %lor.lhs.false.lor.lhs.false3_crit_edge, label %mlx5e_eswitch_rep.exit

lor.lhs.false.lor.lhs.false3_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3

mlx5e_eswitch_rep.exit:                           ; preds = %lor.lhs.false
  %call1.i = call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef nonnull %dev.addr.0) #6
  br i1 %call1.i, label %mlx5e_eswitch_rep.exit.lor.lhs.false3_crit_edge, label %mlx5e_eswitch_rep.exit.cleanup_crit_edge

mlx5e_eswitch_rep.exit.cleanup_crit_edge:         ; preds = %mlx5e_eswitch_rep.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mlx5e_eswitch_rep.exit.lor.lhs.false3_crit_edge:  ; preds = %mlx5e_eswitch_rep.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %mlx5e_eswitch_rep.exit.lor.lhs.false3_crit_edge, %lor.lhs.false.lor.lhs.false3_crit_edge
  %mdev1.i = getelementptr i8, ptr %dev.addr.0, i32 11328
  %15 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev1.i, align 64
  %17 = ptrtoint ptr %esw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %esw, align 8
  %call3.i = call i64 @mlx5_query_nic_system_image_guid(ptr noundef %16) #6
  %call4.i = call i64 @mlx5_query_nic_system_image_guid(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %call4.i)
  %cmp.i = icmp eq i64 %call3.i, %call4.i
  br i1 %cmp.i, label %if.end6, label %lor.lhs.false3.cleanup_crit_edge

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  %ppriv = getelementptr i8, ptr %dev.addr.0, i32 30240
  %19 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ppriv, align 32
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %vport = getelementptr inbounds %struct.mlx5_eswitch_rep, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vport, align 4
  %25 = ptrtoint ptr %vport_num to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %vport_num, align 2
  %26 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev1.i, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %conv = trunc i32 %31 to i16
  %32 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %esw_owner_vhca_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %lor.lhs.false3.cleanup_crit_edge, %mlx5e_eswitch_rep.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %dev.addr.0, %if.end6 ], [ null, %lor.lhs.false3.cleanup_crit_edge ], [ null, %mlx5e_eswitch_rep.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlx5_esw_bridge_is_local(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %rep, ptr noundef readnone %esw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr i8, ptr %rep, i32 11328
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch.i, align 4
  %cmp.i = icmp eq ptr %3, %esw
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 64
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

if.end.netif_is_lag_master.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %if.end
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %9, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then4_crit_edge

netif_is_bond_master.exit.i.if.then4_crit_edge:   ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %if.end.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %11, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %netif_is_lag_master.exit.cleanup_crit_edge, label %netif_is_lag_master.exit.if.then4_crit_edge

netif_is_lag_master.exit.if.then4_crit_edge:      ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

netif_is_lag_master.exit.cleanup_crit_edge:       ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %netif_is_lag_master.exit.if.then4_crit_edge, %netif_is_bond_master.exit.i.if.then4_crit_edge
  %call5 = tail call zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef %5) #6
  br i1 %call5, label %land.rhs, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call zeroext i1 @mlx5_lag_is_master(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %land.rhs, %if.then4.cleanup_crit_edge, %netif_is_lag_master.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.then4.cleanup_crit_edge ], [ %call6, %land.rhs ], [ true, %netif_is_lag_master.exit.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_bridge_fdb_update_used(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_esw_bridge_lower_rep_vport_num_vhca_id_get(ptr noundef %dev, ptr noundef %esw, ptr nocapture noundef writeonly %vport_num, ptr nocapture noundef writeonly %esw_owner_vhca_id) unnamed_addr #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #6
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i

entry.netif_is_lag_master.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_bond_master.exit.i:                      ; preds = %entry
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %3, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, label %netif_is_bond_master.exit.i.if.then_crit_edge

netif_is_bond_master.exit.i.if.then_crit_edge:    ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %netif_is_lag_master.exit

netif_is_lag_master.exit:                         ; preds = %netif_is_bond_master.exit.i.netif_is_lag_master.exit_crit_edge, %entry.netif_is_lag_master.exit_crit_edge
  %priv_flags.i3.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i3.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i3.i, align 16
  %and.i4.i = and i64 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i)
  %tobool.i.i.not = icmp eq i64 %and.i4.i, 0
  br i1 %tobool.i.i.not, label %lor.lhs.false, label %netif_is_lag_master.exit.if.then_crit_edge

netif_is_lag_master.exit.if.then_crit_edge:       ; preds = %netif_is_lag_master.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %netif_is_lag_master.exit
  %call.i = tail call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef %dev) #6
  br i1 %call.i, label %lor.lhs.false.if.then_crit_edge, label %mlx5e_eswitch_rep.exit

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

mlx5e_eswitch_rep.exit:                           ; preds = %lor.lhs.false
  %call1.i = tail call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef %dev) #6
  br i1 %call1.i, label %mlx5e_eswitch_rep.exit.if.then_crit_edge, label %if.end

mlx5e_eswitch_rep.exit.if.then_crit_edge:         ; preds = %mlx5e_eswitch_rep.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %mlx5e_eswitch_rep.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %netif_is_lag_master.exit.if.then_crit_edge, %netif_is_bond_master.exit.i.if.then_crit_edge
  %call2 = tail call fastcc ptr @mlx5_esw_bridge_rep_vport_num_vhca_id_get(ptr noundef %dev, ptr noundef %esw, ptr noundef %vport_num, ptr noundef %esw_owner_vhca_id)
  br label %cleanup12

if.end:                                           ; preds = %mlx5e_eswitch_rep.exit
  %lower = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lower, align 8
  %8 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %iter, align 4
  %call3 = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter) #6
  %tobool.not29 = icmp eq ptr %call3, null
  br i1 %tobool.not29, label %if.end.cleanup12_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %lower_dev.030 = phi ptr [ %call11, %for.inc.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %lower_dev.030, i32 0, i32 15
  %9 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %10, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %call7 = call fastcc ptr @mlx5_esw_bridge_lower_rep_vport_num_vhca_id_get(ptr noundef nonnull %lower_dev.030, ptr noundef %esw, ptr noundef %vport_num, ptr noundef %esw_owner_vhca_id)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.for.inc_crit_edge, label %if.end6.cleanup12_crit_edge

if.end6.cleanup12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end6.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call11 = call ptr @netdev_lower_get_next(ptr noundef %dev, ptr noundef nonnull %iter) #6
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %for.inc.cleanup12_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup12_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup12

cleanup12:                                        ; preds = %for.inc.cleanup12_crit_edge, %if.end6.cleanup12_crit_edge, %if.end.cleanup12_crit_edge, %if.then
  %retval.2 = phi ptr [ %call2, %if.then ], [ null, %if.end.cleanup12_crit_edge ], [ null, %for.inc.cleanup12_crit_edge ], [ %call7, %if.end6.cleanup12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #6
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_bridge_ageing_time_set(i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_bridge_vlan_filtering_set(i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_shared_fdb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5_query_nic_system_image_guid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_lag_is_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_esw_bridge_switchdev_fdb_event_work(ptr noundef %work) #0 align 64 {
entry:
  %vport_num = alloca i16, align 2
  %esw_owner_vhca_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_info1 = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %work, i32 0, i32 1
  %br_offloads2 = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %br_offloads2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %br_offloads2, align 4
  %dev3 = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num) #6
  %4 = ptrtoint ptr %vport_num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %vport_num, align 2, !annotation !49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %esw_owner_vhca_id) #6
  %5 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %esw_owner_vhca_id, align 2, !annotation !49
  tail call void @rtnl_lock() #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = call fastcc ptr @mlx5_esw_bridge_rep_vport_num_vhca_id_get(ptr noundef %3, ptr noundef %7, ptr noundef nonnull %vport_num, ptr noundef nonnull %esw_owner_vhca_id)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %add = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %work, i32 0, i32 4
  %8 = ptrtoint ptr %add to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %vport_num to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vport_num, align 2
  %12 = ptrtoint ptr %esw_owner_vhca_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %esw_owner_vhca_id, align 2
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_esw_bridge_fdb_create(ptr noundef %3, i16 noundef zeroext %11, i16 noundef zeroext %13, ptr noundef %1, ptr noundef %fdb_info1) #6
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_esw_bridge_fdb_remove(ptr noundef %3, i16 noundef zeroext %11, i16 noundef zeroext %13, ptr noundef %1, ptr noundef %fdb_info1) #6
  br label %out

out:                                              ; preds = %if.else, %if.then5, %entry.out_crit_edge
  tail call void @rtnl_unlock() #6
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %out.mlx5_esw_bridge_cleanup_switchdev_fdb_work.exit_crit_edge, label %do.body1.i.i

out.mlx5_esw_bridge_cleanup_switchdev_fdb_work.exit_crit_edge: ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5_esw_bridge_cleanup_switchdev_fdb_work.exit

do.body1.i.i:                                     ; preds = %out
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !50
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 118
  %17 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = tail call i32 @llvm.read_register.i32(metadata !39) #6
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add13.i.i = add i32 %28, -1
  store i32 %add13.i.i, ptr %26, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !51
  %and.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !52

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #6, !srcloc !53
  br label %mlx5_esw_bridge_cleanup_switchdev_fdb_work.exit

mlx5_esw_bridge_cleanup_switchdev_fdb_work.exit:  ; preds = %do.end30.i.i, %out.mlx5_esw_bridge_cleanup_switchdev_fdb_work.exit_crit_edge
  %addr.i = getelementptr inbounds %struct.mlx5_bridge_switchdev_fdb_work, ptr %work, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %addr.i, align 4
  tail call void @kfree(ptr noundef %31) #6
  tail call void @kfree(ptr noundef %work) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %esw_owner_vhca_id) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_bridge_fdb_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_bridge_fdb_remove(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_bridge_port_vlan_add(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_bridge_port_vlan_del(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_bridge_vport_link(i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_bridge_vport_unlink(i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_bridge_vport_peer_link(i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_esw_bridge_vport_peer_unlink(i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_esw_bridge_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 469, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5e_rep_bridge_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5e_rep_bridge_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 473, i32 20}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 475, i32 3}
!12 = !{ptr @mlx5e_rep_bridge_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlx5e_rep_bridge_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 482, i32 3}
!16 = !{ptr @mlx5e_rep_bridge_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx5e_rep_bridge_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 489, i32 3}
!20 = !{ptr @mlx5e_rep_bridge_init._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mlx5e_rep_bridge_init._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 496, i32 3}
!24 = !{ptr @mlx5e_rep_bridge_init._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mlx5e_rep_bridge_init._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @mlx5e_rep_bridge_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 500, i32 2}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mlx5e_rep_bridge_init.__key.19, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.20, !27, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 430, i32 4}
!33 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mlx5_esw_bridge_port_obj_attr_set.__msg, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 258, i32 4}
!36 = !{ptr @mlx5_esw_bridge_init_switchdev_fdb_work.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/bridge.c", i32 354, i32 2}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i64 899038, i64 899099}
!51 = !{i64 901770}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 902055}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i8 0, i8 2}
