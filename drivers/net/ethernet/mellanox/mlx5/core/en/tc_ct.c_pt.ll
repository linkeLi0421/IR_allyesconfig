; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_attr_to_reg_mapping = type { i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%struct.mlx5_tc_ct_priv = type { ptr, ptr, ptr, %struct.xarray, %struct.rhashtable, %struct.rhashtable, %struct.rhashtable, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.spinlock }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.flow_match_ct = type { ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_dissector_key_ct = type { i16, i16, i32, [4 x i32] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.208, ptr }
%union.anon.208 = type { %struct.anon.216 }
%struct.anon.216 = type { i32, i64, i64, i64, i32 }
%struct.anon.217 = type { i32, i16, ptr }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.224 }
%union.anon.224 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.225], ptr, ptr }
%struct.anon.225 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.mlx5_ct_flow = type { ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_ct_ft = type { %struct.rhash_head, i16, i32, %struct.refcount_struct, ptr, ptr, %struct.rhashtable, %struct.mlx5_tc_ct_pre, %struct.mlx5_tc_ct_pre }
%struct.rhash_head = type { ptr }
%struct.mlx5_tc_ct_pre = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mlx5e_rq = type { %union.anon.241, %struct.anon.255, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.241 = type { %struct.anon.248 }
%struct.anon.248 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.250 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.228 }
%union.anon.228 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.249, i64, i32, [28 x i8] }
%union.anon.249 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.250 = type { %struct.anon.251 }
%struct.anon.251 = type { %struct.anon.252, [0 x %struct.mlx5_mtt] }
%struct.anon.252 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.255 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.238, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.238 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.244, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.247, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.244 = type { %struct.anon.245 }
%struct.anon.245 = type { i8, i8, i16, i32 }
%union.anon.247 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.256, i32 }
%union.anon.256 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.239, i32, i32 }
%union.anon.239 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.243 }
%union.anon.243 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.266, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.266 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.267 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.267 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.268 }
%struct.anon.268 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.154, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.185, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.154 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.159] }
%struct.anon.159 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.160 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.160 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.185 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.135, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.22 }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.135 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.flow_keys = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_tags, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_keyid, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_icmp, %struct.flow_dissector_key_addrs, [4 x i8] }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_tags = type { i32 }
%struct.flow_dissector_key_vlan = type { %union.anon.202, i16 }
%union.anon.202 = type { %struct.anon.203 }
%struct.anon.203 = type { i16 }
%struct.flow_dissector_key_keyid = type { i32 }
%struct.flow_dissector_key_ports = type { %union.anon.206 }
%union.anon.206 = type { i32 }
%struct.flow_dissector_key_icmp = type { %struct.anon.260, i16 }
%struct.anon.260 = type { i8, i8 }
%struct.flow_dissector_key_addrs = type { %union.anon.261 }
%union.anon.261 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.mlx5_ct_tuple = type { i16, i16, i8, %struct.anon.269, %struct.anon.272, i16 }
%struct.anon.269 = type { %union.anon.270, %union.anon.271 }
%union.anon.270 = type { %struct.in6_addr }
%union.anon.271 = type { %struct.in6_addr }
%struct.anon.272 = type { i16, i16 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.anon.207 = type { i16, i16 }
%struct.mlx5_ct_entry = type { %struct.rhash_head, %struct.rhash_head, %struct.rhash_head, ptr, i32, i32, %struct.mlx5_ct_tuple, %struct.mlx5_ct_tuple, [2 x %struct.mlx5_ct_zone_rule], ptr, %struct.work_struct, %struct.refcount_struct, i32 }
%struct.mlx5_ct_zone_rule = type { ptr, ptr, ptr, i8 }
%struct.nf_flowtable = type { %struct.list_head, %struct.rhashtable, i32, ptr, %struct.delayed_work, i32, %struct.flow_block, %struct.rw_semaphore, %struct.possible_net_t }
%struct.flow_block = type { %struct.list_head }
%struct.possible_net_t = type { ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.flow_match_control = type { ptr, ptr }
%struct.flow_match_basic = type { ptr, ptr }
%struct.flow_match_ipv4_addrs = type { ptr, ptr }
%struct.flow_match_ipv6_addrs = type { ptr, ptr }
%struct.flow_match_ports = type { ptr, ptr }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_dissector_key_ipv4_addrs = type { i32, i32 }
%struct.anon.210 = type { i32, i32, i32, i32 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.274 }
%struct.anon.274 = type { i32, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.275 }
%union.anon.275 = type { %struct.anon.276 }
%struct.anon.276 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.277, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.277 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.163, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.184, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.163 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.184 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5_ct_counter = type { ptr, %struct.refcount_struct, i8 }
%struct.flow_match_tcp = type { ptr, ptr }
%struct.flow_match_meta = type { ptr, ptr }
%struct.anon.218 = type { i32, i32, [4 x i32], i8 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }

@mlx5_tc_ct_match_add.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mlx5_core: offload of ct matching isn't available\00", [46 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_match_add.__msg.1 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"mlx5_core: only ct_state trk, est, new and rpl are supported for offload\00", [55 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_match_add.__msg.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: matching on ct_state +rel isn't supported\00", [43 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_match_add.__msg.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: matching on ct_state +inv isn't supported\00", [43 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_match_add.__msg.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: matching on ct_state +new isn't supported\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_tc_attr_to_reg_mappings = external dso_local local_unnamed_addr global [0 x %struct.mlx5e_tc_attr_to_reg_mapping], align 4
@mlx5_tc_ct_parse_action.__msg = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mlx5_core: offload of ct action isn't available\00", [48 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_parse_action.__msg.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mlx5_core: Failed to set registers for ct clear\00", [48 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&ct_priv->ht_lock\00", [46 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2171, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s:%d:(pid %d): %s, failed to create ct table err: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlx5_tc_ct_init\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_init._entry_ptr = internal global ptr @mlx5_tc_ct_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tc ct offload init failed\00", [38 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 2180, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s:%d:(pid %d): %s, failed to create ct nat table err: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_init._entry_ptr.14 = internal global ptr @mlx5_tc_ct_init._entry.12, section ".printk_index", align 4
@mlx5_tc_ct_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ct_priv->control_lock\00", [41 x i8] zeroinitializer }, align 32
@zone_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 2, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tuples_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 48, i16 24, i16 4, i32 0, i16 16384, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tuples_nat_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 48, i16 72, i16 8, i32 0, i16 16384, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug732 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.8, ptr @.str.19, i8 1, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__mlx5_tc_ct_flow_offload_clear\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ct_debug: Failed to add create ct clear mod hdr\0A\00", [47 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug733 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.8, ptr @.str.20, i8 1, i8 -20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ct_debug: Failed to add ct clear rule\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to offload ct clear flow, err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug724 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.23, i8 1, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__mlx5_tc_ct_flow_offload\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ct_debug: Failed to register to ft callback\0A\00", [51 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug725 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.24, i8 1, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ct_debug: Failed to allocate post action handle\0A\00", [47 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug726 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.25, i8 1, i8 -50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"ct_debug: Failed to get chain register mapping for chain\0A\00", [38 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug727 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.26, i8 1, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ct_debug: Failed to set chain register mapping\0A\00", [48 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug728 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.27, i8 1, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ct_debug: Failed to set post action handle\0A\00", [52 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug729 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.28, i8 1, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ct_debug: Failed to set tunnel register mapping\0A\00", [47 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug730 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.29, i8 1, i8 -40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ct_debug: Failed to create pre ct mod hdr\0A\00", [53 x i8] zeroinitializer }, align 32
@__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug731 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.8, ptr @.str.30, i8 1, i8 -37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ct_debug: Failed to add pre ct rule\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to offload ct flow, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cts_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 16, i16 0, i32 0, i16 16384, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ct_entries_ht_lock_key\00", [40 x i8] zeroinitializer }, align 32
@ct_entries_ht_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.37 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.8, ptr @.str.40, i8 1, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5_tc_ct_alloc_pre_ct\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ct_debug: Failed to get flow namespace\0A\00", [56 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.8, ptr @.str.41, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ct_debug: Failed to create pre ct table\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug720 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.8, ptr @.str.42, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ct_debug: Failed to create pre ct group\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug723 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.8, ptr @.str.43, i8 1, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ct_debug: Failed to create pre ct miss group\0A\00", [50 x i8] zeroinitializer }, align 32
@tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug710 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.44, ptr @.str.8, ptr @.str.45, i8 1, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tc_ct_pre_ct_add_rules\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ct_debug: Failed to set zone register mapping\0A\00", [49 x i8] zeroinitializer }, align 32
@tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug711 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.44, ptr @.str.8, ptr @.str.29, i8 1, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.44, ptr @.str.8, ptr @.str.46, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ct_debug: Failed to add pre ct flow rule zone %d\0A\00", [46 x i8] zeroinitializer }, align 32
@tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.44, ptr @.str.8, ptr @.str.47, i8 1, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ct_debug: Failed to add pre ct miss rule zone %d\0A\00", [46 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to offload ct entry, err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_entry_del_rule.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.52, ptr @.str.8, ptr @.str.53, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_tc_ct_entry_del_rule\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ct_debug: Deleting ct entry rule in zone %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_counter_create.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.54, ptr @.str.8, ptr @.str.55, i8 0, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_tc_ct_counter_create\00", [38 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ct_debug: Failed to create counter for ct entry\0A\00", [47 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_shared_counter_get.__UNIQUE_ID_ddebug709 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.56, ptr @.str.8, ptr @.str.57, i8 0, i8 -11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_tc_ct_shared_counter_get\00", [34 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"ct_debug: Using shared counter entry=0x%p rev=0x%p\0A\00", [44 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.58, ptr @.str.8, ptr @.str.59, i8 0, i8 -56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx5_tc_ct_entry_add_rule\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ct_debug: Failed to create ct entry mod hdr\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.58, ptr @.str.8, ptr @.str.60, i8 0, i8 -51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ct_debug: Failed to add ct entry rule, nat: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.58, ptr @.str.8, ptr @.str.61, i8 0, i8 -49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ct_debug: Offloaded ct entry rule in zone %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.63 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.65 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.67 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"include/net/netfilter/nf_flow_table.h\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"post action is missing\00", [41 x i8] zeroinitializer }, align 32
@mlx5_tc_ct_init_check_support.__UNIQUE_ID_ddebug734 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.70, ptr @.str.8, ptr @.str.71, i8 2, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_tc_ct_init_check_support\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tc ct offload not supported, %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"firmware vlan actions support is missing\00", [55 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"firmware fwd and modify support is missing\00", [53 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"register loopback isn't supported\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@flow_keys_dissector = external dso_local global %struct.flow_dissector, align 4
@__mlx5_tc_ct_entry_put.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&entry->work)\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 24]
@__sancov_gen_cov_switch_values.87 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 12, i64 16]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1307, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1326, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1355, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1361, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1367, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1407, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1421, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2160, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2169, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2178, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2185, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"zone_params\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 167, i32 39 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"tuples_ht_params\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 174, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"tuples_nat_ht_params\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 182, i32 39 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1961, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1970, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1983, i32 7 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1816, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1824, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1851, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1859, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1865, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1881, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1891, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1903, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1925, i32 28 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"cts_ht_params\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 159, i32 39 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1704, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [23 x i8] c"ct_entries_ht_lock_key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1668, i32 30 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 695, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 594, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 723, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1549, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1565, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1590, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1602, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1455, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1488, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1498, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.259, i32 755, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 1132, i32 32 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 506, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 937, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 981, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 800, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 822, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 829, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant [41 x i8] c"../include/net/netfilter/nf_flow_table.h\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 257, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2108, i32 14 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2118, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2065, i32 14 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2075, i32 14 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 2080, i32 14 }
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.316 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.316, i32 920, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @mlx5_tc_ct_init._entry, ptr @mlx5_tc_ct_init._entry.12, ptr @mlx5_tc_ct_init._entry_ptr, ptr @mlx5_tc_ct_init._entry_ptr.14, ptr @mlx5_tc_ct_match_add.__msg, ptr @mlx5_tc_ct_match_add.__msg.1, ptr @mlx5_tc_ct_match_add.__msg.2, ptr @mlx5_tc_ct_match_add.__msg.3, ptr @mlx5_tc_ct_match_add.__msg.4, ptr @mlx5_tc_ct_parse_action.__msg, ptr @mlx5_tc_ct_parse_action.__msg.5, ptr @mlx5_tc_ct_init.__key, ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @mlx5_tc_ct_init.__key.15, ptr @.str.16, ptr @zone_params, ptr @tuples_ht_params, ptr @tuples_nat_ht_params, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @cts_ht_params, ptr @.str.32, ptr @ct_entries_ht_lock_key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_match_add.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_match_add.__msg.1 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_match_add.__msg.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_match_add.__msg.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_match_add.__msg.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_parse_action.__msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_parse_action.__msg.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tc_ct_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zone_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuples_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuples_nat_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cts_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_entries_ht_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_tc_ct_add_no_trk_match(ptr noundef %spec) local_unnamed_addr #0 align 64 {
entry:
  %ctstate = alloca i32, align 4
  %ctstate_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctstate) #11
  %0 = ptrtoint ptr %ctstate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ctstate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctstate_mask) #11
  %1 = ptrtoint ptr %ctstate_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ctstate_mask, align 4
  call void @mlx5e_tc_match_to_reg_get_match(ptr noundef %spec, i32 noundef 3, ptr noundef nonnull %ctstate, ptr noundef nonnull %ctstate_mask) #11
  %2 = ptrtoint ptr %ctstate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctstate, align 4
  %4 = ptrtoint ptr %ctstate_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctstate_mask, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %5, 4
  %6 = ptrtoint ptr %ctstate_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %ctstate_mask, align 4
  call void @mlx5e_tc_match_to_reg_match(ptr noundef %spec, i32 noundef 3, i32 noundef %3, i32 noundef %or) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctstate_mask) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctstate) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_match_to_reg_get_match(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_match_to_reg_match(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_tc_ct_match_del(ptr noundef readonly %priv, ptr nocapture noundef readonly %ct_attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %ct_labels_id = getelementptr inbounds %struct.mlx5_ct_attr, ptr %ct_attr, i32 0, i32 4
  %0 = ptrtoint ptr %ct_labels_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ct_labels_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %mlx5_put_label_mapping.exit

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

mlx5_put_label_mapping.exit:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %labels_mapping.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %labels_mapping.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %labels_mapping.i, align 4
  %call.i = tail call i32 @mapping_remove(ptr noundef %3, i32 noundef %1) #11
  br label %return

return:                                           ; preds = %mlx5_put_label_mapping.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_tc_ct_match_add(ptr noundef readonly %priv, ptr noundef %spec, ptr nocapture noundef readonly %f, ptr noundef %ct_attr, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %match = alloca %struct.flow_match_ct, align 4
  %ct_labels = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rule.i = getelementptr inbounds %struct.flow_cls_offload, ptr %f, i32 0, i32 3
  %0 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match) #11
  %2 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %match, align 4, !annotation !198
  %3 = getelementptr inbounds %struct.flow_match_ct, ptr %match, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !198
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ct_labels) #11
  %5 = getelementptr inbounds [4 x i32], ptr %ct_labels, i32 0, i32 1
  %6 = getelementptr inbounds [4 x i32], ptr %ct_labels, i32 0, i32 2
  %7 = getelementptr inbounds [4 x i32], ptr %ct_labels, i32 0, i32 3
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i.i = and i32 %11, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_tc_ct_match_add.__msg) #11
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mlx5_tc_ct_match_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @flow_rule_match_ct(ptr noundef %1, ptr noundef nonnull %match) #11
  %13 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %match, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %18)
  %tobool11.not = icmp ult i16 %18, 64
  br i1 %tobool11.not, label %if.end21, label %do.body13

do.body13:                                        ; preds = %if.end6
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_tc_ct_match_add.__msg.1) #11
  %tobool15.not = icmp eq ptr %extack, null
  br i1 %tobool15.not, label %do.body13.cleanup_crit_edge, label %if.then16

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlx5_tc_ct_match_add.__msg.1, ptr %extack, align 4
  br label %cleanup

if.end21:                                         ; preds = %if.end6
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %14, align 4
  %and24289 = and i16 %21, %18
  %xor290 = xor i16 %and24289, %18
  %conv31 = zext i16 %and24289 to i32
  %and35 = and i32 %conv31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %and39 = and i32 %conv31, 2
  %and47 = and i32 %conv31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %conv54 = zext i16 %xor290 to i32
  %and55 = and i32 %conv54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  %and59 = and i32 %conv54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %and63 = and i32 %conv54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %and32 = lshr i32 %conv31, 1
  %22 = and i32 %and32, 4
  %or79 = or i32 %22, %and39
  %23 = and i32 %and32, 16
  %or83 = or i32 %or79, %23
  %spec.select = select i1 %tobool56.not, i32 %22, i32 4
  %24 = select i1 %tobool60.not, i32 %and39, i32 2
  %25 = select i1 %tobool64.not, i32 %23, i32 16
  %and67 = shl nuw nsw i32 %conv54, 3
  %26 = and i32 %and67, 32
  %and71 = shl nuw nsw i32 %conv54, 2
  %27 = and i32 %and71, 64
  %or97 = or i32 %27, %26
  %or105 = or i32 %or97, %24
  %or109 = or i32 %or105, %spec.select
  %or113 = or i32 %or109, %25
  br i1 %tobool48.not, label %if.end124, label %do.body116

do.body116:                                       ; preds = %if.end21
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_tc_ct_match_add.__msg.2) #11
  %tobool118.not = icmp eq ptr %extack, null
  br i1 %tobool118.not, label %do.body116.cleanup_crit_edge, label %if.then119

do.body116.cleanup_crit_edge:                     ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then119:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mlx5_tc_ct_match_add.__msg.2, ptr %extack, align 4
  br label %cleanup

if.end124:                                        ; preds = %if.end21
  %and51 = and i32 %conv31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end135, label %do.body127

do.body127:                                       ; preds = %if.end124
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_tc_ct_match_add.__msg.3) #11
  %tobool129.not = icmp eq ptr %extack, null
  br i1 %tobool129.not, label %do.body127.cleanup_crit_edge, label %if.then130

do.body127.cleanup_crit_edge:                     ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then130:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mlx5_tc_ct_match_add.__msg.3, ptr %extack, align 4
  br label %cleanup

if.end135:                                        ; preds = %if.end124
  br i1 %tobool36.not, label %if.end146, label %do.body138

do.body138:                                       ; preds = %if.end135
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_tc_ct_match_add.__msg.4) #11
  %tobool140.not = icmp eq ptr %extack, null
  br i1 %tobool140.not, label %do.body138.cleanup_crit_edge, label %if.then141

do.body138.cleanup_crit_edge:                     ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then141:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mlx5_tc_ct_match_add.__msg.4, ptr %extack, align 4
  br label %cleanup

if.end146:                                        ; preds = %if.end135
  %ct_zone = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 1
  %31 = ptrtoint ptr %ct_zone to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ct_zone, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool147.not = icmp eq i16 %32, 0
  br i1 %tobool147.not, label %if.end146.if.end153_crit_edge, label %if.then148

if.end146.if.end153_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

if.then148:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #13
  %ct_zone149 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %14, i32 0, i32 1
  %33 = ptrtoint ptr %ct_zone149 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ct_zone149, align 2
  %conv150 = zext i16 %34 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2) to i32))
  %35 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2), align 4
  %sub151 = sub i32 32, %35
  %shr = lshr i32 -1, %sub151
  call void @mlx5e_tc_match_to_reg_match(ptr noundef %spec, i32 noundef 4, i32 noundef %conv150, i32 noundef %shr) #11
  br label %if.end153

if.end153:                                        ; preds = %if.then148, %if.end146.if.end153_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or113)
  %tobool154.not = icmp eq i32 %or113, 0
  br i1 %tobool154.not, label %if.end153.if.end156_crit_edge, label %if.then155

if.end153.if.end156_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156

if.then155:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5e_tc_match_to_reg_match(ptr noundef %spec, i32 noundef 3, i32 noundef %or83, i32 noundef %or113) #11
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.end153.if.end156_crit_edge
  %ct_mark = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 2
  %36 = ptrtoint ptr %ct_mark to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ct_mark, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool157.not = icmp eq i32 %37, 0
  br i1 %tobool157.not, label %if.end156.if.end161_crit_edge, label %if.then158

if.end156.if.end161_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end161

if.then158:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #13
  %ct_mark159 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %14, i32 0, i32 2
  %38 = ptrtoint ptr %ct_mark159 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ct_mark159, align 4
  call void @mlx5e_tc_match_to_reg_match(ptr noundef %spec, i32 noundef 6, i32 noundef %39, i32 noundef %37) #11
  br label %if.end161

if.end161:                                        ; preds = %if.then158, %if.end156.if.end161_crit_edge
  %ct_labels162 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 3
  %40 = ptrtoint ptr %ct_labels162 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ct_labels162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool163.not = icmp eq i32 %41, 0
  br i1 %tobool163.not, label %lor.lhs.false, label %if.end161.if.then175_crit_edge

if.end161.if.then175_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then175

lor.lhs.false:                                    ; preds = %if.end161
  %arrayidx165 = getelementptr %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool166.not = icmp eq i32 %43, 0
  br i1 %tobool166.not, label %lor.lhs.false167, label %lor.lhs.false.if.then175_crit_edge

lor.lhs.false.if.then175_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then175

lor.lhs.false167:                                 ; preds = %lor.lhs.false
  %arrayidx169 = getelementptr %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx169, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool170.not = icmp eq i32 %45, 0
  br i1 %tobool170.not, label %lor.lhs.false171, label %lor.lhs.false167.if.then175_crit_edge

lor.lhs.false167.if.then175_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then175

lor.lhs.false171:                                 ; preds = %lor.lhs.false167
  %arrayidx173 = getelementptr %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 3, i32 3
  %46 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool174.not = icmp eq i32 %47, 0
  br i1 %tobool174.not, label %lor.lhs.false171.cleanup_crit_edge, label %lor.lhs.false171.if.then175_crit_edge

lor.lhs.false171.if.then175_crit_edge:            ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then175

lor.lhs.false171.cleanup_crit_edge:               ; preds = %lor.lhs.false171
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then175:                                       ; preds = %lor.lhs.false171.if.then175_crit_edge, %lor.lhs.false167.if.then175_crit_edge, %lor.lhs.false.if.then175_crit_edge, %if.end161.if.then175_crit_edge
  %ct_labels176 = getelementptr inbounds %struct.flow_dissector_key_ct, ptr %14, i32 0, i32 3
  %48 = ptrtoint ptr %ct_labels176 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ct_labels176, align 4
  %and180 = and i32 %49, %41
  %50 = ptrtoint ptr %ct_labels to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and180, ptr %ct_labels, align 4
  %arrayidx183 = getelementptr %struct.flow_dissector_key_ct, ptr %14, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx183, align 4
  %arrayidx185 = getelementptr %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx185 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx185, align 4
  %and186 = and i32 %54, %52
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and186, ptr %5, align 4
  %arrayidx189 = getelementptr %struct.flow_dissector_key_ct, ptr %14, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx189, align 4
  %arrayidx191 = getelementptr %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx191, align 4
  %and192 = and i32 %59, %57
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %and192, ptr %6, align 4
  %arrayidx195 = getelementptr %struct.flow_dissector_key_ct, ptr %14, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx195, align 4
  %arrayidx197 = getelementptr %struct.flow_dissector_key_ct, ptr %16, i32 0, i32 3, i32 3
  %63 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx197, align 4
  %and198 = and i32 %64, %62
  %65 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and198, ptr %7, align 4
  %ct_labels_id = getelementptr inbounds %struct.mlx5_ct_attr, ptr %ct_attr, i32 0, i32 4
  %call200 = call fastcc i32 @mlx5_get_label_mapping(ptr noundef nonnull %priv, ptr noundef nonnull %ct_labels, ptr noundef %ct_labels_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end203, label %if.then175.cleanup_crit_edge

if.then175.cleanup_crit_edge:                     ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end203:                                        ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %ct_labels_id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ct_labels_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 7, i32 2) to i32))
  %68 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 7, i32 2), align 4
  %sub206 = sub i32 32, %68
  %shr207 = lshr i32 -1, %sub206
  call void @mlx5e_tc_match_to_reg_match(ptr noundef %spec, i32 noundef 7, i32 noundef %67, i32 noundef %shr207) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end203, %if.then175.cleanup_crit_edge, %lor.lhs.false171.cleanup_crit_edge, %if.then141, %do.body138.cleanup_crit_edge, %if.then130, %do.body127.cleanup_crit_edge, %if.then119, %do.body116.cleanup_crit_edge, %if.then16, %do.body13.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %if.then4 ], [ -95, %do.body.cleanup_crit_edge ], [ -95, %if.then16 ], [ -95, %do.body13.cleanup_crit_edge ], [ -95, %if.then119 ], [ -95, %do.body116.cleanup_crit_edge ], [ -95, %if.then130 ], [ -95, %do.body127.cleanup_crit_edge ], [ -95, %if.then141 ], [ -95, %do.body138.cleanup_crit_edge ], [ -95, %if.then175.cleanup_crit_edge ], [ 0, %if.end203 ], [ 0, %lor.lhs.false171.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ct_labels) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_get_label_mapping(ptr nocapture noundef readonly %ct_priv, ptr noundef %labels, ptr noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memchr_inv(ptr noundef %labels, i32 noundef 0, i32 noundef 16) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %labels_mapping = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 12
  %1 = ptrtoint ptr %labels_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %labels_mapping, align 4
  %call1 = tail call i32 @mapping_add(ptr noundef %2, ptr noundef %labels, ptr noundef %id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %. = select i1 %tobool2.not, i32 0, i32 -95
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_tc_ct_parse_action(ptr noundef readonly %priv, ptr nocapture noundef %attr, ptr noundef %mod_acts, ptr nocapture noundef readonly %act, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool1.not = icmp eq ptr %priv, null
  br i1 %tobool1.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_tc_ct_parse_action.__msg) #11
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlx5_tc_ct_parse_action.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %zone = getelementptr inbounds %struct.anon.217, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %zone, align 4
  %ct_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3
  %6 = ptrtoint ptr %ct_attr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %ct_attr, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %conv = trunc i32 %8 to i16
  %ct_action = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %ct_action to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %ct_action, align 2
  %flow_table = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %flow_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flow_table, align 8
  %nf_ft = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nf_ft to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %nf_ft, align 4
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end4
  %call = tail call fastcc i32 @mlx5_tc_ct_entry_set_registers(ptr noundef nonnull %priv, ptr noundef %mod_acts, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end22, label %do.body14

do.body14:                                        ; preds = %if.end11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5_tc_ct_parse_action.__msg.5) #11
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %if.then17

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlx5_tc_ct_parse_action.__msg.5, ptr %extack, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %attr, align 4
  %or = or i32 %15, 64
  store i32 %or, ptr %attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then17, %do.body14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then3 ], [ -95, %do.body.cleanup_crit_edge ], [ %call, %if.then17 ], [ %call, %do.body14.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_tc_ct_entry_set_registers(ptr nocapture noundef readonly %ct_priv, ptr noundef %mod_acts, i8 noundef zeroext %ct_state, i32 noundef %mark, i32 noundef %labels_id, i8 noundef zeroext %zone_restore_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ns_type = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 13
  %0 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ns_type, align 4
  %2 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_priv, align 4
  %conv = zext i8 %ct_state to i32
  %call = tail call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %3, ptr noundef %mod_acts, i32 noundef %1, i32 noundef 3, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %3, ptr noundef %mod_acts, i32 noundef %1, i32 noundef 6, i32 noundef %mark) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %3, ptr noundef %mod_acts, i32 noundef %1, i32 noundef 7, i32 noundef %labels_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %conv10 = zext i8 %zone_restore_id to i32
  %call11 = tail call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %3, ptr noundef %mod_acts, i32 noundef %1, i32 noundef 5, i32 noundef %conv10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.end14.if.end22_crit_edge, label %if.then16

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %call18 = tail call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %3, ptr noundef %mod_acts, i32 noundef %1, i32 noundef 10, i32 noundef %conv10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end22_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ %call18, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_tc_ct_flow_offload(ptr noundef %priv, ptr noundef %flow, ptr noundef %spec, ptr noundef %attr, ptr nocapture noundef readonly %mod_hdr_acts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool1.not = icmp eq ptr %priv, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ct_action = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ct_action to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ct_action, align 2
  %2 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %control_lock = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %priv, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %control_lock, i32 noundef 0) #11
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call fastcc ptr @__mlx5_tc_ct_flow_offload_clear(ptr noundef nonnull %priv, ptr noundef %spec, ptr noundef %attr, ptr noundef %mod_hdr_acts)
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call fastcc ptr @__mlx5_tc_ct_flow_offload(ptr noundef nonnull %priv, ptr noundef %flow, ptr noundef %spec, ptr noundef %attr)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %rule.0 = phi ptr [ %call4, %if.then3 ], [ %call5, %if.else ]
  tail call void @mutex_unlock(ptr noundef %control_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %rule.0, %if.end6 ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__mlx5_tc_ct_flow_offload_clear(ptr nocapture noundef readonly %ct_priv, ptr noundef %orig_spec, ptr nocapture noundef %attr, ptr nocapture noundef readonly %mod_acts) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %ns_type = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 13
  %2 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ns_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  %cond = select i1 %cmp, i32 880, i32 76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ns_type, align 4
  %call4 = tail call ptr @mlx5_alloc_flow_attr(i32 noundef %6) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.err_attr_crit_edge, label %if.end7

if.end.err_attr_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_attr

if.end7:                                          ; preds = %if.end
  %7 = call ptr @memcpy(ptr %call4, ptr %attr, i32 %cond)
  %mdev = getelementptr i8, ptr %1, i32 11328
  %8 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev, align 64
  %10 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ns_type, align 4
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %mod_acts to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mod_acts, align 4
  %conv9 = trunc i32 %13 to i8
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_acts, i32 0, i32 3
  %14 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %actions, align 4
  %call10 = tail call ptr @mlx5_modify_header_alloc(ptr noundef %9, i8 noundef zeroext %conv, i8 noundef zeroext %conv9, ptr noundef %15) #11
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end24

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug732, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload_clear, %if.then19)) #11
          to label %err_mod_hdr [label %if.then19], !srcloc !199

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug732, ptr noundef %17, ptr noundef nonnull @.str.19) #11
  br label %err_mod_hdr

