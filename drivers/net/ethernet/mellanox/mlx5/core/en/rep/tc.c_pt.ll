; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.58, i32, %struct.spinlock }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { ptr, ptr }
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
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mlx5e_rq = type { %union.anon.187, %struct.anon.201, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.187 = type { %struct.anon.194 }
%struct.anon.194 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.196 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.195, i64, i32, [28 x i8] }
%union.anon.195 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.196 = type { %struct.anon.197 }
%struct.anon.197 = type { %struct.anon.198, [0 x %struct.mlx5_mtt] }
%struct.anon.198 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.201 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.184, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.184 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.190, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.193, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.190 = type { %struct.anon.191 }
%struct.anon.191 = type { i8, i8, i16, i32 }
%union.anon.193 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.202, i32 }
%union.anon.202 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.185, i32, i32 }
%union.anon.185 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.189 }
%union.anon.189 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.220, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.220 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.221 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.221 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.222 }
%struct.anon.222 = type { i8, i8 }
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
%struct.mlx5e_rep_priv = type { ptr, %struct.mlx5e_neigh_update_table, ptr, ptr, ptr, %struct.list_head, %struct.mlx5_rep_uplink_priv, %struct.rtnl_link_stats64 }
%struct.mlx5e_neigh_update_table = type { %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_rep_uplink_priv = type { %struct.rhashtable, %struct.list_head, %struct.mlx5_tun_entropy, %struct.mutex, %struct.list_head, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_tun_entropy = type { ptr, i32, i32, i8, %struct.mutex }
%struct.mlx5e_encap_entry = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mlx5e_mpls_info, [6 x i8], ptr, i32, ptr, i32, i8, ptr, i32, %struct.refcount_struct, %struct.completion, i32, %struct.callback_head }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.mlx5e_neigh_hash_entry = type { %struct.rhash_head, %struct.mlx5e_neigh, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.refcount_struct, i32, %struct.callback_head }
%struct.rhash_head = type { ptr }
%struct.mlx5e_neigh = type { %union.anon.228, i32 }
%union.anon.228 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.168, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.174, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.168 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.173] }
%struct.anon.173 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.151 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.151 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.174 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.171, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.172, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.169, i32 }
%union.anon.169 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.170, ptr }
%struct.anon.170 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.atomic64_t = type { i64 }
%struct.anon.171 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.172 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.166, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.166 = type { ptr }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.tc_cls_matchall_offload = type { %struct.flow_cls_common_offload, i32, ptr, %struct.flow_stats, i32 }
%struct.mlx5e_rep_indr_block_priv = type { ptr, ptr, i32, %struct.list_head }
%struct.mlx5e_tc_update_priv = type { ptr }
%struct.mlx5_mapped_obj = type { i32, %union.anon.245 }
%union.anon.245 = type { %struct.anon.246 }
%struct.anon.246 = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.4, %union.anon.7, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.tunnel_match_enc_opts = type { %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts }
%struct.flow_dissector_key_enc_opts = type { [255 x i8], i8, i16 }
%struct.tunnel_match_key = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ip, %union.anon.249, i32 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.212 }
%union.anon.212 = type { i32 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%union.anon.249 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.anon.213 = type { i16, i16 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.248 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.248 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.229, i16, i8, i8, i32, i16, i16 }
%union.anon.229 = type { %struct.anon.231 }
%struct.anon.231 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }

@mlx5e_rep_update_flows.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mlx5e_rep_block_tc_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mlx5e_rep_block_tc_cb_list, ptr @mlx5e_rep_block_tc_cb_list }, [24 x i8] zeroinitializer }, align 32
@mlx5e_rep_block_ft_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mlx5e_rep_block_ft_cb_list, ptr @mlx5e_rep_block_ft_cb_list }, [24 x i8] zeroinitializer }, align 32
@mlx5e_rep_tc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&uplink_priv->unready_flows_lock\00", [63 x i8] zeroinitializer }, align 32
@mlx5e_rep_tc_enable.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(work_completion)(&rpriv->uplink_priv.reoffload_flows_work)\00", [36 x i8] zeroinitializer }, align 32
@mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.6, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5e_rep_tc_receive\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Couldn't find mapped object for reg_c0: %d, err: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.7, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid mapped object type: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Offloading ingress filter is supported only with macvlan passthru mode\00", [57 x i8] zeroinitializer }, align 32
@mlx5e_block_cb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mlx5e_block_cb_list, ptr @mlx5e_block_cb_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlx5e_restore_tunnel.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx5e_restore_tunnel.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx5e_restore_tunnel\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't find tunnel for tun_id: %d, err: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5e_restore_tunnel.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str, ptr @.str.11, i8 0, i8 -109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Couldn't find tunnel (opts) for tun_id: %d, err: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_restore_tunnel.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str, ptr @.str.12, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Couldn't restore tunnel, unsupported addr_type: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5e_restore_tunnel.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str, ptr @.str.13, i8 0, i8 -102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't restore tunnel, no tun_dst\0A\00", [59 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@mlx5e_restore_tunnel.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.9, ptr @.str, ptr @.str.14, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Couldn't find tunnel device with ifindex: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx5e_restore_skb_sample.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5e_restore_skb_sample\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to restore tunnel info for sampled packet\0A\00", [46 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 14]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 14]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 99, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"mlx5e_rep_block_tc_cb_list\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 231, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [27 x i8] c"mlx5e_rep_block_ft_cb_list\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 232, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 262, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 281, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 751, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 769, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 449, i32 24 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"mlx5e_block_cb_list\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 420, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 579, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 589, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 609, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 616, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 631, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 689, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @mlx5e_rep_block_tc_cb_list, ptr @mlx5e_rep_block_ft_cb_list, ptr @mlx5e_rep_tc_init.__key, ptr @.str.2, ptr @mlx5e_rep_tc_enable.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mlx5e_block_cb_list, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_block_tc_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_block_ft_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_tc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rep_tc_enable.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_block_cb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_encap_entry_attach(ptr noundef %priv, ptr noundef %e, ptr noundef %m_neigh, ptr noundef %neigh_dev) local_unnamed_addr #0 align 64 {
entry:
  %nhe = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %tun_entropy2 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nhe) #7
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %2 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reformat_type, align 4
  %call = tail call i32 @mlx5_tun_entropy_refcount_inc(ptr noundef %tun_entropy2, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %encap_lock = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 1, i32 2
  tail call void @mutex_lock_nested(ptr noundef %encap_lock, i32 noundef 0) #7
  %call3 = tail call ptr @mlx5e_rep_neigh_entry_lookup(ptr noundef %priv, ptr noundef %m_neigh) #7
  %4 = ptrtoint ptr %nhe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %nhe, align 4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @mlx5e_rep_neigh_entry_create(ptr noundef %priv, ptr noundef %m_neigh, ptr noundef %neigh_dev, ptr noundef nonnull %nhe) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end13_crit_edge, label %if.then8

if.then5.if.end13_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %encap_lock) #7
  %5 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reformat_type, align 4
  call void @mlx5_tun_entropy_refcount_dec(ptr noundef %tun_entropy2, i32 noundef %6) #7
  br label %cleanup

if.end13:                                         ; preds = %if.then5.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %7 = ptrtoint ptr %nhe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nhe, align 4
  %9 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %e, align 4
  %encap_list_lock = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %8, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %encap_list_lock) #7
  %encap_list = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 1
  %10 = ptrtoint ptr %nhe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhe, align 4
  %encap_list15 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %encap_list15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %encap_list15, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %encap_list, ptr noundef %encap_list15, ptr noundef %13) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end13.list_add_rcu.exit_crit_edge

if.end13.list_add_rcu.exit_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %encap_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %encap_list, align 4
  %prev2.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %encap_list15, ptr %prev2.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !58
  %16 = ptrtoint ptr %encap_list15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %encap_list, ptr %encap_list15, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %encap_list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end13.list_add_rcu.exit_crit_edge
  %18 = ptrtoint ptr %nhe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nhe, align 4
  %encap_list_lock16 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %19, i32 0, i32 5
  call void @_raw_spin_unlock(ptr noundef %encap_list_lock16) #7
  call void @mutex_unlock(ptr noundef %encap_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_rcu.exit ], [ %call6, %if.then8 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nhe) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_tun_entropy_refcount_inc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_rep_neigh_entry_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rep_neigh_entry_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_tun_entropy_refcount_dec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_encap_entry_detach(ptr nocapture noundef readonly %priv, ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %e, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %2 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppriv, align 32
  %tun_entropy2 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %3, i32 0, i32 6, i32 2
  %encap_list_lock = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %encap_list_lock) #7
  %encap_list = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %encap_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_rcu.exit_crit_edge

if.end.list_del_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %encap_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encap_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %e, align 4
  %encap_list_lock5 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %12, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %encap_list_lock5) #7
  %13 = ptrtoint ptr %e to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %e, align 4
  tail call void @mlx5e_rep_neigh_entry_release(ptr noundef %14) #7
  %15 = ptrtoint ptr %e to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %e, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %16 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reformat_type, align 4
  tail call void @mlx5_tun_entropy_refcount_dec(ptr noundef %tun_entropy2, i32 noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del_rcu.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_neigh_entry_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_update_flows(ptr noundef %priv, ptr noundef %e, i1 noundef zeroext %neigh_connected, ptr nocapture noundef readonly %ha) local_unnamed_addr #0 align 64 {
entry:
  %flow_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %encap_header = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 14
  %0 = ptrtoint ptr %encap_header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encap_header, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flow_list) #7
  %6 = getelementptr inbounds %struct.list_head, ptr %flow_list, i32 0, i32 1
  %7 = ptrtoint ptr %flow_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %flow_list, ptr %flow_list, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %flow_list, ptr %6, align 4
  %call = call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end31_crit_edge

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.rhs:                                         ; preds = %entry
  %.b110 = load i1, ptr @mlx5e_rep_update_flows.__already_done, align 1
  br i1 %.b110, label %land.rhs.if.end31_crit_edge, label %if.then, !prof !59