if.end24:                                         ; preds = %if.end7
  %modify_hdr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call4, i32 0, i32 2
  %18 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call10, ptr %modify_hdr, align 4
  %call25 = tail call ptr @mlx5_tc_rule_insert(ptr noundef %add.ptr.i, ptr noundef %orig_spec, ptr noundef nonnull %call4) #11
  %cmp.i90 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then27, label %if.end49

if.then27:                                        ; preds = %if.end24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug733, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload_clear, %if.then42)) #11
          to label %err_insert [label %if.then42], !srcloc !199

if.then42:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug733, ptr noundef %20, ptr noundef nonnull @.str.20) #11
  br label %err_insert

if.end49:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %ct_flow50 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %ct_flow50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %ct_flow50, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call4, ptr %call7.i.i, align 8
  %pre_ct_rule = getelementptr inbounds %struct.mlx5_ct_flow, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %pre_ct_rule to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call25, ptr %pre_ct_rule, align 4
  br label %cleanup

err_insert:                                       ; preds = %if.then42, %if.then27
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev, align 64
  tail call void @mlx5_modify_header_dealloc(ptr noundef %25, ptr noundef %call10) #11
  br label %err_mod_hdr

err_mod_hdr:                                      ; preds = %err_insert, %if.then19, %if.then12
  %err.0.in = phi ptr [ %call10, %if.then19 ], [ %call25, %err_insert ], [ %call10, %if.then12 ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %netdev53 = getelementptr i8, ptr %1, i32 11332
  %26 = ptrtoint ptr %netdev53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev53, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %27, ptr noundef nonnull @.str.21, i32 noundef %err.0) #15
  tail call void @kfree(ptr noundef nonnull %call4) #11
  br label %err_attr

err_attr:                                         ; preds = %err_mod_hdr, %if.end.err_attr_crit_edge
  %err.1 = phi ptr [ %err.0.in, %err_mod_hdr ], [ inttoptr (i32 -12 to ptr), %if.end.err_attr_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_attr, %if.end49, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.1, %err_attr ], [ %call25, %if.end49 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__mlx5_tc_ct_flow_offload(ptr noundef %ct_priv, ptr noundef %flow, ptr noundef %orig_spec, ptr noundef %attr) unnamed_addr #0 align 64 {
entry:
  %zone.addr.i = alloca i16, align 2
  %pre_mod_acts = alloca %struct.mlx5e_tc_mod_hdr_acts, align 4
  %chain_mapping = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_action = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %ct_action to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ct_action, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 2304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pre_mod_acts) #11
  %5 = call ptr @memset(ptr %pre_mod_acts, i32 0, i32 16)
  %ns_type = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 13
  %6 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp eq i32 %7, 8
  %cond = select i1 %cmp, i32 880, i32 76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chain_mapping) #11
  %8 = ptrtoint ptr %chain_mapping to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %chain_mapping, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 20) #14
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef null) #11
  br label %cleanup243

if.end:                                           ; preds = %entry
  %ct_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3
  %10 = ptrtoint ptr %ct_attr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ct_attr, align 4
  %nf_ft = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %nf_ft to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nf_ft, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zone.addr.i)
  %14 = ptrtoint ptr %zone.addr.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %11, ptr %zone.addr.i, align 2
  %zone_ht.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 4
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %zone_ht.i, ptr noundef nonnull %zone.addr.i, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %refcount.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %15 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !200
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !201

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !202

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_add_ft_cb.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #11
  br label %mlx5_tc_ct_add_ft_cb.exit

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3520, i32 noundef 300) #14
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %mlx5_tc_ct_add_ft_cb.exit.thread, label %if.end5.i

mlx5_tc_ct_add_ft_cb.exit.thread:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zone.addr.i)
  br label %if.then9

if.end5.i:                                        ; preds = %if.end.i
  %zone_mapping.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 11
  %18 = ptrtoint ptr %zone_mapping.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %zone_mapping.i, align 4
  %zone_restore_id.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 2
  %call6.i = call i32 @mapping_add(ptr noundef %19, ptr noundef nonnull %zone.addr.i, ptr noundef %zone_restore_id.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.err_mapping.i_crit_edge

if.end5.i.err_mapping.i_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

if.end9.i:                                        ; preds = %if.end5.i
  %20 = ptrtoint ptr %zone.addr.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %zone.addr.i, align 2
  %zone10.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %zone10.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %zone10.i, align 4
  %nf_ft11.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %nf_ft11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %13, ptr %nf_ft11.i, align 8
  %ct_priv12.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %ct_priv12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ct_priv, ptr %ct_priv12.i, align 4
  %refcount13.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount13.i, i32 noundef 4) #11
  %25 = ptrtoint ptr %refcount13.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 1, ptr %refcount13.i, align 4
  %pre_ct.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i = call fastcc i32 @mlx5_tc_ct_alloc_pre_ct(ptr noundef nonnull %call7.i.i.i, ptr noundef %pre_ct.i.i, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.i.err_alloc_pre_ct.i_crit_edge

if.end9.i.err_alloc_pre_ct.i_crit_edge:           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_pre_ct.i

if.end.i.i:                                       ; preds = %if.end9.i
  %pre_ct_nat.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 8
  %call1.i.i = call fastcc i32 @mlx5_tc_ct_alloc_pre_ct(ptr noundef nonnull %call7.i.i.i, ptr noundef %pre_ct_nat.i.i, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end17.i, label %err_pre_ct_nat.i.i

err_pre_ct_nat.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %ct_priv12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ct_priv12.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %flow_rule.i.i.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %30 = ptrtoint ptr %flow_rule.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flow_rule.i.i.i.i, align 8
  call void @mlx5_del_flow_rules(ptr noundef %31) #11
  %miss_rule.i.i.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 7, i32 4
  %32 = ptrtoint ptr %miss_rule.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %miss_rule.i.i.i.i, align 4
  call void @mlx5_del_flow_rules(ptr noundef %33) #11
  %modify_hdr.i.i.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 7, i32 5
  %34 = ptrtoint ptr %modify_hdr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %modify_hdr.i.i.i.i, align 8
  call void @mlx5_modify_header_dealloc(ptr noundef %29, ptr noundef %35) #11
  %miss_grp.i.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %miss_grp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %miss_grp.i.i.i, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %37) #11
  %flow_grp.i.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %flow_grp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %flow_grp.i.i.i, align 8
  call void @mlx5_destroy_flow_group(ptr noundef %39) #11
  %40 = ptrtoint ptr %pre_ct.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pre_ct.i.i, align 4
  %call.i.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %41) #11
  br label %err_alloc_pre_ct.i

if.end17.i:                                       ; preds = %if.end.i.i
  %ct_entries_ht.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 6
  %call18.i = call i32 @rhashtable_init(ptr noundef %ct_entries_ht.i, ptr noundef nonnull @cts_ht_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end17.i.err_init.i_crit_edge

if.end17.i.err_init.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_init.i

if.end21.i:                                       ; preds = %if.end17.i
  %dep_map.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 6, i32 6, i32 5
  %wait_type_inner.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %call7.i.i.i, i32 0, i32 6, i32 6, i32 5, i32 4
  %42 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @ct_entries_ht_lock_key, i32 noundef 0, i8 noundef zeroext %43, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %call.i98.i = call fastcc ptr @__rhashtable_insert_fast(ptr noundef %zone_ht.i, ptr noundef null, ptr noundef nonnull %call7.i.i.i, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #11
  %cmp.i.i.i = icmp ugt ptr %call.i98.i, inttoptr (i32 -4096 to ptr)
  %44 = ptrtoint ptr %call.i98.i to i32
  %cmp.i.i = icmp eq ptr %call.i98.i, null
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 -17
  %retval.0.i99.i = select i1 %cmp.i.i.i, i32 %44, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i99.i)
  %tobool31.not.i = icmp eq i32 %retval.0.i99.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end21.i.err_insert.i_crit_edge

if.end21.i.err_insert.i_crit_edge:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_insert.i

if.end33.i:                                       ; preds = %if.end21.i
  %45 = ptrtoint ptr %nf_ft11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nf_ft11.i, align 8
  %call35.i = call fastcc i32 @nf_flow_table_offload_add_cb(ptr noundef %46, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge, label %err_add_cb.i

if.end33.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge:   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_add_ft_cb.exit

err_add_cb.i:                                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rhashtable_remove_fast(ptr noundef %zone_ht.i, ptr noundef nonnull %call7.i.i.i, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #11
  br label %err_insert.i

err_insert.i:                                     ; preds = %err_add_cb.i, %if.end21.i.err_insert.i_crit_edge
  %err.0.i = phi i32 [ %retval.0.i99.i, %if.end21.i.err_insert.i_crit_edge ], [ %call35.i, %err_add_cb.i ]
  call void @rhashtable_destroy(ptr noundef %ct_entries_ht.i) #11
  br label %err_init.i

err_init.i:                                       ; preds = %err_insert.i, %if.end17.i.err_init.i_crit_edge
  %err.1.i = phi i32 [ %call18.i, %if.end17.i.err_init.i_crit_edge ], [ %err.0.i, %err_insert.i ]
  call fastcc void @mlx5_tc_ct_free_pre_ct_tables(ptr noundef nonnull %call7.i.i.i) #11
  br label %err_alloc_pre_ct.i

err_alloc_pre_ct.i:                               ; preds = %err_init.i, %err_pre_ct_nat.i.i, %if.end9.i.err_alloc_pre_ct.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %err_init.i ], [ %call.i.i, %if.end9.i.err_alloc_pre_ct.i_crit_edge ], [ %call1.i.i, %err_pre_ct_nat.i.i ]
  %47 = ptrtoint ptr %zone_mapping.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %zone_mapping.i, align 4
  %49 = ptrtoint ptr %zone_restore_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %zone_restore_id.i, align 8
  %call45.i = call i32 @mapping_remove(ptr noundef %48, i32 noundef %50) #11
  br label %err_mapping.i

err_mapping.i:                                    ; preds = %err_alloc_pre_ct.i, %if.end5.i.err_mapping.i_crit_edge
  %err.3.i = phi i32 [ %call6.i, %if.end5.i.err_mapping.i_crit_edge ], [ %err.2.i, %err_alloc_pre_ct.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  %51 = inttoptr i32 %err.3.i to ptr
  br label %mlx5_tc_ct_add_ft_cb.exit

mlx5_tc_ct_add_ft_cb.exit:                        ; preds = %err_mapping.i, %if.end33.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge
  %retval.0.i347 = phi ptr [ %51, %err_mapping.i ], [ %call7.i.i.i, %if.end33.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge ], [ %call.i, %if.else.i.i.i.i.mlx5_tc_ct_add_ft_cb.exit_crit_edge ], [ %call.i, %if.end15.sink.split.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zone.addr.i)
  %cmp.i = icmp ugt ptr %retval.0.i347, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5_tc_ct_add_ft_cb.exit.if.then9_crit_edge, label %if.end22

mlx5_tc_ct_add_ft_cb.exit.if.then9_crit_edge:     ; preds = %mlx5_tc_ct_add_ft_cb.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then9

if.then9:                                         ; preds = %mlx5_tc_ct_add_ft_cb.exit.if.then9_crit_edge, %mlx5_tc_ct_add_ft_cb.exit.thread
  %retval.0.i347357 = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5_tc_ct_add_ft_cb.exit.thread ], [ %retval.0.i347, %mlx5_tc_ct_add_ft_cb.exit.if.then9_crit_edge ]
  %52 = ptrtoint ptr %retval.0.i347357 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug724, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then17)) #11
          to label %err_ft [label %if.then17], !srcloc !199

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug724, ptr noundef %54, ptr noundef nonnull @.str.23) #11
  br label %err_ft

if.end22:                                         ; preds = %mlx5_tc_ct_add_ft_cb.exit
  %ft23 = getelementptr inbounds %struct.mlx5_ct_flow, ptr %call7.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %ft23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i347, ptr %ft23, align 4
  %post_act = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 9
  %56 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %post_act, align 4
  %call24 = call ptr @mlx5e_tc_post_act_add(ptr noundef %57, ptr noundef %attr) #11
  %cmp.i348 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i348, label %if.then26, label %if.end48

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call24 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug725, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then41)) #11
          to label %err_post_act_handle [label %if.then41], !srcloc !199

if.then41:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug725, ptr noundef %60, ptr noundef nonnull @.str.24) #11
  br label %err_post_act_handle

if.end48:                                         ; preds = %if.end22
  %post_act_handle = getelementptr inbounds %struct.mlx5_ct_flow, ptr %call7.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %post_act_handle to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call24, ptr %post_act_handle, align 8
  %62 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ns_type, align 4
  %call50 = call ptr @mlx5_alloc_flow_attr(i32 noundef %63) #11
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call50, ptr %call7.i.i, align 8
  %tobool53.not = icmp eq ptr %call50, null
  br i1 %tobool53.not, label %if.end48.err_alloc_pre_crit_edge, label %if.end55

if.end48.err_alloc_pre_crit_edge:                 ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_alloc_pre

if.end55:                                         ; preds = %if.end48
  %65 = call ptr @memcpy(ptr %call50, ptr %attr, i32 %cond)
  %66 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %attr, align 4
  %and57 = and i32 %67, 32
  %or = or i32 %and57, 68
  %68 = ptrtoint ptr %call50 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or, ptr %call50, align 4
  %chains = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 14
  %69 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %chains, align 4
  %chain = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 6
  %71 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chain, align 4
  %call60 = call i32 @mlx5_chains_get_chain_mapping(ptr noundef %70, i32 noundef %72, ptr noundef nonnull %chain_mapping) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end83, label %do.body64

do.body64:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug726, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then76)) #11
          to label %err_get_chain [label %if.then76], !srcloc !199

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug726, ptr noundef %74, ptr noundef nonnull @.str.25) #11
  br label %err_get_chain

if.end83:                                         ; preds = %if.end55
  %75 = ptrtoint ptr %chain_mapping to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %chain_mapping, align 4
  %chain_mapping84 = getelementptr inbounds %struct.mlx5_ct_flow, ptr %call7.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %chain_mapping84 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %chain_mapping84, align 8
  %mdev = getelementptr i8, ptr %4, i32 11328
  %78 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mdev, align 64
  %80 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ns_type, align 4
  %call86 = call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %79, ptr noundef nonnull %pre_mod_acts, i32 noundef %81, i32 noundef 0, i32 noundef %76) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end109, label %do.body90

do.body90:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug727, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then102)) #11
          to label %err_mapping [label %if.then102], !srcloc !199

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug727, ptr noundef %83, ptr noundef nonnull @.str.26) #11
  br label %err_mapping

if.end109:                                        ; preds = %if.end83
  %84 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mdev, align 64
  %call111 = call i32 @mlx5e_tc_post_act_set_handle(ptr noundef %85, ptr noundef %call24, ptr noundef nonnull %pre_mod_acts) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end134, label %do.body115

do.body115:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug728, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then127)) #11
          to label %err_mapping [label %if.then127], !srcloc !199

if.then127:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug728, ptr noundef %87, ptr noundef nonnull @.str.27) #11
  br label %err_mapping

if.end134:                                        ; preds = %if.end109
  %88 = ptrtoint ptr %call50 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %call50, align 4
  %and136 = and i32 %89, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %if.end134.if.end169_crit_edge, label %land.lhs.true

if.end134.if.end169_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

land.lhs.true:                                    ; preds = %if.end134
  %90 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp139 = icmp eq i32 %91, 0
  br i1 %cmp139, label %if.then141, label %land.lhs.true.if.end169_crit_edge

land.lhs.true.if.end169_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

if.then141:                                       ; preds = %land.lhs.true
  %call142 = call i32 @mlx5e_tc_get_flow_tun_id(ptr noundef %flow) #11
  %92 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mdev, align 64
  %94 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ns_type, align 4
  %call145 = call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %93, ptr noundef nonnull %pre_mod_acts, i32 noundef %95, i32 noundef 2, i32 noundef %call142) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then141.if.end169_crit_edge, label %do.body149

if.then141.if.end169_crit_edge:                   ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end169

do.body149:                                       ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug729, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then161)) #11
          to label %err_mapping [label %if.then161], !srcloc !199

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug729, ptr noundef %97, ptr noundef nonnull @.str.28) #11
  br label %err_mapping

if.end169:                                        ; preds = %if.then141.if.end169_crit_edge, %land.lhs.true.if.end169_crit_edge, %if.end134.if.end169_crit_edge
  %98 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mdev, align 64
  %100 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ns_type, align 4
  %conv172 = trunc i32 %101 to i8
  %102 = ptrtoint ptr %pre_mod_acts to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pre_mod_acts, align 4
  %conv173 = trunc i32 %103 to i8
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %pre_mod_acts, i32 0, i32 3
  %104 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %actions, align 4
  %call174 = call ptr @mlx5_modify_header_alloc(ptr noundef %99, i8 noundef zeroext %conv172, i8 noundef zeroext %conv173, ptr noundef %105) #11
  %cmp.i349 = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i349, label %if.then176, label %if.end198

if.then176:                                       ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %call174 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug730, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then191)) #11
          to label %err_mapping [label %if.then191], !srcloc !199

if.then191:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #13
  %107 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug730, ptr noundef %108, ptr noundef nonnull @.str.29) #11
  br label %err_mapping

if.end198:                                        ; preds = %if.end169
  %modify_hdr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call50, i32 0, i32 2
  %109 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call174, ptr %modify_hdr, align 4
  %dest_chain = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call50, i32 0, i32 8
  %110 = ptrtoint ptr %dest_chain to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %dest_chain, align 4
  %pre_ct_nat = getelementptr inbounds %struct.mlx5_ct_ft, ptr %retval.0.i347, i32 0, i32 8
  %pre_ct = getelementptr inbounds %struct.mlx5_ct_ft, ptr %retval.0.i347, i32 0, i32 7
  %cond203.in = select i1 %tobool.not, ptr %pre_ct, ptr %pre_ct_nat
  %111 = ptrtoint ptr %cond203.in to i32
  call void @__asan_load4_noabort(i32 %111)
  %cond203 = load ptr, ptr %cond203.in, align 4
  %dest_ft = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call50, i32 0, i32 10
  %112 = ptrtoint ptr %dest_ft to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %cond203, ptr %dest_ft, align 4
  %call204 = call ptr @mlx5_tc_rule_insert(ptr noundef %add.ptr.i, ptr noundef %orig_spec, ptr noundef nonnull %call50) #11
  %pre_ct_rule = getelementptr inbounds %struct.mlx5_ct_flow, ptr %call7.i.i, i32 0, i32 1
  %113 = ptrtoint ptr %pre_ct_rule to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call204, ptr %pre_ct_rule, align 4
  %cmp.i350 = icmp ugt ptr %call204, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %if.then207, label %if.end230

if.then207:                                       ; preds = %if.end198
  %114 = ptrtoint ptr %call204 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug731, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__mlx5_tc_ct_flow_offload, %if.then223)) #11
          to label %err_insert_orig [label %if.then223], !srcloc !199

if.then223:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #13
  %115 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug731, ptr noundef %116, ptr noundef nonnull @.str.30) #11
  br label %err_insert_orig

if.end230:                                        ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  %ct_flow232 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 2
  %117 = ptrtoint ptr %ct_flow232 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call7.i.i, ptr %ct_flow232, align 4
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %pre_mod_acts) #11
  %118 = ptrtoint ptr %pre_ct_rule to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %pre_ct_rule, align 4
  br label %cleanup243

err_insert_orig:                                  ; preds = %if.then223, %if.then207
  %120 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mdev, align 64
  %122 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %modify_hdr, align 4
  call void @mlx5_modify_header_dealloc(ptr noundef %121, ptr noundef %123) #11
  br label %err_mapping

err_mapping:                                      ; preds = %err_insert_orig, %if.then191, %if.then176, %if.then161, %do.body149, %if.then127, %do.body115, %if.then102, %do.body90
  %err.0 = phi i32 [ %call86, %if.then102 ], [ %call111, %if.then127 ], [ %106, %if.then191 ], [ %114, %err_insert_orig ], [ %call86, %do.body90 ], [ %call111, %do.body115 ], [ %call145, %do.body149 ], [ %call145, %if.then161 ], [ %106, %if.then176 ]
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %pre_mod_acts) #11
  %124 = ptrtoint ptr %chains to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %chains, align 4
  %126 = ptrtoint ptr %chain_mapping84 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %chain_mapping84, align 8
  %call238 = call i32 @mlx5_chains_put_chain_mapping(ptr noundef %125, i32 noundef %127) #11
  br label %err_get_chain

err_get_chain:                                    ; preds = %err_mapping, %if.then76, %do.body64
  %err.1 = phi i32 [ %call60, %if.then76 ], [ %err.0, %err_mapping ], [ %call60, %do.body64 ]
  %128 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %129) #11
  br label %err_alloc_pre

err_alloc_pre:                                    ; preds = %err_get_chain, %if.end48.err_alloc_pre_crit_edge
  %err.2 = phi i32 [ %err.1, %err_get_chain ], [ -12, %if.end48.err_alloc_pre_crit_edge ]
  %130 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %post_act, align 4
  call void @mlx5e_tc_post_act_del(ptr noundef %131, ptr noundef %call24) #11
  br label %err_post_act_handle

err_post_act_handle:                              ; preds = %err_alloc_pre, %if.then41, %if.then26
  %err.3 = phi i32 [ %58, %if.then41 ], [ %err.2, %err_alloc_pre ], [ %58, %if.then26 ]
  call fastcc void @mlx5_tc_ct_del_ft_cb(ptr noundef %ct_priv, ptr noundef %retval.0.i347)
  br label %err_ft

err_ft:                                           ; preds = %err_post_act_handle, %if.then17, %if.then9
  %err.4 = phi i32 [ %52, %if.then17 ], [ %err.3, %err_post_act_handle ], [ %52, %if.then9 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %netdev241 = getelementptr i8, ptr %4, i32 11332
  %132 = ptrtoint ptr %netdev241 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %netdev241, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %133, ptr noundef nonnull @.str.31, i32 noundef %err.4) #15
  %134 = inttoptr i32 %err.4 to ptr
  br label %cleanup243

cleanup243:                                       ; preds = %err_ft, %if.end230, %if.then
  %retval.0 = phi ptr [ %134, %err_ft ], [ %119, %if.end230 ], [ inttoptr (i32 -12 to ptr), %if.then ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chain_mapping) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pre_mod_acts) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_tc_ct_delete_flow(ptr noundef %priv, ptr nocapture noundef readnone %flow, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_flow1 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %ct_flow1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_flow1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %control_lock = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %priv, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %control_lock, i32 noundef 0) #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %netdev.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 2304
  %pre_ct_rule.i = getelementptr inbounds %struct.mlx5_ct_flow, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pre_ct_rule.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pre_ct_rule.i, align 4
  tail call void @mlx5_tc_rule_delete(ptr noundef %add.ptr.i.i, ptr noundef %7, ptr noundef %3) #11
  %mdev.i = getelementptr i8, ptr %5, i32 11328
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 64
  %modify_hdr.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %modify_hdr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modify_hdr.i, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %9, ptr noundef %11) #11
  %post_act_handle.i = getelementptr inbounds %struct.mlx5_ct_flow, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %post_act_handle.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %post_act_handle.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.__mlx5_tc_ct_delete_flow.exit_crit_edge, label %if.then.i

if.end.__mlx5_tc_ct_delete_flow.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mlx5_tc_ct_delete_flow.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %chains.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %priv, i32 0, i32 14
  %14 = ptrtoint ptr %chains.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chains.i, align 4
  %chain_mapping.i = getelementptr inbounds %struct.mlx5_ct_flow, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %chain_mapping.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chain_mapping.i, align 4
  %call2.i = tail call i32 @mlx5_chains_put_chain_mapping(ptr noundef %15, i32 noundef %17) #11
  %post_act.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %priv, i32 0, i32 9
  %18 = ptrtoint ptr %post_act.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %post_act.i, align 4
  %20 = ptrtoint ptr %post_act_handle.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %post_act_handle.i, align 4
  tail call void @mlx5e_tc_post_act_del(ptr noundef %19, ptr noundef %21) #11
  %ft.i = getelementptr inbounds %struct.mlx5_ct_flow, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %ft.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ft.i, align 4
  tail call fastcc void @mlx5_tc_ct_del_ft_cb(ptr noundef %priv, ptr noundef %23) #11
  br label %__mlx5_tc_ct_delete_flow.exit

__mlx5_tc_ct_delete_flow.exit:                    ; preds = %if.then.i, %if.end.__mlx5_tc_ct_delete_flow.exit_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %25) #11
  tail call void @kfree(ptr noundef nonnull %1) #11
  tail call void @mutex_unlock(ptr noundef %control_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %__mlx5_tc_ct_delete_flow.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_tc_ct_init(ptr nocapture noundef readonly %priv, ptr noundef %chains, ptr noundef %mod_hdr, i32 noundef %ns_type, ptr noundef %post_act) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch.i, align 4
  %tobool.not.i.i = icmp eq ptr %post_act, null
  %cmp.i.i = icmp ugt ptr %post_act, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %entry
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.do.body11.i_crit_edge

if.then.i.do.body11.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ns_type)
  %cmp5.i = icmp eq i32 %ns_type, 8
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end_crit_edge

if.end4.i.if.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then6.i:                                       ; preds = %if.end4.i
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %arrayidx.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %7, i32 0, i32 8, i32 0, i32 8
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i32, ptr %9, i32 16
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i.i, align 4
  %12 = and i32 %11, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %12)
  %13 = icmp eq i32 %12, 3145728
  br i1 %13, label %if.end.i.i, label %if.then6.i.do.body11.i_crit_edge

if.then6.i.do.body11.i_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

if.end.i.i:                                       ; preds = %if.then6.i
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i24.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i24.i, label %if.end.i.i.do.body11.i_crit_edge, label %if.end3.i.i

if.end.i.i.do.body11.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %call4.i.i = tail call zeroext i1 @mlx5_eswitch_reg_c1_loopback_enabled(ptr noundef %3) #11
  br i1 %call4.i.i, label %if.end3.i.i.if.end_crit_edge, label %if.end3.i.i.do.body11.i_crit_edge

if.end3.i.i.do.body11.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11.i

if.end3.i.i.if.end_crit_edge:                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body11.i:                                      ; preds = %if.end3.i.i.do.body11.i_crit_edge, %if.end.i.i.do.body11.i_crit_edge, %if.then6.i.do.body11.i_crit_edge, %if.then.i.do.body11.i_crit_edge
  %err_msg.1.ph.ph.i = phi ptr [ @.str.69, %if.then.i.do.body11.i_crit_edge ], [ @.str.72, %if.then6.i.do.body11.i_crit_edge ], [ @.str.73, %if.end.i.i.do.body11.i_crit_edge ], [ @.str.74, %if.end3.i.i.do.body11.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_init_check_support.__UNIQUE_ID_ddebug734, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_init, %if.then16.i)) #11
          to label %cleanup [label %if.then16.i], !srcloc !199

if.then16.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %17 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_init_check_support.__UNIQUE_ID_ddebug734, ptr noundef %18, ptr noundef nonnull @.str.71, ptr noundef nonnull %err_msg.1.ph.ph.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end3.i.i.if.end_crit_edge, %if.end4.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 912) #14
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @mlx5_query_nic_system_image_guid(ptr noundef %1) #11
  %call6 = tail call ptr @mapping_create_for_id(i64 noundef %call5, i8 noundef zeroext 4, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true) #11
  %zone_mapping = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 11
  %20 = ptrtoint ptr %zone_mapping to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6, ptr %zone_mapping, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.err_mapping_zone_crit_edge, label %if.end12

if.end4.err_mapping_zone_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping_zone

if.end12:                                         ; preds = %if.end4
  %call13 = tail call ptr @mapping_create_for_id(i64 noundef %call5, i8 noundef zeroext 3, i32 noundef 16, i32 noundef 0, i1 noundef zeroext true) #11
  %labels_mapping = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 12
  %21 = ptrtoint ptr %labels_mapping to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call13, ptr %labels_mapping, align 8
  %cmp.i122 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.end12.err_mapping_labels_crit_edge, label %do.body

if.end12.err_mapping_labels_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping_labels

do.body:                                          ; preds = %if.end12
  %ht_lock = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %ht_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_tc_ct_init.__key, i16 noundef signext 3) #11
  %ns_type21 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %ns_type21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %ns_type, ptr %ns_type21, align 4
  %chains22 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 14
  %23 = ptrtoint ptr %chains22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %chains, ptr %chains22, align 8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %24 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev, align 4
  %netdev23 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %netdev23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %netdev23, align 4
  %27 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev, align 64
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %call7.i.i, align 8
  %mod_hdr_tbl = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %mod_hdr_tbl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mod_hdr, ptr %mod_hdr_tbl, align 8
  %call26 = tail call ptr @mlx5_chains_create_global_table(ptr noundef %chains) #11
  %ct = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 7
  %31 = ptrtoint ptr %ct to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call26, ptr %ct, align 4
  %cmp.i123 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then29, label %if.end36

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %call26 to i32
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %35 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 68
  %39 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2171, i32 noundef %40, ptr noundef nonnull @.str.11, i32 noundef %32) #15
  br label %err_ct_tbl

if.end36:                                         ; preds = %do.body
  %call37 = tail call ptr @mlx5_chains_create_global_table(ptr noundef %chains) #11
  %ct_nat = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %ct_nat to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call37, ptr %ct_nat, align 8
  %cmp.i124 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i124, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %call37 to i32
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %45 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i125 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i125 to ptr
  %task48 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %task48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %task48, align 8
  %pid49 = getelementptr inbounds %struct.task_struct, ptr %48, i32 0, i32 68
  %49 = ptrtoint ptr %pid49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid49, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7, i32 noundef 2180, i32 noundef %50, ptr noundef nonnull @.str.11, i32 noundef %42) #15
  br label %err_ct_nat_tbl

if.end50:                                         ; preds = %if.end36
  %post_act51 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 9
  %51 = ptrtoint ptr %post_act51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %post_act, ptr %post_act51, align 4
  %control_lock = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %control_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mlx5_tc_ct_init.__key.15) #11
  %zone_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 4
  %call55 = tail call i32 @rhashtable_init(ptr noundef %zone_ht, ptr noundef nonnull @zone_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end50.err_ct_zone_ht_crit_edge

if.end50.err_ct_zone_ht_crit_edge:                ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ct_zone_ht

if.end58:                                         ; preds = %if.end50
  %ct_tuples_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 5
  %call59 = tail call i32 @rhashtable_init(ptr noundef %ct_tuples_ht, ptr noundef nonnull @tuples_ht_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.err_ct_tuples_ht_crit_edge

if.end58.err_ct_tuples_ht_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_ct_tuples_ht

if.end62:                                         ; preds = %if.end58
  %ct_tuples_nat_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %call7.i.i, i32 0, i32 6
  %call63 = tail call i32 @rhashtable_init(ptr noundef %ct_tuples_nat_ht, ptr noundef nonnull @tuples_nat_ht_params) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end62.cleanup_crit_edge, label %err_ct_tuples_nat_ht

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_ct_tuples_nat_ht:                             ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rhashtable_destroy(ptr noundef %ct_tuples_ht) #11
  br label %err_ct_tuples_ht

err_ct_tuples_ht:                                 ; preds = %err_ct_tuples_nat_ht, %if.end58.err_ct_tuples_ht_crit_edge
  tail call void @rhashtable_destroy(ptr noundef %zone_ht) #11
  br label %err_ct_zone_ht

err_ct_zone_ht:                                   ; preds = %err_ct_tuples_ht, %if.end50.err_ct_zone_ht_crit_edge
  %52 = ptrtoint ptr %ct_nat to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ct_nat, align 8
  tail call void @mlx5_chains_destroy_global_table(ptr noundef %chains, ptr noundef %53) #11
  br label %err_ct_nat_tbl

err_ct_nat_tbl:                                   ; preds = %err_ct_zone_ht, %if.then40
  %54 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ct, align 4
  tail call void @mlx5_chains_destroy_global_table(ptr noundef %chains, ptr noundef %55) #11
  br label %err_ct_tbl

err_ct_tbl:                                       ; preds = %err_ct_nat_tbl, %if.then29
  %56 = ptrtoint ptr %labels_mapping to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %labels_mapping, align 8
  tail call void @mapping_destroy(ptr noundef %57) #11
  br label %err_mapping_labels

err_mapping_labels:                               ; preds = %err_ct_tbl, %if.end12.err_mapping_labels_crit_edge
  %58 = ptrtoint ptr %zone_mapping to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %zone_mapping, align 4
  tail call void @mapping_destroy(ptr noundef %59) #11
  br label %err_mapping_zone

err_mapping_zone:                                 ; preds = %err_mapping_labels, %if.end4.err_mapping_zone_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_mapping_zone, %if.end62.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then16.i, %do.body11.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end62.cleanup_crit_edge ], [ null, %err_mapping_zone ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ], [ null, %do.body11.i ], [ null, %if.then16.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5_query_nic_system_image_guid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mapping_create_for_id(i64 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_chains_create_global_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_chains_destroy_global_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mapping_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_tc_ct_clean(ptr noundef %ct_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ct_priv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %chains1 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 14
  %0 = ptrtoint ptr %chains1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chains1, align 4
  %ct_nat = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 8
  %2 = ptrtoint ptr %ct_nat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_nat, align 4
  tail call void @mlx5_chains_destroy_global_table(ptr noundef %1, ptr noundef %3) #11
  %ct = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 7
  %4 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ct, align 4
  tail call void @mlx5_chains_destroy_global_table(ptr noundef %1, ptr noundef %5) #11
  %zone_mapping = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 11
  %6 = ptrtoint ptr %zone_mapping to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zone_mapping, align 4
  tail call void @mapping_destroy(ptr noundef %7) #11
  %labels_mapping = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 12
  %8 = ptrtoint ptr %labels_mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %labels_mapping, align 4
  tail call void @mapping_destroy(ptr noundef %9) #11
  %ct_tuples_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 5
  tail call void @rhashtable_destroy(ptr noundef %ct_tuples_ht) #11
  %ct_tuples_nat_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 6
  tail call void @rhashtable_destroy(ptr noundef %ct_tuples_nat_ht) #11
  %zone_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 4
  tail call void @rhashtable_destroy(ptr noundef %zone_ht) #11
  %control_lock = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 10
  tail call void @mutex_destroy(ptr noundef %control_lock) #11
  tail call void @kfree(ptr noundef nonnull %ct_priv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_tc_ct_restore_flow(ptr noundef %ct_priv, ptr noundef %skb, i8 noundef zeroext %zone_restore_id) local_unnamed_addr #0 align 64 {
entry:
  %flow_keys.i = alloca %struct.flow_keys, align 8
  %tuple = alloca %struct.mlx5_ct_tuple, align 4
  %zone = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tuple) #11
  %0 = call ptr @memset(ptr %tuple, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zone) #11
  %1 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %zone, align 2, !annotation !198
  %tobool.not = icmp eq ptr %ct_priv, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %zone_restore_id)
  %tobool2.not = icmp eq i8 %zone_restore_id, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %zone_mapping = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 11
  %2 = ptrtoint ptr %zone_mapping to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zone_mapping, align 4
  %conv = zext i8 %zone_restore_id to i32
  %call = call i32 @mapping_find(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %zone) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %zone, align 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %flow_keys.i) #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %11 = call ptr @memset(ptr %flow_keys.i, i32 0, i32 72)
  %call.i.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %skb, ptr noundef nonnull @flow_keys_dissector, ptr noundef nonnull %flow_keys.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  %zone1.i = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 5
  %12 = ptrtoint ptr %zone1.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %5, ptr %zone1.i, align 4
  %ip_proto.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ip_proto.i, align 2
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %if.end5.mlx5_tc_ct_skb_to_tuple.exit_crit_edge [
    i8 6, label %if.end5.if.end.i_crit_edge
    i8 17, label %if.end5.if.end.i_crit_edge36
  ]

if.end5.if.end.i_crit_edge36:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end5.mlx5_tc_ct_skb_to_tuple.exit_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_skb_to_tuple.exit

if.end.i:                                         ; preds = %if.end5.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge36
  %basic.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys.i, i32 0, i32 1
  %ports.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys.i, i32 0, i32 6
  %16 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ports.i, align 4
  %port.i = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 4
  %18 = ptrtoint ptr %port.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %port.i, align 4
  %dst.i = getelementptr inbounds %struct.anon.207, ptr %ports.i, i32 0, i32 1
  %19 = ptrtoint ptr %dst.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dst.i, align 2
  %dst11.i = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %dst11.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %dst11.i, align 2
  %22 = ptrtoint ptr %basic.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %basic.i, align 8
  %n_proto13.i = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 1
  %24 = ptrtoint ptr %n_proto13.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %n_proto13.i, align 2
  %ip_proto16.i = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 2
  %25 = ptrtoint ptr %ip_proto16.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %14, ptr %ip_proto16.i, align 4
  %26 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %23, label %if.end.i.mlx5_tc_ct_skb_to_tuple.exit_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb24.i
  ]

if.end.i.mlx5_tc_ct_skb_to_tuple.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_skb_to_tuple.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %tuple to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %tuple, align 4
  %addrs.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys.i, i32 0, i32 8
  %28 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addrs.i, align 4
  %ip.i = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 3
  %30 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ip.i, align 4
  %dst22.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys.i, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %dst22.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dst22.i, align 8
  %33 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %33, align 4
  br label %if.end8

sw.bb24.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %tuple to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 3, ptr %tuple, align 4
  %ip26.i = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 3
  %addrs27.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys.i, i32 0, i32 8
  %36 = call ptr @memcpy(ptr %ip26.i, ptr %addrs27.i, i32 16)
  %37 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %tuple, i32 0, i32 3, i32 1
  %dst31.i = getelementptr inbounds %struct.flow_keys, ptr %flow_keys.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %38 = call ptr @memcpy(ptr %37, ptr %dst31.i, i32 16)
  br label %if.end8

mlx5_tc_ct_skb_to_tuple.exit:                     ; preds = %if.end.i.mlx5_tc_ct_skb_to_tuple.exit_crit_edge, %if.end5.mlx5_tc_ct_skb_to_tuple.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %flow_keys.i) #11
  br label %cleanup

if.end8:                                          ; preds = %sw.bb24.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %flow_keys.i) #11
  %ht_lock = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 15
  call void @_raw_spin_lock(ptr noundef %ht_lock) #11
  %call9 = call fastcc ptr @mlx5_tc_ct_entry_get(ptr noundef nonnull %ct_priv, ptr noundef nonnull %tuple)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %ht_lock) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  call void @_raw_spin_unlock(ptr noundef %ht_lock) #11
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %restore_cookie = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 5
  %39 = ptrtoint ptr %restore_cookie to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %restore_cookie, align 4
  %and1.i = and i32 %40, -8
  %41 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i.i, label %if.end17.tcf_ct_flow_table_restore_skb.exit_crit_edge, label %if.then.i.i

if.end17.tcf_ct_flow_table_restore_skb.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_ct_flow_table_restore_skb.exit

if.then.i.i:                                      ; preds = %if.end17
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %41, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull %41, i32 1, i32 3, i32 1) #11
  %42 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %41, ptr nonnull %41, i32 1, ptr nonnull elementtype(i32) %41) #11, !srcloc !200
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !201

if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.tcf_ct_flow_table_restore_skb.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !202

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.tcf_ct_flow_table_restore_skb.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_ct_flow_table_restore_skb.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %41, i32 noundef %.sink.i.i.i.i.i) #11
  br label %tcf_ct_flow_table_restore_skb.exit

tcf_ct_flow_table_restore_skb.exit:               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.tcf_ct_flow_table_restore_skb.exit_crit_edge, %if.end17.tcf_ct_flow_table_restore_skb.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i = icmp eq i32 %40, 0
  %slow_gro.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %44 = ptrtoint ptr %slow_gro.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i.i, align 2
  %bf.load.mask.i.i.i = and i32 %bf.load.i.i.i, 4096
  %bf.shl.i.i.i = select i1 %tobool.not.i.i.i, i32 %bf.load.mask.i.i.i, i32 4096
  %bf.clear4.i.i.i = and i32 %bf.load.i.i.i, -4097
  %bf.set.i.i.i = or i32 %bf.shl.i.i.i, %bf.clear4.i.i.i
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i.i, align 2
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %45 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %40, ptr %_nfct.i.i.i, align 8
  %refcnt.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #11, !srcloc !204
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i, label %if.end.i34, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %tcf_ct_flow_table_restore_skb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !202

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #11
  br label %cleanup

if.end.i34:                                       ; preds = %tcf_ct_flow_table_restore_skb.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !205
  %ct_priv.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 9
  %47 = ptrtoint ptr %ct_priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ct_priv.i, align 4
  %netdev.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev.i, align 4
  %work.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 10
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #11
  %51 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 10, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @__mlx5_tc_ct_entry_put.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry6.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %entry6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry6.i, ptr %entry6.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 10, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry6.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call9, i32 0, i32 10, i32 2
  %54 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @mlx5_tc_ct_entry_del_work, ptr %func.i, align 4
  %wq.i = getelementptr i8, ptr %50, i32 11088
  %55 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wq.i, align 16
  %call.i.i33 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %work.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i34, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then11, %mlx5_tc_ct_skb_to_tuple.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then11 ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %mlx5_tc_ct_skb_to_tuple.exit ], [ true, %if.end5.i.i.i.i.cleanup_crit_edge ], [ true, %if.then10.i.i.i.i ], [ true, %if.end.i34 ], [ false, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zone) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tuple) #11
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_tc_ct_entry_get(ptr noundef %ct_priv, ptr noundef %tuple) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i46 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_tuples_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 5
  %call = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_tuples_ht, ptr noundef %tuple, [7 x i32] [i32 48, i32 1572868, i32 0, i32 1073742080, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then6.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cond.true_crit_edge, label %land.lhs.true3

land.lhs.true.cond.true_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

land.lhs.true3:                                   ; preds = %land.lhs.true
  %refcnt = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true3
  %4 = phi i32 [ %3, %land.lhs.true3 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %7, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #11, !srcloc !206
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !202

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !202

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #11
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %13 = phi i32 [ %10, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.cond.true_crit_edge, label %refcount_inc_not_zero.exit.cleanup_crit_edge

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

refcount_inc_not_zero.exit.cond.true_crit_edge:   ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

if.then6.critedge:                                ; preds = %entry
  %ct_tuples_nat_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 6
  %call7 = tail call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_tuples_nat_ht, ptr noundef %tuple, [7 x i32] [i32 48, i32 4718600, i32 0, i32 1073742080, i32 0, i32 0, i32 0])
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then6.critedge.cleanup_crit_edge, label %land.lhs.true9

if.then6.critedge.cleanup_crit_edge:              ; preds = %if.then6.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true9:                                   ; preds = %if.then6.critedge
  %flags.i43 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7, i32 0, i32 12
  %14 = ptrtoint ptr %flags.i43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i43, align 4
  %and1.i.i44 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i44)
  %tobool.i45.not = icmp eq i32 %and1.i.i44, 0
  br i1 %tobool.i45.not, label %land.lhs.true9.cond.true_crit_edge, label %land.lhs.true11

land.lhs.true9.cond.true_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %refcnt12 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i46) #11
  %call.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt12, i32 noundef 4) #11
  %16 = ptrtoint ptr %refcnt12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refcnt12, align 4
  br label %do.body.i.i.i49

do.body.i.i.i49:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59.do.body.i.i.i49_crit_edge, %land.lhs.true11
  %18 = phi i32 [ %17, %land.lhs.true11 ], [ %asmresult3.i.i.i.i.i.i57, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59.do.body.i.i.i49_crit_edge ]
  %19 = ptrtoint ptr %old.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %old.i.i.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i48 = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i48, label %do.body.i.i.i49.if.end4.i.i.i62_crit_edge, label %do.cond.i.i.i53

do.body.i.i.i49.if.end4.i.i.i62_crit_edge:        ; preds = %do.body.i.i.i49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i62

do.cond.i.i.i53:                                  ; preds = %do.body.i.i.i49
  %add.i.i.i50 = add i32 %18, 1
  %call.i.i.i.i.i51 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt12, i32 noundef 4) #11
  %call.i3.i.i.i.i52 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i46, i32 noundef 4) #11
  %20 = ptrtoint ptr %old.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %old.i.i.i46, align 4
  call void @llvm.prefetch.p0(ptr %refcnt12, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i56

do.body.i.i.i.i.i.i56:                            ; preds = %do.body.i.i.i.i.i.i56.do.body.i.i.i.i.i.i56_crit_edge, %do.cond.i.i.i53
  %22 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt12, ptr %refcnt12, i32 %21, i32 %add.i.i.i50, ptr elementtype(i32) %refcnt12) #11, !srcloc !206
  %asmresult.i.i.i.i.i.i54 = extractvalue { i32, i32 } %22, 0
  %tobool.not.i.i.i.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i.i54, 0
  br i1 %tobool.not.i.i.i.i.i.i55, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59, label %do.body.i.i.i.i.i.i56.do.body.i.i.i.i.i.i56_crit_edge

do.body.i.i.i.i.i.i56.do.body.i.i.i.i.i.i56_crit_edge: ; preds = %do.body.i.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i56

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59:     ; preds = %do.body.i.i.i.i.i.i56
  %asmresult3.i.i.i.i.i.i57 = extractvalue { i32, i32 } %22, 1
  %cmp.not.i.i.i.i.i58 = icmp eq i32 %asmresult3.i.i.i.i.i.i57, %21
  br i1 %cmp.not.i.i.i.i.i58, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59.if.end4.i.i.i62_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59.do.body.i.i.i49_crit_edge, !prof !202

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59.do.body.i.i.i49_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i49

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59.if.end4.i.i.i62_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i62

if.end4.i.i.i62:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i59.if.end4.i.i.i62_crit_edge, %do.body.i.i.i49.if.end4.i.i.i62_crit_edge
  %23 = ptrtoint ptr %old.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %old.i.i.i46, align 4
  %add5.i.i.i60 = add i32 %24, 1
  %25 = or i32 %add5.i.i.i60, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %.not.i.i.i61 = icmp sgt i32 %25, -1
  br i1 %.not.i.i.i61, label %if.end4.i.i.i62.refcount_inc_not_zero.exit65_crit_edge, label %if.then10.i.i.i63, !prof !202

if.end4.i.i.i62.refcount_inc_not_zero.exit65_crit_edge: ; preds = %if.end4.i.i.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit65

if.then10.i.i.i63:                                ; preds = %if.end4.i.i.i62
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt12, i32 noundef 0) #11
  %26 = ptrtoint ptr %old.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr66 = load i32, ptr %old.i.i.i46, align 4
  br label %refcount_inc_not_zero.exit65

refcount_inc_not_zero.exit65:                     ; preds = %if.then10.i.i.i63, %if.end4.i.i.i62.refcount_inc_not_zero.exit65_crit_edge
  %27 = phi i32 [ %24, %if.end4.i.i.i62.refcount_inc_not_zero.exit65_crit_edge ], [ %.pr66, %if.then10.i.i.i63 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool12.i.i.i64.not = icmp eq i32 %27, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i46) #11
  br i1 %tobool12.i.i.i64.not, label %refcount_inc_not_zero.exit65.cond.true_crit_edge, label %refcount_inc_not_zero.exit65.cleanup_crit_edge

refcount_inc_not_zero.exit65.cleanup_crit_edge:   ; preds = %refcount_inc_not_zero.exit65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

refcount_inc_not_zero.exit65.cond.true_crit_edge: ; preds = %refcount_inc_not_zero.exit65
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.true

cond.true:                                        ; preds = %refcount_inc_not_zero.exit65.cond.true_crit_edge, %land.lhs.true9.cond.true_crit_edge, %refcount_inc_not_zero.exit.cond.true_crit_edge, %land.lhs.true.cond.true_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %refcount_inc_not_zero.exit65.cleanup_crit_edge, %if.then6.critedge.cleanup_crit_edge, %refcount_inc_not_zero.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %refcount_inc_not_zero.exit.cleanup_crit_edge ], [ %call7, %refcount_inc_not_zero.exit65.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %cond.true ], [ null, %if.then6.critedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mapping_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_match_to_reg_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_alloc_flow_attr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_tc_rule_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_post_act_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_chains_get_chain_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_post_act_set_handle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_get_flow_tun_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_mod_hdr_dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_chains_put_chain_mapping(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_post_act_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tc_ct_del_ft_cb(ptr noundef %ct_priv, ptr noundef %ft) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !202

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !205
  %nf_ft = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 4
  %1 = ptrtoint ptr %nf_ft to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nf_ft, align 4
  %flow_block.i = getelementptr inbounds %struct.nf_flowtable, ptr %2, i32 0, i32 6
  %flow_block_lock.i = getelementptr inbounds %struct.nf_flowtable, ptr %2, i32 0, i32 7
  tail call void @down_write(ptr noundef %flow_block_lock.i) #11
  %call.i = tail call ptr @flow_block_cb_lookup(ptr noundef %flow_block.i, ptr noundef nonnull @mlx5_tc_ct_block_flow_offload, ptr noundef %ft) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %list.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @flow_block_cb_free(ptr noundef nonnull %call.i) #11
  br label %nf_flow_table_offload_del_cb.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 257, i32 noundef 9, ptr noundef null) #11
  br label %nf_flow_table_offload_del_cb.exit

nf_flow_table_offload_del_cb.exit:                ; preds = %do.end.i, %list_del.exit.i
  tail call void @up_write(ptr noundef %flow_block_lock.i) #11
  %zone_ht = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 4
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %zone_ht, ptr noundef %ft, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0])
  %ct_entries_ht = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 6
  tail call void @rhashtable_free_and_destroy(ptr noundef %ct_entries_ht, ptr noundef nonnull @mlx5_tc_ct_flush_ft_entry, ptr noundef %ct_priv) #11
  tail call fastcc void @mlx5_tc_ct_free_pre_ct_tables(ptr noundef %ft)
  %zone_mapping = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 11
  %11 = ptrtoint ptr %zone_mapping to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %zone_mapping, align 4
  %zone_restore_id = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 2
  %13 = ptrtoint ptr %zone_restore_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %zone_restore_id, align 4
  %call2 = tail call i32 @mapping_remove(ptr noundef %12, i32 noundef %14) #11
  tail call void @kfree(ptr noundef %ft) #11
  br label %return