land.rhs.if.end31_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mlx5e_rep_update_flows.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 99) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then, %land.rhs.if.end31_crit_edge, %entry.if.end31_crit_edge
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 15, i32 9
  call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #7
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 4
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %12 = icmp eq i8 %11, 0
  %cmp = xor i1 %12, %neigh_connected
  br i1 %cmp, label %land.lhs.true, label %if.end31.if.end53_crit_edge

if.end31.if.end53_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end31
  %h_dest = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8
  %13 = ptrtoint ptr %h_dest to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %h_dest, align 4
  %15 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ha, align 4
  %xor.i = xor i32 %16, %14
  %add.ptr.i = getelementptr %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8, i32 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %ha, i32 4
  %19 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %20, %18
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %land.lhs.true.unlock_crit_edge, label %land.lhs.true.if.end53_crit_edge

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end53:                                         ; preds = %land.lhs.true.if.end53_crit_edge, %if.end31.if.end53_crit_edge
  call void @mlx5e_take_all_encap_flows(ptr noundef %e, ptr noundef nonnull %flow_list) #7
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 4
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool57.not = icmp eq i8 %23, 0
  br i1 %tobool57.not, label %if.end53.if.end64_crit_edge, label %land.lhs.true58

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

land.lhs.true58:                                  ; preds = %if.end53
  br i1 %neigh_connected, label %lor.lhs.false, label %land.lhs.true58.if.then63_crit_edge

land.lhs.true58.if.then63_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false:                                    ; preds = %land.lhs.true58
  %h_dest60 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8
  %24 = ptrtoint ptr %h_dest60 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_dest60, align 4
  %26 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ha, align 4
  %xor.i111 = xor i32 %27, %25
  %add.ptr.i112 = getelementptr %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8, i32 4
  %28 = ptrtoint ptr %add.ptr.i112 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i112, align 2
  %add.ptr1.i113 = getelementptr i8, ptr %ha, i32 4
  %30 = ptrtoint ptr %add.ptr1.i113 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr1.i113, align 2
  %xor37.i114 = xor i16 %31, %29
  %xor3.i115 = zext i16 %xor37.i114 to i32
  %or.i116 = or i32 %xor.i111, %xor3.i115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i116)
  %cmp.i117 = icmp eq i32 %or.i116, 0
  br i1 %cmp.i117, label %lor.lhs.false.land.lhs.true67_crit_edge, label %lor.lhs.false.if.then63_crit_edge

lor.lhs.false.if.then63_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then63

lor.lhs.false.land.lhs.true67_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true67

if.then63:                                        ; preds = %lor.lhs.false.if.then63_crit_edge, %land.lhs.true58.if.then63_crit_edge
  call void @mlx5e_tc_encap_flows_del(ptr noundef %priv, ptr noundef %e, ptr noundef nonnull %flow_list) #7
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end53.if.end64_crit_edge
  br i1 %neigh_connected, label %if.end64.land.lhs.true67_crit_edge, label %if.end64.unlock_crit_edge

if.end64.unlock_crit_edge:                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end64.land.lhs.true67_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true67

land.lhs.true67:                                  ; preds = %if.end64.land.lhs.true67_crit_edge, %lor.lhs.false.land.lhs.true67_crit_edge
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 4
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool71.not = icmp eq i8 %34, 0
  br i1 %tobool71.not, label %if.then72, label %land.lhs.true67.unlock_crit_edge

land.lhs.true67.unlock_crit_edge:                 ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then72:                                        ; preds = %land.lhs.true67
  %h_dest73 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8
  %35 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ha, align 4
  %37 = ptrtoint ptr %h_dest73 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %h_dest73, align 4
  %add.ptr.i118 = getelementptr i8, ptr %ha, i32 4
  %38 = ptrtoint ptr %add.ptr.i118 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i118, align 2
  %add.ptr1.i119 = getelementptr %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 8, i32 4
  %40 = ptrtoint ptr %add.ptr1.i119 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i119, align 2
  %41 = load i32, ptr %ha, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %1, align 4
  %43 = load i16, ptr %add.ptr.i118, align 2
  %add.ptr1.i121 = getelementptr i8, ptr %1, i32 4
  %44 = ptrtoint ptr %add.ptr1.i121 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %add.ptr1.i121, align 2
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %46, i32 0, i32 127
  %47 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %nd_net.i, align 4
  %route_dev_ifindex = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 10
  %49 = ptrtoint ptr %route_dev_ifindex to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %route_dev_ifindex, align 4
  %call78 = call ptr @__dev_get_by_index(ptr noundef %48, i32 noundef %50) #7
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.then72.if.end82_crit_edge, label %if.then80

if.then72.if.end82_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then80:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #9
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 1
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call78, i32 0, i32 86
  %51 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr, align 64
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %55 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %h_source, align 4
  %add.ptr.i122 = getelementptr i8, ptr %52, i32 4
  %56 = ptrtoint ptr %add.ptr.i122 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i122, align 2
  %add.ptr1.i123 = getelementptr %struct.ethhdr, ptr %1, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %add.ptr1.i123 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %add.ptr1.i123, align 2
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.then72.if.end82_crit_edge
  call void @mlx5e_tc_encap_flows_add(ptr noundef %priv, ptr noundef %e, ptr noundef nonnull %flow_list) #7
  br label %unlock

unlock:                                           ; preds = %if.end82, %land.lhs.true67.unlock_crit_edge, %if.end64.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #7
  call void @mlx5e_put_flow_list(ptr noundef %priv, ptr noundef nonnull %flow_list) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flow_list) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_take_all_encap_flows(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_encap_flows_del(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_encap_flows_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_put_flow_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_setup_tc(ptr noundef %dev, i32 noundef %type, ptr noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %unlocked_driver_cb = getelementptr inbounds %struct.flow_block_offload, ptr %type_data, i32 0, i32 3
  %0 = ptrtoint ptr %unlocked_driver_cb to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %unlocked_driver_cb, align 1
  %1 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 14, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @mlx5e_rep_block_tc_cb_list, ptr noundef nonnull @mlx5e_rep_setup_tc_cb, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @flow_block_cb_setup_simple(ptr noundef %type_data, ptr noundef nonnull @mlx5e_rep_block_ft_cb_list, ptr noundef nonnull @mlx5e_rep_setup_ft_cb, ptr noundef %add.ptr.i, ptr noundef %add.ptr.i, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.bb2 ], [ %call1, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_block_cb_setup_simple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_setup_tc_cb(i32 noundef %type, ptr noundef %type_data, ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %cb_priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %6 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %7, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb4.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @mlx5e_configure_flower(ptr noundef nonnull %1, ptr noundef %cb_priv, ptr noundef %type_data, i32 noundef 9) #7
  br label %cleanup

sw.bb1.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 @mlx5e_delete_flower(ptr noundef nonnull %1, ptr noundef %cb_priv, ptr noundef %type_data, i32 noundef 9) #7
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 @mlx5e_stats_flower(ptr noundef nonnull %1, ptr noundef %cb_priv, ptr noundef %type_data, i32 noundef 9) #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %command.i10 = getelementptr inbounds %struct.tc_cls_matchall_offload, ptr %type_data, i32 0, i32 1
  %9 = ptrtoint ptr %command.i10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %command.i10, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %10, label %sw.bb3.cleanup_crit_edge [
    i32 0, label %sw.bb.i12
    i32 1, label %sw.bb1.i13
    i32 2, label %sw.bb3.i
  ]

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i12:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i11 = tail call i32 @mlx5e_tc_configure_matchall(ptr noundef %cb_priv, ptr noundef %type_data) #7
  br label %cleanup

sw.bb1.i13:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = tail call i32 @mlx5e_tc_delete_matchall(ptr noundef %cb_priv, ptr noundef %type_data) #7
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlx5e_tc_stats_matchall(ptr noundef %cb_priv, ptr noundef %type_data) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3.i, %sw.bb1.i13, %sw.bb.i12, %sw.bb3.cleanup_crit_edge, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call6.i, %sw.bb4.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb3.i ], [ %call2.i, %sw.bb1.i13 ], [ %call.i11, %sw.bb.i12 ], [ -95, %sw.bb3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_setup_ft_cb(i32 noundef %type, ptr nocapture noundef %type_data, ptr noundef %cb_priv) #0 align 64 {
entry:
  %tmp = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %cb_priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %4 = call ptr @memcpy(ptr %tmp, ptr %type_data, i32 80)
  %esw_chains_priv = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 12
  %5 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %esw_chains_priv, align 4
  %call = tail call zeroext i1 @mlx5_chains_prios_supported(ptr noundef %6) #7
  br i1 %call, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %prio = getelementptr inbounds %struct.flow_cls_common_offload, ptr %tmp, i32 0, i32 2
  %7 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prio, align 8
  %9 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esw_chains_priv, align 4
  %call4 = tail call i32 @mlx5_chains_get_prio_range(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call4)
  %cmp.not = icmp ult i32 %8, %call4
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tmp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8.not = icmp eq i32 %12, 0
  br i1 %cmp8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %esw_chains_priv, align 4
  %call13 = tail call i32 @mlx5_chains_get_nf_ft_chain(ptr noundef %14) #7
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call13, ptr %tmp, align 8
  %16 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %prio, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %prio, align 8
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %tmp, i32 0, i32 1
  %18 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %command.i, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %19, label %if.end10.mlx5e_rep_setup_tc_cls_flower.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb4.i
  ]

if.end10.mlx5e_rep_setup_tc_cls_flower.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_rep_setup_tc_cls_flower.exit

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %cb_priv, i32 0, i32 22
  %21 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev.i, align 4
  %call.i = call i32 @mlx5e_configure_flower(ptr noundef %22, ptr noundef %cb_priv, ptr noundef nonnull %tmp, i32 noundef 25) #7
  br label %mlx5e_rep_setup_tc_cls_flower.exit

sw.bb1.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %netdev2.i = getelementptr inbounds %struct.mlx5e_priv, ptr %cb_priv, i32 0, i32 22
  %23 = ptrtoint ptr %netdev2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev2.i, align 4
  %call3.i = call i32 @mlx5e_delete_flower(ptr noundef %24, ptr noundef %cb_priv, ptr noundef nonnull %tmp, i32 noundef 25) #7
  br label %mlx5e_rep_setup_tc_cls_flower.exit

sw.bb4.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %netdev5.i = getelementptr inbounds %struct.mlx5e_priv, ptr %cb_priv, i32 0, i32 22
  %25 = ptrtoint ptr %netdev5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev5.i, align 4
  %call6.i = call i32 @mlx5e_stats_flower(ptr noundef %26, ptr noundef %cb_priv, ptr noundef nonnull %tmp, i32 noundef 25) #7
  br label %mlx5e_rep_setup_tc_cls_flower.exit

mlx5e_rep_setup_tc_cls_flower.exit:               ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %if.end10.mlx5e_rep_setup_tc_cls_flower.exit_crit_edge
  %retval.0.i = phi i32 [ %call6.i, %sw.bb4.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ], [ -95, %if.end10.mlx5e_rep_setup_tc_cls_flower.exit_crit_edge ]
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4
  %stats19 = getelementptr inbounds %struct.flow_cls_offload, ptr %tmp, i32 0, i32 4
  %27 = call ptr @memcpy(ptr %stats, ptr %stats19, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_rep_setup_tc_cls_flower.exit, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mlx5e_rep_setup_tc_cls_flower.exit ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_tc_init(ptr noundef %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uplink_priv1 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6
  %unready_flows_lock = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 3
  tail call void @__mutex_init(ptr noundef %unready_flows_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx5e_rep_tc_init.__key) #7
  %unready_flows = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %unready_flows to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %unready_flows, ptr %unready_flows, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 4, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %unready_flows, ptr %prev.i, align 4
  %call = tail call i32 @mlx5e_tc_esw_init(ptr noundef %uplink_priv1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_esw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_tc_cleanup(ptr noundef %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %uplink_priv = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6
  tail call void @mlx5e_tc_esw_cleanup(ptr noundef %uplink_priv) #7
  %unready_flows_lock = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 3
  tail call void @mutex_destroy(ptr noundef %unready_flows_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_esw_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_tc_enable(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %reoffload_flows_work = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 5
  tail call void @__init_work(ptr noundef %reoffload_flows_work, i32 noundef 0) #7
  %2 = ptrtoint ptr %reoffload_flows_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %reoffload_flows_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @mlx5e_rep_tc_enable.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry7 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 5, i32 1
  %3 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 5, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 5, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlx5e_tc_reoffload_flows_work, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_reoffload_flows_work(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_tc_disable(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %reoffload_flows_work = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 5
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %reoffload_flows_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_tc_event_port_affinity(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ppriv = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 43
  %0 = ptrtoint ptr %ppriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppriv, align 32
  %wq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wq, align 16
  %reoffload_flows_work = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 6, i32 5
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %reoffload_flows_work) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_rep_tc_netdevice_event_register(ptr noundef %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_indr_block_priv_list = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %tc_indr_block_priv_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %tc_indr_block_priv_list, ptr %tc_indr_block_priv_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tc_indr_block_priv_list, ptr %prev.i, align 4
  %call = tail call i32 @flow_indr_dev_register(ptr noundef nonnull @mlx5e_rep_indr_setup_cb, ptr noundef %rpriv) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_indr_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_indr_setup_cb(ptr noundef %netdev, ptr noundef %sch, ptr noundef %cb_priv, i32 noundef %type, ptr noundef %type_data, ptr noundef %data, ptr noundef %cleanup) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %netdev, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %if.end.return_crit_edge [
    i32 5, label %if.end.return.sink.split_crit_edge
    i32 14, label %sw.bb1
  ]

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %if.end.return.sink.split_crit_edge
  %mlx5e_rep_indr_setup_ft_cb.sink = phi ptr [ @mlx5e_rep_indr_setup_ft_cb, %sw.bb1 ], [ @mlx5e_rep_indr_setup_tc_cb, %if.end.return.sink.split_crit_edge ]
  %call2 = tail call fastcc i32 @mlx5e_rep_indr_setup_block(ptr noundef nonnull %netdev, ptr noundef %sch, ptr noundef %cb_priv, ptr noundef %type_data, ptr noundef nonnull %mlx5e_rep_indr_setup_ft_cb.sink, ptr noundef %data, ptr noundef %cleanup)
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ], [ %call2, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_tc_netdevice_event_unregister(ptr noundef %rpriv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @flow_indr_dev_unregister(ptr noundef nonnull @mlx5e_rep_indr_setup_cb, ptr noundef %rpriv, ptr noundef nonnull @mlx5e_rep_indr_block_unbind) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_indr_dev_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_rep_indr_block_unbind(ptr noundef %cb_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %cb_priv, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %cb_priv, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %cb_priv, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %cb_priv) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_rep_tc_receive(ptr nocapture noundef readonly %cqe, ptr nocapture noundef readonly %rq, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %tc_priv = alloca %struct.mlx5e_tc_update_priv, align 4
  %mapped_obj = alloca %struct.mlx5_mapped_obj, align 4
  %forward_tx = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 15
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc_priv) #7
  %3 = ptrtoint ptr %tc_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tc_priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mapped_obj) #7
  %4 = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj, i32 0, i32 1
  %5 = call ptr @memset(ptr %mapped_obj, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %forward_tx) #7
  %6 = ptrtoint ptr %forward_tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %forward_tx, align 1
  %sop_drop_qpn = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe, i32 0, i32 20
  %7 = ptrtoint ptr %sop_drop_qpn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sop_drop_qpn, align 4
  %and = and i32 %8, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.else59_crit_edge, label %if.end

entry.if.else59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else59

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.5, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 2304
  %mdev = getelementptr i8, ptr %13, i32 11328
  %14 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %15, i32 0, i32 17, i32 28
  %16 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eswitch, align 4
  %reg_c0_obj_pool = getelementptr inbounds %struct.mlx5_eswitch, ptr %17, i32 0, i32 15, i32 3
  %18 = ptrtoint ptr %reg_c0_obj_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_c0_obj_pool, align 4
  %call2 = call i32 @mapping_find(ptr noundef %19, i32 noundef %and, ptr noundef nonnull %mapped_obj) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end14, label %do.body5

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_tc_receive, %if.then10)) #7
          to label %free_skb [label %if.then10], !srcloc !60

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr i8, ptr %13, i32 11332
  %20 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug689, ptr noundef %21, ptr noundef nonnull @.str.6, i32 noundef %and, i32 noundef %call2) #7
  br label %free_skb

if.end14:                                         ; preds = %if.end
  %22 = ptrtoint ptr %mapped_obj to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mapped_obj, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %23, label %do.body33 [
    i32 0, label %if.then16
    i32 1, label %if.then23
    i32 2, label %if.then27
  ]

if.then16:                                        ; preds = %if.end14
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %4, align 4
  %27 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %11, align 8
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 2304
  %shr.i = lshr i32 %2, 8
  %and.i = and i32 %shr.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.then16.mlx5e_restore_skb_chain.exit_crit_edge, label %if.then.i

if.then16.mlx5e_restore_skb_chain.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_restore_skb_chain.exit

if.then.i:                                        ; preds = %if.then16
  %call.i.i = call ptr @skb_ext_add(ptr noundef %skb, i32 noundef 2) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 661, i32 noundef 9, ptr noundef null) #7
  br label %land.lhs.true

if.end20.i:                                       ; preds = %if.then.i
  %29 = getelementptr inbounds i8, ptr %call.i.i, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %29, align 4
  %31 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %call.i.i, align 4
  %mdev.i = getelementptr i8, ptr %28, i32 11328
  %32 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev.i, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %33, i32 0, i32 17, i32 28
  %34 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %eswitch.i, align 4
  %call24.i = call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %35, i8 noundef zeroext 0) #7
  %ct_priv.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call24.i, i32 0, i32 6, i32 9
  %36 = ptrtoint ptr %ct_priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ct_priv.i, align 4
  %conv.i = trunc i32 %2 to i8
  %call26.i = call zeroext i1 @mlx5e_tc_ct_restore_flow(ptr noundef %37, ptr noundef %skb, i8 noundef zeroext %conv.i) #7
  br i1 %call26.i, label %if.end20.i.mlx5e_restore_skb_chain.exit_crit_edge, label %if.end20.i.land.lhs.true_crit_edge

if.end20.i.land.lhs.true_crit_edge:               ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end20.i.mlx5e_restore_skb_chain.exit_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_restore_skb_chain.exit

mlx5e_restore_skb_chain.exit:                     ; preds = %if.end20.i.mlx5e_restore_skb_chain.exit_crit_edge, %if.then16.mlx5e_restore_skb_chain.exit_crit_edge
  %call34.i = call fastcc zeroext i1 @mlx5e_restore_tunnel(ptr noundef %add.ptr.i.i, ptr noundef %skb, ptr noundef nonnull %tc_priv, i32 noundef %and.i) #7
  br i1 %call34.i, label %mlx5e_restore_skb_chain.exit.forward_crit_edge, label %mlx5e_restore_skb_chain.exit.land.lhs.true_crit_edge

mlx5e_restore_skb_chain.exit.land.lhs.true_crit_edge: ; preds = %mlx5e_restore_skb_chain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

mlx5e_restore_skb_chain.exit.forward_crit_edge:   ; preds = %mlx5e_restore_skb_chain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %forward

land.lhs.true:                                    ; preds = %mlx5e_restore_skb_chain.exit.land.lhs.true_crit_edge, %if.end20.i.land.lhs.true_crit_edge, %do.end.i
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i = icmp slt i32 %39, 0
  br i1 %tobool.i, label %land.lhs.true.forward_crit_edge, label %land.lhs.true.free_skb_crit_edge

land.lhs.true.free_skb_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

land.lhs.true.forward_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %forward

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mlx5e_restore_skb_sample(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull %mapped_obj, ptr noundef nonnull %tc_priv)
  br label %free_skb

if.then27:                                        ; preds = %if.end14
  %shr.i90 = lshr i32 %2, 8
  %and.i91 = and i32 %shr.i90, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  br i1 %tobool.not.i92, label %if.end.i, label %mlx5e_restore_skb_int_port.exit

if.end.i:                                         ; preds = %if.then27
  %40 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev, align 64
  %eswitch.i95 = getelementptr inbounds %struct.mlx5_core_dev, ptr %41, i32 0, i32 17, i32 28
  %42 = ptrtoint ptr %eswitch.i95 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eswitch.i95, align 4
  %call2.i = call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %43, i8 noundef zeroext 0) #7
  %int_port_priv.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call2.i, i32 0, i32 6, i32 13
  %44 = ptrtoint ptr %int_port_priv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %int_port_priv.i, align 4
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %4, align 4
  %call4.i = call zeroext i1 @mlx5e_tc_int_port_dev_fwd(ptr noundef %45, ptr noundef %skb, i32 noundef %47, ptr noundef nonnull %forward_tx) #7
  br i1 %call4.i, label %mlx5e_restore_skb_int_port.exit.thread, label %if.end.i.free_skb_crit_edge

if.end.i.free_skb_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

mlx5e_restore_skb_int_port.exit.thread:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %11, align 8
  %50 = ptrtoint ptr %tc_priv to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %tc_priv, align 4
  br label %forward

mlx5e_restore_skb_int_port.exit:                  ; preds = %if.then27
  %call.i = call fastcc zeroext i1 @mlx5e_restore_tunnel(ptr noundef %add.ptr.i, ptr noundef %skb, ptr noundef nonnull %tc_priv, i32 noundef %and.i91) #7
  br i1 %call.i, label %mlx5e_restore_skb_int_port.exit.forward_crit_edge, label %mlx5e_restore_skb_int_port.exit.free_skb_crit_edge

mlx5e_restore_skb_int_port.exit.free_skb_crit_edge: ; preds = %mlx5e_restore_skb_int_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_skb

mlx5e_restore_skb_int_port.exit.forward_crit_edge: ; preds = %mlx5e_restore_skb_int_port.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %forward

do.body33:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_rep_tc_receive, %if.then45)) #7
          to label %free_skb [label %if.then45], !srcloc !60

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %netdev46 = getelementptr i8, ptr %13, i32 11332
  %51 = ptrtoint ptr %netdev46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %netdev46, align 4
  %53 = ptrtoint ptr %mapped_obj to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mapped_obj, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug690, ptr noundef %52, ptr noundef nonnull @.str.7, i32 noundef %54) #7
  br label %free_skb

forward:                                          ; preds = %mlx5e_restore_skb_int_port.exit.forward_crit_edge, %mlx5e_restore_skb_int_port.exit.thread, %land.lhs.true.forward_crit_edge, %mlx5e_restore_skb_chain.exit.forward_crit_edge
  %55 = ptrtoint ptr %forward_tx to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr = load i8, ptr %forward_tx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool56.not = icmp eq i8 %.pr, 0
  br i1 %tobool56.not, label %forward.if.else59_crit_edge, label %if.then57

forward.if.else59_crit_edge:                      ; preds = %forward
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else59

if.then57:                                        ; preds = %forward
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 @dev_queue_xmit(ptr noundef %skb) #7
  br label %if.end61

if.else59:                                        ; preds = %forward.if.else59_crit_edge, %entry.if.else59_crit_edge
  %napi = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 2
  %56 = ptrtoint ptr %napi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %napi, align 4
  %call60 = call i32 @napi_gro_receive(ptr noundef %57, ptr noundef %skb) #7
  br label %if.end61

if.end61:                                         ; preds = %if.else59, %if.then57
  %58 = ptrtoint ptr %tc_priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tc_priv, align 4
  %tobool.not.i97 = icmp eq ptr %59, null
  br i1 %tobool.not.i97, label %if.end61.cleanup_crit_edge, label %do.body1.i.i

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end61
  %60 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 118
  %61 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %67
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %69, %63
  %70 = inttoptr i32 %add.i.i to ptr
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %add13.i.i = add i32 %72, -1
  store i32 %add13.i.i, ptr %70, align 4
  %73 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !62
  %and.i.i.i.i = and i32 %73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !63

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %60) #7, !srcloc !64
  br label %cleanup

free_skb:                                         ; preds = %if.then45, %do.body33, %mlx5e_restore_skb_int_port.exit.free_skb_crit_edge, %if.end.i.free_skb_crit_edge, %if.then23, %land.lhs.true.free_skb_crit_edge, %if.then10, %do.body5
  call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %free_skb, %dev_put.exit.i, %if.end61.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %forward_tx) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mapped_obj) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc_priv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_restore_skb_sample(ptr nocapture noundef readonly %priv, ptr noundef %skb, ptr noundef %mapped_obj, ptr nocapture noundef %tc_priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tunnel_id = getelementptr inbounds %struct.mlx5_mapped_obj, ptr %mapped_obj, i32 0, i32 1, i32 0, i32 3
  %0 = ptrtoint ptr %tunnel_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tunnel_id, align 4
  %call = tail call fastcc zeroext i1 @mlx5e_restore_tunnel(ptr noundef %priv, ptr noundef %skb, ptr noundef %tc_priv, i32 noundef %1)
  br i1 %call, label %if.end7, label %do.body1

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_restore_skb_sample.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_restore_skb_sample, %if.then5)) #7
          to label %return [label %if.then5], !srcloc !60

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_restore_skb_sample.__UNIQUE_ID_ddebug688, ptr noundef %3, ptr noundef nonnull @.str.16) #7
  br label %return