return:                                           ; preds = %nf_flow_table_offload_del_cb.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #11
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 594, ptr noundef nonnull @.str.36) #11
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #11
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !202

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #11
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 369, ptr noundef nonnull @.str.36) #11
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !209
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.37, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_lookup.__warned.37, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 614, ptr noundef nonnull @.str.36) #11
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !202

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #11
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #11
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.38) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %43 = call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_flow_table_offload_add_cb(ptr noundef %flow_table, ptr noundef %cb_priv) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %flow_block = getelementptr inbounds %struct.nf_flowtable, ptr %flow_table, i32 0, i32 6
  %flow_block_lock = getelementptr inbounds %struct.nf_flowtable, ptr %flow_table, i32 0, i32 7
  tail call void @down_write(ptr noundef %flow_block_lock) #11
  %call = tail call ptr @flow_block_cb_lookup(ptr noundef %flow_block, ptr noundef nonnull @mlx5_tc_ct_block_flow_offload, ptr noundef %cb_priv) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @flow_block_cb_alloc(ptr noundef nonnull @mlx5_tc_ct_block_flow_offload, ptr noundef %cb_priv, ptr noundef %cb_priv, ptr noundef null) #11
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %call1 to i32
  br label %unlock

if.end5:                                          ; preds = %if.end
  %list = getelementptr inbounds %struct.flow_block_cb, ptr %call1, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.nf_flowtable, ptr %flow_table, i32 0, i32 6, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %2, ptr noundef %flow_block) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %flow_block, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %call1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %2, align 4
  br label %unlock

unlock:                                           ; preds = %if.end.i.i, %if.end5.unlock_crit_edge, %if.then3, %entry.unlock_crit_edge
  %err.0 = phi i32 [ %0, %if.then3 ], [ -17, %entry.unlock_crit_edge ], [ 0, %if.end5.unlock_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @up_write(ptr noundef %flow_block_lock) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5_tc_ct_block_flow_offload(i32 noundef %type, ptr nocapture noundef %type_data, ptr noundef %cb_priv) #0 align 64 {
entry:
  %old.i.i.i.i21 = alloca i32, align 4
  %cookie.i22 = alloca i32, align 4
  %lastuse.i = alloca i64, align 8
  %packets.i = alloca i64, align 8
  %bytes.i = alloca i64, align 8
  %cookie.i11 = alloca i32, align 4
  %control.i.i = alloca %struct.flow_match_control, align 4
  %basic.i.i = alloca %struct.flow_match_basic, align 4
  %match.i.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match16.i.i = alloca %struct.flow_match_ipv6_addrs, align 4
  %match26.i.i = alloca %struct.flow_match_ports, align 4
  %old.i.i.i.i = alloca i32, align 4
  %cookie.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp.not = icmp eq i32 %type, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %command = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 1
  %0 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %command, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %rule.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 3
  %3 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rule.i.i, align 8
  %ct_priv1.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 5
  %5 = ptrtoint ptr %ct_priv1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ct_priv1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cookie.i) #11
  %cookie2.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cookie2.i, align 4
  %9 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cookie.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %4, i32 0, i32 1
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %4, i32 1
  %10 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp10.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp10.not.i.i, label %sw.bb.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, label %sw.bb.for.body.i.i_crit_edge

sw.bb.for.body.i.i_crit_edge:                     ; preds = %sw.bb
  br label %for.body.i.i

sw.bb.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_block_flow_offload_add.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb.for.body.i.i_crit_edge ]
  %act.011.i.i = phi ptr [ %arrayidx3.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %entries.i.i, %sw.bb.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %act.011.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %act.011.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %cmp1.i.i = icmp eq i32 %13, 24
  br i1 %cmp1.i.i, label %mlx5_tc_ct_get_ct_metadata_action.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %arrayidx3.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %11
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_block_flow_offload_add.exit

mlx5_tc_ct_get_ct_metadata_action.exit.i:         ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %act.011.i.i, null
  br i1 %tobool.not.i, label %mlx5_tc_ct_get_ct_metadata_action.exit.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, label %if.end.i

mlx5_tc_ct_get_ct_metadata_action.exit.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge: ; preds = %mlx5_tc_ct_get_ct_metadata_action.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_block_flow_offload_add.exit

if.end.i:                                         ; preds = %mlx5_tc_ct_get_ct_metadata_action.exit.i
  %ht_lock.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %6, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %ht_lock.i) #11
  %ct_entries_ht.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 6
  %call5.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_entries_ht.i, ptr noundef nonnull %cookie.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %refcnt.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call5.i, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #11
  %14 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %16 = phi i32 [ %15, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %16, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #11
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 %19, i32 %add.i.i.i.i, ptr elementtype(i32) %refcnt.i) #11, !srcloc !206
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %19
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !202

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %21 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %22, 1
  %23 = or i32 %add5.i.i.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !202

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 0) #11
  %24 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %25 = phi i32 [ %22, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.i.not.i = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #11
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.if.end10.i_crit_edge, label %if.then8.i

refcount_inc_not_zero.exit.i.if.end10.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then8.i:                                       ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i) #11
  call fastcc void @mlx5_tc_ct_entry_put(ptr noundef nonnull %call5.i) #11
  br label %mlx5_tc_ct_block_flow_offload_add.exit

if.end10.i:                                       ; preds = %refcount_inc_not_zero.exit.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 208) #14
  %tobool13.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool13.not.i, label %if.end10.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, label %if.end15.i

if.end10.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_block_flow_offload_add.exit

if.end15.i:                                       ; preds = %if.end10.i
  %zone.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 1
  %27 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %zone.i, align 4
  %tuple.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6
  %zone16.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %29 = ptrtoint ptr %zone16.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %zone16.i, align 4
  %30 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cookie2.i, align 4
  %cookie18.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %cookie18.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cookie18.i, align 8
  %33 = getelementptr inbounds %struct.flow_action_entry, ptr %act.011.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %restore_cookie.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %restore_cookie.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %restore_cookie.i, align 4
  %refcnt20.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt20.i, i32 noundef 4) #11
  %37 = ptrtoint ptr %refcnt20.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 2, ptr %refcnt20.i, align 8
  %ct_priv21.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 9
  %38 = ptrtoint ptr %ct_priv21.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %6, ptr %ct_priv21.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %control.i.i) #11
  %39 = ptrtoint ptr %control.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %control.i.i, align 4, !annotation !198
  %40 = getelementptr inbounds %struct.flow_match_control, ptr %control.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -1 to ptr), ptr %40, align 4, !annotation !198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %basic.i.i) #11
  %42 = ptrtoint ptr %basic.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -1 to ptr), ptr %basic.i.i, align 4, !annotation !198
  %43 = getelementptr inbounds %struct.flow_match_basic, ptr %basic.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -1 to ptr), ptr %43, align 4, !annotation !198
  call void @flow_rule_match_basic(ptr noundef %4, ptr noundef nonnull %basic.i.i) #11
  call void @flow_rule_match_control(ptr noundef %4, ptr noundef nonnull %control.i.i) #11
  %45 = ptrtoint ptr %basic.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %basic.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 2
  %n_proto1.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %n_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %n_proto1.i.i, align 2
  %ip_proto.i.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %ip_proto.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %ip_proto.i.i, align 2
  %ip_proto3.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %52 = ptrtoint ptr %ip_proto3.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %ip_proto3.i.i, align 4
  %53 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %control.i.i, align 4
  %addr_type.i.i = getelementptr inbounds %struct.flow_dissector_key_control, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %addr_type.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr_type.i.i, align 2
  %57 = ptrtoint ptr %tuple.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %tuple.i, align 8
  %58 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %56, label %if.end15.i.mlx5_tc_ct_rule_to_tuple.exit.thread.i_crit_edge [
    i16 2, label %if.then.i.i
    i16 3, label %if.then15.i.i
  ]

if.end15.i.mlx5_tc_ct_rule_to_tuple.exit.thread.i_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_rule_to_tuple.exit.thread.i

if.then.i.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i.i) #11
  %59 = ptrtoint ptr %match.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i.i, align 4, !annotation !198
  %60 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %60, align 4, !annotation !198
  call void @flow_rule_match_ipv4_addrs(ptr noundef %4, ptr noundef nonnull %match.i.i) #11
  %62 = ptrtoint ptr %match.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %match.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %ip.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %66 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %ip.i.i, align 8
  %dst.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %63, i32 0, i32 1
  %67 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dst.i.i, align 4
  %69 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 3, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %68, ptr %69, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i.i) #11
  br label %if.end24.i.i

if.then15.i.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match16.i.i) #11
  %71 = ptrtoint ptr %match16.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -1 to ptr), ptr %match16.i.i, align 4, !annotation !198
  %72 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match16.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 -1 to ptr), ptr %72, align 4, !annotation !198
  call void @flow_rule_match_ipv6_addrs(ptr noundef %4, ptr noundef nonnull %match16.i.i) #11
  %ip17.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %74 = ptrtoint ptr %match16.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %match16.i.i, align 4
  %76 = call ptr @memcpy(ptr %ip17.i.i, ptr %75, i32 16)
  %77 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 3, i32 1
  %dst22.i.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %75, i32 0, i32 1
  %78 = call ptr @memcpy(ptr %77, ptr %dst22.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match16.i.i) #11
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then15.i.i, %if.then.i.i
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %4, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 4
  %and.i.i.i.i = and i32 %82, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %if.end24.i.i.mlx5_tc_ct_rule_to_tuple.exit.thread.i_crit_edge, label %if.then25.i.i

if.end24.i.i.mlx5_tc_ct_rule_to_tuple.exit.thread.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_rule_to_tuple.exit.thread.i

if.then25.i.i:                                    ; preds = %if.end24.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match26.i.i) #11
  %83 = ptrtoint ptr %match26.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 -1 to ptr), ptr %match26.i.i, align 4, !annotation !198
  %84 = getelementptr inbounds %struct.flow_match_ports, ptr %match26.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 -1 to ptr), ptr %84, align 4, !annotation !198
  call void @flow_rule_match_ports(ptr noundef %4, ptr noundef nonnull %match26.i.i) #11
  %86 = ptrtoint ptr %ip_proto3.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ip_proto3.i.i, align 4
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %87, label %cleanup.i.i [
    i8 6, label %if.then25.i.i.if.end26.i_crit_edge
    i8 17, label %if.then25.i.i.if.end26.i_crit_edge68
  ]

if.then25.i.i.if.end26.i_crit_edge68:             ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

if.then25.i.i.if.end26.i_crit_edge:               ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

cleanup.i.i:                                      ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match26.i.i) #11
  br label %mlx5_tc_ct_rule_to_tuple.exit.thread.i

mlx5_tc_ct_rule_to_tuple.exit.thread.i:           ; preds = %cleanup.i.i, %if.end24.i.i.mlx5_tc_ct_rule_to_tuple.exit.thread.i_crit_edge, %if.end15.i.mlx5_tc_ct_rule_to_tuple.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %basic.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %control.i.i) #11
  br label %err_set.thread.i

if.end26.i:                                       ; preds = %if.then25.i.i.if.end26.i_crit_edge, %if.then25.i.i.if.end26.i_crit_edge68
  %89 = ptrtoint ptr %match26.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %match26.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %90, align 4
  %port.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 4
  %93 = ptrtoint ptr %port.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %port.i.i, align 8
  %dst33.i.i = getelementptr inbounds %struct.anon.207, ptr %90, i32 0, i32 1
  %94 = ptrtoint ptr %dst33.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %dst33.i.i, align 2
  %dst35.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 6, i32 4, i32 1
  %96 = ptrtoint ptr %dst35.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %dst35.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match26.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %basic.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %control.i.i) #11
  %tuple_nat.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 7
  %97 = call ptr @memcpy(ptr %tuple_nat.i, ptr %tuple.i, i32 48)
  %98 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp94.not.i.i = icmp eq i32 %99, 0
  br i1 %cmp94.not.i.i, label %if.end26.i.if.end32.i_crit_edge, label %for.body.lr.ph.i.i

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

for.body.lr.ph.i.i:                               ; preds = %if.end26.i
  %dst52.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 7, i32 4, i32 1
  %port44.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 7, i32 4
  %100 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 7, i32 3, i32 1
  %ip15.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  br label %for.body.i181.i

for.body.i181.i:                                  ; preds = %for.inc.i183.i.for.body.i181.i_crit_edge, %for.body.lr.ph.i.i
  %i.096.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i182.i, %for.inc.i183.i.for.body.i181.i_crit_edge ]
  %act.095.i.i = phi ptr [ %entries.i.i, %for.body.lr.ph.i.i ], [ %arrayidx57.i.i, %for.inc.i183.i.for.body.i181.i_crit_edge ]
  %101 = ptrtoint ptr %act.095.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %act.095.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %102)
  %cmp1.not.i.i = icmp eq i32 %102, 13
  br i1 %cmp1.not.i.i, label %if.end.i.i, label %for.body.i181.i.for.inc.i183.i_crit_edge

for.body.i181.i.for.inc.i183.i_crit_edge:         ; preds = %for.body.i181.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i183.i

if.end.i.i:                                       ; preds = %for.body.i181.i
  %103 = getelementptr inbounds %struct.flow_action_entry, ptr %act.095.i.i, i32 0, i32 5
  %offset2.i.i = getelementptr inbounds %struct.anon.210, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset2.i.i, align 4
  %val3.i.i = getelementptr inbounds %struct.anon.210, ptr %103, i32 0, i32 3
  %106 = ptrtoint ptr %val3.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val3.i.i, align 4
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %103, align 8
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %109, label %if.end.i.i.err_set.thread.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb12.i.i
    i32 4, label %sw.bb27.i.i
    i32 5, label %sw.bb39.i.i
  ]

if.end.i.i.err_set.thread.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_set.thread.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %111 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %105, label %sw.bb.i.i.err_set.thread.i_crit_edge [
    i32 12, label %if.then5.i.i
    i32 16, label %if.then7.i.i
  ]

sw.bb.i.i.err_set.thread.i_crit_edge:             ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_set.thread.i

if.then5.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %112 = ptrtoint ptr %ip15.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %107, ptr %ip15.i.i, align 8
  br label %for.inc.i183.i

if.then7.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %107, ptr %100, align 8
  br label %for.inc.i183.i

sw.bb12.i.i:                                      ; preds = %if.end.i.i
  %sub.i.i = add i32 %105, -8
  %div93.i.i = lshr i32 %sub.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i)
  %cmp13.i.i = icmp ult i32 %sub.i.i, 16
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else17.i.i

if.then14.i.i:                                    ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx16.i.i = getelementptr [4 x i32], ptr %ip15.i.i, i32 0, i32 %div93.i.i
  %114 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %107, ptr %arrayidx16.i.i, align 4
  br label %for.inc.i183.i

if.else17.i.i:                                    ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i)
  %cmp18.i.i = icmp ult i32 %sub.i.i, 32
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.else17.i.i.err_set.thread.i_crit_edge

if.else17.i.i.err_set.thread.i_crit_edge:         ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_set.thread.i

if.then19.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub22.i.i = add nsw i32 %div93.i.i, -4
  %arrayidx23.i.i = getelementptr [4 x i32], ptr %100, i32 0, i32 %sub22.i.i
  %115 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %107, ptr %arrayidx23.i.i, align 4
  br label %for.inc.i183.i

sw.bb27.i.i:                                      ; preds = %if.end.i.i
  %116 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %105, label %sw.bb27.i.i.err_set.thread.i_crit_edge [
    i32 0, label %if.then29.i.i
    i32 2, label %if.then33.i.i
  ]

sw.bb27.i.i.err_set.thread.i_crit_edge:           ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_set.thread.i

if.then29.i.i:                                    ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i = trunc i32 %107 to i16
  %117 = ptrtoint ptr %port44.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i.i, ptr %port44.i.i, align 8
  br label %for.inc.i183.i

if.then33.i.i:                                    ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv34.i.i = trunc i32 %107 to i16
  %118 = ptrtoint ptr %dst52.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv34.i.i, ptr %dst52.i.i, align 2
  br label %for.inc.i183.i

sw.bb39.i.i:                                      ; preds = %if.end.i.i
  %119 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %105, label %sw.bb39.i.i.err_set.thread.i_crit_edge [
    i32 0, label %if.then42.i.i
    i32 2, label %if.then49.i.i
  ]

sw.bb39.i.i.err_set.thread.i_crit_edge:           ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_set.thread.i

if.then42.i.i:                                    ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv43.i.i = trunc i32 %107 to i16
  %120 = ptrtoint ptr %port44.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv43.i.i, ptr %port44.i.i, align 8
  br label %for.inc.i183.i

if.then49.i.i:                                    ; preds = %sw.bb39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv50.i.i = trunc i32 %107 to i16
  %121 = ptrtoint ptr %dst52.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv50.i.i, ptr %dst52.i.i, align 2
  br label %for.inc.i183.i

for.inc.i183.i:                                   ; preds = %if.then49.i.i, %if.then42.i.i, %if.then33.i.i, %if.then29.i.i, %if.then19.i.i, %if.then14.i.i, %if.then7.i.i, %if.then5.i.i, %for.body.i181.i.for.inc.i183.i_crit_edge
  %inc.i182.i = add nuw i32 %i.096.i.i, 1
  %arrayidx57.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i182.i
  %122 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %action.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i182.i, %123
  br i1 %cmp.i.i, label %for.inc.i183.i.for.body.i181.i_crit_edge, label %for.inc.i183.i.if.end32.i_crit_edge

for.inc.i183.i.if.end32.i_crit_edge:              ; preds = %for.inc.i183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

for.inc.i183.i.for.body.i181.i_crit_edge:         ; preds = %for.inc.i183.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i181.i

if.end32.i:                                       ; preds = %for.inc.i183.i.if.end32.i_crit_edge, %if.end26.i.if.end32.i_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %ht_lock.i) #11
  %obj_hashfn.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 6, i32 3, i32 8
  %124 = ptrtoint ptr %obj_hashfn.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %obj_hashfn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %125, null
  br i1 %tobool.not.i.i, label %rhashtable_lookup_insert_fast.exit.i, label %do.body3.i.i, !prof !202

do.body3.i.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #11, !srcloc !211
  unreachable

rhashtable_lookup_insert_fast.exit.i:             ; preds = %if.end32.i
  %head_offset.i.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 6, i32 3, i32 3
  %126 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %127 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call7.i.i.i, i32 %idx.neg.i.i.i
  %key_offset.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 6, i32 3, i32 2
  %128 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %key_offset.i.i, align 4
  %conv.i186.i = zext i16 %129 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv.i186.i
  %call10.i.i = call fastcc ptr @__rhashtable_insert_fast(ptr noundef %ct_entries_ht.i, ptr noundef %add.ptr.i.i, ptr noundef %call7.i.i.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %cmp.i.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  %130 = ptrtoint ptr %call10.i.i to i32
  %cmp.i187.i = icmp eq ptr %call10.i.i, null
  %cond.i.i = select i1 %cmp.i187.i, i32 0, i32 -17
  %retval.0.i188.i = select i1 %cmp.i.i.i, i32 %130, i32 %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i188.i)
  %tobool36.not.i = icmp eq i32 %retval.0.i188.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %rhashtable_lookup_insert_fast.exit.i.err_set.i_crit_edge

rhashtable_lookup_insert_fast.exit.i.err_set.i_crit_edge: ; preds = %rhashtable_lookup_insert_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_set.i

if.end38.i:                                       ; preds = %rhashtable_lookup_insert_fast.exit.i
  %ct_tuples_ht.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %6, i32 0, i32 5
  %tuple_node.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 1
  %call39.i = call fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %ct_tuples_ht.i, ptr noundef %tuple_node.i, [7 x i32] [i32 48, i32 1572868, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i.err_tuple.i_crit_edge

if.end38.i.err_tuple.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tuple.i

if.end42.i:                                       ; preds = %if.end38.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(48) %tuple.i, ptr noundef dereferenceable(48) %tuple_nat.i, i32 48) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool46.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool46.not.i, label %if.end42.i.if.end52.i_crit_edge, label %if.then47.i

if.end42.i.if.end52.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.then47.i:                                      ; preds = %if.end42.i
  %ct_tuples_nat_ht.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %6, i32 0, i32 6
  %tuple_nat_node.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 2
  %call48.i = call fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %ct_tuples_nat_ht.i, ptr noundef %tuple_nat_node.i, [7 x i32] [i32 48, i32 4718600, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then47.i.if.end52.i_crit_edge, label %if.then47.i.err_tuple_nat.i_crit_edge

if.then47.i.err_tuple_nat.i_crit_edge:            ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tuple_nat.i

if.then47.i.if.end52.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then47.i.if.end52.i_crit_edge, %if.end42.i.if.end52.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i) #11
  %zone_restore_id.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 2
  %131 = ptrtoint ptr %zone_restore_id.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %zone_restore_id.i, align 4
  %conv.i = trunc i32 %132 to i8
  %call54.i = call fastcc i32 @mlx5_tc_ct_entry_add_rules(ptr noundef %6, ptr noundef %4, ptr noundef nonnull %call7.i.i.i, i8 noundef zeroext %conv.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %err_rules.i

if.end57.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 12
  call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #11
  call fastcc void @mlx5_tc_ct_entry_put(ptr noundef nonnull %call7.i.i.i) #11
  br label %mlx5_tc_ct_block_flow_offload_add.exit

err_rules.i:                                      ; preds = %if.end52.i
  call void @_raw_spin_lock_bh(ptr noundef %ht_lock.i) #11
  %tuple_nat_node.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call7.i.i.i, i32 0, i32 2
  %133 = ptrtoint ptr %tuple_nat_node.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %tuple_nat_node.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %134, null
  br i1 %tobool.i.not.i, label %err_rules.i.err_tuple_nat.i_crit_edge, label %if.then60.i

err_rules.i.err_tuple_nat.i_crit_edge:            ; preds = %err_rules.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_tuple_nat.i

if.then60.i:                                      ; preds = %err_rules.i
  call void @__sanitizer_cov_trace_pc() #13
  %ct_tuples_nat_ht61.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %6, i32 0, i32 6
  call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_nat_ht61.i, ptr noundef %tuple_nat_node.i.i, [7 x i32] [i32 48, i32 4718600, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  br label %err_tuple_nat.i

err_tuple_nat.i:                                  ; preds = %if.then60.i, %err_rules.i.err_tuple_nat.i_crit_edge, %if.then47.i.err_tuple_nat.i_crit_edge
  %err.0.i = phi i32 [ %call48.i, %if.then47.i.err_tuple_nat.i_crit_edge ], [ %call54.i, %if.then60.i ], [ %call54.i, %err_rules.i.err_tuple_nat.i_crit_edge ]
  call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_ht.i, ptr noundef %tuple_node.i, [7 x i32] [i32 48, i32 1572868, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  br label %err_tuple.i

err_tuple.i:                                      ; preds = %err_tuple_nat.i, %if.end38.i.err_tuple.i_crit_edge
  %err.1.i = phi i32 [ %call39.i, %if.end38.i.err_tuple.i_crit_edge ], [ %err.0.i, %err_tuple_nat.i ]
  call fastcc void @rhashtable_remove_fast(ptr noundef %ct_entries_ht.i, ptr noundef nonnull %call7.i.i.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  br label %err_set.i

err_set.thread.i:                                 ; preds = %sw.bb39.i.i.err_set.thread.i_crit_edge, %sw.bb27.i.i.err_set.thread.i_crit_edge, %if.else17.i.i.err_set.thread.i_crit_edge, %sw.bb.i.i.err_set.thread.i_crit_edge, %if.end.i.i.err_set.thread.i_crit_edge, %mlx5_tc_ct_rule_to_tuple.exit.thread.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.then73.i

err_set.i:                                        ; preds = %err_tuple.i, %rhashtable_lookup_insert_fast.exit.i.err_set.i_crit_edge
  %err.2.i = phi i32 [ %retval.0.i188.i, %rhashtable_lookup_insert_fast.exit.i.err_set.i_crit_edge ], [ %err.1.i, %err_tuple.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %err.2.i)
  %cmp.not.i = icmp eq i32 %err.2.i, -17
  br i1 %cmp.not.i, label %err_set.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, label %err_set.i.if.then73.i_crit_edge

err_set.i.if.then73.i_crit_edge:                  ; preds = %err_set.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then73.i

err_set.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge: ; preds = %err_set.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_block_flow_offload_add.exit

if.then73.i:                                      ; preds = %err_set.i.if.then73.i_crit_edge, %err_set.thread.i
  %err.3197.i = phi i32 [ -95, %err_set.thread.i ], [ %err.2.i, %err_set.i.if.then73.i_crit_edge ]
  %netdev.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %6, i32 0, i32 1
  %135 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %136, ptr noundef nonnull @.str.51, i32 noundef %err.3197.i) #15
  br label %mlx5_tc_ct_block_flow_offload_add.exit

mlx5_tc_ct_block_flow_offload_add.exit:           ; preds = %if.then73.i, %err_set.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, %if.end57.i, %if.end10.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, %if.then8.i, %mlx5_tc_ct_get_ct_metadata_action.exit.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, %for.inc.i.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge, %sw.bb.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge
  %retval.0.i = phi i32 [ -17, %if.then8.i ], [ 0, %if.end57.i ], [ -95, %mlx5_tc_ct_get_ct_metadata_action.exit.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge ], [ -12, %if.end10.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge ], [ %err.3197.i, %if.then73.i ], [ -17, %err_set.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge ], [ -95, %sw.bb.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge ], [ -95, %for.inc.i.i.mlx5_tc_ct_block_flow_offload_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cookie.i) #11
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %ct_priv1.i12 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 5
  %137 = ptrtoint ptr %ct_priv1.i12 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ct_priv1.i12, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cookie.i11) #11
  %cookie2.i13 = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %139 = ptrtoint ptr %cookie2.i13 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cookie2.i13, align 4
  %141 = ptrtoint ptr %cookie.i11 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %cookie.i11, align 4
  %ht_lock.i14 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %138, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %ht_lock.i14) #11
  %ct_entries_ht.i15 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 6
  %call.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_entries_ht.i15, ptr noundef nonnull %cookie.i11, [7 x i32] [i32 4, i32 1048576, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %tobool.not.i16 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i16, label %if.then.i, label %if.end.i18

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i14) #11
  br label %mlx5_tc_ct_block_flow_offload_del.exit

if.end.i18:                                       ; preds = %sw.bb1
  %flags.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call.i, i32 0, i32 12
  %142 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i17 = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i17, label %if.then6.i, label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i14) #11
  br label %mlx5_tc_ct_block_flow_offload_del.exit