if.end7:                                          ; preds = %entry
  tail call void @mlx5e_tc_sample_skb(ptr noundef %skb, ptr noundef %mapped_obj) #7
  %4 = ptrtoint ptr %tc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc_priv, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end7.return_crit_edge, label %do.body1.i.i

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body1.i.i:                                     ; preds = %if.end7
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i.i = add i32 %18, -1
  store i32 %add13.i.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !62
  %and.i.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !63

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #7, !srcloc !64
  br label %return

return:                                           ; preds = %dev_put.exit.i, %if.end7.return_crit_edge, %if.then5, %do.body1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_configure_flower(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_delete_flower(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_stats_flower(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_configure_matchall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_delete_matchall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_stats_matchall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_chains_prios_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_chains_get_prio_range(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_chains_get_nf_ft_chain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_rep_indr_setup_block(ptr noundef %netdev, ptr noundef %sch, ptr noundef %rpriv, ptr noundef %f, ptr noundef %setup_cb, ptr noundef %data, ptr noundef %cleanup) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 2
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %mdev = getelementptr i8, ptr %1, i32 11328
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %6 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i = icmp ne i64 %and.i, 0
  %call4 = tail call zeroext i1 @mlx5e_tc_tun_device_to_offload(ptr noundef %add.ptr.i, ptr noundef %netdev) #7
  br i1 %call4, label %entry.if.end19_crit_edge, label %land.lhs.true

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true:                                    ; preds = %entry
  %8 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags.i, align 16
  %and.i125 = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i125)
  %tobool.i126.not = icmp eq i64 %and.i125, 0
  br i1 %tobool.i126.not, label %land.lhs.true9, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %land.lhs.true
  %call7 = tail call ptr @vlan_dev_real_dev(ptr noundef %netdev) #7
  %10 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev1, align 8
  %cmp = icmp eq ptr %call7, %11
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.i
  br i1 %brmerge, label %land.lhs.true6.if.end19_crit_edge, label %land.lhs.true6.if.then_crit_edge

land.lhs.true6.if.then_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true6.if.end19_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

land.lhs.true9:                                   ; preds = %land.lhs.true
  br i1 %tobool.i, label %if.end19.thread, label %land.lhs.true9.if.then_crit_edge

land.lhs.true9.if.then_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true9.if.then_crit_edge, %land.lhs.true6.if.then_crit_edge
  %12 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags.i, align 16
  %and.i128 = and i64 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i128)
  %tobool.i129.not = icmp eq i64 %and.i128, 0
  br i1 %tobool.i129.not, label %if.then.cleanup67_crit_edge, label %land.lhs.true11

if.then.cleanup67_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

land.lhs.true11:                                  ; preds = %if.then
  %lowerdev.i = getelementptr i8, ptr %netdev, i32 2328
  %14 = ptrtoint ptr %lowerdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lowerdev.i, align 8
  %16 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev1, align 8
  %cmp14 = icmp eq ptr %15, %17
  br i1 %cmp14, label %if.end, label %land.lhs.true11.cleanup67_crit_edge

land.lhs.true11.cleanup67_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end:                                           ; preds = %land.lhs.true11
  %mode.i = getelementptr i8, ptr %netdev, i32 2384
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp.i = icmp eq i32 %19, 8
  br i1 %cmp.i, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.8) #10
  br label %cleanup67

if.end19:                                         ; preds = %if.end.if.end19_crit_edge, %land.lhs.true6.if.end19_crit_edge, %entry.if.end19_crit_edge
  %binder_type = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 1
  %20 = ptrtoint ptr %binder_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %binder_type, align 4
  %.off = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp27 = icmp ne i32 %21, 2
  %brmerge123 = select i1 %cmp27, i1 true, i1 %tobool.i
  %or.cond = select i1 %switch, i1 %brmerge123, i1 false
  br i1 %or.cond, label %if.end31, label %if.end19.cleanup67_crit_edge

if.end19.cleanup67_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end19.thread:                                  ; preds = %land.lhs.true9
  %binder_type168 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 1
  %22 = ptrtoint ptr %binder_type168 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %binder_type168, align 4
  %.off169 = add i32 %23, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off169)
  %switch170 = icmp ult i32 %.off169, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp27171 = icmp ne i32 %23, 2
  %brmerge123172 = select i1 %cmp27171, i1 true, i1 %tobool.i
  %or.cond173 = select i1 %switch170, i1 %brmerge123172, i1 false
  br i1 %or.cond173, label %if.end19.thread.land.lhs.true33_crit_edge, label %if.end19.thread.cleanup67_crit_edge