if.end8.i:                                        ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @rhashtable_remove_fast(ptr noundef %ct_entries_ht.i15, ptr noundef nonnull %call.i, [7 x i32] [i32 4, i32 1048576, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %ct_priv2.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call.i, i32 0, i32 9
  %144 = ptrtoint ptr %ct_priv2.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ct_priv2.i.i, align 4
  %ct_tuples_nat_ht.i.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %145, i32 0, i32 6
  %tuple_nat_node.i.i19 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call.i, i32 0, i32 2
  call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_nat_ht.i.i, ptr noundef %tuple_nat_node.i.i19, [7 x i32] [i32 48, i32 4718600, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %ct_tuples_ht.i.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %145, i32 0, i32 5
  %tuple_node.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call.i, i32 0, i32 1
  call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_ht.i.i, ptr noundef %tuple_node.i.i, [7 x i32] [i32 48, i32 1572868, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i14) #11
  call fastcc void @mlx5_tc_ct_entry_put(ptr noundef nonnull %call.i) #11
  br label %mlx5_tc_ct_block_flow_offload_del.exit

mlx5_tc_ct_block_flow_offload_del.exit:           ; preds = %if.end8.i, %if.then6.i, %if.then.i
  %retval.0.i20 = phi i32 [ 0, %if.end8.i ], [ -22, %if.then6.i ], [ -2, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cookie.i11) #11
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  %ct_priv1.i23 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 5
  %146 = ptrtoint ptr %ct_priv1.i23 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ct_priv1.i23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cookie.i22) #11
  %cookie2.i24 = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 2
  %148 = ptrtoint ptr %cookie2.i24 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cookie2.i24, align 4
  %150 = ptrtoint ptr %cookie.i22 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %cookie.i22, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lastuse.i) #11
  %151 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 -1, ptr %lastuse.i, align 8, !annotation !198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packets.i) #11
  %152 = ptrtoint ptr %packets.i to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 -1, ptr %packets.i, align 8, !annotation !198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bytes.i) #11
  %153 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 -1, ptr %bytes.i, align 8, !annotation !198
  %ht_lock.i25 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %147, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %ht_lock.i25) #11
  %ct_entries_ht.i26 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %cb_priv, i32 0, i32 6
  %call.i27 = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ct_entries_ht.i26, ptr noundef nonnull %cookie.i22, [7 x i32] [i32 4, i32 1048576, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i28, label %if.then.i29, label %if.end.i33

if.then.i29:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i25) #11
  br label %mlx5_tc_ct_block_flow_offload_stats.exit

if.end.i33:                                       ; preds = %sw.bb3
  %flags.i.i30 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call.i27, i32 0, i32 12
  %154 = ptrtoint ptr %flags.i.i30 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile i32, ptr %flags.i.i30, align 4
  %and1.i.i.i31 = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i31)
  %tobool.i.not.i32 = icmp eq i32 %and1.i.i.i31, 0
  br i1 %tobool.i.not.i32, label %if.end.i33.if.then7.i_crit_edge, label %lor.lhs.false.i

if.end.i33.if.then7.i_crit_edge:                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

lor.lhs.false.i:                                  ; preds = %if.end.i33
  %refcnt.i34 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call.i27, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i21) #11
  %call.i.i.i.i.i.i.i35 = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i34, i32 noundef 4) #11
  %156 = ptrtoint ptr %refcnt.i34 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %refcnt.i34, align 4
  br label %do.body.i.i.i.i37

do.body.i.i.i.i37:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47.do.body.i.i.i.i37_crit_edge, %lor.lhs.false.i
  %158 = phi i32 [ %157, %lor.lhs.false.i ], [ %asmresult3.i.i.i.i.i.i.i45, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47.do.body.i.i.i.i37_crit_edge ]
  %159 = ptrtoint ptr %old.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %old.i.i.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool.not.i.i.i.i36 = icmp eq i32 %158, 0
  br i1 %tobool.not.i.i.i.i36, label %do.body.i.i.i.i37.if.end4.i.i.i.i50_crit_edge, label %do.cond.i.i.i.i41

do.body.i.i.i.i37.if.end4.i.i.i.i50_crit_edge:    ; preds = %do.body.i.i.i.i37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i50

do.cond.i.i.i.i41:                                ; preds = %do.body.i.i.i.i37
  %add.i.i.i.i38 = add i32 %158, 1
  %call.i.i.i.i.i.i39 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i34, i32 noundef 4) #11
  %call.i3.i.i.i.i.i40 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i21, i32 noundef 4) #11
  %160 = ptrtoint ptr %old.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %old.i.i.i.i21, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i34, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i.i44

do.body.i.i.i.i.i.i.i44:                          ; preds = %do.body.i.i.i.i.i.i.i44.do.body.i.i.i.i.i.i.i44_crit_edge, %do.cond.i.i.i.i41
  %162 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i34, ptr %refcnt.i34, i32 %161, i32 %add.i.i.i.i38, ptr elementtype(i32) %refcnt.i34) #11, !srcloc !206
  %asmresult.i.i.i.i.i.i.i42 = extractvalue { i32, i32 } %162, 0
  %tobool.not.i.i.i.i.i.i.i43 = icmp eq i32 %asmresult.i.i.i.i.i.i.i42, 0
  br i1 %tobool.not.i.i.i.i.i.i.i43, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47, label %do.body.i.i.i.i.i.i.i44.do.body.i.i.i.i.i.i.i44_crit_edge

do.body.i.i.i.i.i.i.i44.do.body.i.i.i.i.i.i.i44_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i44
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i.i44

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47:   ; preds = %do.body.i.i.i.i.i.i.i44
  %asmresult3.i.i.i.i.i.i.i45 = extractvalue { i32, i32 } %162, 1
  %cmp.not.i.i.i.i.i.i46 = icmp eq i32 %asmresult3.i.i.i.i.i.i.i45, %161
  br i1 %cmp.not.i.i.i.i.i.i46, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47.if.end4.i.i.i.i50_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47.do.body.i.i.i.i37_crit_edge, !prof !202

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47.do.body.i.i.i.i37_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i37

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47.if.end4.i.i.i.i50_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i.i50

if.end4.i.i.i.i50:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i47.if.end4.i.i.i.i50_crit_edge, %do.body.i.i.i.i37.if.end4.i.i.i.i50_crit_edge
  %163 = ptrtoint ptr %old.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %old.i.i.i.i21, align 4
  %add5.i.i.i.i48 = add i32 %164, 1
  %165 = or i32 %add5.i.i.i.i48, %164
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %165)
  %.not.i.i.i.i49 = icmp sgt i32 %165, -1
  br i1 %.not.i.i.i.i49, label %if.end4.i.i.i.i50.refcount_inc_not_zero.exit.i54_crit_edge, label %if.then10.i.i.i.i52, !prof !202

if.end4.i.i.i.i50.refcount_inc_not_zero.exit.i54_crit_edge: ; preds = %if.end4.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit.i54

if.then10.i.i.i.i52:                              ; preds = %if.end4.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt.i34, i32 noundef 0) #11
  %166 = ptrtoint ptr %old.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %166)
  %.pr.i51 = load i32, ptr %old.i.i.i.i21, align 4
  br label %refcount_inc_not_zero.exit.i54

refcount_inc_not_zero.exit.i54:                   ; preds = %if.then10.i.i.i.i52, %if.end4.i.i.i.i50.refcount_inc_not_zero.exit.i54_crit_edge
  %167 = phi i32 [ %164, %if.end4.i.i.i.i50.refcount_inc_not_zero.exit.i54_crit_edge ], [ %.pr.i51, %if.then10.i.i.i.i52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool12.i.i.i.not.i53 = icmp eq i32 %167, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i21) #11
  br i1 %tobool12.i.i.i.not.i53, label %refcount_inc_not_zero.exit.i54.if.then7.i_crit_edge, label %if.end9.i

refcount_inc_not_zero.exit.i54.if.then7.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7.i

if.then7.i:                                       ; preds = %refcount_inc_not_zero.exit.i54.if.then7.i_crit_edge, %if.end.i33.if.then7.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i25) #11
  br label %mlx5_tc_ct_block_flow_offload_stats.exit

if.end9.i:                                        ; preds = %refcount_inc_not_zero.exit.i54
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i25) #11
  %counter.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call.i27, i32 0, i32 3
  %168 = ptrtoint ptr %counter.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %counter.i, align 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  call void @mlx5_fc_query_cached(ptr noundef %171, ptr noundef nonnull %bytes.i, ptr noundef nonnull %packets.i, ptr noundef nonnull %lastuse.i) #11
  %stats.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4
  %172 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %bytes.i, align 8
  %174 = ptrtoint ptr %packets.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %packets.i, align 8
  %176 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %lastuse.i, align 8
  %178 = ptrtoint ptr %stats.i to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %stats.i, align 8
  %add.i.i = add i64 %179, %175
  store i64 %add.i.i, ptr %stats.i, align 8
  %bytes2.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 1
  %180 = ptrtoint ptr %bytes2.i.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %bytes2.i.i, align 8
  %add3.i.i = add i64 %181, %173
  store i64 %add3.i.i, ptr %bytes2.i.i, align 8
  %lastused6.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 3
  %182 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %lastused6.i.i, align 8
  %184 = call i64 @llvm.umax.i64(i64 %183, i64 %177) #11
  %185 = ptrtoint ptr %lastused6.i.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %184, ptr %lastused6.i.i, align 8
  %used_hw_stats28.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 4
  %186 = ptrtoint ptr %used_hw_stats28.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %used_hw_stats28.i.i, align 8
  %or.i.i = or i32 %187, 2
  store i32 %or.i.i, ptr %used_hw_stats28.i.i, align 8
  %used_hw_stats_valid.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %type_data, i32 0, i32 4, i32 5
  %188 = ptrtoint ptr %used_hw_stats_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %used_hw_stats_valid.i.i, align 4
  call fastcc void @mlx5_tc_ct_entry_put(ptr noundef nonnull %call.i27) #11
  br label %mlx5_tc_ct_block_flow_offload_stats.exit

mlx5_tc_ct_block_flow_offload_stats.exit:         ; preds = %if.end9.i, %if.then7.i, %if.then.i29
  %retval.0.i55 = phi i32 [ 0, %if.end9.i ], [ -22, %if.then7.i ], [ -2, %if.then.i29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bytes.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packets.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lastuse.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cookie.i22) #11
  br label %cleanup

cleanup:                                          ; preds = %mlx5_tc_ct_block_flow_offload_stats.exit, %mlx5_tc_ct_block_flow_offload_del.exit, %mlx5_tc_ct_block_flow_offload_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i55, %mlx5_tc_ct_block_flow_offload_stats.exit ], [ %retval.0.i20, %mlx5_tc_ct_block_flow_offload_del.exit ], [ %retval.0.i, %mlx5_tc_ct_block_flow_offload_add.exit ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1076, ptr noundef nonnull @.str.36) #11
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
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !201

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #11
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #11
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
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !202

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #11
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #11
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 377, ptr noundef nonnull @.str.49) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.65, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.65, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1032, ptr noundef nonnull @.str.49) #11
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !212
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #11
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #11
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.67, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.67, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1004, ptr noundef nonnull @.str.49) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #11
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #11, !srcloc !213
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !201

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #11
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.63, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_remove_fast.__warned.63, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 1085, ptr noundef nonnull @.str.36) #11
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.38) #11
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %46 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tc_ct_free_pre_ct_tables(ptr nocapture noundef readonly %ft) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_ct_nat = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 8
  %ct_priv1.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 5
  %0 = ptrtoint ptr %ct_priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_priv1.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %flow_rule.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %flow_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow_rule.i.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %5) #11
  %miss_rule.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %miss_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %miss_rule.i.i, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %7) #11
  %modify_hdr.i.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 8, i32 5
  %8 = ptrtoint ptr %modify_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %modify_hdr.i.i, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %3, ptr noundef %9) #11
  %miss_grp.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 8, i32 2
  %10 = ptrtoint ptr %miss_grp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %miss_grp.i, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %11) #11
  %flow_grp.i = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %flow_grp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %flow_grp.i, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %13) #11
  %14 = ptrtoint ptr %pre_ct_nat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pre_ct_nat, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %15) #11
  %pre_ct = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 7
  %16 = ptrtoint ptr %ct_priv1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ct_priv1.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %flow_rule.i.i5 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %flow_rule.i.i5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flow_rule.i.i5, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %21) #11
  %miss_rule.i.i6 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 7, i32 4
  %22 = ptrtoint ptr %miss_rule.i.i6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %miss_rule.i.i6, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %23) #11
  %modify_hdr.i.i7 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 7, i32 5
  %24 = ptrtoint ptr %modify_hdr.i.i7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %modify_hdr.i.i7, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %19, ptr noundef %25) #11
  %miss_grp.i8 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %miss_grp.i8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %miss_grp.i8, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %27) #11
  %flow_grp.i9 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ft, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %flow_grp.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %flow_grp.i9, align 4
  tail call void @mlx5_destroy_flow_group(ptr noundef %29) #11
  %30 = ptrtoint ptr %pre_ct to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pre_ct, align 4
  %call.i10 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %31) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_tc_ct_alloc_pre_ct(ptr nocapture noundef readonly %ct_ft, ptr nocapture noundef %pre_ct, i1 noundef zeroext %nat) unnamed_addr #0 align 64 {
entry:
  %ft_attr = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_priv1 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ct_ft, i32 0, i32 5
  %0 = ptrtoint ptr %ct_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr) #11
  %4 = getelementptr inbounds i8, ptr %ft_attr, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 12)
  %ns_type = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ns_type, align 4
  %call = tail call ptr @mlx5_get_flow_namespace(ptr noundef %3, i32 noundef %7) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_alloc_pre_ct, %if.then9)) #11
          to label %cleanup [label %if.then9], !srcloc !199

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug714, ptr noundef %9, ptr noundef nonnull @.str.40) #11
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #17
  %tobool14.not = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %flags = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %flags, align 4
  %11 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ns_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp = icmp eq i32 %12, 8
  %cond = zext i1 %cmp to i32
  %13 = ptrtoint ptr %ft_attr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %ft_attr, align 4
  %max_fte = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 1
  %14 = ptrtoint ptr %max_fte to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %max_fte, align 4
  %level = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr, i32 0, i32 2
  %15 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %level, align 4
  %call18 = call ptr @mlx5_create_flow_table(ptr noundef nonnull %call, ptr noundef nonnull %ft_attr) #11
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end42

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call18 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_alloc_pre_ct, %if.then35)) #11
          to label %out_free [label %if.then35], !srcloc !199

if.then35:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %netdev36 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %netdev36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev36, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug715, ptr noundef %18, ptr noundef nonnull @.str.41) #11
  br label %out_free

if.end42:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %pre_ct to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %pre_ct, align 4
  %add.ptr = getelementptr i32, ptr %call.i.i, i32 7
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %add.ptr, align 4
  %add.ptr57 = getelementptr i32, ptr %call.i.i, i32 9
  %21 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %add.ptr57, align 4
  %add.ptr70 = getelementptr i32, ptr %call.i.i, i32 15
  %22 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr70, align 4
  %and71 = and i32 %23, -256
  %or74 = or i32 %and71, 8
  store i32 %or74, ptr %add.ptr70, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2) to i32))
  %24 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2), align 4
  %sub79 = sub i32 32, %24
  %shr = lshr i32 -1, %sub79
  %spec.select.v = select i1 %nat, i32 786432, i32 262144
  %spec.select = or i32 %shr, %spec.select.v
  %add.ptr91 = getelementptr i8, ptr %call.i.i, i32 292
  %25 = ptrtoint ptr %add.ptr91 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %add.ptr91, align 4
  %call99 = call ptr @mlx5_create_flow_group(ptr noundef %call18, ptr noundef nonnull %call.i.i) #11
  %cmp.i248 = icmp ugt ptr %call99, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then101, label %if.end123

if.then101:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %call99 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug720, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_alloc_pre_ct, %if.then116)) #11
          to label %err_flow_grp [label %if.then116], !srcloc !199

if.then116:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #13
  %netdev117 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %netdev117 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev117, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug720, ptr noundef %28, ptr noundef nonnull @.str.42) #11
  br label %err_flow_grp

if.end123:                                        ; preds = %if.end42
  %flow_grp = getelementptr inbounds %struct.mlx5_tc_ct_pre, ptr %pre_ct, i32 0, i32 1
  %29 = ptrtoint ptr %flow_grp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call99, ptr %flow_grp, align 4
  %30 = call ptr @memset(ptr %call.i.i, i32 0, i32 1024)
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %add.ptr, align 4
  %32 = ptrtoint ptr %add.ptr57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %add.ptr57, align 4
  %call150 = call ptr @mlx5_create_flow_group(ptr noundef %call18, ptr noundef nonnull %call.i.i) #11
  %cmp.i249 = icmp ugt ptr %call150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.then152, label %if.end174

if.then152:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %call150 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug723, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_alloc_pre_ct, %if.then167)) #11
          to label %err_miss_grp [label %if.then167], !srcloc !199

if.then167:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #13
  %netdev168 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %netdev168 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev168, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug723, ptr noundef %35, ptr noundef nonnull @.str.43) #11
  br label %err_miss_grp

if.end174:                                        ; preds = %if.end123
  %miss_grp = getelementptr inbounds %struct.mlx5_tc_ct_pre, ptr %pre_ct, i32 0, i32 2
  %36 = ptrtoint ptr %miss_grp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call150, ptr %miss_grp, align 4
  %call176 = call fastcc i32 @tc_ct_pre_ct_add_rules(ptr noundef %ct_ft, ptr noundef %pre_ct, i1 noundef zeroext %nat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.end179, label %err_add_rules

if.end179:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

err_add_rules:                                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %miss_grp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %miss_grp, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %38) #11
  br label %err_miss_grp

err_miss_grp:                                     ; preds = %err_add_rules, %if.then167, %if.then152
  %err.0 = phi i32 [ %33, %if.then167 ], [ %call176, %err_add_rules ], [ %33, %if.then152 ]
  %39 = ptrtoint ptr %flow_grp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %flow_grp, align 4
  call void @mlx5_destroy_flow_group(ptr noundef %40) #11
  br label %err_flow_grp

err_flow_grp:                                     ; preds = %err_miss_grp, %if.then116, %if.then101
  %err.1 = phi i32 [ %26, %if.then116 ], [ %err.0, %err_miss_grp ], [ %26, %if.then101 ]
  %call182 = call i32 @mlx5_destroy_flow_table(ptr noundef %call18) #11
  br label %out_free

out_free:                                         ; preds = %err_flow_grp, %if.then35, %if.then20
  %err.2 = phi i32 [ %16, %if.then35 ], [ %err.1, %err_flow_grp ], [ %16, %if.then20 ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end179, %if.end12.cleanup_crit_edge, %if.then9, %if.then
  %retval.0 = phi i32 [ %err.2, %out_free ], [ 0, %if.end179 ], [ -95, %if.then9 ], [ -12, %if.end12.cleanup_crit_edge ], [ -95, %if.then ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tc_ct_pre_ct_add_rules(ptr nocapture noundef readonly %ct_ft, ptr nocapture noundef %pre_ct, i1 noundef zeroext %nat) unnamed_addr #0 align 64 {
entry:
  %pre_mod_acts = alloca %struct.mlx5e_tc_mod_hdr_acts, align 4
  %dest = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ct_priv1 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ct_ft, i32 0, i32 5
  %0 = ptrtoint ptr %ct_priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_priv1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pre_mod_acts) #11
  %2 = call ptr @memset(ptr %pre_mod_acts, i32 0, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %pre_ct to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pre_ct, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #11
  %7 = call ptr @memset(ptr %dest, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #11
  %8 = call ptr @memset(ptr %flow_act, i32 0, i32 36)
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %zone4 = getelementptr inbounds %struct.mlx5_ct_ft, ptr %ct_ft, i32 0, i32 1
  %9 = ptrtoint ptr %zone4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %zone4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2) to i32))
  %11 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2), align 4
  %sub5 = sub i32 32, %11
  %shr = lshr i32 -1, %sub5
  %12 = trunc i32 %shr to i16
  %conv7 = and i16 %10, %12
  %ns_type = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ns_type, align 4
  %conv8 = zext i16 %conv7 to i32
  %call9 = call i32 @mlx5e_tc_match_to_reg_set(ptr noundef %4, ptr noundef nonnull %pre_mod_acts, i32 noundef %14, i32 noundef 4, i32 noundef %conv8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end22, label %do.body12

do.body12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug710, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_ct_pre_ct_add_rules, %if.then18)) #11
          to label %cleanup.sink.split [label %if.then18], !srcloc !199

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug710, ptr noundef %16, ptr noundef nonnull @.str.45) #11
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end
  %17 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ns_type, align 4
  %conv24 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %pre_mod_acts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pre_mod_acts, align 4
  %conv25 = trunc i32 %20 to i8
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %pre_mod_acts, i32 0, i32 3
  %21 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %actions, align 4
  %call26 = call ptr @mlx5_modify_header_alloc(ptr noundef %4, i8 noundef zeroext %conv24, i8 noundef zeroext %conv25, ptr noundef %22) #11
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end50

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %call26 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_ct_pre_ct_add_rules, %if.then43)) #11
          to label %cleanup.sink.split [label %if.then43], !srcloc !199

if.then43:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %netdev44 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %netdev44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev44, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug711, ptr noundef %25, ptr noundef nonnull @.str.29) #11
  br label %cleanup.sink.split

if.end50:                                         ; preds = %if.end22
  %modify_hdr = getelementptr inbounds %struct.mlx5_tc_ct_pre, ptr %pre_ct, i32 0, i32 5
  %26 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call26, ptr %modify_hdr, align 4
  %27 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 68, ptr %flow_act, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 4
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %or = or i32 %29, 2
  store i32 %or, ptr %flags, align 4
  %modify_hdr51 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act, i32 0, i32 1
  %30 = ptrtoint ptr %modify_hdr51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call26, ptr %modify_hdr51, align 4
  %31 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %dest, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2) to i32))
  %32 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2), align 4
  %sub54 = sub i32 32, %32
  %shr55 = lshr i32 -1, %sub54
  call void @mlx5e_tc_match_to_reg_match(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef %conv8, i32 noundef %shr55) #11
  %spec.select = select i1 %nat, i32 12, i32 4
  call void @mlx5e_tc_match_to_reg_match(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef %spec.select, i32 noundef %spec.select) #11
  %post_act = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 9
  %33 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %post_act, align 4
  %call62 = call ptr @mlx5e_tc_post_act_get_ft(ptr noundef %34) #11
  %35 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call62, ptr %35, align 4
  %call63 = call ptr @mlx5_add_flow_rules(ptr noundef %6, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #11
  %cmp.i177 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177, label %if.then65, label %if.end88

if.then65:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_ct_pre_ct_add_rules, %if.then80)) #11
          to label %err_flow_rule [label %if.then80], !srcloc !199

if.then80:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %netdev81 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %netdev81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev81, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug712, ptr noundef %38, ptr noundef nonnull @.str.46, i32 noundef %conv8) #11
  br label %err_flow_rule

if.end88:                                         ; preds = %if.end50
  %flow_rule = getelementptr inbounds %struct.mlx5_tc_ct_pre, ptr %pre_ct, i32 0, i32 3
  %39 = ptrtoint ptr %flow_rule to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call63, ptr %flow_rule, align 4
  %ct_nat = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 8
  %ct = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 7
  %cond.in = select i1 %nat, ptr %ct_nat, ptr %ct
  %40 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %40)
  %cond = load ptr, ptr %cond.in, align 4
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cond, ptr %35, align 4
  %call91 = call ptr @mlx5_add_flow_rules(ptr noundef %6, ptr noundef null, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #11
  %cmp.i178 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then93, label %if.end116

if.then93:                                        ; preds = %if.end88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tc_ct_pre_ct_add_rules, %if.then108)) #11
          to label %err_miss_rule [label %if.then108], !srcloc !199

if.then108:                                       ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #13
  %netdev109 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %netdev109 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev109, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug713, ptr noundef %43, ptr noundef nonnull @.str.47, i32 noundef %conv8) #11
  br label %err_miss_rule

if.end116:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %miss_rule = getelementptr inbounds %struct.mlx5_tc_ct_pre, ptr %pre_ct, i32 0, i32 4
  %44 = ptrtoint ptr %miss_rule to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call91, ptr %miss_rule, align 4
  br label %cleanup.sink.split

err_miss_rule:                                    ; preds = %if.then108, %if.then93
  %45 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %flow_rule, align 4
  call void @mlx5_del_flow_rules(ptr noundef %46) #11
  br label %err_flow_rule

err_flow_rule:                                    ; preds = %err_miss_rule, %if.then80, %if.then65
  %err.0.in = phi ptr [ %call63, %if.then80 ], [ %call91, %err_miss_rule ], [ %call63, %if.then65 ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %47 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %modify_hdr, align 4
  call void @mlx5_modify_header_dealloc(ptr noundef %4, ptr noundef %48) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_flow_rule, %if.end116, %if.then43, %if.then28, %if.then18, %do.body12
  %retval.0.ph = phi i32 [ 0, %if.end116 ], [ %call9, %if.then18 ], [ %23, %if.then43 ], [ %err.0, %err_flow_rule ], [ %call9, %do.body12 ], [ %23, %if.then28 ]
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %pre_mod_acts) #11
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pre_mod_acts) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_post_act_get_ft(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #11
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 696, ptr noundef nonnull @.str.34) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 715, ptr noundef nonnull @.str.36) #11
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
  br i1 %tobool.not.i4, label %if.then.i.i.i, label %cond.true.i, !prof !201

cond.true.i:                                      ; preds = %do.end12
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i = and i32 %params.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #13
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
  %call8.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef %16) #11
  br label %rht_head_hashfn.exit

if.then.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
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
  %call.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef %18) #11
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
  br i1 %tobool.not.i5, label %cond.false.i8, label %cond.true.i7, !prof !202

cond.true.i7:                                     ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i6 = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %9, i32 noundef %and.i3.i.i) #11
  br label %rht_bucket_insert.exit

cond.false.i8:                                    ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %cond.false.i8, %cond.true.i7
  %cond.i9 = phi ptr [ %call.i6, %cond.true.i7 ], [ %arrayidx.i, %cond.false.i8 ]
  %tobool17.not = icmp eq ptr %cond.i9, null
  br i1 %tobool17.not, label %rht_bucket_insert.exit.out_crit_edge, label %if.end19

rht_bucket_insert.exit.out_crit_edge:             ; preds = %rht_bucket_insert.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end19:                                         ; preds = %rht_bucket_insert.exit
  tail call fastcc void @rht_lock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end30, label %if.end19.slow_path_crit_edge, !prof !202

if.end19.slow_path_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path

slow_path:                                        ; preds = %rht_grow_above_100.exit.slow_path_crit_edge, %for.end.slow_path_crit_edge, %if.end19.slow_path_crit_edge
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %call.i11 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i11, label %slow_path.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

slow_path.rcu_read_unlock.exit_crit_edge:         ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %slow_path
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.38) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %slow_path.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %29 = call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i.i18 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i20 = add i32 %32, -1
  store volatile i32 %sub.i.i.i20, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %call29 = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #11
  br label %cleanup210

if.end30:                                         ; preds = %if.end19
  %call.i21 = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i24, label %if.end30.rht_ptr.exit_crit_edge

if.end30.rht_ptr.exit_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit

land.lhs.true.i24:                                ; preds = %if.end30
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i24.rht_ptr.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i24.rht_ptr.exit_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i24
  %.b7.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.rht_ptr.exit_crit_edge, label %if.then.i25

land.lhs.true3.i.rht_ptr.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit

if.then.i25:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 377, ptr noundef nonnull @.str.49) #11
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  %call40 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i31) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body136_crit_edge

cond.true.do.body136_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #13
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
  %bcmp = call i32 @bcmp(ptr %add.ptr.i33, ptr %45, i32 %conv3.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cond.false.cleanup_crit_edge, label %cond.false.do.body136_crit_edge

cond.false.do.body136_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body136

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #13
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
  %call137 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.body136.do.end147_crit_edge

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.body136
  %call140 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b2811 = load i1, ptr @__rhashtable_insert_fast.__warned.50, align 1
  br i1 %.b2811, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__rhashtable_insert_fast.__warned.50, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 732, ptr noundef nonnull @.str.49) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %for.end.slow_path_crit_edge, label %for.end.if.end152_crit_edge

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152

for.end.slow_path_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path

if.end152:                                        ; preds = %for.end.if.end152_crit_edge, %rht_ptr.exit.if.end152_crit_edge
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #11
  %53 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i, align 4
  %max_elems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %55 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_elems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i.not = icmp ult i32 %54, %56
  br i1 %cmp.i.not, label %if.end162, label %if.end152.out_unlock_crit_edge, !prof !202

if.end152.out_unlock_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unlock

if.end162:                                        ; preds = %if.end152
  %call.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #11
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
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %spec.select.i, label %rht_grow_above_100.exit.slow_path_crit_edge, label %rht_grow_above_100.exit.if.end171_crit_edge, !prof !201

rht_grow_above_100.exit.if.end171_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end171

rht_grow_above_100.exit.slow_path_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %slow_path

if.end171:                                        ; preds = %rht_grow_above_100.exit.if.end171_crit_edge, %if.end162.if.end171_crit_edge
  %call.i44 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i48, label %if.end171.rht_ptr.exit56_crit_edge

if.end171.rht_ptr.exit56_crit_edge:               ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit56

land.lhs.true.i48:                                ; preds = %if.end171
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %land.lhs.true.i48.rht_ptr.exit56_crit_edge, label %land.lhs.true3.i50

land.lhs.true.i48.rht_ptr.exit56_crit_edge:       ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit56

land.lhs.true3.i50:                               ; preds = %land.lhs.true.i48
  %.b7.i49 = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49, label %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, label %if.then.i51

land.lhs.true3.i50.rht_ptr.exit56_crit_edge:      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %rht_ptr.exit56

if.then.i51:                                      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.35, i32 noundef 377, ptr noundef nonnull @.str.49) #11
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
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #11
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #11, !srcloc !215
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9, ptr noundef %obj)
  %call.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #11
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then207:                                       ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #13
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i65 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %run_work) #11
  br label %out

out:                                              ; preds = %out_unlock, %if.then207, %rht_grow_above_75.exit.out_crit_edge, %rht_ptr.exit56.out_crit_edge, %rht_bucket_insert.exit.out_crit_edge
  %data.2 = phi ptr [ %data.3, %out_unlock ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.out_crit_edge ], [ null, %if.then207 ], [ null, %rht_grow_above_75.exit.out_crit_edge ], [ null, %rht_ptr.exit56.out_crit_edge ]
  %call.i66 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i66, label %out.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

out.rcu_read_unlock.exit76_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %out
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.33, i32 noundef 724, ptr noundef nonnull @.str.38) #11
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %out.rcu_read_unlock.exit76_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !210
  %76 = call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i.i73 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %79, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup210

out_unlock:                                       ; preds = %if.end152.out_unlock_crit_edge, %cleanup
  %data.3 = phi ptr [ %add.ptr.i38, %cleanup ], [ inttoptr (i32 -7 to ptr), %if.end152.out_unlock_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  br label %out

cleanup210:                                       ; preds = %rcu_read_unlock.exit76, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %call29, %rcu_read_unlock.exit ], [ %data.2, %rcu_read_unlock.exit76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #11
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !216
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !217

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !218
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !219
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !202

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !220
  %7 = tail call i32 @llvm.read_register.i32(metadata !188) #11
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !221
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !222
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = tail call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !223
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #11
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !201

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #11, !srcloc !224
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !225
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #11, !srcloc !226
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !227
  %3 = tail call i32 @llvm.read_register.i32(metadata !188) #11
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !228
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !229
  %2 = tail call i32 @llvm.read_register.i32(metadata !188) #11
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
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_block_cb_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tc_ct_entry_put(ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !202

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !205
  %ct_priv2.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 9
  %1 = ptrtoint ptr %ct_priv2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ct_priv2.i, align 4
  tail call fastcc void @mlx5_tc_ct_entry_del_rule(ptr noundef %2, ptr noundef %entry1, i1 noundef zeroext true) #11
  tail call fastcc void @mlx5_tc_ct_entry_del_rule(ptr noundef %2, ptr noundef %entry1, i1 noundef zeroext false) #11
  %ht_lock.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %2, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %ht_lock.i) #11
  %3 = ptrtoint ptr %ct_priv2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ct_priv2.i, align 4
  %ct_tuples_nat_ht.i.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %4, i32 0, i32 6
  %tuple_nat_node.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 2
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_nat_ht.i.i, ptr noundef %tuple_nat_node.i.i, [7 x i32] [i32 48, i32 4718600, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %ct_tuples_ht.i.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %4, i32 0, i32 5
  %tuple_node.i.i = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 1
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_ht.i.i, ptr noundef %tuple_node.i.i, [7 x i32] [i32 48, i32 1572868, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i) #11
  tail call fastcc void @mlx5_tc_ct_counter_put(ptr noundef %2, ptr noundef %entry1) #11
  tail call void @kfree(ptr noundef %entry1) #11
  br label %return

return:                                           ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_lookup_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %obj_hashfn = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %obj_hashfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj_hashfn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !202

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #11, !srcloc !211
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %head_offset.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %head_offset.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %head_offset.i, align 2
  %conv.i = zext i16 %3 to i32
  %idx.neg.i = sub nsw i32 0, %conv.i
  %add.ptr.i = getelementptr i8, ptr %obj, i32 %idx.neg.i
  %key_offset = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %key_offset to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %key_offset, align 4
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %conv
  %call10 = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %add.ptr, ptr noundef %obj, [7 x i32] %params.coerce)
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call10 to i32
  %cmp = icmp eq ptr %call10, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %6, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_tc_ct_entry_add_rules(ptr noundef %ct_priv, ptr noundef %flow_rule, ptr noundef %entry1, i8 noundef zeroext %zone_restore_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %sysctl_acct.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 40, i32 3
  %4 = ptrtoint ptr %sysctl_acct.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sysctl_acct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.not = icmp eq i8 %5, 0
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %is_shared.i = getelementptr inbounds %struct.mlx5_ct_counter, ptr %call7.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %is_shared.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_shared.i, align 8
  %8 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ct_priv, align 4
  %call2.i = tail call ptr @mlx5_fc_create_ex(ptr noundef %9, i1 noundef zeroext true) #11
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2.i, ptr %call7.i.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body7.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body7.i:                                       ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_counter_create.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_entry_add_rules, %if.then12.i)) #11
          to label %do.end15.i [label %if.then12.i], !srcloc !199

if.then12.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_counter_create.__UNIQUE_ID_ddebug708, ptr noundef %12, ptr noundef nonnull @.str.55) #11
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.then12.i, %do.body7.i
  %13 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call fastcc ptr @mlx5_tc_ct_shared_counter_get(ptr noundef %ct_priv, ptr noundef %entry1)
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end15.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %call4.sink = phi ptr [ %call4, %if.else ], [ %14, %do.end15.i ], [ %call7.i.i.i, %if.end.i.if.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.if.end_crit_edge ]
  %counter5 = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 3
  %15 = ptrtoint ptr %counter5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4.sink, ptr %counter5, align 4
  %cmp.i38 = icmp ugt ptr %call4.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i38, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call4.sink to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call fastcc i32 @mlx5_tc_ct_entry_add_rule(ptr noundef %ct_priv, ptr noundef %flow_rule, ptr noundef %entry1, i1 noundef zeroext false, i8 noundef zeroext %zone_restore_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.end14, label %if.end11.err_orig_crit_edge

if.end11.err_orig_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_orig

if.end14:                                         ; preds = %if.end11
  %call15 = tail call fastcc i32 @mlx5_tc_ct_entry_add_rule(ptr noundef %ct_priv, ptr noundef %flow_rule, ptr noundef %entry1, i1 noundef zeroext true, i8 noundef zeroext %zone_restore_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.cleanup_crit_edge, label %err_nat

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_nat:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlx5_tc_ct_entry_del_rule(ptr noundef %ct_priv, ptr noundef %entry1, i1 noundef zeroext false)
  br label %err_orig

err_orig:                                         ; preds = %err_nat, %if.end11.err_orig_crit_edge
  %err.0 = phi i32 [ %call12, %if.end11.err_orig_crit_edge ], [ %call15, %err_nat ]
  tail call fastcc void @mlx5_tc_ct_counter_put(ptr noundef %ct_priv, ptr noundef %entry1)
  br label %cleanup

cleanup:                                          ; preds = %err_orig, %if.end14.cleanup_crit_edge, %if.then8
  %retval.0 = phi i32 [ %16, %if.then8 ], [ %err.0, %err_orig ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tc_ct_counter_put(ptr nocapture noundef readonly %ct_priv, ptr nocapture noundef readonly %entry1) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %counter = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 3
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter, align 4
  %is_shared = getelementptr inbounds %struct.mlx5_ct_counter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %is_shared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_shared, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %refcount = getelementptr inbounds %struct.mlx5_ct_counter, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #11, !srcloc !204
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !202

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #11
  br label %return

refcount_dec_and_test.exit:                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !205
  br label %if.end

if.end:                                           ; preds = %refcount_dec_and_test.exit, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ct_priv, align 4
  %7 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %counter, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @mlx5_fc_destroy(ptr noundef %6, ptr noundef %10) #11
  %11 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %counter, align 4
  tail call void @kfree(ptr noundef %12) #11
  br label %return

return:                                           ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5_tc_ct_entry_del_rule(ptr nocapture noundef readonly %ct_priv, ptr nocapture noundef readonly %entry1, i1 noundef zeroext %nat) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i1 %nat to i32
  %attr2 = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom, i32 2
  %0 = ptrtoint ptr %attr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_entry_del_rule.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_entry_del_rule, %if.then)) #11
          to label %do.end9 [label %if.then], !srcloc !199

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %zone = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %zone, align 4
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_entry_del_rule.__UNIQUE_ID_ddebug696, ptr noundef %3, ptr noundef nonnull @.str.53, i32 noundef %conv) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom
  %netdev10 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %6 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev10, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2304
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @mlx5_tc_rule_delete(ptr noundef %add.ptr.i, ptr noundef %9, ptr noundef %1) #11
  %mh = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %mh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mh, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %12 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ct_priv, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %mod_hdr_tbl.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 2
  %14 = ptrtoint ptr %mod_hdr_tbl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mod_hdr_tbl.i, align 4
  tail call void @mlx5e_mod_hdr_detach(ptr noundef %13, ptr noundef %15, ptr noundef nonnull %11) #11
  br label %mlx5_tc_ct_entry_destroy_mod_hdr.exit

if.else.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %attr2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %attr2, align 4
  %modify_hdr.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %modify_hdr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %modify_hdr.i, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %13, ptr noundef %19) #11
  br label %mlx5_tc_ct_entry_destroy_mod_hdr.exit

mlx5_tc_ct_entry_destroy_mod_hdr.exit:            ; preds = %if.else.i, %if.then.i
  %ct_labels_id = getelementptr inbounds %struct.mlx5_flow_attr, ptr %1, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %ct_labels_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ct_labels_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i22 = icmp eq i32 %21, 0
  br i1 %tobool.not.i22, label %mlx5_tc_ct_entry_destroy_mod_hdr.exit.mlx5_put_label_mapping.exit_crit_edge, label %if.then.i23

mlx5_tc_ct_entry_destroy_mod_hdr.exit.mlx5_put_label_mapping.exit_crit_edge: ; preds = %mlx5_tc_ct_entry_destroy_mod_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_put_label_mapping.exit

if.then.i23:                                      ; preds = %mlx5_tc_ct_entry_destroy_mod_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %labels_mapping.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 12
  %22 = ptrtoint ptr %labels_mapping.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %labels_mapping.i, align 4
  %call.i = tail call i32 @mapping_remove(ptr noundef %23, i32 noundef %21) #11
  br label %mlx5_put_label_mapping.exit

mlx5_put_label_mapping.exit:                      ; preds = %if.then.i23, %mlx5_tc_ct_entry_destroy_mod_hdr.exit.mlx5_put_label_mapping.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_tc_rule_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_mod_hdr_detach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_basic(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_control(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv4_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ipv6_addrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_ports(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5_tc_ct_shared_counter_get(ptr noundef %ct_priv, ptr noundef %entry1) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %rev_tuple = alloca %struct.mlx5_ct_tuple, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rev_tuple) #11
  %tuple = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 6
  %0 = call ptr @memcpy(ptr %rev_tuple, ptr %tuple, i32 48)
  %port = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 4
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %port, align 4
  %dst = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dst, align 2
  store i16 %4, ptr %port, align 4
  store i16 %2, ptr %dst, align 2
  %5 = ptrtoint ptr %rev_tuple to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rev_tuple, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %6, label %entry.cleanup_crit_edge [
    i16 2, label %if.then
    i16 3, label %if.then15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ip = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip, align 4
  %10 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  store i32 %12, ptr %ip, align 4
  store i32 %9, ptr %10, align 4
  br label %if.end22

if.then15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ip17 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3
  %13 = ptrtoint ptr %ip17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp_addr16.sroa.0.0.copyload = load i32, ptr %ip17, align 4
  %tmp_addr16.sroa.5.0..sroa_idx = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %tmp_addr16.sroa.5.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp_addr16.sroa.5.0.copyload = load i32, ptr %tmp_addr16.sroa.5.0..sroa_idx, align 4
  %tmp_addr16.sroa.6.0..sroa_idx = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  %15 = ptrtoint ptr %tmp_addr16.sroa.6.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp_addr16.sroa.6.0.copyload = load i32, ptr %tmp_addr16.sroa.6.0..sroa_idx, align 4
  %tmp_addr16.sroa.7.0..sroa_idx = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %tmp_addr16.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp_addr16.sroa.7.0.copyload = load i32, ptr %tmp_addr16.sroa.7.0..sroa_idx, align 4
  %17 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 1
  %18 = call ptr @memcpy(ptr %ip17, ptr %17, i32 16)
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %tmp_addr16.sroa.0.0.copyload, ptr %17, align 4
  %tmp_addr16.sroa.5.0..sroa_idx55 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %tmp_addr16.sroa.5.0..sroa_idx55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %tmp_addr16.sroa.5.0.copyload, ptr %tmp_addr16.sroa.5.0..sroa_idx55, align 4
  %tmp_addr16.sroa.6.0..sroa_idx57 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 2
  %21 = ptrtoint ptr %tmp_addr16.sroa.6.0..sroa_idx57 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tmp_addr16.sroa.6.0.copyload, ptr %tmp_addr16.sroa.6.0..sroa_idx57, align 4
  %tmp_addr16.sroa.7.0..sroa_idx59 = getelementptr inbounds %struct.mlx5_ct_tuple, ptr %rev_tuple, i32 0, i32 3, i32 1, i32 0, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %tmp_addr16.sroa.7.0..sroa_idx59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tmp_addr16.sroa.7.0.copyload, ptr %tmp_addr16.sroa.7.0..sroa_idx59, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then15, %if.then
  %ht_lock = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %ht_lock) #11
  %call23 = call fastcc ptr @mlx5_tc_ct_entry_get(ptr noundef %ct_priv, ptr noundef nonnull %rev_tuple)
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  %tobool.not = icmp eq ptr %call23, null
  %or.cond = or i1 %cmp.i, %tobool.not
  br i1 %or.cond, label %if.end22.create_counter_crit_edge, label %land.lhs.true

if.end22.create_counter_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_counter

land.lhs.true:                                    ; preds = %if.end22
  %counter = getelementptr inbounds %struct.mlx5_ct_entry, ptr %call23, i32 0, i32 3
  %23 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %counter, align 4
  %refcount = getelementptr inbounds %struct.mlx5_ct_counter, ptr %24, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #11
  %25 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %27 = phi i32 [ %26, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %28 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %27, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %29 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %31 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %30, i32 %add.i.i.i, ptr elementtype(i32) %refcount) #11, !srcloc !206
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %31, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %30
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !202

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %32 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %33, 1
  %34 = or i32 %add5.i.i.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !202

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #11
  %35 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %36 = phi i32 [ %33, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool12.i.i.i.not = icmp eq i32 %36, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.create_counter_crit_edge, label %do.body32

refcount_inc_not_zero.exit.create_counter_crit_edge: ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %create_counter

do.body32:                                        ; preds = %refcount_inc_not_zero.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_shared_counter_get.__UNIQUE_ID_ddebug709, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_shared_counter_get, %if.then37)) #11
          to label %do.end42 [label %if.then37], !srcloc !199

if.then37:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %37 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_shared_counter_get.__UNIQUE_ID_ddebug709, ptr noundef %38, ptr noundef nonnull @.str.57, ptr noundef %entry1, ptr noundef nonnull %call23) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %do.body32
  %39 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %counter, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock) #11
  call fastcc void @mlx5_tc_ct_entry_put(ptr noundef nonnull %call23)
  br label %cleanup

create_counter:                                   ; preds = %refcount_inc_not_zero.exit.create_counter_crit_edge, %if.end22.create_counter_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %ht_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %41 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %41, i32 noundef 3520, i32 noundef 12) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %create_counter.cleanup_crit_edge, label %if.end.i

create_counter.cleanup_crit_edge:                 ; preds = %create_counter
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %create_counter
  %is_shared.i = getelementptr inbounds %struct.mlx5_ct_counter, ptr %call7.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %is_shared.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %is_shared.i, align 8
  %43 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ct_priv, align 4
  %call2.i = call ptr @mlx5_fc_create_ex(ptr noundef %44, i1 noundef zeroext true) #11
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call2.i, ptr %call7.i.i.i, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body7.i, label %if.end.i.mlx5_tc_ct_counter_create.exit_crit_edge

if.end.i.mlx5_tc_ct_counter_create.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_counter_create.exit

do.body7.i:                                       ; preds = %if.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_counter_create.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_shared_counter_get, %if.then12.i)) #11
          to label %do.end15.i [label %if.then12.i], !srcloc !199

if.then12.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #13
  %netdev.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %46 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_counter_create.__UNIQUE_ID_ddebug708, ptr noundef %47, ptr noundef nonnull @.str.55) #11
  br label %do.end15.i

do.end15.i:                                       ; preds = %if.then12.i, %do.body7.i
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i.i, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %mlx5_tc_ct_counter_create.exit

mlx5_tc_ct_counter_create.exit:                   ; preds = %do.end15.i, %if.end.i.mlx5_tc_ct_counter_create.exit_crit_edge
  %retval.0.i78 = phi ptr [ %49, %do.end15.i ], [ %call7.i.i.i, %if.end.i.mlx5_tc_ct_counter_create.exit_crit_edge ]
  %cmp.i79 = icmp ugt ptr %retval.0.i78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %mlx5_tc_ct_counter_create.exit.cleanup_crit_edge, label %if.end50

mlx5_tc_ct_counter_create.exit.cleanup_crit_edge: ; preds = %mlx5_tc_ct_counter_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end50:                                         ; preds = %mlx5_tc_ct_counter_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  %is_shared = getelementptr inbounds %struct.mlx5_ct_counter, ptr %retval.0.i78, i32 0, i32 2
  %50 = ptrtoint ptr %is_shared to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %is_shared, align 4
  %refcount51 = getelementptr inbounds %struct.mlx5_ct_counter, ptr %retval.0.i78, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount51, i32 noundef 4) #11
  %51 = ptrtoint ptr %refcount51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 1, ptr %refcount51, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %mlx5_tc_ct_counter_create.exit.cleanup_crit_edge, %create_counter.cleanup_crit_edge, %do.end42, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i78, %if.end50 ], [ %40, %do.end42 ], [ %retval.0.i78, %mlx5_tc_ct_counter_create.exit.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %create_counter.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rev_tuple) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5_tc_ct_entry_add_rule(ptr nocapture noundef readonly %ct_priv, ptr noundef %flow_rule, ptr nocapture noundef %entry1, i1 noundef zeroext %nat, i8 noundef zeroext %zone_restore_id) unnamed_addr #0 align 64 {
entry:
  %match.i = alloca %struct.flow_match_basic, align 4
  %match29.i = alloca %struct.flow_match_control, align 4
  %match36.i = alloca %struct.flow_match_ipv4_addrs, align 4
  %match52.i = alloca %struct.flow_match_ipv6_addrs, align 4
  %match68.i = alloca %struct.flow_match_ports, align 4
  %match202.i = alloca %struct.flow_match_tcp, align 4
  %match237.i = alloca %struct.flow_match_meta, align 4
  %actions_arr.i = alloca [10 x [8 x i8]], align 1
  %mod_acts.i = alloca %struct.mlx5e_tc_mod_hdr_acts, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %nat to i8
  %idxprom = zext i1 %nat to i32
  %arrayidx = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom
  %netdev = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 1
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %nat3 = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom, i32 3
  %2 = ptrtoint ptr %nat3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %nat3, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #17
  %tobool6.not = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ns_type = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 13
  %3 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ns_type, align 4
  %call7 = tail call ptr @mlx5_alloc_flow_attr(i32 noundef %4) #11
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.err_attr_crit_edge, label %if.end10

if.end.err_attr_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_attr

if.end10:                                         ; preds = %if.end
  %mh = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom, i32 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %actions_arr.i) #11
  %5 = call ptr @memset(ptr %actions_arr.i, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mod_acts.i) #11
  %6 = getelementptr inbounds i8, ptr %mod_acts.i, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 33554431, ptr %6, align 4
  %8 = ptrtoint ptr %mod_acts.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %mod_acts.i, align 4
  %max_actions.i = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_acts.i, i32 0, i32 1
  %9 = ptrtoint ptr %max_actions.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 10, ptr %max_actions.i, align 4
  %actions.i = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_acts.i, i32 0, i32 3
  %10 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %actions_arr.i, ptr %actions.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %flow_rule, i32 0, i32 1
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %flow_rule, i32 1
  %11 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10.not.i.i = icmp eq i32 %12, 0
  br i1 %cmp10.not.i.i, label %if.end10.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge, label %if.end10.for.body.i.i_crit_edge

if.end10.for.body.i.i_crit_edge:                  ; preds = %if.end10
  br label %for.body.i.i

if.end10.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit.thread

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end10.for.body.i.i_crit_edge
  %i.012.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.for.body.i.i_crit_edge ]
  %act.011.i.i = phi ptr [ %arrayidx3.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %entries.i.i, %if.end10.for.body.i.i_crit_edge ]
  %13 = ptrtoint ptr %act.011.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %act.011.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %14)
  %cmp1.i.i = icmp eq i32 %14, 24
  br i1 %cmp1.i.i, label %mlx5_tc_ct_get_ct_metadata_action.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.012.i.i, 1
  %arrayidx3.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc.i.i
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %12
  br i1 %exitcond.not.i.i, label %for.inc.i.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit.thread

mlx5_tc_ct_get_ct_metadata_action.exit.i:         ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %act.011.i.i, null
  br i1 %tobool.not.i, label %mlx5_tc_ct_get_ct_metadata_action.exit.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge, label %if.end.i

mlx5_tc_ct_get_ct_metadata_action.exit.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge: ; preds = %mlx5_tc_ct_get_ct_metadata_action.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit.thread