if.end19.thread.cleanup67_crit_edge:              ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end19.thread.land.lhs.true33_crit_edge:        ; preds = %if.end19.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true33

if.end31:                                         ; preds = %if.end19
  br i1 %tobool.i, label %if.end31.land.lhs.true33_crit_edge, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end31.land.lhs.true33_crit_edge:               ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end31.land.lhs.true33_crit_edge, %if.end19.thread.land.lhs.true33_crit_edge
  %binder_type174177 = phi ptr [ %binder_type, %if.end31.land.lhs.true33_crit_edge ], [ %binder_type168, %if.end19.thread.land.lhs.true33_crit_edge ]
  %call34 = tail call zeroext i1 @mlx5e_tc_int_port_supported(ptr noundef %5) #7
  br i1 %call34, label %land.lhs.true33.if.end36_crit_edge, label %land.lhs.true33.cleanup67_crit_edge

land.lhs.true33.cleanup67_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

land.lhs.true33.if.end36_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true33.if.end36_crit_edge, %if.end31.if.end36_crit_edge
  %binder_type174176 = phi ptr [ %binder_type174177, %land.lhs.true33.if.end36_crit_edge ], [ %binder_type, %if.end31.if.end36_crit_edge ]
  %unlocked_driver_cb = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 3
  %24 = ptrtoint ptr %unlocked_driver_cb to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %unlocked_driver_cb, align 1
  %driver_block_list = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 7
  %25 = ptrtoint ptr %driver_block_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx5e_block_cb_list, ptr %driver_block_list, align 4
  %26 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %f, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %27, label %if.end36.cleanup67_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb56
  ]

if.end36.cleanup67_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

sw.bb:                                            ; preds = %if.end36
  %29 = ptrtoint ptr %binder_type174176 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %binder_type174176, align 4
  %tc_indr_block_priv_list.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %tc_indr_block_priv_list.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn17.i = load ptr, ptr %tc_indr_block_priv_list.i, align 4
  %cmp.not19.i = icmp eq ptr %.pn17.i, %tc_indr_block_priv_list.i
  br i1 %cmp.not19.i, label %sw.bb.if.end41_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.if.end41_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %.pn20.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn17.i, %sw.bb.for.body.i_crit_edge ]
  %cb_priv.021.i = getelementptr i8, ptr %.pn20.i, i32 -12
  %32 = ptrtoint ptr %cb_priv.021.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb_priv.021.i, align 4
  %cmp4.i = icmp eq ptr %33, %netdev
  br i1 %cmp4.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %binder_type5.i = getelementptr i8, ptr %.pn20.i, i32 -4
  %34 = ptrtoint ptr %binder_type5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %binder_type5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %30)
  %cmp6.i = icmp eq i32 %35, %30
  br i1 %cmp6.i, label %mlx5e_rep_indr_block_priv_lookup.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %36 = ptrtoint ptr %.pn20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn20.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tc_indr_block_priv_list.i
  br i1 %cmp.not.i, label %for.inc.i.if.end41_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end41_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

mlx5e_rep_indr_block_priv_lookup.exit:            ; preds = %land.lhs.true.i
  %cb_priv.021.i.le = getelementptr i8, ptr %.pn20.i, i32 -12
  %tobool39.not = icmp eq ptr %cb_priv.021.i.le, null
  br i1 %tobool39.not, label %mlx5e_rep_indr_block_priv_lookup.exit.if.end41_crit_edge, label %mlx5e_rep_indr_block_priv_lookup.exit.cleanup67_crit_edge

mlx5e_rep_indr_block_priv_lookup.exit.cleanup67_crit_edge: ; preds = %mlx5e_rep_indr_block_priv_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

mlx5e_rep_indr_block_priv_lookup.exit.if.end41_crit_edge: ; preds = %mlx5e_rep_indr_block_priv_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %mlx5e_rep_indr_block_priv_lookup.exit.if.end41_crit_edge, %for.inc.i.if.end41_crit_edge, %sw.bb.if.end41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3264, i32 noundef 20) #11
  %tobool43.not = icmp eq ptr %call7.i, null
  br i1 %tobool43.not, label %if.end41.cleanup67_crit_edge, label %if.end45

if.end41.cleanup67_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end45:                                         ; preds = %if.end41
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %netdev, ptr %call7.i, align 8
  %rpriv47 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %call7.i, i32 0, i32 1
  %39 = ptrtoint ptr %rpriv47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %rpriv, ptr %rpriv47, align 4
  %40 = ptrtoint ptr %binder_type174176 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %binder_type174176, align 4
  %binder_type49 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %call7.i, i32 0, i32 2
  %42 = ptrtoint ptr %binder_type49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %binder_type49, align 8
  %list = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %call7.i, i32 0, i32 3
  %43 = ptrtoint ptr %tc_indr_block_priv_list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tc_indr_block_priv_list.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %tc_indr_block_priv_list.i, ptr noundef %44) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end45.list_add.exit_crit_edge

if.end45.list_add.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list, ptr %prev1.i.i, align 4
  %46 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %call7.i, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %tc_indr_block_priv_list.i, ptr %prev3.i.i, align 8
  %48 = ptrtoint ptr %tc_indr_block_priv_list.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list, ptr %tc_indr_block_priv_list.i, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end45.list_add.exit_crit_edge
  %call50 = tail call ptr @flow_indr_block_cb_alloc(ptr noundef %setup_cb, ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i, ptr noundef nonnull @mlx5e_rep_indr_block_unbind, ptr noundef %f, ptr noundef %netdev, ptr noundef %sch, ptr noundef %data, ptr noundef %rpriv, ptr noundef %cleanup) #7
  %cmp.i130 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then52, label %if.end55

if.then52:                                        ; preds = %list_add.exit
  %call.i.i131 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i131, label %if.end.i.i132, label %if.then52.list_del.exit_crit_edge

if.then52.list_del.exit_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i132:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %call7.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 8
  %51 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i132, %if.then52.list_del.exit_crit_edge
  %55 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %call7.i, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  %57 = ptrtoint ptr %call50 to i32
  br label %cleanup67

if.end55:                                         ; preds = %list_add.exit
  %list.i = getelementptr inbounds %struct.flow_block_cb, ptr %call50, i32 0, i32 1
  %cb_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6
  %prev.i.i133 = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 6, i32 1
  %58 = ptrtoint ptr %prev.i.i133 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i133, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %59, ptr noundef %cb_list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end55.flow_block_cb_add.exit_crit_edge

if.end55.flow_block_cb_add.exit_crit_edge:        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %flow_block_cb_add.exit

if.end.i.i.i:                                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %prev.i.i133 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %list.i, ptr %prev.i.i133, align 4
  %61 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %cb_list.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call50, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %list.i, ptr %59, align 4
  br label %flow_block_cb_add.exit