if.end.i:                                         ; preds = %mlx5_tc_ct_get_ct_metadata_action.exit.i
  %15 = getelementptr inbounds %struct.flow_action_entry, ptr %act.011.i.i, i32 0, i32 5
  %labels.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.011.i.i, i32 0, i32 5, i32 0, i32 1
  %ct_labels_id.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 3, i32 4
  %call.i.i148 = call ptr @memchr_inv(ptr noundef %labels.i, i32 noundef 0, i32 noundef 16) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i148, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %ct_labels_id.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ct_labels_id.i, align 4
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.end.i
  %labels_mapping.i.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 12
  %17 = ptrtoint ptr %labels_mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %labels_mapping.i.i, align 4
  %call1.i.i = call i32 @mapping_add(ptr noundef %18, ptr noundef %labels.i, ptr noundef %ct_labels_id.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end5.i_crit_edge, label %if.end.i.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge

if.end.i.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit.thread

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i.i.if.end5.i_crit_edge, %if.then.i.i
  br i1 %nat, label %if.then7.i, label %if.end5.i.if.end13.i_crit_edge

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end5.i
  %19 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ct_priv, align 4
  %21 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %action.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp26.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp26.not.i.i, label %if.then7.i.if.end13.i_crit_edge, label %if.then7.i.for.body.i90.i_crit_edge

if.then7.i.for.body.i90.i_crit_edge:              ; preds = %if.then7.i
  br label %for.body.i90.i

if.then7.i.if.end13.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

for.body.i90.i:                                   ; preds = %for.inc.i95.i.for.body.i90.i_crit_edge, %if.then7.i.for.body.i90.i_crit_edge
  %i.028.i.i = phi i32 [ %inc8.i.i, %for.inc.i95.i.for.body.i90.i_crit_edge ], [ 0, %if.then7.i.for.body.i90.i_crit_edge ]
  %act.027.i.i = phi ptr [ %arrayidx9.i.i, %for.inc.i95.i.for.body.i90.i_crit_edge ], [ %entries.i.i, %if.then7.i.for.body.i90.i_crit_edge ]
  %23 = ptrtoint ptr %act.027.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %act.027.i.i, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %24, label %for.body.i90.i.err_mapping.i_crit_edge [
    i32 13, label %sw.bb.i.i
    i32 24, label %for.body.i90.i.for.inc.i95.i_crit_edge
  ]

for.body.i90.i.for.inc.i95.i_crit_edge:           ; preds = %for.body.i90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i95.i

for.body.i90.i.err_mapping.i_crit_edge:           ; preds = %for.body.i90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

sw.bb.i.i:                                        ; preds = %for.body.i90.i
  %26 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ns_type, align 4
  %call.i91.i = call ptr @mlx5e_mod_hdr_alloc(ptr noundef %20, i32 noundef %27, ptr noundef nonnull %mod_acts.i) #11
  %cmp.i.i.i = icmp ugt ptr %call.i91.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlx5_tc_ct_entry_create_nat.exit.i, label %if.end.i93.i

if.end.i93.i:                                     ; preds = %sw.bb.i.i
  %28 = getelementptr inbounds %struct.flow_action_entry, ptr %act.027.i.i, i32 0, i32 5
  %offset1.i.i.i = getelementptr inbounds %struct.anon.210, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset1.i.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 8
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %32, label %if.end.i93.i.err_mapping.i_crit_edge [
    i32 2, label %do.body.i.i.i
    i32 3, label %do.body12.i.i.i
    i32 4, label %do.body58.i.i.i
    i32 5, label %do.body80.i.i.i
  ]

if.end.i93.i.err_mapping.i_crit_edge:             ; preds = %if.end.i93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

do.body.i.i.i:                                    ; preds = %if.end.i93.i
  %34 = ptrtoint ptr %call.i91.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %call.i91.i, align 4
  %and.i.i.i = and i32 %35, -32
  store i32 %and.i.i.i, ptr %call.i91.i, align 4
  %36 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %30, label %do.body.i.i.i.err_mapping.i_crit_edge [
    i32 12, label %do.body.i.i.i.if.end5.i.i_crit_edge
    i32 16, label %if.then8.i.i.i
  ]

do.body.i.i.i.if.end5.i.i_crit_edge:              ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

do.body.i.i.i.err_mapping.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

if.then8.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

do.body12.i.i.i:                                  ; preds = %if.end.i93.i
  %37 = ptrtoint ptr %call.i91.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call.i91.i, align 4
  %and18.i.i.i = and i32 %38, -32
  store i32 %and18.i.i.i, ptr %call.i91.i, align 4
  %39 = add i32 %30, -8
  %40 = call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %41 = icmp ult i32 %40, 8
  br i1 %41, label %switch.lookup, label %do.body12.i.i.i.err_mapping.i_crit_edge

do.body12.i.i.i.err_mapping.i_crit_edge:          ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

do.body58.i.i.i:                                  ; preds = %if.end.i93.i
  %42 = ptrtoint ptr %call.i91.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %call.i91.i, align 4
  %and64.i.i.i = and i32 %43, -32
  %or67.i.i.i = or i32 %and64.i.i.i, 16
  store i32 %or67.i.i.i, ptr %call.i91.i, align 4
  %44 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %30, label %do.body58.i.i.i.err_mapping.i_crit_edge [
    i32 0, label %do.body58.i.i.i.if.end5.i.i_crit_edge
    i32 2, label %if.then75.i.i.i
  ]

do.body58.i.i.i.if.end5.i.i_crit_edge:            ; preds = %do.body58.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

do.body58.i.i.i.err_mapping.i_crit_edge:          ; preds = %do.body58.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

if.then75.i.i.i:                                  ; preds = %do.body58.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

do.body80.i.i.i:                                  ; preds = %if.end.i93.i
  %45 = ptrtoint ptr %call.i91.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call.i91.i, align 4
  %and86.i.i.i = and i32 %46, -32
  %or89.i.i.i = or i32 %and86.i.i.i, 16
  store i32 %or89.i.i.i, ptr %call.i91.i, align 4
  %47 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %30, label %do.body80.i.i.i.err_mapping.i_crit_edge [
    i32 0, label %do.body80.i.i.i.if.end5.i.i_crit_edge
    i32 2, label %if.then97.i.i.i
  ]

do.body80.i.i.i.if.end5.i.i_crit_edge:            ; preds = %do.body80.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

do.body80.i.i.i.err_mapping.i_crit_edge:          ; preds = %do.body80.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

if.then97.i.i.i:                                  ; preds = %do.body80.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i.i

switch.lookup:                                    ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.mult = shl i32 %40, 16
  %switch.offset = add i32 %switch.idx.mult, 269287424
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %switch.lookup, %if.then97.i.i.i, %do.body80.i.i.i.if.end5.i.i_crit_edge, %if.then75.i.i.i, %do.body58.i.i.i.if.end5.i.i_crit_edge, %if.then8.i.i.i, %do.body.i.i.i.if.end5.i.i_crit_edge
  %field.0.i.i.i = phi i32 [ 269221888, %if.then97.i.i.i ], [ 269025280, %if.then75.i.i.i ], [ 269877248, %if.then8.i.i.i ], [ 269811712, %do.body.i.i.i.if.end5.i.i_crit_edge ], [ 268959744, %do.body58.i.i.i.if.end5.i.i_crit_edge ], [ 269156352, %do.body80.i.i.i.if.end5.i.i_crit_edge ], [ %switch.offset, %switch.lookup ]
  %48 = ptrtoint ptr %call.i91.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call.i91.i, align 4
  %and107.i.i.i = and i32 %49, 57599
  %or136.i.i.i = or i32 %and107.i.i.i, %field.0.i.i.i
  store i32 %or136.i.i.i, ptr %call.i91.i, align 4
  %val.i.i.i = getelementptr inbounds %struct.anon.210, ptr %28, i32 0, i32 3
  %50 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i.i.i, align 4
  %add.ptr145.i.i.i = getelementptr i32, ptr %call.i91.i, i32 1
  %52 = ptrtoint ptr %add.ptr145.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr145.i.i.i, align 4
  %53 = ptrtoint ptr %mod_acts.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mod_acts.i, align 4
  %inc.i94.i = add i32 %54, 1
  store i32 %inc.i94.i, ptr %mod_acts.i, align 4
  br label %for.inc.i95.i

for.inc.i95.i:                                    ; preds = %if.end5.i.i, %for.body.i90.i.for.inc.i95.i_crit_edge
  %inc8.i.i = add nuw i32 %i.028.i.i, 1
  %arrayidx9.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %inc8.i.i
  %55 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %action.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc8.i.i, %56
  br i1 %cmp.i.i, label %for.inc.i95.i.for.body.i90.i_crit_edge, label %for.inc.i95.i.if.end13.i_crit_edge

for.inc.i95.i.if.end13.i_crit_edge:               ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

for.inc.i95.i.for.body.i90.i_crit_edge:           ; preds = %for.inc.i95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i90.i

mlx5_tc_ct_entry_create_nat.exit.i:               ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %call.i91.i to i32
  br label %err_mapping.i

if.end13.i:                                       ; preds = %for.inc.i95.i.if.end13.i_crit_edge, %if.then7.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %ct_state.0.i = phi i8 [ 6, %if.end5.i.if.end13.i_crit_edge ], [ 14, %if.then7.i.if.end13.i_crit_edge ], [ 14, %for.inc.i95.i.if.end13.i_crit_edge ]
  %orig_dir.i = getelementptr inbounds %struct.flow_action_entry, ptr %act.011.i.i, i32 0, i32 5, i32 0, i32 3
  %58 = ptrtoint ptr %orig_dir.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %orig_dir.i, align 8, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool17.not.i = icmp eq i8 %59, 0
  %cond.i = select i1 %tobool17.not.i, i8 16, i8 0
  %or20.i = or i8 %cond.i, %ct_state.0.i
  %mark.i = getelementptr inbounds %struct.anon.218, ptr %15, i32 0, i32 1
  %60 = ptrtoint ptr %mark.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mark.i, align 4
  %62 = ptrtoint ptr %ct_labels_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ct_labels_id.i, align 4
  %call25.i = call fastcc i32 @mlx5_tc_ct_entry_set_registers(ptr noundef %ct_priv, ptr noundef nonnull %mod_acts.i, i8 noundef zeroext %or20.i, i32 noundef %61, i32 noundef %63, i8 noundef zeroext %zone_restore_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end13.i.err_mapping.i_crit_edge

if.end13.i.err_mapping.i_crit_edge:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mapping.i

if.end28.i:                                       ; preds = %if.end13.i
  %64 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ct_priv, align 4
  br i1 %nat, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %if.end28.i
  %66 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ns_type, align 4
  %conv31.i = trunc i32 %67 to i8
  %68 = ptrtoint ptr %mod_acts.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mod_acts.i, align 4
  %conv33.i = trunc i32 %69 to i8
  %70 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %actions.i, align 4
  %call35.i = call ptr @mlx5_modify_header_alloc(ptr noundef %65, i8 noundef zeroext %conv31.i, i8 noundef zeroext %conv33.i, ptr noundef %71) #11
  %modify_hdr.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 2
  %72 = ptrtoint ptr %modify_hdr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call35.i, ptr %modify_hdr.i, align 4
  %cmp.i97.i = icmp ugt ptr %call35.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97.i, label %if.then38.i, label %if.end41.i

if.then38.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = ptrtoint ptr %call35.i to i32
  br label %err_mapping.i

if.end41.i:                                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %mh to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %mh, align 4
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit.thread166

if.else.i:                                        ; preds = %if.end28.i
  %mod_hdr_tbl.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 2
  %75 = ptrtoint ptr %mod_hdr_tbl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mod_hdr_tbl.i, align 4
  %77 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ns_type, align 4
  %call44.i = call ptr @mlx5e_mod_hdr_attach(ptr noundef %65, ptr noundef %76, i32 noundef %78, ptr noundef nonnull %mod_acts.i) #11
  %79 = ptrtoint ptr %mh to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call44.i, ptr %mh, align 4
  %cmp.i98.i = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98.i, label %if.then46.i, label %if.end48.i

if.then46.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %call44.i to i32
  br label %err_mapping.i

if.end48.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %call49.i = call ptr @mlx5e_mod_hdr_get(ptr noundef %call44.i) #11
  %modify_hdr50.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 2
  %81 = ptrtoint ptr %modify_hdr50.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call49.i, ptr %modify_hdr50.i, align 4
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit.thread166

mlx5_tc_ct_entry_create_mod_hdr.exit.thread166:   ; preds = %if.end48.i, %if.end41.i
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %mod_acts.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mod_acts.i) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %actions_arr.i) #11
  br label %if.end26

err_mapping.i:                                    ; preds = %if.then46.i, %if.then38.i, %if.end13.i.err_mapping.i_crit_edge, %mlx5_tc_ct_entry_create_nat.exit.i, %do.body80.i.i.i.err_mapping.i_crit_edge, %do.body58.i.i.i.err_mapping.i_crit_edge, %do.body12.i.i.i.err_mapping.i_crit_edge, %do.body.i.i.i.err_mapping.i_crit_edge, %if.end.i93.i.err_mapping.i_crit_edge, %for.body.i90.i.err_mapping.i_crit_edge
  %err.0.i = phi i32 [ %57, %mlx5_tc_ct_entry_create_nat.exit.i ], [ %call25.i, %if.end13.i.err_mapping.i_crit_edge ], [ %73, %if.then38.i ], [ %80, %if.then46.i ], [ -95, %do.body12.i.i.i.err_mapping.i_crit_edge ], [ -95, %for.body.i90.i.err_mapping.i_crit_edge ], [ -95, %if.end.i93.i.err_mapping.i_crit_edge ], [ -95, %do.body.i.i.i.err_mapping.i_crit_edge ], [ -95, %do.body58.i.i.i.err_mapping.i_crit_edge ], [ -95, %do.body80.i.i.i.err_mapping.i_crit_edge ]
  call void @mlx5e_mod_hdr_dealloc(ptr noundef nonnull %mod_acts.i) #11
  %82 = ptrtoint ptr %ct_labels_id.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ct_labels_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i99.i = icmp eq i32 %83, 0
  br i1 %tobool.not.i99.i, label %err_mapping.i.mlx5_tc_ct_entry_create_mod_hdr.exit_crit_edge, label %if.then.i102.i

err_mapping.i.mlx5_tc_ct_entry_create_mod_hdr.exit_crit_edge: ; preds = %err_mapping.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit

if.then.i102.i:                                   ; preds = %err_mapping.i
  call void @__sanitizer_cov_trace_pc() #13
  %labels_mapping.i100.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 12
  %84 = ptrtoint ptr %labels_mapping.i100.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %labels_mapping.i100.i, align 4
  %call.i101.i = call i32 @mapping_remove(ptr noundef %85, i32 noundef %83) #11
  br label %mlx5_tc_ct_entry_create_mod_hdr.exit

mlx5_tc_ct_entry_create_mod_hdr.exit.thread:      ; preds = %if.end.i.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge, %mlx5_tc_ct_get_ct_metadata_action.exit.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge, %for.inc.i.i.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge, %if.end10.mlx5_tc_ct_entry_create_mod_hdr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mod_acts.i) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %actions_arr.i) #11
  br label %do.body15

mlx5_tc_ct_entry_create_mod_hdr.exit:             ; preds = %if.then.i102.i, %err_mapping.i.mlx5_tc_ct_entry_create_mod_hdr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mod_acts.i) #11
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %actions_arr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool13.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool13.not, label %mlx5_tc_ct_entry_create_mod_hdr.exit.if.end26_crit_edge, label %mlx5_tc_ct_entry_create_mod_hdr.exit.do.body15_crit_edge

mlx5_tc_ct_entry_create_mod_hdr.exit.do.body15_crit_edge: ; preds = %mlx5_tc_ct_entry_create_mod_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

mlx5_tc_ct_entry_create_mod_hdr.exit.if.end26_crit_edge: ; preds = %mlx5_tc_ct_entry_create_mod_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.body15:                                        ; preds = %mlx5_tc_ct_entry_create_mod_hdr.exit.do.body15_crit_edge, %mlx5_tc_ct_entry_create_mod_hdr.exit.thread
  %retval.0.i149165 = phi i32 [ -95, %mlx5_tc_ct_entry_create_mod_hdr.exit.thread ], [ %err.0.i, %mlx5_tc_ct_entry_create_mod_hdr.exit.do.body15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_entry_add_rule, %if.then21)) #11
          to label %err_mod_hdr [label %if.then21], !srcloc !199

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug705, ptr noundef %87, ptr noundef nonnull @.str.59) #11
  br label %err_mod_hdr

if.end26:                                         ; preds = %mlx5_tc_ct_entry_create_mod_hdr.exit.if.end26_crit_edge, %mlx5_tc_ct_entry_create_mod_hdr.exit.thread166
  %88 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 76, ptr %call7, align 4
  %dest_chain = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 8
  %89 = ptrtoint ptr %dest_chain to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %dest_chain, align 4
  %post_act = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 9
  %90 = ptrtoint ptr %post_act to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %post_act, align 4
  %call27 = call ptr @mlx5e_tc_post_act_get_ft(ptr noundef %91) #11
  %dest_ft = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 10
  %92 = ptrtoint ptr %dest_ft to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call27, ptr %dest_ft, align 4
  %ct_nat = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 8
  %ct = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 7
  %cond.in = select i1 %nat, ptr %ct_nat, ptr %ct
  %93 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %93)
  %cond = load ptr, ptr %cond.in, align 4
  %ft = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 9
  %94 = ptrtoint ptr %ft to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %cond, ptr %ft, align 4
  %outer_match_level = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 12
  %95 = ptrtoint ptr %outer_match_level to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 3, ptr %outer_match_level, align 1
  %counter = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 3
  %96 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %counter, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %counter30 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 1
  %100 = ptrtoint ptr %counter30 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %counter30, align 4
  %flags = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 0, i32 15
  %101 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags, align 4
  %or = or i32 %102, 4
  store i32 %or, ptr %flags, align 4
  %103 = ptrtoint ptr %ns_type to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ns_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %104)
  %cmp = icmp eq i32 %104, 8
  br i1 %cmp, label %if.then32, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then32:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %mdev = getelementptr i8, ptr %1, i32 11328
  %105 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mdev, align 64
  %in_mdev = getelementptr inbounds %struct.mlx5_flow_attr, ptr %call7, i32 1, i32 1
  %107 = ptrtoint ptr %in_mdev to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %in_mdev, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end26.if.end33_crit_edge
  %108 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %flow_rule, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %and.i.i.i150 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i150)
  %tobool.i.i.not.i = icmp eq i32 %and.i.i.i150, 0
  br i1 %tobool.i.i.not.i, label %if.end33.if.end.i151_crit_edge, label %if.then.i

if.end33.if.end.i151_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i151

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %match_value.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2
  %match_criteria.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match.i) #11
  %112 = ptrtoint ptr %match.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 -1 to ptr), ptr %match.i, align 4, !annotation !198
  %113 = getelementptr inbounds %struct.flow_match_basic, ptr %match.i, i32 0, i32 1
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %113, align 4, !annotation !198
  call void @flow_rule_match_basic(ptr noundef %flow_rule, ptr noundef nonnull %match.i) #11
  %115 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ct_priv, align 4
  call void @mlx5e_tc_set_ethertype(ptr noundef %116, ptr noundef nonnull %match.i, i1 noundef zeroext true, ptr noundef %match_criteria.i, ptr noundef %match_value.i) #11
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %113, align 4
  %ip_proto3.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %ip_proto3.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %ip_proto3.i, align 2
  %conv.i = zext i8 %120 to i32
  %add.ptr5.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %121 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr5.i, align 4
  %and.i = and i32 %122, 16777215
  %shl.i = shl nuw i32 %conv.i, 24
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %add.ptr5.i, align 4
  %123 = ptrtoint ptr %match.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %match.i, align 4
  %ip_proto12.i = getelementptr inbounds %struct.flow_dissector_key_basic, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %ip_proto12.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %ip_proto12.i, align 2
  %conv13.i = zext i8 %126 to i32
  %add.ptr17.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %127 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %add.ptr17.i, align 4
  %and18.i = and i32 %128, 16777215
  %shl20.i = shl nuw i32 %conv13.i, 24
  %or21.i = or i32 %and18.i, %shl20.i
  store i32 %or21.i, ptr %add.ptr17.i, align 4
  %129 = load i8, ptr %ip_proto12.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match.i) #11
  br label %if.end.i151

if.end.i151:                                      ; preds = %if.then.i, %if.end33.if.end.i151_crit_edge
  %ip_proto.0.i = phi i8 [ %129, %if.then.i ], [ 0, %if.end33.if.end.i151_crit_edge ]
  %130 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %flow_rule, align 8
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %and.i.i3.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i3.i)
  %tobool.i.i4.not.i = icmp eq i32 %and.i.i3.i, 0
  br i1 %tobool.i.i4.not.i, label %if.end.i151.if.end65.i_crit_edge, label %if.end32.i

if.end.i151.if.end65.i_crit_edge:                 ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.end32.i:                                       ; preds = %if.end.i151
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match29.i) #11
  %134 = ptrtoint ptr %match29.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 -1 to ptr), ptr %match29.i, align 4, !annotation !198
  %135 = getelementptr inbounds %struct.flow_match_control, ptr %match29.i, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr inttoptr (i32 -1 to ptr), ptr %135, align 4, !annotation !198
  call void @flow_rule_match_control(ptr noundef %flow_rule, ptr noundef nonnull %match29.i) #11
  %137 = ptrtoint ptr %match29.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %match29.i, align 4
  %addr_type31.i = getelementptr inbounds %struct.flow_dissector_key_control, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %addr_type31.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %addr_type31.i, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match29.i) #11
  %141 = zext i16 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %140, label %if.end32.i.if.end65.i_crit_edge [
    i16 2, label %if.then35.i
    i16 3, label %if.then51.i
  ]

if.end32.i.if.end65.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match36.i) #11
  %142 = ptrtoint ptr %match36.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr inttoptr (i32 -1 to ptr), ptr %match36.i, align 4, !annotation !198
  %143 = getelementptr inbounds %struct.flow_match_ipv4_addrs, ptr %match36.i, i32 0, i32 1
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 -1 to ptr), ptr %143, align 4, !annotation !198
  call void @flow_rule_match_ipv4_addrs(ptr noundef %flow_rule, ptr noundef nonnull %match36.i) #11
  %add.ptr37.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 11
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %143, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  %149 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %148, ptr %add.ptr37.i, align 1
  %add.ptr39.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 11
  %150 = ptrtoint ptr %match36.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %match36.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %154 = ptrtoint ptr %add.ptr39.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 4)
  store i32 %153, ptr %add.ptr39.i, align 1
  %add.ptr42.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 15
  %dst.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %146, i32 0, i32 1
  %155 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dst.i, align 4
  %157 = ptrtoint ptr %add.ptr42.i to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 %156, ptr %add.ptr42.i, align 1
  %add.ptr44.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 15
  %dst46.i = getelementptr inbounds %struct.flow_dissector_key_ipv4_addrs, ptr %151, i32 0, i32 1
  %158 = ptrtoint ptr %dst46.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %dst46.i, align 4
  %160 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %159, ptr %add.ptr44.i, align 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match36.i) #11
  br label %if.end65.i

if.then51.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match52.i) #11
  %161 = ptrtoint ptr %match52.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr inttoptr (i32 -1 to ptr), ptr %match52.i, align 4, !annotation !198
  %162 = getelementptr inbounds %struct.flow_match_ipv6_addrs, ptr %match52.i, i32 0, i32 1
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr inttoptr (i32 -1 to ptr), ptr %162, align 4, !annotation !198
  call void @flow_rule_match_ipv6_addrs(ptr noundef %flow_rule, ptr noundef nonnull %match52.i) #11
  %add.ptr53.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 8
  %164 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %162, align 4
  %166 = call ptr @memcpy(ptr %add.ptr53.i, ptr %165, i32 16)
  %add.ptr56.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 8
  %167 = ptrtoint ptr %match52.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %match52.i, align 4
  %169 = call ptr @memcpy(ptr %add.ptr56.i, ptr %168, i32 16)
  %add.ptr59.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 12
  %dst61.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %165, i32 0, i32 1
  %170 = call ptr @memcpy(ptr %add.ptr59.i, ptr %dst61.i, i32 16)
  %add.ptr62.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 12
  %dst64.i = getelementptr inbounds %struct.flow_dissector_key_ipv6_addrs, ptr %168, i32 0, i32 1
  %171 = call ptr @memcpy(ptr %add.ptr62.i, ptr %dst64.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match52.i) #11
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.then51.i, %if.then35.i, %if.end32.i.if.end65.i_crit_edge, %if.end.i151.if.end65.i_crit_edge
  %172 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %flow_rule, align 8
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %and.i.i5.i = and i32 %175, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i5.i)
  %tobool.i.i6.not.i = icmp eq i32 %and.i.i5.i, 0
  br i1 %tobool.i.i6.not.i, label %if.end65.i.if.end199.i_crit_edge, label %if.then67.i

if.end65.i.if.end199.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end199.i

if.then67.i:                                      ; preds = %if.end65.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match68.i) #11
  %176 = ptrtoint ptr %match68.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr inttoptr (i32 -1 to ptr), ptr %match68.i, align 4, !annotation !198
  %177 = getelementptr inbounds %struct.flow_match_ports, ptr %match68.i, i32 0, i32 1
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr inttoptr (i32 -1 to ptr), ptr %177, align 4, !annotation !198
  call void @flow_rule_match_ports(ptr noundef %flow_rule, ptr noundef nonnull %match68.i) #11
  %179 = zext i8 %ip_proto.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %ip_proto.0.i, label %if.then67.i.sw.epilog.i_crit_edge [
    i8 6, label %do.body70.i
    i8 17, label %do.body135.i
  ]

if.then67.i.sw.epilog.i_crit_edge:                ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.body70.i:                                      ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  %180 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %177, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %181, align 4
  %conv74.i = zext i16 %183 to i32
  %add.ptr78.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 5
  %184 = ptrtoint ptr %add.ptr78.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr78.i, align 4
  %and79.i = and i32 %185, 65535
  %shl81.i = shl nuw i32 %conv74.i, 16
  %or82.i = or i32 %and79.i, %shl81.i
  store i32 %or82.i, ptr %add.ptr78.i, align 4
  %186 = ptrtoint ptr %match68.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %match68.i, align 4
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %187, align 4
  %conv90.i = zext i16 %189 to i32
  %add.ptr94.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 5
  %190 = ptrtoint ptr %add.ptr94.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %add.ptr94.i, align 4
  %and95.i = and i32 %191, 65535
  %shl97.i = shl nuw i32 %conv90.i, 16
  %or98.i = or i32 %and95.i, %shl97.i
  store i32 %or98.i, ptr %add.ptr94.i, align 4
  br label %sw.epilog.sink.split.i

do.body135.i:                                     ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  %192 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %177, align 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %193, align 4
  %conv139.i = zext i16 %195 to i32
  %add.ptr143.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 7
  %196 = ptrtoint ptr %add.ptr143.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr143.i, align 4
  %and144.i = and i32 %197, 65535
  %shl146.i = shl nuw i32 %conv139.i, 16
  %or147.i = or i32 %and144.i, %shl146.i
  store i32 %or147.i, ptr %add.ptr143.i, align 4
  %198 = ptrtoint ptr %match68.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %match68.i, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %199, align 4
  %conv155.i = zext i16 %201 to i32
  %add.ptr159.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 7
  %202 = ptrtoint ptr %add.ptr159.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %add.ptr159.i, align 4
  %and160.i = and i32 %203, 65535
  %shl162.i = shl nuw i32 %conv155.i, 16
  %or163.i = or i32 %and160.i, %shl162.i
  store i32 %or163.i, ptr %add.ptr159.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.body135.i, %do.body70.i
  %.sink24.i = phi ptr [ %193, %do.body135.i ], [ %181, %do.body70.i ]
  %shl146.sink.i = phi i32 [ %shl146.i, %do.body135.i ], [ %shl81.i, %do.body70.i ]
  %add.ptr143.sink.i = phi ptr [ %add.ptr143.i, %do.body135.i ], [ %add.ptr78.i, %do.body70.i ]
  %.sink.i = phi ptr [ %199, %do.body135.i ], [ %187, %do.body70.i ]
  %shl162.sink.i = phi i32 [ %shl162.i, %do.body135.i ], [ %shl97.i, %do.body70.i ]
  %add.ptr159.sink.i = phi ptr [ %add.ptr159.i, %do.body135.i ], [ %add.ptr94.i, %do.body70.i ]
  %dst170.i = getelementptr inbounds %struct.anon.207, ptr %.sink24.i, i32 0, i32 1
  %204 = ptrtoint ptr %dst170.i to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %dst170.i, align 2
  %conv171.i = zext i16 %205 to i32
  %or179.i = or i32 %shl146.sink.i, %conv171.i
  %206 = ptrtoint ptr %add.ptr143.sink.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %or179.i, ptr %add.ptr143.sink.i, align 4
  %dst186.i = getelementptr inbounds %struct.anon.207, ptr %.sink.i, i32 0, i32 1
  %207 = ptrtoint ptr %dst186.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %dst186.i, align 2
  %conv187.i = zext i16 %208 to i32
  %or195.i = or i32 %shl162.sink.i, %conv187.i
  %209 = ptrtoint ptr %add.ptr159.sink.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %or195.i, ptr %add.ptr159.sink.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.then67.i.sw.epilog.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match68.i) #11
  br label %if.end199.i

if.end199.i:                                      ; preds = %sw.epilog.i, %if.end65.i.if.end199.i_crit_edge
  %210 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %flow_rule, align 8
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %211, align 4
  %and.i.i7.i = and i32 %213, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i7.i)
  %tobool.i.i8.not.i = icmp eq i32 %and.i.i7.i, 0
  br i1 %tobool.i.i8.not.i, label %if.end199.i.if.end234.i_crit_edge, label %if.then201.i

if.end199.i.if.end234.i_crit_edge:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end234.i

if.then201.i:                                     ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match202.i) #11
  %214 = ptrtoint ptr %match202.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr inttoptr (i32 -1 to ptr), ptr %match202.i, align 4, !annotation !198
  %215 = getelementptr inbounds %struct.flow_match_tcp, ptr %match202.i, i32 0, i32 1
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr inttoptr (i32 -1 to ptr), ptr %215, align 4, !annotation !198
  call void @flow_rule_match_tcp(ptr noundef %flow_rule, ptr noundef nonnull %match202.i) #11
  %217 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %215, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %218, align 2
  %add.ptr210.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %221 = ptrtoint ptr %add.ptr210.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %add.ptr210.i, align 4
  %and211.i = and i32 %222, -512
  %223 = and i16 %220, 511
  %and212.i = zext i16 %223 to i32
  %or214.i = or i32 %and211.i, %and212.i
  store i32 %or214.i, ptr %add.ptr210.i, align 4
  %224 = ptrtoint ptr %match202.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %match202.i, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %225, align 2
  %add.ptr226.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %228 = ptrtoint ptr %add.ptr226.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %add.ptr226.i, align 4
  %and227.i = and i32 %229, -512
  %230 = and i16 %227, 511
  %and228.i = zext i16 %230 to i32
  %or230.i = or i32 %and227.i, %and228.i
  store i32 %or230.i, ptr %add.ptr226.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match202.i) #11
  br label %if.end234.i

if.end234.i:                                      ; preds = %if.then201.i, %if.end199.i.if.end234.i_crit_edge
  %231 = ptrtoint ptr %flow_rule to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %flow_rule, align 8
  %233 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %232, align 4
  %and.i.i9.i = and i32 %234, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9.i)
  %tobool.i.i10.not.i = icmp eq i32 %and.i.i9.i, 0
  br i1 %tobool.i.i10.not.i, label %if.end234.i.mlx5_tc_ct_set_tuple_match.exit_crit_edge, label %if.then236.i

if.end234.i.mlx5_tc_ct_set_tuple_match.exit_crit_edge: ; preds = %if.end234.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5_tc_ct_set_tuple_match.exit

if.then236.i:                                     ; preds = %if.end234.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match237.i) #11
  %235 = ptrtoint ptr %match237.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr inttoptr (i32 -1 to ptr), ptr %match237.i, align 4, !annotation !198
  %236 = getelementptr inbounds %struct.flow_match_meta, ptr %match237.i, i32 0, i32 1
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr inttoptr (i32 -1 to ptr), ptr %236, align 4, !annotation !198
  call void @flow_rule_match_meta(ptr noundef %flow_rule, ptr noundef nonnull %match237.i) #11
  %238 = ptrtoint ptr %match237.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %match237.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 4
  %242 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %236, align 4
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 4
  %and241.i = and i32 %245, %241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241.i)
  %tobool.not.i152 = icmp eq i32 %and241.i, 0
  br i1 %tobool.not.i152, label %if.then236.i.if.end256.i_crit_edge, label %if.then242.i

if.then236.i.if.end256.i_crit_edge:               ; preds = %if.then236.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end256.i

if.then242.i:                                     ; preds = %if.then236.i
  %call246.i = call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %241) #11
  %tobool247.not.i = icmp eq ptr %call246.i, null
  br i1 %tobool247.not.i, label %if.then242.i.if.end256.i_crit_edge, label %land.lhs.true.i

if.then242.i.if.end256.i_crit_edge:               ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end256.i

land.lhs.true.i:                                  ; preds = %if.then242.i
  %246 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %ct_priv, align 4
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %247, i32 0, i32 8, i32 0, i32 8
  %248 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %arrayidx.i, align 8
  %250 = ptrtoint ptr %249 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %249, align 4
  %252 = and i32 %251, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool252.not.i = icmp eq i32 %252, 0
  br i1 %tobool252.not.i, label %land.lhs.true.i.do.body1.i.i_crit_edge, label %land.lhs.true.i.tailrecurse.i.i_crit_edge

land.lhs.true.i.tailrecurse.i.i_crit_edge:        ; preds = %land.lhs.true.i
  br label %tailrecurse.i.i

land.lhs.true.i.do.body1.i.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body1.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.backedge, %land.lhs.true.i.tailrecurse.i.i_crit_edge
  %ndev.tr.i.i = phi ptr [ %ndev.tr.i.i.be, %tailrecurse.i.i.backedge ], [ %call246.i, %land.lhs.true.i.tailrecurse.i.i_crit_edge ]
  %253 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %ct_priv, align 4
  %call1.i.i153 = call zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef %ndev.tr.i.i) #11
  br i1 %call1.i.i153, label %land.rhs.i.i, label %tailrecurse.i.i.land.end.i.i_crit_edge

tailrecurse.i.i.land.end.i.i_crit_edge:           ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end.i.i

land.rhs.i.i:                                     ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mdev2.i.i = getelementptr i8, ptr %ndev.tr.i.i, i32 11328
  %255 = ptrtoint ptr %mdev2.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mdev2.i.i, align 64
  %call3.i.i = call zeroext i1 @mlx5_same_hw_devs(ptr noundef %254, ptr noundef %256) #11
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %tailrecurse.i.i.land.end.i.i_crit_edge
  %257 = phi i1 [ false, %tailrecurse.i.i.land.end.i.i_crit_edge ], [ %call3.i.i, %land.rhs.i.i ]
  %call4.i.i = call zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef %ndev.tr.i.i) #11
  br i1 %call4.i.i, label %land.rhs5.i.i, label %land.end.i.i.land.end8.i.i_crit_edge

land.end.i.i.land.end8.i.i_crit_edge:             ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end8.i.i

land.rhs5.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mdev6.i.i = getelementptr i8, ptr %ndev.tr.i.i, i32 11328
  %258 = ptrtoint ptr %mdev6.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mdev6.i.i, align 64
  %call7.i.i = call zeroext i1 @mlx5_same_hw_devs(ptr noundef %254, ptr noundef %259) #11
  br label %land.end8.i.i

land.end8.i.i:                                    ; preds = %land.rhs5.i.i, %land.end.i.i.land.end8.i.i_crit_edge
  %260 = phi i1 [ false, %land.end.i.i.land.end8.i.i_crit_edge ], [ %call7.i.i, %land.rhs5.i.i ]
  %brmerge.i.i = select i1 %257, i1 true, i1 %260
  br i1 %brmerge.i.i, label %cleanup.loopexit.i.i, label %if.end12.i.i

if.end12.i.i:                                     ; preds = %land.end8.i.i
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev.tr.i.i, i32 0, i32 15
  %261 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %261)
  %262 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i.i11.i = and i64 %262, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i11.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i11.i, 0
  br i1 %tobool.i.not.i.i, label %if.end17.i.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i.i = call ptr @vlan_dev_real_dev(ptr noundef %ndev.tr.i.i) #11
  br label %tailrecurse.i.i.backedge

if.end17.i.i:                                     ; preds = %if.end12.i.i
  %and.i44.i.i = and i64 %262, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i44.i.i)
  %tobool.i45.not.i.i = icmp eq i64 %and.i44.i.i, 0
  br i1 %tobool.i45.not.i.i, label %if.end22.i.i, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %lowerdev.i.i.i = getelementptr i8, ptr %ndev.tr.i.i, i32 2328
  %263 = ptrtoint ptr %lowerdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %lowerdev.i.i.i, align 8
  br label %tailrecurse.i.i.backedge

tailrecurse.i.i.backedge:                         ; preds = %if.then19.i.i, %if.then14.i.i
  %ndev.tr.i.i.be = phi ptr [ %call15.i.i, %if.then14.i.i ], [ %264, %if.then19.i.i ]
  br label %tailrecurse.i.i

if.end22.i.i:                                     ; preds = %if.end17.i.i
  %call23.i.i = call ptr @mlx5e_get_tc_tun(ptr noundef %ndev.tr.i.i) #11
  %tobool24.not.i.i = icmp eq ptr %call23.i.i, null
  br i1 %tobool24.not.i.i, label %lor.lhs.false.i.i, label %if.end22.i.i.if.end255.i_crit_edge

if.end22.i.i.if.end255.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255.i

lor.lhs.false.i.i:                                ; preds = %if.end22.i.i
  %flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev.tr.i.i, i32 0, i32 14
  %265 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %flags.i.i.i.i, align 8
  %and.i.i.i.i = and i32 %266, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %lor.lhs.false.i.i.netif_is_lag_master.exit.i.i_crit_edge, label %netif_is_bond_master.exit.i.i.i

lor.lhs.false.i.i.netif_is_lag_master.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_is_lag_master.exit.i.i

netif_is_bond_master.exit.i.i.i:                  ; preds = %lor.lhs.false.i.i
  %267 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %priv_flags.i.i.i, align 16
  %and1.i.i.i.i = and i64 %268, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i.i)
  %tobool2.i.not.i.i.i = icmp eq i64 %and1.i.i.i.i, 0
  br i1 %tobool2.i.not.i.i.i, label %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge, label %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.thread.i.i_crit_edge

netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.thread.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_is_lag_master.exit.thread.i.i

netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_is_lag_master.exit.i.i

netif_is_lag_master.exit.i.i:                     ; preds = %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.i.i_crit_edge, %lor.lhs.false.i.i.netif_is_lag_master.exit.i.i_crit_edge
  %269 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i4.i.i.i = and i64 %270, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i.i)
  %tobool.i.i.not.i.i = icmp eq i64 %and.i4.i.i.i, 0
  br i1 %tobool.i.i.not.i.i, label %netif_is_lag_master.exit.i.i.if.end255.i_crit_edge, label %netif_is_lag_master.exit.i.i.netif_is_lag_master.exit.thread.i.i_crit_edge

netif_is_lag_master.exit.i.i.netif_is_lag_master.exit.thread.i.i_crit_edge: ; preds = %netif_is_lag_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_is_lag_master.exit.thread.i.i

netif_is_lag_master.exit.i.i.if.end255.i_crit_edge: ; preds = %netif_is_lag_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end255.i

netif_is_lag_master.exit.thread.i.i:              ; preds = %netif_is_lag_master.exit.i.i.netif_is_lag_master.exit.thread.i.i_crit_edge, %netif_is_bond_master.exit.i.i.i.netif_is_lag_master.exit.thread.i.i_crit_edge
  br label %if.end255.i

cleanup.loopexit.i.i:                             ; preds = %land.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.mux.le.i.i = select i1 %257, i32 2, i32 1
  br label %if.end255.i

if.end255.i:                                      ; preds = %cleanup.loopexit.i.i, %netif_is_lag_master.exit.thread.i.i, %netif_is_lag_master.exit.i.i.if.end255.i_crit_edge, %if.end22.i.i.if.end255.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end22.i.i.if.end255.i_crit_edge ], [ 1, %netif_is_lag_master.exit.thread.i.i ], [ 0, %netif_is_lag_master.exit.i.i.if.end255.i_crit_edge ], [ %.mux.le.i.i, %cleanup.loopexit.i.i ]
  %flow_source.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 3, i32 2
  %271 = ptrtoint ptr %flow_source.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %retval.0.i.i, ptr %flow_source.i, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end255.i, %land.lhs.true.i.do.body1.i.i_crit_edge
  %272 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !230
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call246.i, i32 0, i32 118
  %273 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %275 = ptrtoint ptr %274 to i32
  %276 = call i32 @llvm.read_register.i32(metadata !188) #11
  %and.i.i12.i = and i32 %276, -16384
  %277 = inttoptr i32 %and.i.i12.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %277, i32 0, i32 3
  %278 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %279
  %280 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %281, %275
  %282 = inttoptr i32 %add.i.i to ptr
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %282, align 4
  %add13.i.i = add i32 %284, -1
  store i32 %add13.i.i, ptr %282, align 4
  %285 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !231
  %and.i.i.i13.i = and i32 %285, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i13.i)
  %tobool24.not.i14.i = icmp eq i32 %and.i.i.i13.i, 0
  br i1 %tobool24.not.i14.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !201

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %272) #11, !srcloc !232
  br label %if.end256.i

if.end256.i:                                      ; preds = %do.end30.i.i, %if.then242.i.if.end256.i_crit_edge, %if.then236.i.if.end256.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match237.i) #11
  br label %mlx5_tc_ct_set_tuple_match.exit

mlx5_tc_ct_set_tuple_match.exit:                  ; preds = %if.end256.i, %if.end234.i.mlx5_tc_ct_set_tuple_match.exit_crit_edge
  %zone = getelementptr inbounds %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 6, i32 5
  %286 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %zone, align 4
  %conv = zext i16 %287 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2) to i32))
  %288 = load i32, ptr getelementptr inbounds ([0 x %struct.mlx5e_tc_attr_to_reg_mapping], ptr @mlx5e_tc_attr_to_reg_mappings, i32 0, i32 4, i32 2), align 4
  %sub35 = sub i32 32, %288
  %shr = lshr i32 -1, %sub35
  call void @mlx5e_tc_match_to_reg_match(ptr noundef nonnull %call.i.i, i32 noundef 4, i32 noundef %conv, i32 noundef %shr) #11
  %call36 = call ptr @mlx5_tc_rule_insert(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i.i, ptr noundef nonnull %call7) #11
  %289 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call36, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end64

if.then39:                                        ; preds = %mlx5_tc_ct_set_tuple_match.exit
  %290 = ptrtoint ptr %call36 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_entry_add_rule, %if.then55)) #11
          to label %err_rule [label %if.then55], !srcloc !199

if.then55:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %291 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug706, ptr noundef %292, ptr noundef nonnull @.str.60, i32 noundef %idxprom) #11
  br label %err_rule

if.end64:                                         ; preds = %mlx5_tc_ct_set_tuple_match.exit
  call void @__sanitizer_cov_trace_pc() #13
  %attr65 = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom, i32 2
  %293 = ptrtoint ptr %attr65 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %call7, ptr %attr65, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5_tc_ct_entry_add_rule, %if.then79)) #11
          to label %cleanup [label %if.then79], !srcloc !199

if.then79:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %294 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %netdev, align 4
  %296 = ptrtoint ptr %zone to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %zone, align 4
  %conv83 = zext i16 %297 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug707, ptr noundef %295, ptr noundef nonnull @.str.61, i32 noundef %conv83) #11
  br label %cleanup

err_rule:                                         ; preds = %if.then55, %if.then39
  %298 = ptrtoint ptr %mh to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %mh, align 4
  %tobool.not.i154 = icmp eq ptr %299, null
  %300 = ptrtoint ptr %ct_priv to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %ct_priv, align 4
  br i1 %tobool.not.i154, label %if.else.i158, label %if.then.i156

if.then.i156:                                     ; preds = %err_rule
  call void @__sanitizer_cov_trace_pc() #13
  %mod_hdr_tbl.i155 = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 2
  %302 = ptrtoint ptr %mod_hdr_tbl.i155 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mod_hdr_tbl.i155, align 4
  call void @mlx5e_mod_hdr_detach(ptr noundef %301, ptr noundef %303, ptr noundef nonnull %299) #11
  br label %mlx5_tc_ct_entry_destroy_mod_hdr.exit

if.else.i158:                                     ; preds = %err_rule
  call void @__sanitizer_cov_trace_pc() #13
  %attr89 = getelementptr %struct.mlx5_ct_entry, ptr %entry1, i32 0, i32 8, i32 %idxprom, i32 2
  %304 = ptrtoint ptr %attr89 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %attr89, align 4
  %modify_hdr.i157 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %modify_hdr.i157 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %modify_hdr.i157, align 4
  call void @mlx5_modify_header_dealloc(ptr noundef %301, ptr noundef %307) #11
  br label %mlx5_tc_ct_entry_destroy_mod_hdr.exit

mlx5_tc_ct_entry_destroy_mod_hdr.exit:            ; preds = %if.else.i158, %if.then.i156
  %308 = ptrtoint ptr %ct_labels_id.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %ct_labels_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %309)
  %tobool.not.i160 = icmp eq i32 %309, 0
  br i1 %tobool.not.i160, label %mlx5_tc_ct_entry_destroy_mod_hdr.exit.err_mod_hdr_crit_edge, label %if.then.i161

mlx5_tc_ct_entry_destroy_mod_hdr.exit.err_mod_hdr_crit_edge: ; preds = %mlx5_tc_ct_entry_destroy_mod_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_mod_hdr

if.then.i161:                                     ; preds = %mlx5_tc_ct_entry_destroy_mod_hdr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %labels_mapping.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %ct_priv, i32 0, i32 12
  %310 = ptrtoint ptr %labels_mapping.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %labels_mapping.i, align 4
  %call.i = call i32 @mapping_remove(ptr noundef %311, i32 noundef %309) #11
  br label %err_mod_hdr

err_mod_hdr:                                      ; preds = %if.then.i161, %mlx5_tc_ct_entry_destroy_mod_hdr.exit.err_mod_hdr_crit_edge, %if.then21, %do.body15
  %err.0 = phi i32 [ %retval.0.i149165, %if.then21 ], [ %retval.0.i149165, %do.body15 ], [ %290, %mlx5_tc_ct_entry_destroy_mod_hdr.exit.err_mod_hdr_crit_edge ], [ %290, %if.then.i161 ]
  call void @kfree(ptr noundef nonnull %call7) #11
  br label %err_attr

err_attr:                                         ; preds = %err_mod_hdr, %if.end.err_attr_crit_edge
  %err.1 = phi i32 [ %err.0, %err_mod_hdr ], [ -12, %if.end.err_attr_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_attr, %if.then79, %if.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_attr ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then79 ], [ 0, %if.end64 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_fc_create_ex(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_mod_hdr_attach(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_mod_hdr_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_mod_hdr_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_set_ethertype(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_tcp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_rule_match_meta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_vf_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_same_hw_devs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_eswitch_uplink_rep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_get_tc_tun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_fc_query_cached(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_free_and_destroy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_tc_ct_flush_ft_entry(ptr noundef %ptr, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @mlx5_tc_ct_entry_put(ptr noundef %ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_eswitch_reg_c1_loopback_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5_tc_ct_entry_del_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -156
  %ct_priv2.i = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %ct_priv2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_priv2.i, align 4
  tail call fastcc void @mlx5_tc_ct_entry_del_rule(ptr noundef %1, ptr noundef %add.ptr, i1 noundef zeroext true) #11
  tail call fastcc void @mlx5_tc_ct_entry_del_rule(ptr noundef %1, ptr noundef %add.ptr, i1 noundef zeroext false) #11
  %ht_lock.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock_bh(ptr noundef %ht_lock.i) #11
  %2 = ptrtoint ptr %ct_priv2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ct_priv2.i, align 4
  %ct_tuples_nat_ht.i.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %3, i32 0, i32 6
  %tuple_nat_node.i.i = getelementptr i8, ptr %work, i32 -148
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_nat_ht.i.i, ptr noundef %tuple_nat_node.i.i, [7 x i32] [i32 48, i32 4718600, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  %ct_tuples_ht.i.i = getelementptr inbounds %struct.mlx5_tc_ct_priv, ptr %3, i32 0, i32 5
  %tuple_node.i.i = getelementptr i8, ptr %work, i32 -152
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ct_tuples_ht.i.i, ptr noundef %tuple_node.i.i, [7 x i32] [i32 48, i32 1572868, i32 0, i32 1073742080, i32 0, i32 0, i32 0]) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %ht_lock.i) #11
  tail call fastcc void @mlx5_tc_ct_counter_put(ptr noundef %1, ptr noundef %add.ptr) #11
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !108, !109, !111, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !175, !177, !179, !181, !183, !185, !187}
!llvm.named.register.sp = !{!188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @mlx5_tc_ct_match_add.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1307, i32 3}
!2 = !{ptr @mlx5_tc_ct_match_add.__msg.1, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1326, i32 3}
!4 = !{ptr @mlx5_tc_ct_match_add.__msg.2, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1355, i32 3}
!6 = !{ptr @mlx5_tc_ct_match_add.__msg.3, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1361, i32 3}
!8 = !{ptr @mlx5_tc_ct_match_add.__msg.4, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1367, i32 3}
!10 = !{ptr @mlx5_tc_ct_parse_action.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1407, i32 3}
!12 = !{ptr @mlx5_tc_ct_parse_action.__msg.5, !13, !"__msg", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1421, i32 3}
!14 = !{ptr @mlx5_tc_ct_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2160, i32 2}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2169, i32 3}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5_tc_ct_init._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mlx5_tc_ct_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2178, i32 3}
!28 = !{ptr @mlx5_tc_ct_init._entry.12, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mlx5_tc_ct_init._entry_ptr.14, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mlx5_tc_ct_init.__key.15, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2185, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1961, i32 3}
!35 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug732, !34, !"__UNIQUE_ID_ddebug732", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1970, i32 3}
!40 = !{ptr @__mlx5_tc_ct_flow_offload_clear.__UNIQUE_ID_ddebug733, !39, !"__UNIQUE_ID_ddebug733", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1983, i32 7}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1816, i32 3}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug724, !44, !"__UNIQUE_ID_ddebug724", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1824, i32 3}
!49 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug725, !48, !"__UNIQUE_ID_ddebug725", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1851, i32 3}
!52 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug726, !51, !"__UNIQUE_ID_ddebug726", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1859, i32 3}
!55 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug727, !54, !"__UNIQUE_ID_ddebug727", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1865, i32 3}
!58 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug728, !57, !"__UNIQUE_ID_ddebug728", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1881, i32 4}
!61 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug729, !60, !"__UNIQUE_ID_ddebug729", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1891, i32 3}
!64 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug730, !63, !"__UNIQUE_ID_ddebug730", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1903, i32 3}
!67 = !{ptr @__mlx5_tc_ct_flow_offload.__UNIQUE_ID_ddebug731, !66, !"__UNIQUE_ID_ddebug731", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1925, i32 28}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1704, i32 2}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1549, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug714, !88, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1565, i32 3}
!93 = !{ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug715, !92, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1590, i32 3}
!96 = !{ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug720, !95, !"__UNIQUE_ID_ddebug720", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1602, i32 3}
!99 = !{ptr @mlx5_tc_ct_alloc_pre_ct.__UNIQUE_ID_ddebug723, !98, !"__UNIQUE_ID_ddebug723", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1455, i32 3}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug710, !101, !"__UNIQUE_ID_ddebug710", i1 false, i1 false}
!104 = !{ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug711, !105, !"__UNIQUE_ID_ddebug711", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1465, i32 3}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1488, i32 3}
!108 = !{ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug712, !107, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1498, i32 3}
!111 = !{ptr @tc_ct_pre_ct_add_rules.__UNIQUE_ID_ddebug713, !110, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!112 = !{ptr @cts_ht_params, !113, !"cts_ht_params", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 159, i32 39}
!114 = !{ptr @ct_entries_ht_lock_key, !115, !"ct_entries_ht_lock_key", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1668, i32 30}
!116 = distinct !{null, !117, !"__warned", i1 false, i1 false}
!117 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!118 = distinct !{null, !119, !"__warned", i1 false, i1 false}
!119 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 1132, i32 32}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 506, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mlx5_tc_ct_entry_del_rule.__UNIQUE_ID_ddebug696, !128, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 937, i32 3}
!133 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mlx5_tc_ct_counter_create.__UNIQUE_ID_ddebug708, !132, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 981, i32 3}
!137 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @mlx5_tc_ct_shared_counter_get.__UNIQUE_ID_ddebug709, !136, !"__UNIQUE_ID_ddebug709", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 800, i32 3}
!141 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug705, !140, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 822, i32 3}
!145 = !{ptr @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug706, !144, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 829, i32 2}
!148 = !{ptr @mlx5_tc_ct_entry_add_rule.__UNIQUE_ID_ddebug707, !147, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!149 = distinct !{null, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../include/net/flow_offload.h", i32 418, i32 2}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!153 = distinct !{null, !154, !"__warned", i1 false, i1 false}
!154 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!157 = distinct !{null, !158, !"__warned", i1 false, i1 false}
!158 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!159 = distinct !{null, !160, !"__warned", i1 false, i1 false}
!160 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../include/net/netfilter/nf_flow_table.h", i32 257, i32 3}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2108, i32 14}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2118, i32 3}
!171 = !{ptr @.str.71, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @mlx5_tc_ct_init_check_support.__UNIQUE_ID_ddebug734, !170, !"__UNIQUE_ID_ddebug734", i1 false, i1 false}
!173 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2065, i32 14}
!175 = !{ptr @.str.73, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2075, i32 14}
!177 = !{ptr @.str.74, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 2080, i32 14}
!179 = !{ptr @zone_params, !180, !"zone_params", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 167, i32 39}
!181 = !{ptr @tuples_ht_params, !182, !"tuples_ht_params", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 174, i32 39}
!183 = !{ptr @tuples_nat_ht_params, !184, !"tuples_nat_ht_params", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 182, i32 39}
!185 = !{ptr @__mlx5_tc_ct_entry_put.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_ct.c", i32 920, i32 2}
!187 = !{ptr @.str.75, !186, !"<string literal>", i1 false, i1 false}
!188 = !{!"sp"}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"auto-init"}
!199 = !{i64 2148725611, i64 2148725616, i64 2148725629, i64 2148725673, i64 2148725707, i64 2148725728}
!200 = !{i64 2148234119, i64 2148234151, i64 2148234180, i64 2148234214, i64 2148234245, i64 2148234268}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{!"branch_weights", i32 2000, i32 1}
!203 = !{i64 2148322120}
!204 = !{i64 2148236584, i64 2148236616, i64 2148236645, i64 2148236679, i64 2148236710, i64 2148236733}
!205 = !{i64 2148736808}
!206 = !{i64 716325, i64 716349, i64 716370, i64 716387, i64 716404}
!207 = !{i64 2149747261}
!208 = !{i64 2160081457}
!209 = !{i64 2160084891}
!210 = !{i64 2149747527}
!211 = !{i64 2160122913, i64 2160123404, i64 2160122950, i64 2160123006, i64 2160123040, i64 2160123064, i64 2160123105, i64 2160123126, i64 2160123154, i64 2160123188}
!212 = !{i64 2160144772}
!213 = !{i64 2148235054, i64 2148235080, i64 2148235109, i64 2148235143, i64 2148235174, i64 2148235197}
!214 = !{i8 0, i8 2}
!215 = !{i64 2148232589, i64 2148232615, i64 2148232644, i64 2148232678, i64 2148232709, i64 2148232732}
!216 = !{i64 2149912383}
!217 = !{!"branch_weights", i32 2146410443, i32 1073205}
!218 = !{i64 2148241447, i64 2148241479, i64 2148241508, i64 2148241542, i64 2148241573, i64 2148241596}
!219 = !{i64 2148330528}
!220 = !{i64 2149912543}
!221 = !{i64 2149912820}
!222 = !{i64 2149912662}
!223 = !{i64 2149913025}
!224 = !{i64 2149914088, i64 2149914580, i64 2149914125, i64 2149914181, i64 2149914215, i64 2149914239, i64 2149914280, i64 2149914301, i64 2149914329, i64 2149914363}
!225 = !{i64 2148329415}
!226 = !{i64 2148239834, i64 2148239866, i64 2148239895, i64 2148239929, i64 2148239960, i64 2148239983}
!227 = !{i64 2149915483}
!228 = !{i64 2160074530}
!229 = !{i64 2160076829}
!230 = !{i64 625070, i64 625131}
!231 = !{i64 627802}
!232 = !{i64 628087}