flow_block_cb_add.exit:                           ; preds = %if.end.i.i.i, %if.end55.flow_block_cb_add.exit_crit_edge
  %64 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mlx5e_block_cb_list, i32 0, i32 1), align 4
  %call.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %call50, ptr noundef %64, ptr noundef nonnull @mlx5e_block_cb_list) #7
  br i1 %call.i.i134, label %if.end.i.i136, label %flow_block_cb_add.exit.cleanup67_crit_edge

flow_block_cb_add.exit.cleanup67_crit_edge:       ; preds = %flow_block_cb_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end.i.i136:                                    ; preds = %flow_block_cb_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call50, ptr getelementptr inbounds (%struct.list_head, ptr @mlx5e_block_cb_list, i32 0, i32 1), align 4
  %65 = ptrtoint ptr %call50 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mlx5e_block_cb_list, ptr %call50, align 4
  %prev3.i.i135 = getelementptr inbounds %struct.list_head, ptr %call50, i32 0, i32 1
  %66 = ptrtoint ptr %prev3.i.i135 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %prev3.i.i135, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call50, ptr %64, align 4
  br label %cleanup67

sw.bb56:                                          ; preds = %if.end36
  %68 = ptrtoint ptr %binder_type174176 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %binder_type174176, align 4
  %tc_indr_block_priv_list.i137 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %rpriv, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %tc_indr_block_priv_list.i137 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn17.i138 = load ptr, ptr %tc_indr_block_priv_list.i137, align 4
  %cmp.not19.i139 = icmp eq ptr %.pn17.i138, %tc_indr_block_priv_list.i137
  br i1 %cmp.not19.i139, label %sw.bb56.cleanup67_crit_edge, label %sw.bb56.for.body.i143_crit_edge

sw.bb56.for.body.i143_crit_edge:                  ; preds = %sw.bb56
  br label %for.body.i143

sw.bb56.cleanup67_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

for.body.i143:                                    ; preds = %for.inc.i149.for.body.i143_crit_edge, %sw.bb56.for.body.i143_crit_edge
  %.pn20.i140 = phi ptr [ %.pn.i147, %for.inc.i149.for.body.i143_crit_edge ], [ %.pn17.i138, %sw.bb56.for.body.i143_crit_edge ]
  %cb_priv.021.i141 = getelementptr i8, ptr %.pn20.i140, i32 -12
  %71 = ptrtoint ptr %cb_priv.021.i141 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cb_priv.021.i141, align 4
  %cmp4.i142 = icmp eq ptr %72, %netdev
  br i1 %cmp4.i142, label %land.lhs.true.i146, label %for.body.i143.for.inc.i149_crit_edge

for.body.i143.for.inc.i149_crit_edge:             ; preds = %for.body.i143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i149

land.lhs.true.i146:                               ; preds = %for.body.i143
  %binder_type5.i144 = getelementptr i8, ptr %.pn20.i140, i32 -4
  %73 = ptrtoint ptr %binder_type5.i144 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %binder_type5.i144, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %69)
  %cmp6.i145 = icmp eq i32 %74, %69
  br i1 %cmp6.i145, label %mlx5e_rep_indr_block_priv_lookup.exit153, label %land.lhs.true.i146.for.inc.i149_crit_edge

land.lhs.true.i146.for.inc.i149_crit_edge:        ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i149

for.inc.i149:                                     ; preds = %land.lhs.true.i146.for.inc.i149_crit_edge, %for.body.i143.for.inc.i149_crit_edge
  %75 = ptrtoint ptr %.pn20.i140 to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn.i147 = load ptr, ptr %.pn20.i140, align 4
  %cmp.not.i148 = icmp eq ptr %.pn.i147, %tc_indr_block_priv_list.i137
  br i1 %cmp.not.i148, label %for.inc.i149.cleanup67_crit_edge, label %for.inc.i149.for.body.i143_crit_edge

for.inc.i149.for.body.i143_crit_edge:             ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i143

for.inc.i149.cleanup67_crit_edge:                 ; preds = %for.inc.i149
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

mlx5e_rep_indr_block_priv_lookup.exit153:         ; preds = %land.lhs.true.i146
  %cb_priv.021.i141.le = getelementptr i8, ptr %.pn20.i140, i32 -12
  %tobool59.not = icmp eq ptr %cb_priv.021.i141.le, null
  br i1 %tobool59.not, label %mlx5e_rep_indr_block_priv_lookup.exit153.cleanup67_crit_edge, label %if.end61

mlx5e_rep_indr_block_priv_lookup.exit153.cleanup67_crit_edge: ; preds = %mlx5e_rep_indr_block_priv_lookup.exit153
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end61:                                         ; preds = %mlx5e_rep_indr_block_priv_lookup.exit153
  %block = getelementptr inbounds %struct.flow_block_offload, ptr %f, i32 0, i32 5
  %76 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %block, align 4
  %call62 = tail call ptr @flow_block_cb_lookup(ptr noundef %77, ptr noundef %setup_cb, ptr noundef nonnull %cb_priv.021.i141.le) #7
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end61.cleanup67_crit_edge, label %if.end65

if.end61.cleanup67_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup67

if.end65:                                         ; preds = %if.end61
  tail call fastcc void @flow_indr_block_cb_remove(ptr noundef nonnull %call62, ptr noundef %f)
  %call.i.i154 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call62) #7
  br i1 %call.i.i154, label %if.end.i.i157, label %if.end65.list_del.exit159_crit_edge

if.end65.list_del.exit159_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit159

if.end.i.i157:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i155 = getelementptr inbounds %struct.list_head, ptr %call62, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i155 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i155, align 4
  %80 = ptrtoint ptr %call62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call62, align 4
  %prev1.i.i.i156 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i156 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i156, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %list_del.exit159

list_del.exit159:                                 ; preds = %if.end.i.i157, %if.end65.list_del.exit159_crit_edge
  %84 = ptrtoint ptr %call62 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %call62, align 4
  %prev.i158 = getelementptr inbounds %struct.list_head, ptr %call62, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i158 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i158, align 4
  br label %cleanup67

cleanup67:                                        ; preds = %list_del.exit159, %if.end61.cleanup67_crit_edge, %mlx5e_rep_indr_block_priv_lookup.exit153.cleanup67_crit_edge, %for.inc.i149.cleanup67_crit_edge, %sw.bb56.cleanup67_crit_edge, %if.end.i.i136, %flow_block_cb_add.exit.cleanup67_crit_edge, %list_del.exit, %if.end41.cleanup67_crit_edge, %mlx5e_rep_indr_block_priv_lookup.exit.cleanup67_crit_edge, %if.end36.cleanup67_crit_edge, %land.lhs.true33.cleanup67_crit_edge, %if.end19.thread.cleanup67_crit_edge, %if.end19.cleanup67_crit_edge, %if.then17, %land.lhs.true11.cleanup67_crit_edge, %if.then.cleanup67_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit159 ], [ %57, %list_del.exit ], [ -95, %if.then17 ], [ -95, %land.lhs.true11.cleanup67_crit_edge ], [ -95, %if.then.cleanup67_crit_edge ], [ -95, %if.end19.cleanup67_crit_edge ], [ -95, %land.lhs.true33.cleanup67_crit_edge ], [ -17, %mlx5e_rep_indr_block_priv_lookup.exit.cleanup67_crit_edge ], [ -12, %if.end41.cleanup67_crit_edge ], [ -2, %mlx5e_rep_indr_block_priv_lookup.exit153.cleanup67_crit_edge ], [ -2, %if.end61.cleanup67_crit_edge ], [ -95, %if.end36.cleanup67_crit_edge ], [ 0, %flow_block_cb_add.exit.cleanup67_crit_edge ], [ 0, %if.end.i.i136 ], [ -2, %sw.bb56.cleanup67_crit_edge ], [ -95, %if.end19.thread.cleanup67_crit_edge ], [ -2, %for.inc.i149.cleanup67_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_indr_setup_tc_cb(i32 noundef %type, ptr noundef %type_data, ptr nocapture noundef readonly %indr_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond2 = icmp eq i32 %type, 2
  br i1 %cond2, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %binder_type = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %indr_priv, i32 0, i32 2
  %0 = ptrtoint ptr %binder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %binder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %or = select i1 %cmp, i32 10, i32 9
  %2 = ptrtoint ptr %indr_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indr_priv, align 4
  %rpriv.i = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %indr_priv, i32 0, i32 1
  %4 = ptrtoint ptr %rpriv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rpriv.i, align 4
  %netdev1.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev1.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2304
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not.i = icmp eq i32 %10, 0
  br i1 %tobool.i.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %command.i, align 8
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %12, label %if.end.i.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb8.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = tail call i32 @mlx5e_configure_flower(ptr noundef %3, ptr noundef %add.ptr.i.i, ptr noundef %type_data, i32 noundef %or) #7
  br label %cleanup

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 @mlx5e_delete_flower(ptr noundef %3, ptr noundef %add.ptr.i.i, ptr noundef %type_data, i32 noundef %or) #7
  br label %cleanup

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @mlx5e_stats_flower(ptr noundef %3, ptr noundef %add.ptr.i.i, ptr noundef %type_data, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8.i, %sw.bb6.i, %sw.bb.i, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call9.i, %sw.bb8.i ], [ %call7.i, %sw.bb6.i ], [ %call5.i, %sw.bb.i ], [ -95, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rep_indr_setup_ft_cb(i32 noundef %type, ptr nocapture noundef %type_data, ptr nocapture noundef readonly %indr_priv) #0 align 64 {
entry:
  %tmp = alloca %struct.flow_cls_offload, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tmp) #7
  %rpriv = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, ptr %indr_priv, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cond = icmp eq i32 %type, 2
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %rpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rpriv, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 8
  %mdev = getelementptr i8, ptr %3, i32 11328
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %5, i32 0, i32 17, i32 28
  %6 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eswitch, align 4
  %8 = call ptr @memcpy(ptr %tmp, ptr %type_data, i32 80)
  %esw_chains_priv = getelementptr inbounds %struct.mlx5_eswitch, ptr %7, i32 0, i32 2, i32 0, i32 0, i32 12
  %9 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %esw_chains_priv, align 4
  %call2 = tail call zeroext i1 @mlx5_chains_prios_supported(ptr noundef %10) #7
  br i1 %call2, label %lor.lhs.false, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %prio = getelementptr inbounds %struct.flow_cls_common_offload, ptr %tmp, i32 0, i32 2
  %11 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prio, align 8
  %13 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %esw_chains_priv, align 4
  %call5 = tail call i32 @mlx5_chains_get_prio_range(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call5)
  %cmp.not = icmp ult i32 %12, %call5
  br i1 %cmp.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %17 = ptrtoint ptr %esw_chains_priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %esw_chains_priv, align 4
  %call10 = tail call i32 @mlx5_chains_get_nf_ft_chain(ptr noundef %18) #7
  %19 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call10, ptr %tmp, align 8
  %20 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio, align 8
  %inc = add i32 %21, 1
  store i32 %inc, ptr %prio, align 8
  %22 = ptrtoint ptr %indr_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %indr_priv, align 4
  %24 = ptrtoint ptr %rpriv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rpriv, align 4
  %netdev1.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev1.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 2304
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i.i, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %if.end.mlx5e_rep_indr_offload.exit_crit_edge, label %if.end.i

if.end.mlx5e_rep_indr_offload.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_rep_indr_offload.exit

if.end.i:                                         ; preds = %if.end
  %command.i = getelementptr inbounds %struct.flow_cls_offload, ptr %tmp, i32 0, i32 1
  %31 = ptrtoint ptr %command.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %command.i, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %32, label %if.end.i.mlx5e_rep_indr_offload.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
    i32 2, label %sw.bb8.i
  ]

if.end.i.mlx5e_rep_indr_offload.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlx5e_rep_indr_offload.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call i32 @mlx5e_configure_flower(ptr noundef %23, ptr noundef %add.ptr.i.i, ptr noundef nonnull %tmp, i32 noundef 26) #7
  br label %mlx5e_rep_indr_offload.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = call i32 @mlx5e_delete_flower(ptr noundef %23, ptr noundef %add.ptr.i.i, ptr noundef nonnull %tmp, i32 noundef 26) #7
  br label %mlx5e_rep_indr_offload.exit

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = call i32 @mlx5e_stats_flower(ptr noundef %23, ptr noundef %add.ptr.i.i, ptr noundef nonnull %tmp, i32 noundef 26) #7
  br label %mlx5e_rep_indr_offload.exit

mlx5e_rep_indr_offload.exit:                      ; preds = %sw.bb8.i, %sw.bb6.i, %sw.bb.i, %if.end.i.mlx5e_rep_indr_offload.exit_crit_edge, %if.end.mlx5e_rep_indr_offload.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %if.end.mlx5e_rep_indr_offload.exit_crit_edge ], [ %call9.i, %sw.bb8.i ], [ %call7.i, %sw.bb6.i ], [ %call5.i, %sw.bb.i ], [ -95, %if.end.i.mlx5e_rep_indr_offload.exit_crit_edge ]
  %stats = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4
  %stats17 = getelementptr inbounds %struct.flow_cls_offload, ptr %tmp, i32 0, i32 4
  %34 = call ptr @memcpy(ptr %stats, ptr %stats17, i32 40)
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_rep_indr_offload.exit, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %mlx5e_rep_indr_offload.exit ], [ -95, %lor.lhs.false6.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_tun_device_to_offload(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_int_port_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_indr_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flow_indr_block_cb_remove(ptr noundef %block_cb, ptr noundef %offload) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %indr = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %indr) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %indr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %indr, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %indr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %indr, align 4
  %prev.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %list1 = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1
  %cb_list = getelementptr inbounds %struct.flow_block_offload, ptr %offload, i32 0, i32 6
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list1) #7
  br i1 %call.i.i3, label %if.end.i.i6, label %list_del.exit.__list_del_entry.exit.i_crit_edge

list_del.exit.__list_del_entry.exit.i_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i6:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i4 = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i4, align 4
  %10 = ptrtoint ptr %list1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %list1, align 4
  %prev1.i.i.i5 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i5, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i6, %list_del.exit.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %cb_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list1, ptr noundef %cb_list, ptr noundef %15) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list1, ptr %prev1.i.i2.i, align 4
  %17 = ptrtoint ptr %list1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %list1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cb_list, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %cb_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list1, ptr %cb_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_uplink_priv(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_ct_restore_flow(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @mlx5e_restore_tunnel(ptr nocapture noundef readonly %priv, ptr nocapture noundef %skb, ptr nocapture noundef writeonly %tc_priv, i32 noundef %tunnel_id) unnamed_addr #0 align 64 {
entry:
  %enc_opts = alloca %struct.tunnel_match_enc_opts, align 2
  %key = alloca %struct.tunnel_match_key, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  call void @llvm.lifetime.start.p0(i64 516, ptr nonnull %enc_opts) #7
  %4 = call ptr @memset(ptr %enc_opts, i32 0, i32 516)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %key) #7
  %5 = call ptr @memset(ptr %key, i32 255, i32 56)
  %and = and i32 %tunnel_id, 2047
  %shr = lshr i32 %tunnel_id, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %tunnel_id)
  %tobool.not = icmp ult i32 %tunnel_id, 2048
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %3, i8 noundef zeroext 0) #7
  %tunnel_mapping = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call, i32 0, i32 6, i32 6
  %6 = ptrtoint ptr %tunnel_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tunnel_mapping, align 4
  %call3 = call i32 @mapping_find(ptr noundef %7, i32 noundef %shr, ptr noundef nonnull %key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end58, label %land.end

land.end:                                         ; preds = %if.end
  %.b234 = load i1, ptr @mlx5e_restore_tunnel.__already_done, align 1
  br i1 %.b234, label %land.end.if.end33_crit_edge, label %if.then11, !prof !59

land.end.if.end33_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @mlx5e_restore_tunnel.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 578, i32 noundef 9, ptr noundef null) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then11, %land.end.if.end33_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_restore_tunnel, %if.then52)) #7
          to label %cleanup [label %if.then52], !srcloc !60

if.then52:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug683, ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef %shr, i32 noundef %call3) #7
  br label %cleanup

if.end58:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.end58.if.end85_crit_edge, label %if.then60

if.end58.if.end85_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then60:                                        ; preds = %if.end58
  %tunnel_enc_opts_mapping = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call, i32 0, i32 6, i32 7
  %10 = ptrtoint ptr %tunnel_enc_opts_mapping to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tunnel_enc_opts_mapping, align 4
  %call61 = call i32 @mapping_find(ptr noundef %11, i32 noundef %and, ptr noundef nonnull %enc_opts) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then60.if.end85_crit_edge, label %do.body65

if.then60.if.end85_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.body65:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_restore_tunnel, %if.then77)) #7
          to label %cleanup [label %if.then77], !srcloc !60

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %netdev78 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %12 = ptrtoint ptr %netdev78 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev78, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug684, ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %and, i32 noundef %call61) #7
  br label %cleanup

if.end85:                                         ; preds = %if.then60.if.end85_crit_edge, %if.end58.if.end85_crit_edge
  %addr_type = getelementptr inbounds %struct.flow_dissector_key_control, ptr %key, i32 0, i32 1
  %14 = ptrtoint ptr %addr_type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr_type, align 2
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %15, label %do.body117 [
    i16 2, label %if.then87
    i16 3, label %if.then99
  ]

if.then87:                                        ; preds = %if.end85
  %17 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %dst = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dst, align 4
  %enc_ip = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 3
  %22 = ptrtoint ptr %enc_ip to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enc_ip, align 4
  %ttl = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ttl, align 1
  %enc_tp = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 2
  %dst89 = getelementptr inbounds %struct.anon.213, ptr %enc_tp, i32 0, i32 1
  %26 = ptrtoint ptr %dst89 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dst89, align 2
  %enc_key_id = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 1
  %28 = ptrtoint ptr %enc_key_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enc_key_id, align 4
  %len = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %enc_opts, i32 0, i32 1
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %len, align 1
  %call.i.i = call ptr @metadata_dst_alloc(i8 noundef zeroext %31, i32 noundef 0, i32 noundef 2592) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then87.do.body144_crit_edge, label %if.end.i

if.then87.do.body144_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body144

if.end.i:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i32 %29 to i64
  %options_len.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 2
  %32 = ptrtoint ptr %options_len.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %options_len.i.i, align 8
  %mode.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %mode.i.i, align 1
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %u.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv.i, ptr %u.i, align 8
  %u.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %19, ptr %u.i.i, align 8
  %dst.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %36 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %21, ptr %dst.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %37 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 24)
  %tos3.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %38 = ptrtoint ptr %tos3.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %23, ptr %tos3.i.i, align 2
  %ttl4.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %39 = ptrtoint ptr %ttl4.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %25, ptr %ttl4.i.i, align 1
  %label5.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %40 = ptrtoint ptr %label5.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %label5.i.i, align 4
  %tun_flags6.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %41 = ptrtoint ptr %tun_flags6.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 4, ptr %tun_flags6.i.i, align 8
  %tp_src7.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 6
  %42 = ptrtoint ptr %tp_src7.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %tp_src7.i.i, align 8
  %tp_dst8.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 7
  %43 = ptrtoint ptr %tp_dst8.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %27, ptr %tp_dst8.i.i, align 2
  %add.ptr9.i.i = getelementptr i8, ptr %u.i, i32 52
  %44 = ptrtoint ptr %add.ptr9.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %add.ptr9.i.i, align 1
  br label %if.end163

if.then99:                                        ; preds = %if.end85
  %enc_ip102 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 3
  %45 = ptrtoint ptr %enc_ip102 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %enc_ip102, align 4
  %ttl105 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %ttl105 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ttl105, align 1
  %enc_tp106 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 2
  %dst107 = getelementptr inbounds %struct.anon.213, ptr %enc_tp106, i32 0, i32 1
  %49 = ptrtoint ptr %dst107 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dst107, align 2
  %enc_key_id108 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 1
  %51 = ptrtoint ptr %enc_key_id108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %enc_key_id108, align 4
  %len112 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %enc_opts, i32 0, i32 1
  %53 = ptrtoint ptr %len112 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %len112, align 1
  %call.i.i248 = call ptr @metadata_dst_alloc(i8 noundef zeroext %54, i32 noundef 0, i32 noundef 2592) #7
  %tobool.not.i.i249 = icmp eq ptr %call.i.i248, null
  br i1 %tobool.not.i.i249, label %if.then99.do.body144_crit_edge, label %if.end.i252

if.then99.do.body144_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body144

if.end.i252:                                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i247 = zext i32 %52 to i64
  %dst101 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 4, i32 0, i32 1
  %55 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 4
  %options_len.i.i250 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 2
  %56 = ptrtoint ptr %options_len.i.i250 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %options_len.i.i250, align 8
  %u.i251 = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2
  %mode.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 3
  %57 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %mode.i, align 1
  %tun_flags.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 4, ptr %tun_flags.i, align 8
  %59 = ptrtoint ptr %u.i251 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv.i247, ptr %u.i251, align 8
  %tp_src.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 6
  %60 = ptrtoint ptr %tp_src.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %tp_src.i, align 8
  %tp_dst4.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 7
  %61 = ptrtoint ptr %tp_dst4.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %50, ptr %tp_dst4.i, align 2
  %u6.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 1
  %62 = call ptr @memcpy(ptr %u6.i, ptr %55, i32 16)
  %dst.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %63 = call ptr @memcpy(ptr %dst.i, ptr %dst101, i32 16)
  %tos10.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %tos10.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %46, ptr %tos10.i, align 2
  %ttl12.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 4
  %65 = ptrtoint ptr %ttl12.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %48, ptr %ttl12.i, align 1
  %label14.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i248, i32 0, i32 2, i32 0, i32 0, i32 5
  %66 = ptrtoint ptr %label14.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %label14.i, align 4
  br label %if.end163

do.body117:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_restore_tunnel, %if.then129)) #7
          to label %cleanup [label %if.then129], !srcloc !60

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #9
  %netdev130 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %67 = ptrtoint ptr %netdev130 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev130, align 4
  %69 = ptrtoint ptr %addr_type to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %addr_type, align 2
  %conv133 = zext i16 %70 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug685, ptr noundef %68, ptr noundef nonnull @.str.12, i32 noundef %conv133) #7
  br label %cleanup

do.body144:                                       ; preds = %if.then99.do.body144_crit_edge, %if.then87.do.body144_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_restore_tunnel, %if.then156)) #7
          to label %cleanup [label %if.then156], !srcloc !60

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #9
  %netdev157 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %71 = ptrtoint ptr %netdev157 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %netdev157, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug686, ptr noundef %72, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end163:                                        ; preds = %if.end.i252, %if.end.i
  %tun_dst.0 = phi ptr [ %call.i.i, %if.end.i ], [ %call.i.i248, %if.end.i252 ]
  %enc_tp164 = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 2
  %73 = ptrtoint ptr %enc_tp164 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %enc_tp164, align 4
  %tp_src = getelementptr inbounds %struct.metadata_dst, ptr %tun_dst.0, i32 0, i32 2, i32 0, i32 0, i32 6
  %75 = ptrtoint ptr %tp_src to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %tp_src, align 8
  %len168 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %enc_opts, i32 0, i32 1
  %76 = ptrtoint ptr %len168 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %len168, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool169.not = icmp eq i8 %77, 0
  br i1 %tobool169.not, label %if.end163.if.end177_crit_edge, label %if.then170

if.end163.if.end177_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177

if.then170:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  %conv175 = zext i8 %77 to i32
  %dst_opt_type = getelementptr inbounds %struct.flow_dissector_key_enc_opts, ptr %enc_opts, i32 0, i32 2
  %78 = ptrtoint ptr %dst_opt_type to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %dst_opt_type, align 2
  %options_len.i = getelementptr inbounds %struct.metadata_dst, ptr %tun_dst.0, i32 0, i32 2, i32 0, i32 2
  %80 = ptrtoint ptr %options_len.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %77, ptr %options_len.i, align 8
  %add.ptr.i.i253 = getelementptr %struct.metadata_dst, ptr %tun_dst.0, i32 1
  %81 = call ptr @memcpy(ptr %add.ptr.i.i253, ptr %enc_opts, i32 %conv175)
  %tun_flags.i254 = getelementptr inbounds %struct.metadata_dst, ptr %tun_dst.0, i32 0, i32 2, i32 0, i32 0, i32 2
  %82 = ptrtoint ptr %tun_flags.i254 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %tun_flags.i254, align 8
  %or9.i = or i16 %83, %79
  store i16 %or9.i, ptr %tun_flags.i254, align 8
  br label %if.end177

if.end177:                                        ; preds = %if.then170, %if.end163.if.end177_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %84 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %85 = ptrtoint ptr %tun_dst.0 to i32
  %86 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %85, ptr %86, align 8
  %filter_ifindex = getelementptr inbounds %struct.tunnel_match_key, ptr %key, i32 0, i32 5
  %88 = ptrtoint ptr %filter_ifindex to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %filter_ifindex, align 4
  %call178 = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %89) #7
  %tobool179.not = icmp eq ptr %call178, null
  br i1 %tobool179.not, label %do.body182, label %if.end202

do.body182:                                       ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_restore_tunnel, %if.then194)) #7
          to label %cleanup [label %if.then194], !srcloc !60

if.then194:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #9
  %netdev195 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %90 = ptrtoint ptr %netdev195 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %netdev195, align 4
  %92 = ptrtoint ptr %filter_ifindex to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %filter_ifindex, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug687, ptr noundef %91, ptr noundef nonnull @.str.14, i32 noundef %93) #7
  br label %cleanup

if.end202:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %tc_priv to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call178, ptr %tc_priv, align 4
  %95 = getelementptr inbounds %struct.anon.5, ptr %skb, i32 0, i32 2
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call178, ptr %95, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end202, %if.then194, %do.body182, %if.then156, %do.body144, %if.then129, %do.body117, %if.then77, %do.body65, %if.then52, %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end202 ], [ true, %entry.cleanup_crit_edge ], [ false, %if.then52 ], [ false, %if.then77 ], [ false, %if.then129 ], [ false, %if.then156 ], [ false, %if.then194 ], [ false, %if.end33 ], [ false, %do.body65 ], [ false, %do.body117 ], [ false, %do.body144 ], [ false, %do.body182 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %key) #7
  call void @llvm.lifetime.end.p0(i64 516, ptr nonnull %enc_opts) #7
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_sample_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_int_port_dev_fwd(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !12, !13, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 99, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mlx5e_rep_tc_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 262, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mlx5e_rep_tc_enable.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 281, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 751, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug689, !11, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 769, i32 3}
!17 = !{ptr @mlx5e_rep_tc_receive.__UNIQUE_ID_ddebug690, !16, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!18 = !{ptr @mlx5e_rep_block_tc_cb_list, !19, !"mlx5e_rep_block_tc_cb_list", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 231, i32 8}
!20 = !{ptr @mlx5e_rep_block_ft_cb_list, !21, !"mlx5e_rep_block_ft_cb_list", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 232, i32 8}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 449, i32 24}
!24 = !{ptr @mlx5e_block_cb_list, !25, !"mlx5e_block_cb_list", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 420, i32 8}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 578, i32 3}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 579, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug683, !29, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 589, i32 4}
!34 = !{ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug684, !33, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 609, i32 3}
!37 = !{ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug685, !36, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 616, i32 3}
!40 = !{ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug686, !39, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 631, i32 3}
!43 = !{ptr @mlx5e_restore_tunnel.__UNIQUE_ID_ddebug687, !42, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/rep/tc.c", i32 689, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mlx5e_restore_skb_sample.__UNIQUE_ID_ddebug688, !45, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2149696091}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148855877, i64 2148855882, i64 2148855895, i64 2148855939, i64 2148855973, i64 2148855994}
!61 = !{i64 766543, i64 766604}
!62 = !{i64 769275}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 769560}
