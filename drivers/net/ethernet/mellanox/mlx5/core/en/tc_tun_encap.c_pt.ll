; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.56, i32, %struct.spinlock }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.95 }
%union.anon.95 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.mlx5e_tc_flow = type { %struct.rhash_head, ptr, i64, i32, [2 x ptr], %struct.list_head, ptr, %struct.list_head, ptr, [32 x %struct.encap_route_flow_item], [32 x %struct.encap_flow_item], ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.list_head, %struct.refcount_struct, %struct.callback_head, %struct.completion, %struct.completion, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.encap_route_flow_item = type { ptr, i32 }
%struct.encap_flow_item = type { ptr, %struct.list_head, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.235 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.235 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.236], ptr, ptr }
%struct.anon.236 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_rx_tun_attr = type { i16, %union.anon.237, %union.anon.238, i32 }
%union.anon.237 = type { %struct.in6_addr }
%union.anon.238 = type { %struct.in6_addr }
%struct.mlx5_pkt_reformat_params = type { i32, i8, i8, i32, ptr }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.hlist_head = type { ptr }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
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
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5e_encap_entry = type { ptr, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, ptr, %struct.mlx5e_mpls_info, [6 x i8], ptr, i32, ptr, i32, i8, ptr, i32, %struct.refcount_struct, %struct.completion, i32, %struct.callback_head }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.26 }
%struct.llist_node = type { ptr }
%union.anon.26 = type { i32 }
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
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.85 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.mlx5e_tc_flow_parse_attr = type { [32 x ptr], [32 x %struct.mlx5e_mpls_info], ptr, %struct.mlx5_flow_spec, %struct.mlx5e_tc_mod_hdr_acts, [32 x i32], %struct.ethhdr, %struct.mlx5e_tc_act_parse_state }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx5e_tc_act_parse_state = type { i32, ptr, ptr, i8, i8, i8, i8, i8, ptr, %struct.mlx5e_mpls_info, [2 x %struct.pedit_headers_action], [32 x i32], i32, ptr }
%struct.pedit_headers_action = type { %struct.pedit_headers, %struct.pedit_headers, i32 }
%struct.pedit_headers = type { %struct.ethhdr, %struct.vlan_hdr, %struct.iphdr, %struct.ipv6hdr, %struct.tcphdr, %struct.udphdr }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.mlx5e_neigh_hash_entry = type { %struct.rhash_head, %struct.mlx5e_neigh, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.refcount_struct, i32, %struct.callback_head }
%struct.mlx5e_neigh = type { %union.anon.218, i32 }
%union.anon.218 = type { %struct.in6_addr }
%struct.mlx5_eswitch = type { ptr, %struct.mlx5_nb, %struct.mlx5_eswitch_fdb, [256 x %struct.hlist_head], %struct.esw_mc_addr, ptr, %struct.xarray, i32, i32, i32, %struct.mutex, %struct.rw_semaphore, %struct.atomic64_t, %struct.anon.169, ptr, %struct.mlx5_esw_offload, i32, i16, i16, %struct.mlx5_esw_functions, %struct.anon.170, %struct.blocking_notifier_head, %struct.lock_class_key }
%struct.mlx5_eswitch_fdb = type { %union.anon.167, i32 }
%union.anon.167 = type { %struct.offloads_fdb }
%struct.offloads_fdb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.anon.168, ptr }
%struct.anon.168 = type { [256 x %struct.hlist_head], %struct.mutex }
%struct.esw_mc_addr = type { %struct.l2addr_node, ptr, i32 }
%struct.l2addr_node = type { %struct.hlist_node, [6 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.anon.169 = type { i32, ptr, %struct.list_head, %struct.refcount_struct }
%struct.mlx5_esw_offload = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.xarray, %struct.list_head, %struct.mutex, %struct.mutex, [256 x %struct.hlist_head], %struct.mutex, [256 x %struct.hlist_head], %struct.mod_hdr_tbl, [256 x %struct.hlist_head], %struct.mutex, %struct.xarray, [2 x ptr], i8, %struct.atomic64_t, i32, %struct.ida, i32 }
%struct.mlx5_esw_functions = type { %struct.mlx5_nb, i16 }
%struct.anon.170 = type { i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.mlx5e_route_entry = type { %struct.mlx5e_route_key, %struct.list_head, %struct.list_head, i32, %struct.hlist_node, %struct.refcount_struct, i32, %struct.callback_head }
%struct.mlx5e_route_key = type { i32, %union.anon.217 }
%union.anon.217 = type { %struct.in6_addr }
%struct.mlx5e_decap_entry = type { %struct.mlx5e_decap_key, %struct.list_head, %struct.hlist_node, %struct.refcount_struct, %struct.completion, i32, ptr, %struct.callback_head }
%struct.mlx5e_decap_key = type { %struct.ethhdr }
%struct.mlx5e_encap_key = type { ptr, ptr }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.219, i16, i8, i8, i32, i16, i16 }
%union.anon.219 = type { %struct.anon.221 }
%struct.anon.221 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.mlx5e_tc_tunnel = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_rep_priv = type { ptr, %struct.mlx5e_neigh_update_table, ptr, ptr, ptr, %struct.list_head, %struct.mlx5_rep_uplink_priv, %struct.rtnl_link_stats64 }
%struct.mlx5e_neigh_update_table = type { %struct.rhashtable, %struct.list_head, %struct.mutex, %struct.notifier_block, %struct.delayed_work, i32 }
%struct.mlx5_rep_uplink_priv = type { %struct.rhashtable, %struct.list_head, %struct.mlx5_tun_entropy, %struct.mutex, %struct.list_head, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_tun_entropy = type { ptr, i32, i32, i8, %struct.mutex }
%struct.mlx5e_tc_tun_encap = type { ptr, %struct.notifier_block, %struct.spinlock, i32, [256 x %struct.hlist_head] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.164 = type { ptr }
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
%struct.mlx5e_tc_fib_event_data = type { %struct.work_struct, i32, ptr, ptr }
%struct.fib_entry_notifier_info = type { %struct.fib_notifier_info, i32, i32, ptr, i8, i8, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.61, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.61 = type { %struct.in6_addr }
%struct.fib6_entry_notifier_info = type { %struct.fib_notifier_info, ptr, i32 }
%struct.fib6_info = type { ptr, ptr, ptr, %union.anon.58, i32, %struct.refcount_struct, i32, ptr, %struct.rt6key, i32, %struct.rt6key, %struct.rt6key, i32, i8, i8, i8, i8, i8, i8, %struct.callback_head, ptr, [0 x %struct.fib6_nh] }
%union.anon.58 = type { %struct.list_head }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.fib6_nh = type { %struct.fib_nh_common, i32, ptr, ptr }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.59 }
%union.anon.59 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.63, %struct.list_head, ptr }
%union.anon.63 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.60 }
%union.anon.60 = type { %struct.fib_nh }

@mlx5e_tc_encap_flows_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 167, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s:%d:(pid %d): Failed to offload cached encapsulation header, %lu\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5e_tc_encap_flows_add\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx5e_tc_encap_flows_add._entry_ptr = internal global ptr @mlx5e_tc_encap_flows_add._entry, section ".printk_index", align 4
@mlx5e_tc_encap_flows_add._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s:%d:(pid %d): Failed to update cached encapsulation flow, %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mlx5e_tc_encap_flows_add._entry_ptr.7 = internal global ptr @mlx5e_tc_encap_flows_add._entry.5, section ".printk_index", align 4
@mlx5e_tc_encap_flows_del._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s:%d:(pid %d): Failed to update slow path (encap) flow, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx5e_tc_encap_flows_del\00", [39 x i8] zeroinitializer }, align 32
@mlx5e_tc_encap_flows_del._entry_ptr = internal global ptr @mlx5e_tc_encap_flows_del._entry, section ".printk_index", align 4
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx5e_attach_encap.__msg = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx5_core: Unsupported tunnel\00", [34 x i8] zeroinitializer }, align 32
@mlx5e_attach_encap.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx5e_attach_encap\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s:%d:(pid %d): attaching int port as encap dev not supported, using uplink\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx5e_attach_decap.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mlx5_core: encap header larger than max supported\00", [46 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&encap->route_lock\00", [45 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_mlx5e_tc_update_neigh_used_value = external dso_local global %struct.tracepoint, align 4
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.h\00", [32 x i8] zeroinitializer }, align 32
@trace_mlx5e_tc_update_neigh_used_value.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_encap_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@is_duplicated_encap_entry.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mlx5_core: can't duplicate encap action\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't duplicate encap action\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@mlx5e_decap_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mlx5e_tc_init_fib_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&fib_work->work)\00", [61 x i8] zeroinitializer }, align 32
@mlx5e_tc_fib_event_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1552, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s:%d:(pid %d): Failed to update route encaps, %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlx5e_tc_fib_event_work\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_tc_fib_event_work._entry_ptr = internal global ptr @mlx5e_tc_fib_event_work._entry, section ".printk_index", align 4
@mlx5e_tc_fib_event_work._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1557, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Failed to update route decap flows, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_tc_fib_event_work._entry_ptr.28 = internal global ptr @mlx5e_tc_fib_event_work._entry.26, section ".printk_index", align 4
@mlx5e_reoffload_encap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1358, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Failed to update encap header, %d\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_reoffload_encap\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_reoffload_encap._entry_ptr = internal global ptr @mlx5e_reoffload_encap._entry, section ".printk_index", align 4
@mlx5e_reoffload_encap._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s:%d:(pid %d): Failed to update VF tunnel err=%d\00", [46 x i8] zeroinitializer }, align 32
@mlx5e_reoffload_encap._entry_ptr.33 = internal global ptr @mlx5e_reoffload_encap._entry.31, section ".printk_index", align 4
@mlx5e_reoffload_encap._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 1386, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Failed to update flow mod_hdr err=%d\00", [43 x i8] zeroinitializer }, align 32
@mlx5e_reoffload_encap._entry_ptr.36 = internal global ptr @mlx5e_reoffload_encap._entry.34, section ".printk_index", align 4
@mlx5e_reoffload_encap._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.30, ptr @.str.2, i32 1400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_reoffload_encap._entry_ptr.38 = internal global ptr @mlx5e_reoffload_encap._entry.37, section ".printk_index", align 4
@mlx5e_reoffload_encap._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.30, ptr @.str.2, i32 1414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlx5e_reoffload_encap._entry_ptr.40 = internal global ptr @mlx5e_reoffload_encap._entry.39, section ".printk_index", align 4
@mlx5e_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@mlx5e_reoffload_decap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 1489, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s:%d:(pid %d): Failed to lookup route for flow, %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_reoffload_decap\00", [42 x i8] zeroinitializer }, align 32
@mlx5e_reoffload_decap._entry_ptr = internal global ptr @mlx5e_reoffload_decap._entry, section ".printk_index", align 4
@mlx5e_reoffload_decap._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 1497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s:%d:(pid %d): Failed to update cached decap flow, %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx5e_reoffload_decap._entry_ptr.45 = internal global ptr @mlx5e_reoffload_decap._entry.43, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@mlx5e_tc_tun_fib_event.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx5_core: Failed to init fib work\00", [61 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_fib_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1688, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d:(pid %d): Failed to init fib work, %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx5e_tc_tun_fib_event\00", [41 x i8] zeroinitializer }, align 32
@mlx5e_tc_tun_fib_event._entry_ptr = internal global ptr @mlx5e_tc_tun_fib_event._entry, section ".printk_index", align 4
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@nexthop_fib6_nh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nexthop_fib6_nh.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 6]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.54 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 166, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 190, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 228, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 769, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 850, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 899, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1710, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 695, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 723, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [67 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 77, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 108, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 583, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 631, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 632, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 87, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1113, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1551, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1556, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1358, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1379, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1385, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1399, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1413, i32 5 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1488, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1496, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1686, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1687, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 468, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @mlx5e_reoffload_decap._entry, ptr @mlx5e_reoffload_decap._entry.43, ptr @mlx5e_reoffload_decap._entry_ptr, ptr @mlx5e_reoffload_decap._entry_ptr.45, ptr @mlx5e_reoffload_encap._entry, ptr @mlx5e_reoffload_encap._entry.31, ptr @mlx5e_reoffload_encap._entry.34, ptr @mlx5e_reoffload_encap._entry.37, ptr @mlx5e_reoffload_encap._entry.39, ptr @mlx5e_reoffload_encap._entry_ptr, ptr @mlx5e_reoffload_encap._entry_ptr.33, ptr @mlx5e_reoffload_encap._entry_ptr.36, ptr @mlx5e_reoffload_encap._entry_ptr.38, ptr @mlx5e_reoffload_encap._entry_ptr.40, ptr @mlx5e_tc_encap_flows_add._entry, ptr @mlx5e_tc_encap_flows_add._entry.5, ptr @mlx5e_tc_encap_flows_add._entry_ptr, ptr @mlx5e_tc_encap_flows_add._entry_ptr.7, ptr @mlx5e_tc_encap_flows_del._entry, ptr @mlx5e_tc_encap_flows_del._entry_ptr, ptr @mlx5e_tc_fib_event_work._entry, ptr @mlx5e_tc_fib_event_work._entry.26, ptr @mlx5e_tc_fib_event_work._entry_ptr, ptr @mlx5e_tc_fib_event_work._entry_ptr.28, ptr @mlx5e_tc_tun_fib_event._entry, ptr @mlx5e_tc_tun_fib_event._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @mlx5e_attach_encap.__msg, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @mlx5e_attach_decap.__msg, ptr @mlx5e_tc_tun_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @is_duplicated_encap_entry.__msg, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @mlx5e_tc_init_fib_work.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @mlx5e_tc_tun_fib_event.__msg, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_encap_flows_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_encap_flows_add._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_encap_flows_del._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_attach_encap.__msg to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_attach_decap.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_duplicated_encap_entry.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_init_fib_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_fib_event_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_fib_event_work._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_reoffload_encap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_reoffload_encap._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_reoffload_encap._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_reoffload_encap._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_reoffload_encap._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_reoffload_decap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_reoffload_decap._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_fib_event.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_tun_fib_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_set_attr_rx_tun(ptr noundef %flow, ptr noundef %spec) local_unnamed_addr #0 align 64 {
entry:
  %zerov6 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 25
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 8
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 40, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

if.end:                                           ; preds = %entry
  %rx_tun_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %1, i32 13, i32 7
  %2 = ptrtoint ptr %rx_tun_attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %rx_tun_attr, align 4
  %call1 = tail call zeroext i8 @mlx5e_tc_get_ip_version(ptr noundef %spec, i1 noundef zeroext true) #15
  %3 = zext i8 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call1, label %if.end.if.end37_crit_edge [
    i8 4, label %if.then3
    i8 6, label %if.then17
  ]

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then3:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 15
  %add.ptr7 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %dst_ip = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %call.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %dst_ip to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dst_ip, align 4
  %7 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr7, align 4
  %src_ip = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %call.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %src_ip to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %src_ip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.then3.cleanup39_crit_edge, label %if.then3.if.end37_crit_edge

if.then3.if.end37_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then3.cleanup39_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup39

if.then17:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zerov6) #15
  %10 = call ptr @memset(ptr %zerov6, i32 0, i32 16)
  %add.ptr20 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 12
  %add.ptr23 = getelementptr %struct.mlx5_flow_spec, ptr %spec, i32 0, i32 2, i32 8
  %dst_ip24 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %call.i.i, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %dst_ip24, ptr %add.ptr20, i32 16)
  %src_ip25 = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %call.i.i, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %src_ip25, ptr %add.ptr23, i32 16)
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %dst_ip24, ptr noundef nonnull dereferenceable(16) %zerov6, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool28.not = icmp eq i32 %bcmp, 0
  br i1 %tobool28.not, label %if.then17.cleanup_crit_edge, label %lor.lhs.false29

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false29:                                  ; preds = %if.then17
  %bcmp64 = call i32 @bcmp(ptr noundef dereferenceable(16) %src_ip25, ptr noundef nonnull dereferenceable(16) %zerov6, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp64)
  %tobool32.not = icmp eq i32 %bcmp64, 0
  br i1 %tobool32.not, label %lor.lhs.false29.cleanup_crit_edge, label %if.end37.critedge

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false29.cleanup_crit_edge, %if.then17.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zerov6) #15
  br label %cleanup39

if.end37.critedge:                                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zerov6) #15
  br label %if.end37

if.end37:                                         ; preds = %if.end37.critedge, %if.then3.if.end37_crit_edge, %if.end.if.end37_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  %flags.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags.i) #15
  %13 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attr, align 8
  %tun_ip_version = getelementptr inbounds %struct.mlx5_flow_attr, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %tun_ip_version to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call1, ptr %tun_ip_version, align 1
  br label %cleanup39

cleanup39:                                        ; preds = %if.end37, %cleanup, %if.then3.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.1 = phi i32 [ 0, %if.end37 ], [ 0, %cleanup ], [ -12, %entry.cleanup39_crit_edge ], [ 0, %if.then3.cleanup39_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5e_tc_get_ip_version(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_encap_flows_add(ptr noundef %priv, ptr nocapture noundef %e, ptr noundef readonly %flow_list) local_unnamed_addr #0 align 64 {
entry:
  %reformat_params = alloca %struct.mlx5_pkt_reformat_params, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params) #15
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flags, align 4
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %reformat_params, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %reformat_type = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 12
  %9 = ptrtoint ptr %reformat_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reformat_type, align 4
  %11 = ptrtoint ptr %reformat_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %reformat_params, align 4
  %encap_size = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 15
  %12 = ptrtoint ptr %encap_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encap_size, align 4
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 3
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %size, align 4
  %encap_header = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 14
  %15 = ptrtoint ptr %encap_header to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encap_header, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %data, align 4
  %call = call ptr @mlx5_packet_reformat_alloc(ptr noundef %1, ptr noundef nonnull %reformat_params, i32 noundef 8) #15
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 5
  %18 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %pkt_reformat, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev, align 64
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %23 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 68
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 8
  %29 = ptrtoint ptr %call to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 167, i32 noundef %28, i32 noundef %29) #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %flags, align 4
  %32 = or i8 %31, 1
  store i8 %32, ptr %flags, align 4
  call void @mlx5e_rep_queue_neigh_stats_work(ptr noundef %priv) #15
  %33 = ptrtoint ptr %flow_list to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn95 = load ptr, ptr %flow_list, align 4
  %cmp.not97 = icmp eq ptr %.pn95, %flow_list
  br i1 %cmp.not97, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %.pn98 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn95, %if.end10.for.body_crit_edge ]
  %flow.099 = getelementptr i8, ptr %.pn98, i32 -864
  %call15 = call zeroext i1 @mlx5e_is_offloaded_flow(ptr noundef %flow.099) #15
  br i1 %call15, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn98, i32 -848
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.i.not = icmp eq i32 %36, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !120
  br i1 %tobool.i.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end18

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end18:                                         ; preds = %lor.lhs.false
  %attr19 = getelementptr i8, ptr %.pn98, i32 136
  %37 = ptrtoint ptr %attr19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %attr19, align 8
  %39 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %38, i32 0, i32 16
  %parse_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %38, i32 0, i32 5
  %40 = ptrtoint ptr %parse_attr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parse_attr, align 4
  %42 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pkt_reformat, align 4
  %dests = getelementptr %struct.mlx5_flow_attr, ptr %38, i32 1, i32 7
  %tmp_entry_index = getelementptr i8, ptr %.pn98, i32 -4
  %44 = ptrtoint ptr %tmp_entry_index to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tmp_entry_index, align 4
  %pkt_reformat22 = getelementptr [32 x %struct.anon.236], ptr %dests, i32 0, i32 %45, i32 2
  %46 = ptrtoint ptr %pkt_reformat22 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %pkt_reformat22, align 4
  %47 = load i32, ptr %tmp_entry_index, align 4
  %arrayidx25 = getelementptr [32 x %struct.anon.236], ptr %dests, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx25, align 4
  %or27 = or i32 %49, 2
  store i32 %or27, ptr %arrayidx25, align 4
  %50 = ptrtoint ptr %dests to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dests, align 4
  %52 = and i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %if.end18.for.inc_crit_edge, label %if.end18.for.cond.i_crit_edge

if.end18.for.cond.i_crit_edge:                    ; preds = %if.end18
  br label %for.cond.i

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end18.for.cond.i_crit_edge
  %i.013.i93 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %if.end18.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.013.i93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.mlx5e_tc_flow_all_encaps_valid.exit_crit_edge, label %for.body.i

for.cond.i.mlx5e_tc_flow_all_encaps_valid.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_tc_flow_all_encaps_valid.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.mlx5_esw_flow_attr, ptr %39, i32 0, i32 11, i32 %inc.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %for.body.i.mlx5e_tc_flow_all_encaps_valid.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

for.body.i.mlx5e_tc_flow_all_encaps_valid.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_tc_flow_all_encaps_valid.exit

mlx5e_tc_flow_all_encaps_valid.exit:              ; preds = %for.body.i.mlx5e_tc_flow_all_encaps_valid.exit_crit_edge, %for.cond.i.mlx5e_tc_flow_all_encaps_valid.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.013.i93)
  %cmp.i88.le = icmp ult i32 %i.013.i93, 31
  br i1 %cmp.i88.le, label %mlx5e_tc_flow_all_encaps_valid.exit.for.inc_crit_edge, label %if.end30

mlx5e_tc_flow_all_encaps_valid.exit.for.inc_crit_edge: ; preds = %mlx5e_tc_flow_all_encaps_valid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end30:                                         ; preds = %mlx5e_tc_flow_all_encaps_valid.exit
  %spec20 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %41, i32 0, i32 3
  %call31 = call ptr @mlx5e_tc_offload_fdb_rules(ptr noundef %3, ptr noundef %flow.099, ptr noundef %spec20, ptr noundef %38) #15
  %cmp.i89 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then33, label %if.end43

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %call31 to i32
  %59 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mdev, align 64
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 8
  %63 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i90 = and i32 %63, -16384
  %64 = inttoptr i32 %and.i90 to ptr
  %task41 = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task41 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task41, align 8
  %pid42 = getelementptr inbounds %struct.task_struct, ptr %66, i32 0, i32 68
  %67 = ptrtoint ptr %pid42 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %pid42, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 191, i32 noundef %68, i32 noundef %58) #20
  br label %for.inc

if.end43:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  call void @mlx5e_tc_unoffload_from_slow_path(ptr noundef %3, ptr noundef %flow.099) #15
  %rule44 = getelementptr i8, ptr %.pn98, i32 -844
  %69 = ptrtoint ptr %rule44 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call31, ptr %rule44, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end43, %if.then33, %mlx5e_tc_flow_all_encaps_valid.exit.for.inc_crit_edge, %if.end18.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %70 = ptrtoint ptr %.pn98 to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn = load ptr, ptr %.pn98, align 4
  %cmp.not = icmp eq ptr %.pn, %flow_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_packet_reformat_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_queue_neigh_stats_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_offloaded_flow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_offload_fdb_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_unoffload_from_slow_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_encap_flows_del(ptr nocapture noundef readonly %priv, ptr nocapture noundef %e, ptr noundef readonly %flow_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %4 = ptrtoint ptr %flow_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn42 = load ptr, ptr %flow_list, align 4
  %cmp.not44 = icmp eq ptr %.pn42, %flow_list
  br i1 %cmp.not44, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn42, %entry.for.body_crit_edge ]
  %flow.046 = getelementptr i8, ptr %.pn45, i32 -864
  %call = tail call zeroext i1 @mlx5e_is_offloaded_flow(ptr noundef %flow.046) #15
  br i1 %call, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %flags.i = getelementptr i8, ptr %.pn45, i32 -848
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i, align 4
  %7 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !120
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %attr3 = getelementptr i8, ptr %.pn45, i32 136
  %8 = ptrtoint ptr %attr3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr3, align 8
  %parse_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %parse_attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parse_attr, align 4
  %spec4 = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %11, i32 0, i32 3
  %call5 = tail call ptr @mlx5e_tc_offload_to_slow_path(ptr noundef %3, ptr noundef %flow.046, ptr noundef %spec4) #15
  %dests = getelementptr inbounds %struct.mlx5_flow_attr, ptr %9, i32 1, i32 7
  %tmp_entry_index = getelementptr i8, ptr %.pn45, i32 -4
  %12 = ptrtoint ptr %tmp_entry_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tmp_entry_index, align 4
  %arrayidx = getelementptr [32 x %struct.anon.236], ptr %dests, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %and = and i32 %15, -3
  store i32 %and, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %call5 to i32
  %17 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev, align 64
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 229, i32 noundef %26, i32 noundef %16) #20
  br label %for.inc

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mlx5e_tc_unoffload_fdb_rules(ptr noundef %3, ptr noundef %flow.046, ptr noundef %9) #15
  %rule12 = getelementptr i8, ptr %.pn45, i32 -844
  %27 = ptrtoint ptr %rule12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5, ptr %rule12, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.then7, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %28 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, %flow_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %flags19 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %29 = ptrtoint ptr %flags19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags19, align 4
  %31 = and i8 %30, -2
  store i8 %31, ptr %flags19, align 4
  %32 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev, align 64
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 5
  %34 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pkt_reformat, align 4
  tail call void @mlx5_packet_reformat_dealloc(ptr noundef %33, ptr noundef %35) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_offload_to_slow_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_unoffload_fdb_rules(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_packet_reformat_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_take_all_encap_flows(ptr noundef readonly %e, ptr noundef %flow_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flows = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn16 = load ptr, ptr %flows, align 4
  %cmp.not17 = icmp eq ptr %.pn16, %flows
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %mlx5e_take_tmp_flow.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn18 = phi ptr [ %.pn, %mlx5e_take_tmp_flow.exit.for.body_crit_edge ], [ %.pn16, %entry.for.body_crit_edge ]
  %efi.0 = getelementptr i8, ptr %.pn18, i32 -4
  %index = getelementptr i8, ptr %.pn18, i32 8
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %.neg = mul i32 %2, -16
  %idx.neg = add i32 %.neg, -308
  %add.ptr4 = getelementptr i8, ptr %efi.0, i32 %idx.neg
  %call.i = tail call ptr @mlx5e_flow_get(ptr noundef %add.ptr4) #15
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %del_hw_done.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4, i32 0, i32 23
  tail call void @wait_for_completion(ptr noundef %del_hw_done.i) #15
  br label %mlx5e_take_tmp_flow.exit

if.end.i:                                         ; preds = %for.body
  %init_done.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4, i32 0, i32 22
  tail call void @wait_for_completion(ptr noundef %init_done.i) #15
  %tmp_entry_index.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4, i32 0, i32 18
  %3 = ptrtoint ptr %tmp_entry_index.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tmp_entry_index.i, align 4
  %tmp_list.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4, i32 0, i32 19
  %4 = ptrtoint ptr %flow_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tmp_list.i, ptr noundef %flow_list, ptr noundef %5) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.mlx5e_take_tmp_flow.exit_crit_edge

if.end.i.mlx5e_take_tmp_flow.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_take_tmp_flow.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tmp_list.i, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %tmp_list.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %tmp_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4, i32 0, i32 19, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %flow_list, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %flow_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %tmp_list.i, ptr %flow_list, align 4
  br label %mlx5e_take_tmp_flow.exit

mlx5e_take_tmp_flow.exit:                         ; preds = %if.end.i.i.i, %if.end.i.mlx5e_take_tmp_flow.exit_crit_edge, %if.then.i
  %10 = ptrtoint ptr %.pn18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn18, align 4
  %cmp.not = icmp eq ptr %.pn, %flows
  br i1 %cmp.not, label %mlx5e_take_tmp_flow.exit.for.end_crit_edge, label %mlx5e_take_tmp_flow.exit.for.body_crit_edge

mlx5e_take_tmp_flow.exit.for.body_crit_edge:      ; preds = %mlx5e_take_tmp_flow.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

mlx5e_take_tmp_flow.exit.for.end_crit_edge:       ; preds = %mlx5e_take_tmp_flow.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %mlx5e_take_tmp_flow.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_get_next_init_encap(ptr noundef %nhe, ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mlx5e_get_next_matching_encap(ptr noundef %nhe, ptr noundef %e, ptr noundef nonnull @mlx5e_encap_initialized)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_get_next_matching_encap(ptr noundef %nhe, ptr noundef %e, ptr nocapture noundef readonly %match) unnamed_addr #0 align 64 {
entry:
  %__next = alloca ptr, align 4
  %__next15 = alloca ptr, align 4
  %__next47 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %encap_list = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 6
  br label %retry

retry:                                            ; preds = %if.end78.retry_crit_edge, %entry
  %e.addr.0 = phi ptr [ %e, %entry ], [ %next.0.lcssa, %if.end78.retry_crit_edge ]
  %0 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %retry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

retry.rcu_read_lock.exit_crit_edge:               ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %retry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.15) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %retry.rcu_read_lock.exit_crit_edge
  %tobool.not = icmp eq ptr %e.addr.0, null
  br i1 %tobool.not, label %cond.false12, label %cond.true

cond.true:                                        ; preds = %rcu_read_lock.exit
  %encap_list1 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %4 = ptrtoint ptr %encap_list1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %encap_list1, align 4
  %6 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %__next, align 4
  %cmp.not = icmp eq ptr %5, %encap_list
  br i1 %cmp.not, label %cond.true.cond.end_crit_edge, label %cond.true6, !prof !122

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true6:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %7)
  %__next.0.__next.0.__next.0.85 = load volatile ptr, ptr %__next, align 4
  %add.ptr = getelementptr i8, ptr %__next.0.__next.0.__next.0.85, i32 -4
  br label %cond.end

cond.end:                                         ; preds = %cond.true6, %cond.true.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.true6 ], [ null, %cond.true.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %cond.end40

cond.false12:                                     ; preds = %rcu_read_lock.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next15)
  %8 = ptrtoint ptr %encap_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %encap_list, align 4
  %10 = ptrtoint ptr %__next15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %__next15, align 4
  %cmp22.not = icmp eq ptr %encap_list, %9
  br i1 %cmp22.not, label %cond.false12.cond.end38_crit_edge, label %cond.true29, !prof !122

cond.false12.cond.end38_crit_edge:                ; preds = %cond.false12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end38

cond.true29:                                      ; preds = %cond.false12
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %__next15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %__next15.0.__next15.0.__next15.0.83 = load volatile ptr, ptr %__next15, align 4
  %add.ptr36 = getelementptr i8, ptr %__next15.0.__next15.0.__next15.0.83, i32 -4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true29, %cond.false12.cond.end38_crit_edge
  %cond39 = phi ptr [ %add.ptr36, %cond.true29 ], [ null, %cond.false12.cond.end38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next15)
  br label %cond.end40

cond.end40:                                       ; preds = %cond.end38, %cond.end
  %cond41 = phi ptr [ %cond, %cond.end ], [ %cond39, %cond.end38 ]
  %tobool42.not110 = icmp eq ptr %cond41, null
  br i1 %tobool42.not110, label %cond.end40.for.end_crit_edge, label %cond.end40.for.body_crit_edge

cond.end40.for.body_crit_edge:                    ; preds = %cond.end40
  br label %for.body

cond.end40.for.end_crit_edge:                     ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %cond.end70.for.body_crit_edge, %cond.end40.for.body_crit_edge
  %next.0111 = phi ptr [ %add.ptr68, %cond.end70.for.body_crit_edge ], [ %cond41, %cond.end40.for.body_crit_edge ]
  %call = tail call zeroext i1 @mlx5e_encap_take(ptr noundef nonnull %next.0111)
  br i1 %call, label %for.body.for.end.loopexit_crit_edge, label %for.inc

for.body.for.end.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.loopexit

for.inc:                                          ; preds = %for.body
  %encap_list46 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %next.0111, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next47)
  %12 = ptrtoint ptr %encap_list46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %encap_list46, align 4
  %14 = ptrtoint ptr %__next47 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %__next47, align 4
  %cmp54.not = icmp eq ptr %13, %encap_list
  br i1 %cmp54.not, label %cond.end70.thread, label %cond.end70, !prof !122

cond.end70.thread:                                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next47)
  br label %for.end.loopexit

cond.end70:                                       ; preds = %for.inc
  %15 = ptrtoint ptr %__next47 to i32
  call void @__asan_load4_noabort(i32 %15)
  %__next47.0.__next47.0.__next47.0.82 = load volatile ptr, ptr %__next47, align 4
  %add.ptr68 = getelementptr i8, ptr %__next47.0.__next47.0.__next47.0.82, i32 -4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next47)
  %tobool42.not = icmp eq ptr %add.ptr68, null
  br i1 %tobool42.not, label %cond.end70.for.end.loopexit_crit_edge, label %cond.end70.for.body_crit_edge

cond.end70.for.body_crit_edge:                    ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

cond.end70.for.end.loopexit_crit_edge:            ; preds = %cond.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %cond.end70.for.end.loopexit_crit_edge, %cond.end70.thread, %for.body.for.end.loopexit_crit_edge
  %next.0.lcssa.ph = phi ptr [ null, %cond.end70.thread ], [ %next.0111, %for.body.for.end.loopexit_crit_edge ], [ null, %cond.end70.for.end.loopexit_crit_edge ]
  %16 = xor i1 %call, true
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %cond.end40.for.end_crit_edge
  %next.0.lcssa = phi ptr [ null, %cond.end40.for.end_crit_edge ], [ %next.0.lcssa.ph, %for.end.loopexit ]
  %tobool42.not.lcssa = phi i1 [ true, %cond.end40.for.end_crit_edge ], [ %16, %for.end.loopexit ]
  %call.i100 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i100, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i103

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i103:                               ; preds = %for.end
  %call1.i101 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i105

land.lhs.true.i103.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i105:                              ; preds = %land.lhs.true.i103
  %.b4.i104 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104, label %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, label %if.then.i106

land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i106:                                     ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.16) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i106, %land.lhs.true2.i105.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i103.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !123
  %17 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i.i107 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i107 to ptr
  %preempt_count.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i108, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i108, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br i1 %tobool.not, label %rcu_read_unlock.exit.if.end75_crit_edge, label %if.then73

rcu_read_unlock.exit.if.end75_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.then73:                                        ; preds = %rcu_read_unlock.exit
  %out_dev = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 9
  %21 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 2304
  %mdev.i = getelementptr i8, ptr %22, i32 11328
  %23 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdev.i, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %24, i32 0, i32 17, i32 28
  %25 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %eswitch.i, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 16
  %encap_tbl_lock.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %26, i32 0, i32 15, i32 9
  %call.i109 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt.i, ptr noundef %encap_tbl_lock.i) #15
  br i1 %call.i109, label %if.end.i, label %if.then73.if.end75_crit_edge

if.then73.if.end75_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end75

if.end.i:                                         ; preds = %if.then73
  %route_list.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %route_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %route_list.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %route_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %route_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %route_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.not.i.i.i, label %list_del.exit.i.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

list_del.exit.i.hash_del_rcu.exit.i_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i
  %encap_hlist.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.addr.0, i32 0, i32 2
  %37 = ptrtoint ptr %encap_hlist.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %encap_hlist.i, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %36, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %36, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %41 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %list_del.exit.i.hash_del_rcu.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock.i) #15
  tail call fastcc void @mlx5e_encap_dealloc(ptr noundef %add.ptr.i, ptr noundef nonnull %e.addr.0) #15
  br label %if.end75

if.end75:                                         ; preds = %hash_del_rcu.exit.i, %if.then73.if.end75_crit_edge, %rcu_read_unlock.exit.if.end75_crit_edge
  br i1 %tobool42.not.lcssa, label %if.end75.cleanup_crit_edge, label %if.end78

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end78:                                         ; preds = %if.end75
  %res_ready = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %next.0.lcssa, i32 0, i32 17
  tail call void @wait_for_completion(ptr noundef %res_ready) #15
  %call79 = tail call zeroext i1 %match(ptr noundef nonnull %next.0.lcssa) #15, !callees !124
  br i1 %call79, label %if.end78.cleanup_crit_edge, label %if.end78.retry_crit_edge

if.end78.retry_crit_edge:                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %retry

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end78.cleanup_crit_edge, %if.end75.cleanup_crit_edge
  ret ptr %next.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlx5e_encap_initialized(ptr nocapture noundef readonly %e) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %compl_result = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 18
  %0 = ptrtoint ptr %compl_result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %compl_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp sgt i32 %1, -1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_update_neigh_used_value(ptr noundef %nhe) local_unnamed_addr #0 align 64 {
entry:
  %flow_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %m_neigh1 = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1
  %family = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %family, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %1, label %entry.cleanup59_crit_edge [
    i32 2, label %entry.if.end6_crit_edge
    i32 10, label %if.then4
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %3 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl = getelementptr inbounds %struct.ipv6_stub, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %nd_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_tbl, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %tbl.0 = phi ptr [ %5, %if.then4 ], [ @arp_tbl, %entry.if.end6_crit_edge ]
  %call.i114 = call fastcc ptr @mlx5e_get_next_matching_encap(ptr noundef %nhe, ptr noundef null, ptr noundef nonnull @mlx5e_encap_valid) #15
  %cmp7.not115 = icmp eq ptr %call.i114, null
  br i1 %cmp7.not115, label %if.end6.while.end_crit_edge, label %while.body.lr.ph

if.end6.while.end_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end6
  %6 = getelementptr inbounds %struct.list_head, ptr %flow_list, i32 0, i32 1
  %reported_lastuse = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %call.i116 = phi ptr [ %call.i114, %while.body.lr.ph ], [ %call.i, %cleanup.while.body_crit_edge ]
  %out_dev = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 9
  %7 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %out_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flow_list) #15
  %9 = ptrtoint ptr %flow_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %flow_list, ptr %flow_list, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %flow_list, ptr %6, align 4
  %mdev = getelementptr i8, ptr %8, i32 11328
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %12, i32 0, i32 17, i32 28
  %13 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eswitch, align 4
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %14, i32 0, i32 15, i32 9
  call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  %flows = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 3
  %15 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flows, align 4
  %cmp18.not109 = icmp eq ptr %16, %flows
  br i1 %cmp18.not109, label %while.body.cleanup_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %.pn.in110 = phi ptr [ %.pn111, %for.inc.for.body_crit_edge ], [ %16, %while.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn111 = load ptr, ptr %.pn.in110, align 4
  %efi.0 = getelementptr i8, ptr %.pn.in110, i32 -4
  %index = getelementptr i8, ptr %.pn.in110, i32 8
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %.neg = mul i32 %19, -16
  %idx.neg = add i32 %.neg, -308
  %add.ptr21 = getelementptr i8, ptr %efi.0, i32 %idx.neg
  %call22 = call ptr @mlx5e_flow_get(ptr noundef %add.ptr21) #15
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end25

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end25:                                         ; preds = %for.body
  %tmp_list = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr21, i32 0, i32 19
  %20 = ptrtoint ptr %flow_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %flow_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tmp_list, ptr noundef nonnull %flow_list, ptr noundef %21) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.list_add.exit_crit_edge

if.end25.list_add.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tmp_list, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %tmp_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %tmp_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %tmp_list, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %flow_list, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %flow_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %tmp_list, ptr %flow_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end25.list_add.exit_crit_edge
  %call26 = call zeroext i1 @mlx5e_is_offloaded_flow(ptr noundef %add.ptr21) #15
  br i1 %call26, label %if.then27, label %list_add.exit.for.inc_crit_edge

list_add.exit.for.inc_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then27:                                        ; preds = %list_add.exit
  %call28 = call ptr @mlx5e_tc_get_counter(ptr noundef %add.ptr21) #15
  %call29 = call i64 @mlx5_fc_query_lastuse(ptr noundef %call28) #15
  %26 = ptrtoint ptr %reported_lastuse to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reported_lastuse, align 4
  %conv = trunc i64 %call29 to i32
  %sub = sub i32 %27, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp30 = icmp slt i32 %sub, 0
  br i1 %cmp30, label %if.then42.critedge, label %if.then27.for.inc_crit_edge

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %if.then27.for.inc_crit_edge, %list_add.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp18.not = icmp eq ptr %.pn111, %flows
  br i1 %cmp18.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then42.critedge:                               ; preds = %if.then27
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  call void @mlx5e_put_flow_list(ptr noundef %add.ptr.i, ptr noundef nonnull %flow_list) #15
  %28 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mdev, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %29, i32 0, i32 17, i32 28
  %30 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %eswitch.i, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 16
  %encap_tbl_lock.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %31, i32 0, i32 15, i32 9
  %call.i98 = call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt.i, ptr noundef %encap_tbl_lock.i) #15
  br i1 %call.i98, label %if.end.i, label %if.then42.critedge.if.then50_crit_edge

if.then42.critedge.if.then50_crit_edge:           ; preds = %if.then42.critedge
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then50

if.end.i:                                         ; preds = %if.then42.critedge
  %route_list.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %route_list.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %route_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %route_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %route_list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %route_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 4, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.not.i.i.i, label %list_del.exit.i.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

list_del.exit.i.hash_del_rcu.exit.i_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i
  %encap_hlist.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call.i116, i32 0, i32 2
  %42 = ptrtoint ptr %encap_hlist.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %encap_hlist.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %43, ptr %41, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %41, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %46 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %list_del.exit.i.hash_del_rcu.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %encap_tbl_lock.i) #15
  call fastcc void @mlx5e_encap_dealloc(ptr noundef %add.ptr.i, ptr noundef nonnull %call.i116) #15
  br label %if.then50

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %while.body.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  call void @mlx5e_put_flow_list(ptr noundef %add.ptr.i, ptr noundef nonnull %flow_list) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flow_list) #15
  %call.i = call fastcc ptr @mlx5e_get_next_matching_encap(ptr noundef %nhe, ptr noundef %call.i116, ptr noundef nonnull @mlx5e_encap_valid) #15
  %cmp7.not = icmp eq ptr %call.i, null
  br i1 %cmp7.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end6.while.end_crit_edge
  call fastcc void @trace_mlx5e_tc_update_neigh_used_value(ptr noundef %nhe, i1 noundef zeroext false)
  br label %cleanup59

if.then50:                                        ; preds = %hash_del_rcu.exit.i, %if.then42.critedge.if.then50_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flow_list) #15
  call fastcc void @trace_mlx5e_tc_update_neigh_used_value(ptr noundef %nhe, i1 noundef zeroext true)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = ptrtoint ptr %reported_lastuse to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %reported_lastuse, align 4
  %neigh_dev = getelementptr inbounds %struct.mlx5e_neigh_hash_entry, ptr %nhe, i32 0, i32 3
  %49 = ptrtoint ptr %neigh_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %neigh_dev, align 4
  %call53 = call ptr @neigh_lookup(ptr noundef %tbl.0, ptr noundef %m_neigh1, ptr noundef %50) #15
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.then50.cleanup59_crit_edge, label %if.end56

if.then50.cleanup59_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.end56:                                         ; preds = %if.then50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %call53, i32 0, i32 10
  %52 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %51)
  %cmp.not.i.i = icmp eq i32 %53, %51
  br i1 %cmp.not.i.i, label %if.end56.if.end.i.i99_crit_edge, label %do.body5.i.i

if.end56.if.end.i.i99_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i99

do.body5.i.i:                                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  %54 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 %51, ptr %used.i.i, align 8
  br label %if.end.i.i99

if.end.i.i99:                                     ; preds = %do.body5.i.i, %if.end56.if.end.i.i99_crit_edge
  %nud_state.i.i = getelementptr inbounds %struct.neighbour, ptr %call53, i32 0, i32 12
  %55 = ptrtoint ptr %nud_state.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nud_state.i.i, align 8
  %57 = and i8 %56, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i99.neigh_event_send.exit_crit_edge

if.end.i.i99.neigh_event_send.exit_crit_edge:     ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #17
  br label %neigh_event_send.exit

if.then11.i.i:                                    ; preds = %if.end.i.i99
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i100 = call i32 @__neigh_event_send(ptr noundef nonnull %call53, ptr noundef null, i1 noundef zeroext true) #15
  br label %neigh_event_send.exit

neigh_event_send.exit:                            ; preds = %if.then11.i.i, %if.end.i.i99.neigh_event_send.exit_crit_edge
  %refcnt.i101 = getelementptr inbounds %struct.neighbour, ptr %call53, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i101, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  call void @llvm.prefetch.p0(ptr %refcnt.i101, i32 1, i32 3, i32 1) #15
  %58 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i101, ptr %refcnt.i101, i32 1, ptr elementtype(i32) %refcnt.i101) #15, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup59_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end5.i.i.i.i.cleanup59_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup59

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i101, i32 noundef 3) #15
  br label %cleanup59

if.then.i:                                        ; preds = %neigh_event_send.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  call void @neigh_destroy(ptr noundef nonnull %call53) #15
  br label %cleanup59

cleanup59:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup59_crit_edge, %if.then50.cleanup59_crit_edge, %while.end, %entry.cleanup59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_flow_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_tc_get_counter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx5_fc_query_lastuse(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_put_flow_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_encap_put(ptr nocapture noundef readonly %priv, ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %refcnt = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 16
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 15, i32 9
  %call = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt, ptr noundef %encap_tbl_lock) #15
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_list = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %route_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %route_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %route_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %10 = ptrtoint ptr %route_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %route_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.i.i, label %list_del.exit.hash_del_rcu.exit_crit_edge, label %if.then.i.i

list_del.exit.hash_del_rcu.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %list_del.exit
  %encap_hlist = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 2
  %14 = ptrtoint ptr %encap_hlist to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encap_hlist, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %15, ptr %13, align 4
  %tobool.not.i7.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %13, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %18 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %list_del.exit.hash_del_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  tail call fastcc void @mlx5e_encap_dealloc(ptr noundef %priv, ptr noundef %e)
  br label %cleanup

cleanup:                                          ; preds = %hash_del_rcu.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_mlx5e_tc_update_neigh_used_value(ptr noundef %nhe, i1 noundef zeroext %neigh_used) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, i32 0, i32 1), ptr blockaddress(@trace_mlx5e_tc_update_neigh_used_value, %do.body)) #15
          to label %if.end49 [label %do.body], !srcloc !129

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !109) #15
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
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !127

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i76 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i76
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end70_crit_edge, label %cleanup.thread

cpu_online.exit.if.end70_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #17
  %9 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !130
  %call43 = tail call i32 @__traceiter_mlx5e_tc_update_neigh_used_value(ptr noundef null, ptr noundef %nhe, i1 noundef zeroext %neigh_used) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !131
  %13 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i74 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i74 to ptr
  %preempt_count.i.i75 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i75 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i75, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i75, align 4
  br label %if.end49

if.end49:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i77 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i77 to ptr
  %cpu51 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu51, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i78 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i78, label %if.end49.cpu_online.exit86_crit_edge, label %land.rhs.i.i.i.i80

if.end49.cpu_online.exit86_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit86

land.rhs.i.i.i.i80:                               ; preds = %if.end49
  %.b37.i.i.i.i79 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i79, label %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, label %if.then.i.i.i.i81, !prof !127

land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge:   ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cpu_online.exit86

if.then.i.i.i.i81:                                ; preds = %land.rhs.i.i.i.i80
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit86

cpu_online.exit86:                                ; preds = %if.then.i.i.i.i81, %land.rhs.i.i.i.i80.cpu_online.exit86_crit_edge, %if.end49.cpu_online.exit86_crit_edge
  %div3.i.i.i82 = lshr i32 %20, 5
  %arrayidx.i.i.i83 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i82
  %22 = ptrtoint ptr %arrayidx.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i83, align 4
  %and.i.i.i84 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i84
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i85.not = icmp eq i32 %25, 0
  br i1 %tobool.i85.not, label %cpu_online.exit86.if.end70_crit_edge, label %if.then53

cpu_online.exit86.if.end70_crit_edge:             ; preds = %cpu_online.exit86
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.then53:                                        ; preds = %cpu_online.exit86
  %26 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mlx5e_tc_update_neigh_used_value, i32 0, i32 7), align 4
  %call59 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true, label %if.then53.do.end68_crit_edge

if.then53.do.end68_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

land.lhs.true:                                    ; preds = %if.then53
  %call61 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true.do.end68_crit_edge, label %land.lhs.true63

land.lhs.true.do.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

land.lhs.true63:                                  ; preds = %land.lhs.true
  %.b73 = load i1, ptr @trace_mlx5e_tc_update_neigh_used_value.__warned, align 1
  br i1 %.b73, label %land.lhs.true63.do.end68_crit_edge, label %if.then65

land.lhs.true63.do.end68_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end68

if.then65:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @trace_mlx5e_tc_update_neigh_used_value.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 105, ptr noundef nonnull @.str.18) #15
  br label %do.end68

do.end68:                                         ; preds = %if.then65, %land.lhs.true63.do.end68_crit_edge, %land.lhs.true.do.end68_crit_edge, %if.then53.do.end68_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !133
  %31 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i87 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i87 to ptr
  %preempt_count.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i88, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i88, align 4
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %cpu_online.exit86.if.end70_crit_edge, %cpu_online.exit.if.end70_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_lookup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_encap_dealloc(ptr nocapture noundef readonly %priv, ptr noundef %e) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flows = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 3
  %0 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %flows, align 4
  %cmp.i.not = icmp eq ptr %1, %flows
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !127

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 436, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %compl_result = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 18
  %2 = ptrtoint ptr %compl_result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then21, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then21:                                        ; preds = %if.end
  %out_dev = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 9
  %4 = ptrtoint ptr %out_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_dev, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  tail call void @mlx5e_rep_encap_entry_detach(ptr noundef %add.ptr.i, ptr noundef %e) #15
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool23.not = icmp eq i8 %8, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then24

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 64
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 5
  %11 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pkt_reformat, align 4
  tail call void @mlx5_packet_reformat_dealloc(ptr noundef %10, ptr noundef %12) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then21.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %tun_info = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 6
  %13 = ptrtoint ptr %tun_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tun_info, align 4
  tail call void @kfree(ptr noundef %14) #15
  %encap_header = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 14
  %15 = ptrtoint ptr %encap_header to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %encap_header, align 4
  tail call void @kfree(ptr noundef %16) #15
  %tobool28.not = icmp eq ptr %e, null
  br i1 %tobool28.not, label %if.end26.if.end33_crit_edge, label %do.end32

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end33

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  %rcu = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 19
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 152 to ptr)) #15
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %if.end26.if.end33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_detach_encap(ptr nocapture noundef readonly %priv, ptr noundef %flow, i32 noundef %out_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %attr = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 25
  %6 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attr, align 8
  %dests = getelementptr inbounds %struct.mlx5_flow_attr, ptr %7, i32 1, i32 7
  %arrayidx3 = getelementptr [32 x %struct.anon.236], ptr %dests, i32 0, i32 %out_index
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %arrayidx.i = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 9, i32 %out_index
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %encap_tbl_lock.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 15, i32 9
  tail call void @mutex_lock_nested(ptr noundef %encap_tbl_lock.i, i32 noundef 0) #15
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx.i, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %11, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !126
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end9.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.then6.i_crit_edge, label %if.then10.i.i.i.i, !prof !127

if.end5.i.i.i.i.if.then6.i_crit_edge:             ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.then6.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock.i) #15
  br label %if.end

if.end9.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  %encap_entries.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %encap_entries.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encap_entries.i, align 4
  %cmp.not41.i = icmp eq ptr %15, %encap_entries.i
  br i1 %cmp.not41.i, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %16 = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %15, %if.end9.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %16, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %16, ptr %16, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %16, ptr %prev.i3.i.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encap_entries.i
  br i1 %cmp.not.i, label %list_del_init.exit.i.for.end.i_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del_init.exit.i.for.end.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %list_del_init.exit.i.for.end.i_crit_edge, %if.end9.i.for.end.i_crit_edge
  %pprev.i.i.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %11, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.not.i.i.i, label %for.end.i.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

for.end.i.hash_del_rcu.exit.i_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %for.end.i
  %hlist.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %11, i32 0, i32 4
  %28 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hlist.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %27, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %31 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %27, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %32 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %for.end.i.hash_del_rcu.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock.i) #15
  %decap_flows.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %11, i32 0, i32 2
  %33 = ptrtoint ptr %decap_flows.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %decap_flows.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %34, %decap_flows.i.i
  br i1 %cmp.i.not.i.i, label %hash_del_rcu.exit.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !127

hash_del_rcu.exit.i.if.end.i.i_crit_edge:         ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 987, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %hash_del_rcu.exit.i.if.end.i.i_crit_edge
  %35 = ptrtoint ptr %encap_entries.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %encap_entries.i, align 4
  %cmp.i1.not.i.i = icmp eq ptr %36, %encap_entries.i
  br i1 %cmp.i1.not.i.i, label %if.end.i.i.mlx5e_route_dealloc.exit.i_crit_edge, label %do.end41.i.i, !prof !127

if.end.i.i.mlx5e_route_dealloc.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_route_dealloc.exit.i

do.end41.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 988, i32 noundef 9, ptr noundef null) #15
  br label %mlx5e_route_dealloc.exit.i

mlx5e_route_dealloc.exit.i:                       ; preds = %do.end41.i.i, %if.end.i.i.mlx5e_route_dealloc.exit.i_crit_edge
  %rcu.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %11, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 56 to ptr)) #15
  br label %if.end

if.end:                                           ; preds = %mlx5e_route_dealloc.exit.i, %if.then6.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 15, i32 9
  tail call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  %list = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #15
  br i1 %call.i.i, label %if.end.i.i35, label %if.end6.list_del.exit_crit_edge

if.end6.list_del.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i35:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i35, %if.end6.list_del.exit_crit_edge
  %43 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index, i32 1, i32 1
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx, align 4
  %refcnt = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %1, i32 0, i32 16
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %46 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end15, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then12_crit_edge, label %if.then10.i.i.i, !prof !127

if.end5.i.i.i.if.then12_crit_edge:                ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then12

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %if.then12

if.then12:                                        ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then12_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  br label %cleanup

if.end15:                                         ; preds = %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  %route_list = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %1, i32 0, i32 4
  %call.i.i36 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %route_list) #15
  br i1 %call.i.i36, label %if.end.i.i39, label %if.end15.list_del.exit41_crit_edge

if.end15.list_del.exit41_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit41

if.end.i.i39:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i37 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %1, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i37, align 4
  %49 = ptrtoint ptr %route_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %route_list, align 4
  %prev1.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i38, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit41

list_del.exit41:                                  ; preds = %if.end.i.i39, %if.end15.list_del.exit41_crit_edge
  %53 = ptrtoint ptr %route_list to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %route_list, align 4
  %prev.i40 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %1, i32 0, i32 4, i32 1
  %54 = ptrtoint ptr %prev.i40 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i40, align 4
  %pprev.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %1, i32 0, i32 2, i32 1
  %55 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.not.i.i, label %list_del.exit41.hash_del_rcu.exit_crit_edge, label %if.then.i.i

list_del.exit41.hash_del_rcu.exit_crit_edge:      ; preds = %list_del.exit41
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %list_del.exit41
  %encap_hlist = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %encap_hlist to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %encap_hlist, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %58, ptr %56, align 4
  %tobool.not.i7.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %56, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %61 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %list_del.exit41.hash_del_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  tail call fastcc void @mlx5e_encap_dealloc(ptr noundef %priv, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %hash_del_rcu.exit, %if.then12, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_detach_decap(ptr nocapture noundef readonly %priv, ptr noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %decap_reformat = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 6
  %0 = ptrtoint ptr %decap_reformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %decap_reformat, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %decap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 15, i32 11
  tail call void @mutex_lock_nested(ptr noundef %decap_tbl_lock, i32 noundef 0) #15
  %l3_to_l2_reformat = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %l3_to_l2_reformat) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %l3_to_l2_reformat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %l3_to_l2_reformat, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %l3_to_l2_reformat to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %l3_to_l2_reformat, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %decap_reformat to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %decap_reformat, align 4
  %refcnt = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end6, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then3_crit_edge, label %if.then10.i.i.i, !prof !127

if.end5.i.i.i.if.then3_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %if.then3

if.then3:                                         ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then3_crit_edge
  tail call void @mutex_unlock(ptr noundef %decap_tbl_lock) #15
  br label %cleanup

if.end6:                                          ; preds = %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  %pprev.i.i.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.not.i.i, label %if.end6.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.end6.hash_del_rcu.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.end6
  %hlist = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hlist, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %17, align 4
  %tobool.not.i7.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %22 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.end6.hash_del_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %decap_tbl_lock) #15
  %flows.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %flows.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %flows.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %flows.i
  br i1 %cmp.i.not.i, label %hash_del_rcu.exit.if.end.i_crit_edge, label %do.end.i, !prof !127

hash_del_rcu.exit.if.end.i_crit_edge:             ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 453, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %hash_del_rcu.exit.if.end.i_crit_edge
  %compl_result.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %compl_result.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %compl_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool21.not.i = icmp eq i32 %26, 0
  br i1 %tobool21.not.i, label %if.then22.i, label %if.end.i.mlx5e_decap_dealloc.exit_crit_edge

if.end.i.mlx5e_decap_dealloc.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_decap_dealloc.exit

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %27 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev, align 64
  %pkt_reformat.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %pkt_reformat.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pkt_reformat.i, align 4
  tail call void @mlx5_packet_reformat_dealloc(ptr noundef %28, ptr noundef %30) #15
  br label %mlx5e_decap_dealloc.exit

mlx5e_decap_dealloc.exit:                         ; preds = %if.then22.i, %if.end.i.mlx5e_decap_dealloc.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %1, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 100 to ptr)) #15
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_decap_dealloc.exit, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlx5e_tc_tun_encap_info_equal_generic(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %2 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %b, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(56) %1, ptr noundef dereferenceable(56) %3, i32 56) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %tc_tunnel = getelementptr inbounds %struct.mlx5e_encap_key, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %tc_tunnel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc_tunnel, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %tc_tunnel2 = getelementptr inbounds %struct.mlx5e_encap_key, ptr %b, i32 0, i32 1
  %8 = ptrtoint ptr %tc_tunnel2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tc_tunnel2, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp4 = icmp eq i32 %7, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %12 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp4, %land.rhs ]
  ret i1 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_encap_take(ptr noundef %e) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #15
  %0 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %entry
  %2 = phi i32 [ %1, %entry ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #15
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %5, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #15, !srcloc !134
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !127

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #15
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i = icmp ne i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #15
  ret i1 %tobool12.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_dup_tun_info(ptr noundef %tun_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %tun_info, i32 0, i32 2
  %0 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options_len, align 8
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 72
  %call = tail call ptr @kmemdup(ptr noundef %tun_info, i32 noundef %add, i32 noundef 3264) #15
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_attach_encap(ptr noundef %priv, ptr noundef %flow, ptr noundef %mirred_dev, i32 noundef %out_index, ptr noundef %extack, ptr nocapture noundef writeonly %encap_dev, ptr nocapture noundef writeonly %encap_valid) local_unnamed_addr #0 align 64 {
entry:
  %vport_num.i.i = alloca i16, align 2
  %tbl_time_after.i = alloca i32, align 4
  %key.i = alloca %struct.mlx5e_route_key, align 4
  %e_key.i = alloca %struct.mlx5e_encap_key, align 4
  %key = alloca %struct.mlx5e_encap_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %attr2 = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 25
  %4 = ptrtoint ptr %attr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #15
  %6 = getelementptr inbounds %struct.mlx5e_encap_key, ptr %key, i32 0, i32 1
  %parse_attr3 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %5, i32 0, i32 5
  %7 = ptrtoint ptr %parse_attr3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parse_attr3, align 4
  %arrayidx = getelementptr [32 x ptr], ptr %8, i32 0, i32 %out_index
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr %struct.mlx5e_tc_flow_parse_attr, ptr %8, i32 0, i32 1, i32 %out_index
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mode.i, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  %14 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %key, align 4
  %call8 = tail call ptr @mlx5e_get_tc_tun(ptr noundef %mirred_dev) #15
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8, ptr %6, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_attach_encap.__msg) #15
  %tobool10.not = icmp eq ptr %extack, null
  br i1 %tobool10.not, label %do.body.cleanup_crit_edge, label %if.then11

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mlx5e_attach_encap.__msg, ptr %extack, align 4
  br label %cleanup

if.end12:                                         ; preds = %entry
  %17 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %key, align 4
  %19 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %call8, align 4
  %call.i = tail call fastcc i32 @jhash(ptr noundef %18, i32 noundef 56, i32 noundef %20) #15
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 15, i32 9
  tail call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  %21 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 17, i32 28
  %23 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eswitch.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %e_key.i) #15
  %25 = getelementptr inbounds %struct.mlx5e_encap_key, ptr %e_key.i, i32 0, i32 1
  %call.i216 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %tobool.not.i217 = icmp eq i32 %call.i216, 0
  br i1 %tobool.not.i217, label %land.lhs.true.i, label %if.end12.do.end.i_crit_edge

if.end12.do.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end12
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b48.i = load i1, ptr @mlx5e_encap_get.__warned, align 1
  br i1 %.b48.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @mlx5e_encap_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 584, ptr noundef nonnull @.str.20) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end12.do.end.i_crit_edge
  %mul.i.i.i = mul i32 %call.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.mlx5_eswitch, ptr %24, i32 0, i32 15, i32 10, i32 %shr.i.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %27, null
  %add.ptr.i = getelementptr i8, ptr %27, i32 -12
  %tobool14.not5256.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not52.i = or i1 %tobool12.not.i, %tobool14.not5256.i
  br i1 %tobool14.not52.i, label %do.end.i.if.end26_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end26_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %e.053.i = phi ptr [ %add.ptr33.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %tun_info.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.053.i, i32 0, i32 6
  %28 = ptrtoint ptr %tun_info.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tun_info.i, align 4
  %30 = ptrtoint ptr %e_key.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %e_key.i, align 4
  %tunnel.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.053.i, i32 0, i32 11
  %31 = ptrtoint ptr %tunnel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tunnel.i, align 4
  %33 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %25, align 4
  %encap_info_equal.i = getelementptr inbounds %struct.mlx5e_tc_tunnel, ptr %32, i32 0, i32 8
  %34 = ptrtoint ptr %encap_info_equal.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %encap_info_equal.i, align 4
  %call17.i = call zeroext i1 %35(ptr noundef nonnull %e_key.i, ptr noundef nonnull %key) #15
  br i1 %call17.i, label %land.lhs.true18.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %for.body.i
  %call19.i = call zeroext i1 @mlx5e_encap_take(ptr noundef nonnull %e.053.i) #15
  br i1 %call19.i, label %if.then16, label %land.lhs.true18.i.for.inc.i_crit_edge

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %encap_hlist.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.053.i, i32 0, i32 2
  %36 = ptrtoint ptr %encap_hlist.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %encap_hlist.i, align 4
  %tobool29.not.i = icmp eq ptr %37, null
  %add.ptr33.i = getelementptr i8, ptr %37, i32 -12
  %tobool14.not57.i = icmp eq ptr %add.ptr33.i, null
  %tobool14.not.i = or i1 %tobool29.not.i, %tobool14.not57.i
  br i1 %tobool14.not.i, label %for.inc.i.if.end26_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.end26_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then16:                                        ; preds = %land.lhs.true18.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e_key.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_index)
  %cmp10.i = icmp sgt i32 %out_index, 0
  br i1 %cmp10.i, label %for.body.i219.preheader, label %if.then16.if.end19_crit_edge

if.then16.if.end19_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

for.body.i219.preheader:                          ; preds = %if.then16
  %arrayidx.i218276 = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 0
  %38 = ptrtoint ptr %arrayidx.i218276 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i218276, align 4
  %cmp2.not.i277 = icmp eq ptr %39, %e.053.i
  br i1 %cmp2.not.i277, label %for.body.i219.preheader.do.body.i_crit_edge, label %for.body.i219.preheader.for.cond.i_crit_edge

for.body.i219.preheader.for.cond.i_crit_edge:     ; preds = %for.body.i219.preheader
  br label %for.cond.i

for.body.i219.preheader.do.body.i_crit_edge:      ; preds = %for.body.i219.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

for.cond.i:                                       ; preds = %for.body.i219.for.cond.i_crit_edge, %for.body.i219.preheader.for.cond.i_crit_edge
  %i.011.i278 = phi i32 [ %inc.i, %for.body.i219.for.cond.i_crit_edge ], [ 0, %for.body.i219.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.011.i278, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %out_index)
  %exitcond.not.i = icmp eq i32 %inc.i, %out_index
  br i1 %exitcond.not.i, label %for.cond.i.if.end19_crit_edge, label %for.body.i219

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

for.body.i219:                                    ; preds = %for.cond.i
  %arrayidx.i218 = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %inc.i
  %40 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i218, align 4
  %cmp2.not.i = icmp eq ptr %41, %e.053.i
  br i1 %cmp2.not.i, label %do.body.i.loopexit, label %for.body.i219.for.cond.i_crit_edge

for.body.i219.for.cond.i_crit_edge:               ; preds = %for.body.i219
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i

do.body.i.loopexit:                               ; preds = %for.body.i219
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %out_index)
  %cmp.i = icmp slt i32 %inc.i, %out_index
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.loopexit, %for.body.i219.preheader.do.body.i_crit_edge
  %cmp12.i.lcssa = phi i1 [ true, %for.body.i219.preheader.do.body.i_crit_edge ], [ %cmp.i, %do.body.i.loopexit ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @is_duplicated_encap_entry.__msg) #15
  %tobool.not.i220 = icmp eq ptr %extack, null
  br i1 %tobool.not.i220, label %do.body.i.if.end4.i_crit_edge, label %if.then3.i

do.body.i.if.end4.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @is_duplicated_encap_entry.__msg, ptr %extack, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %do.body.i.if.end4.i_crit_edge
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %43 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %44, ptr noundef nonnull @.str.21) #20
  br i1 %cmp12.i.lcssa, label %if.end4.i.out_err_crit_edge, label %if.end4.i.if.end19_crit_edge

if.end4.i.if.end19_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.end4.i.out_err_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end19:                                         ; preds = %if.end4.i.if.end19_crit_edge, %for.cond.i.if.end19_crit_edge, %if.then16.if.end19_crit_edge
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  %res_ready = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.053.i, i32 0, i32 17
  call void @wait_for_completion(ptr noundef %res_ready) #15
  call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  %compl_result = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.053.i, i32 0, i32 18
  %45 = ptrtoint ptr %compl_result to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %compl_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp = icmp slt i32 %46, 0
  br i1 %cmp, label %if.end19.out_err_crit_edge, label %if.end19.attach_flow_crit_edge

if.end19.attach_flow_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %attach_flow

if.end19.out_err_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

if.end26:                                         ; preds = %for.inc.i.if.end26_crit_edge, %do.end.i.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %e_key.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 160) #21
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %out_err.thread, label %if.end30

out_err.thread:                                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %refcnt = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  %48 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %refcnt, align 8
  %res_ready31 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 17
  %49 = ptrtoint ptr %res_ready31 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %res_ready31, align 4
  %wait.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 17, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #15
  %route_list = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %route_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %route_list, ptr %route_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %route_list, ptr %prev.i, align 8
  %options_len.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %10, i32 0, i32 2
  %52 = ptrtoint ptr %options_len.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %options_len.i, align 8
  %conv.i = zext i8 %53 to i32
  %add.i = add nuw nsw i32 %conv.i, 72
  %call.i221 = call ptr @kmemdup(ptr noundef %10, i32 noundef %add.i, i32 noundef 3264) #15
  %tobool33.not = icmp eq ptr %call.i221, null
  br i1 %tobool33.not, label %if.end30.out_err_init_crit_edge, label %if.end35

if.end30.out_err_init_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_init

if.end35:                                         ; preds = %if.end30
  %tun_info36 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %tun_info36 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i221, ptr %tun_info36, align 8
  %mpls_info37 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %arrayidx6, align 4
  %57 = ptrtoint ptr %mpls_info37 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %56, ptr %mpls_info37, align 4
  %call38 = call i32 @mlx5e_tc_tun_init_encap_attr(ptr noundef %mirred_dev, ptr noundef %priv, ptr noundef nonnull %call7.i.i, ptr noundef %extack) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end35.out_err_init_crit_edge

if.end35.out_err_init_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err_init

if.end41:                                         ; preds = %if.end35
  %flows = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %flows, ptr %flows, align 4
  %prev.i222 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %prev.i222 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %flows, ptr %prev.i222, align 8
  %encap_hlist = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 2
  %arrayidx44 = getelementptr %struct.mlx5_eswitch, ptr %3, i32 0, i32 15, i32 10, i32 %shr.i.i
  %60 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx44, align 4
  %62 = ptrtoint ptr %encap_hlist to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %encap_hlist, align 4
  %pprev.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %arrayidx44, ptr %pprev.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !135
  %64 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %encap_hlist, ptr %arrayidx44, align 4
  %tobool.not.i223 = icmp eq ptr %61, null
  br i1 %tobool.not.i223, label %if.end41.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end41.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %encap_hlist, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end41.hlist_add_head_rcu.exit_crit_edge
  %66 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mdev, align 64
  %eswitch.i225 = getelementptr inbounds %struct.mlx5_core_dev, ptr %67, i32 0, i32 17, i32 28
  %68 = ptrtoint ptr %eswitch.i225 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %eswitch.i225, align 4
  %call.i226 = call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %69, i8 noundef zeroext 0) #15
  %encap3.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call.i226, i32 0, i32 6, i32 12
  %70 = ptrtoint ptr %encap3.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %encap3.i, align 4
  %route_lock.i = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %71, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %route_lock.i) #15
  %route_tbl_last_update.i = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %route_tbl_last_update.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %route_tbl_last_update.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %route_lock.i) #15
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  br i1 %tobool.not.i, label %if.then50, label %if.then55

if.then50:                                        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call51 = call i32 @mlx5e_tc_tun_create_header_ipv4(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef nonnull %call7.i.i) #15
  br label %if.end58

if.then55:                                        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call56 = call i32 @mlx5e_tc_tun_create_header_ipv6(ptr noundef %priv, ptr noundef %mirred_dev, ptr noundef nonnull %call7.i.i) #15
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %if.then50
  %err.0 = phi i32 [ %call51, %if.then50 ], [ %call56, %if.then55 ]
  call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  call void @complete_all(ptr noundef %res_ready31) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool62.not = icmp eq i32 %err.0, 0
  %compl_result66 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %call7.i.i, i32 0, i32 18
  br i1 %tobool62.not, label %if.end65, label %out_err.thread267

out_err.thread267:                                ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %compl_result66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %err.0, ptr %compl_result66, align 4
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  br label %if.then115

if.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %compl_result66 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %compl_result66, align 4
  br label %attach_flow

attach_flow:                                      ; preds = %if.end65, %if.end19.attach_flow_crit_edge
  %tobool15.not252 = phi i1 [ false, %if.end19.attach_flow_crit_edge ], [ true, %if.end65 ]
  %tbl_time_before.0 = phi i32 [ 0, %if.end19.attach_flow_crit_edge ], [ %73, %if.end65 ]
  %e.0 = phi ptr [ %e.053.i, %if.end19.attach_flow_crit_edge ], [ %call7.i.i, %if.end65 ]
  %76 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mdev, align 64
  %eswitch.i228 = getelementptr inbounds %struct.mlx5_core_dev, ptr %77, i32 0, i32 17, i32 28
  %78 = ptrtoint ptr %eswitch.i228 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %eswitch.i228, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tbl_time_after.i) #15
  %80 = ptrtoint ptr %tbl_time_after.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %tbl_time_before.0, ptr %tbl_time_after.i, align 4
  %81 = ptrtoint ptr %attr2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %attr2, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key.i) #15
  %83 = getelementptr inbounds %struct.mlx5e_route_key, ptr %key.i, i32 0, i32 1
  %parse_attr3.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.mlx5e_route_key, ptr %key.i, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %85 = call ptr @memset(ptr %84, i32 255, i32 12)
  %86 = ptrtoint ptr %parse_attr3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %parse_attr3.i, align 4
  %arrayidx.i229 = getelementptr [32 x ptr], ptr %87, i32 0, i32 %out_index
  %88 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i229, align 4
  %mode.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %mode.i.i, align 1
  %92 = and i8 %91, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i.i = icmp eq i8 %92, 0
  %u.i = getelementptr inbounds %struct.ip_tunnel_key, ptr %89, i32 0, i32 1
  br i1 %tobool.not.i.i, label %if.then.i230, label %if.then10.i

if.then.i230:                                     ; preds = %attach_flow
  call void @__sanitizer_cov_trace_pc() #17
  %93 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %u.i, align 8
  %95 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %83, align 4
  br label %if.end16.i

if.then10.i:                                      ; preds = %attach_flow
  call void @__sanitizer_cov_trace_pc() #17
  %96 = call ptr @memcpy(ptr %83, ptr %u.i, i32 16)
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %if.then.i230
  %storemerge.i = phi i32 [ 6, %if.then10.i ], [ 4, %if.then.i230 ]
  %97 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %storemerge.i, ptr %key.i, align 4
  %mod_hdr_acts.i = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %87, i32 0, i32 4
  %out_dev.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.0, i32 0, i32 9
  %98 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %out_dev.i, align 4
  %route_dev_ifindex.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.0, i32 0, i32 10
  %100 = ptrtoint ptr %route_dev_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %route_dev_ifindex.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num.i.i) #15
  %102 = ptrtoint ptr %vport_num.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 -1, ptr %vport_num.i.i, align 2, !annotation !136
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 127
  %103 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %nd_net.i.i.i, align 4
  %call1.i.i = call ptr @dev_get_by_index(ptr noundef %104, i32 noundef %101) #15
  %tobool.not.i81.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i81.i, label %mlx5e_set_vf_tunnel.exit.thread.i, label %lor.lhs.false.i.i

mlx5e_set_vf_tunnel.exit.thread.i:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i.i) #15
  br label %lor.lhs.false.i

lor.lhs.false.i.i:                                ; preds = %if.end16.i
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i.i, i32 0, i32 16
  %105 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %106, @mlx5e_netdev_ops
  br i1 %cmp.not.i.i, label %lor.lhs.false2.i.i, label %lor.lhs.false.i.i.do.body1.i.i.i_crit_edge

lor.lhs.false.i.i.do.body1.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %call3.i.i = call zeroext i1 @mlx5e_tc_is_vf_tunnel(ptr noundef %99, ptr noundef nonnull %call1.i.i) #15
  br i1 %call3.i.i, label %if.end.i.i, label %lor.lhs.false2.i.i.do.body1.i.i.i_crit_edge

lor.lhs.false2.i.i.do.body1.i.i.i_crit_edge:      ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false2.i.i
  %call4.i.i = call i32 @mlx5e_tc_query_route_vport(ptr noundef %99, ptr noundef nonnull %call1.i.i, ptr noundef nonnull %vport_num.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.end.i.i.do.body1.i.i.i_crit_edge

if.end.i.i.do.body1.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %dest_chain.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %82, i32 0, i32 8
  %107 = ptrtoint ptr %dest_chain.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %dest_chain.i.i, align 4
  %108 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %82, align 4
  %or.i.i = or i32 %109, 64
  store i32 %or.i.i, ptr %82, align 4
  %dests.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %82, i32 1, i32 7
  %arrayidx.i.i = getelementptr [32 x %struct.anon.236], ptr %dests.i.i, i32 0, i32 %out_index
  %110 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i.i, align 4
  %or8.i.i = or i32 %111, 4
  store i32 %or8.i.i, ptr %arrayidx.i.i, align 4
  %in_mdev.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %82, i32 1, i32 1
  %112 = ptrtoint ptr %in_mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %in_mdev.i.i, align 4
  %eswitch.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %113, i32 0, i32 17, i32 28
  %114 = ptrtoint ptr %eswitch.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %eswitch.i.i, align 4
  %116 = ptrtoint ptr %vport_num.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %vport_num.i.i, align 2
  %call9.i.i = call i32 @mlx5_eswitch_get_vport_metadata_for_set(ptr noundef %115, i16 noundef zeroext %117) #15
  %118 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %79, align 8
  %call10.i.i = call i32 @mlx5e_tc_match_to_reg_set_and_get_id(ptr noundef %119, ptr noundef %mod_hdr_acts.i, i32 noundef 8, i32 noundef 1, i32 noundef %call9.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10.i.i)
  %cmp11.i.i = icmp sgt i32 %call10.i.i, -1
  br i1 %cmp11.i.i, label %if.then12.i.i, label %if.end7.i.i.do.body1.i.i.i_crit_edge

if.end7.i.i.do.body1.i.i.i_crit_edge:             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i.i

if.then12.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %src_port_rewrite_act_id.i.i = getelementptr [32 x %struct.anon.236], ptr %dests.i.i, i32 0, i32 %out_index, i32 5
  %120 = ptrtoint ptr %src_port_rewrite_act_id.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %call10.i.i, ptr %src_port_rewrite_act_id.i.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %if.then12.i.i, %if.end7.i.i.do.body1.i.i.i_crit_edge, %if.end.i.i.do.body1.i.i.i_crit_edge, %lor.lhs.false2.i.i.do.body1.i.i.i_crit_edge, %lor.lhs.false.i.i.do.body1.i.i.i_crit_edge
  %err.0.ph.i.i = phi i32 [ 0, %lor.lhs.false2.i.i.do.body1.i.i.i_crit_edge ], [ %call10.i.i, %if.end7.i.i.do.body1.i.i.i_crit_edge ], [ 0, %if.then12.i.i ], [ %call4.i.i, %if.end.i.i.do.body1.i.i.i_crit_edge ], [ 0, %lor.lhs.false.i.i.do.body1.i.i.i_crit_edge ]
  %121 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !137
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i.i, i32 0, i32 118
  %122 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %130, %124
  %131 = inttoptr i32 %add.i.i.i to ptr
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 4
  %add13.i.i.i = add i32 %133, -1
  store i32 %add13.i.i.i, ptr %131, align 4
  %134 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !138
  %and.i.i.i.i.i = and i32 %134, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.mlx5e_set_vf_tunnel.exit.i_crit_edge, !prof !122

do.body1.i.i.i.mlx5e_set_vf_tunnel.exit.i_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_set_vf_tunnel.exit.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %mlx5e_set_vf_tunnel.exit.i

mlx5e_set_vf_tunnel.exit.i:                       ; preds = %if.then28.i.i.i, %do.body1.i.i.i.mlx5e_set_vf_tunnel.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #15, !srcloc !139
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.ph.i.i)
  %tobool.not.i231 = icmp eq i32 %err.0.ph.i.i, 0
  br i1 %tobool.not.i231, label %mlx5e_set_vf_tunnel.exit.i.lor.lhs.false.i_crit_edge, label %mlx5e_set_vf_tunnel.exit.i.mlx5e_attach_encap_route.exit.thread258_crit_edge

mlx5e_set_vf_tunnel.exit.i.mlx5e_attach_encap_route.exit.thread258_crit_edge: ; preds = %mlx5e_set_vf_tunnel.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_attach_encap_route.exit.thread258

mlx5e_set_vf_tunnel.exit.i.lor.lhs.false.i_crit_edge: ; preds = %mlx5e_set_vf_tunnel.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %mlx5e_set_vf_tunnel.exit.i.lor.lhs.false.i_crit_edge, %mlx5e_set_vf_tunnel.exit.thread.i
  %dests.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %82, i32 1, i32 7
  %arrayidx18.i = getelementptr [32 x %struct.anon.236], ptr %dests.i, i32 0, i32 %out_index
  %135 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx18.i, align 4
  %and.i = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i.mlx5e_attach_encap_route.exit.thread_crit_edge, label %if.end21.i

lor.lhs.false.i.mlx5e_attach_encap_route.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_attach_encap_route.exit.thread

if.end21.i:                                       ; preds = %lor.lhs.false.i
  %arrayidx22.i = getelementptr %struct.mlx5e_tc_flow_parse_attr, ptr %87, i32 0, i32 5, i32 %out_index
  %137 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx22.i, align 4
  %call23.i = call fastcc ptr @mlx5e_route_get_create(ptr noundef %priv, ptr noundef nonnull %key.i, i32 noundef %138, ptr noundef nonnull %tbl_time_after.i) #15
  %cmp.i.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5e_attach_encap_route.exit, label %if.end27.i

if.end27.i:                                       ; preds = %if.end21.i
  %139 = ptrtoint ptr %tbl_time_after.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tbl_time_after.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %tbl_time_before.0)
  %cmp28.not.i = icmp eq i32 %140, %tbl_time_before.0
  br i1 %cmp28.not.i, label %if.end27.i.if.end35.i_crit_edge, label %if.then30.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end27.i
  %call31.i = call fastcc i32 @mlx5e_route_enqueue_update(ptr noundef %priv, ptr noundef %call23.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then30.i.if.end35.i_crit_edge, label %if.then33.i

if.then30.i.if.end35.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #17
  call fastcc void @mlx5e_route_put_locked(ptr noundef %priv, ptr noundef %call23.i) #15
  br label %mlx5e_attach_encap_route.exit.thread258

if.end35.i:                                       ; preds = %if.then30.i.if.end35.i_crit_edge, %if.end27.i.if.end35.i_crit_edge
  %arrayidx36.i = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 9, i32 %out_index
  %141 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call23.i, ptr %arrayidx36.i, align 4
  br i1 %tobool15.not252, label %if.then39.i, label %if.end35.i.if.end40.i_crit_edge

if.end35.i.if.end40.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.then39.i:                                      ; preds = %if.end35.i
  %route_list.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.0, i32 0, i32 4
  %encap_entries.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call23.i, i32 0, i32 1
  %142 = ptrtoint ptr %encap_entries.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %encap_entries.i, align 4
  %call.i.i.i232 = call zeroext i1 @__list_add_valid(ptr noundef %route_list.i, ptr noundef %encap_entries.i, ptr noundef %143) #15
  br i1 %call.i.i.i232, label %if.end.i.i.i, label %if.then39.i.if.end40.i_crit_edge

if.then39.i.if.end40.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40.i

if.end.i.i.i:                                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %route_list.i, ptr %prev1.i.i.i, align 4
  %145 = ptrtoint ptr %route_list.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %143, ptr %route_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.0, i32 0, i32 4, i32 1
  %146 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %encap_entries.i, ptr %prev3.i.i.i, align 4
  %147 = ptrtoint ptr %encap_entries.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %route_list.i, ptr %encap_entries.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.end.i.i.i, %if.then39.i.if.end40.i_crit_edge, %if.end35.i.if.end40.i_crit_edge
  %index.i = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 9, i32 %out_index, i32 1
  %148 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %out_index, ptr %index.i, align 4
  br label %mlx5e_attach_encap_route.exit.thread

mlx5e_attach_encap_route.exit.thread:             ; preds = %if.end40.i, %lor.lhs.false.i.mlx5e_attach_encap_route.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tbl_time_after.i) #15
  %149 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %out_dev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %150, i32 0, i32 127
  %151 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %nd_net.i.i, align 4
  %153 = ptrtoint ptr %route_dev_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %route_dev_ifindex.i, align 4
  %call1.i = call ptr @dev_get_by_index(ptr noundef %152, i32 noundef %154) #15
  %tobool.not.i236 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i236, label %mlx5e_attach_encap_route.exit.thread.if.end91_crit_edge, label %lor.lhs.false.i237

mlx5e_attach_encap_route.exit.thread.if.end91_crit_edge: ; preds = %mlx5e_attach_encap_route.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91

mlx5e_attach_encap_route.exit.thread258:          ; preds = %if.then33.i, %mlx5e_set_vf_tunnel.exit.i.mlx5e_attach_encap_route.exit.thread258_crit_edge
  %retval.0.i233.ph = phi i32 [ %err.0.ph.i.i, %mlx5e_set_vf_tunnel.exit.i.mlx5e_attach_encap_route.exit.thread258_crit_edge ], [ %call31.i, %if.then33.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tbl_time_after.i) #15
  br label %out_err

mlx5e_attach_encap_route.exit:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  %155 = ptrtoint ptr %call23.i to i32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tbl_time_after.i) #15
  br label %out_err

lor.lhs.false.i237:                               ; preds = %mlx5e_attach_encap_route.exit.thread
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 15
  %156 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %157, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i237.do.body1.i.i_crit_edge, label %if.end.i

lor.lhs.false.i237.do.body1.i.i_crit_edge:        ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i

if.end.i:                                         ; preds = %lor.lhs.false.i237
  call void @__sanitizer_cov_trace_pc() #17
  %158 = ptrtoint ptr %route_dev_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %route_dev_ifindex.i, align 4
  %call4.i = call i32 @mlx5e_set_fwd_to_int_port_actions(ptr noundef %priv, ptr noundef %5, i32 noundef %159, i32 noundef 1, ptr noundef %5, i32 noundef %out_index) #15
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %if.end.i, %lor.lhs.false.i237.do.body1.i.i_crit_edge
  %err.0.ph.i = phi i32 [ 0, %lor.lhs.false.i237.do.body1.i.i_crit_edge ], [ %call4.i, %if.end.i ]
  %160 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !137
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 118
  %161 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  %164 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i = and i32 %164, -16384
  %165 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i238 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %167
  %168 = ptrtoint ptr %arrayidx.i.i238 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i.i238, align 4
  %add.i.i = add i32 %169, %163
  %170 = inttoptr i32 %add.i.i to ptr
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %170, align 4
  %add13.i.i = add i32 %172, -1
  store i32 %add13.i.i, ptr %170, align 4
  %173 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !138
  %and.i.i.i.i239 = and i32 %173, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i239)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i239, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.mlx5e_set_int_port_tunnel.exit_crit_edge, !prof !122

do.body1.i.i.mlx5e_set_int_port_tunnel.exit_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_set_int_port_tunnel.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %mlx5e_set_int_port_tunnel.exit

mlx5e_set_int_port_tunnel.exit:                   ; preds = %if.then28.i.i, %do.body1.i.i.mlx5e_set_int_port_tunnel.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %160) #15, !srcloc !139
  %174 = zext i32 %err.0.ph.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %err.0.ph.i, label %mlx5e_set_int_port_tunnel.exit.out_err_crit_edge [
    i32 -95, label %do.body76
    i32 0, label %mlx5e_set_int_port_tunnel.exit.if.end91_crit_edge
  ]

mlx5e_set_int_port_tunnel.exit.if.end91_crit_edge: ; preds = %mlx5e_set_int_port_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end91

mlx5e_set_int_port_tunnel.exit.out_err_crit_edge: ; preds = %mlx5e_set_int_port_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_err

do.body76:                                        ; preds = %mlx5e_set_int_port_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_attach_encap.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_attach_encap, %if.then81)) #15
          to label %if.end91 [label %if.then81], !srcloc !129

if.then81:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #17
  %175 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mdev, align 64
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 8
  %179 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i240 = and i32 %179, -16384
  %180 = inttoptr i32 %and.i240 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %182, i32 0, i32 68
  %183 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_attach_encap.__UNIQUE_ID_ddebug705, ptr noundef %178, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef 850, i32 noundef %184) #15
  br label %if.end91

if.end91:                                         ; preds = %if.then81, %do.body76, %mlx5e_set_int_port_tunnel.exit.if.end91_crit_edge, %mlx5e_attach_encap_route.exit.thread.if.end91_crit_edge
  %arrayidx92 = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index
  %185 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %e.0, ptr %arrayidx92, align 4
  %list = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index, i32 1
  %flows96 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.0, i32 0, i32 3
  %186 = ptrtoint ptr %flows96 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %flows96, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %flows96, ptr noundef %187) #15
  br i1 %call.i.i, label %if.end.i.i241, label %if.end91.list_add.exit_crit_edge

if.end91.list_add.exit_crit_edge:                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i241:                                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %list, ptr %prev1.i.i, align 4
  %189 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %187, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index, i32 1, i32 1
  %190 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %flows96, ptr %prev3.i.i, align 4
  %191 = ptrtoint ptr %flows96 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile ptr %list, ptr %flows96, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i241, %if.end91.list_add.exit_crit_edge
  %index = getelementptr %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 10, i32 %out_index, i32 2
  %192 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %out_index, ptr %index, align 4
  %193 = ptrtoint ptr %out_dev.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %out_dev.i, align 4
  %195 = ptrtoint ptr %encap_dev to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %194, ptr %encap_dev, align 4
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.0, i32 0, i32 13
  %196 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %flags, align 4
  %198 = and i8 %197, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool100.not = icmp eq i8 %198, 0
  br i1 %tobool100.not, label %list_add.exit.if.end109_crit_edge, label %if.then101

list_add.exit.if.end109_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

if.then101:                                       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.0, i32 0, i32 5
  %199 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %pkt_reformat, align 4
  %dests = getelementptr inbounds %struct.mlx5_flow_attr, ptr %5, i32 1, i32 7
  %arrayidx102 = getelementptr [32 x %struct.anon.236], ptr %dests, i32 0, i32 %out_index
  %pkt_reformat103 = getelementptr [32 x %struct.anon.236], ptr %dests, i32 0, i32 %out_index, i32 2
  %201 = ptrtoint ptr %pkt_reformat103 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %200, ptr %pkt_reformat103, align 4
  %202 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx102, align 4
  %or = or i32 %203, 2
  store i32 %or, ptr %arrayidx102, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %list_add.exit.if.end109_crit_edge
  %storemerge = phi i8 [ 1, %if.then101 ], [ 0, %list_add.exit.if.end109_crit_edge ]
  %204 = ptrtoint ptr %encap_valid to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %storemerge, ptr %encap_valid, align 1
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  br label %cleanup

out_err:                                          ; preds = %mlx5e_set_int_port_tunnel.exit.out_err_crit_edge, %mlx5e_attach_encap_route.exit, %mlx5e_attach_encap_route.exit.thread258, %if.end19.out_err_crit_edge, %if.end4.i.out_err_crit_edge
  %e.1 = phi ptr [ %e.0, %mlx5e_attach_encap_route.exit ], [ %e.053.i, %if.end19.out_err_crit_edge ], [ %e.0, %mlx5e_set_int_port_tunnel.exit.out_err_crit_edge ], [ %e.053.i, %if.end4.i.out_err_crit_edge ], [ %e.0, %mlx5e_attach_encap_route.exit.thread258 ]
  %err.2 = phi i32 [ %155, %mlx5e_attach_encap_route.exit ], [ -121, %if.end19.out_err_crit_edge ], [ %err.0.ph.i, %mlx5e_set_int_port_tunnel.exit.out_err_crit_edge ], [ -95, %if.end4.i.out_err_crit_edge ], [ %retval.0.i233.ph, %mlx5e_attach_encap_route.exit.thread258 ]
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  %tobool114.not = icmp eq ptr %e.1, null
  br i1 %tobool114.not, label %out_err.cleanup_crit_edge, label %out_err.if.then115_crit_edge

out_err.if.then115_crit_edge:                     ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then115

out_err.cleanup_crit_edge:                        ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then115:                                       ; preds = %out_err.if.then115_crit_edge, %out_err.thread267
  %err.2272 = phi i32 [ %err.0, %out_err.thread267 ], [ %err.2, %out_err.if.then115_crit_edge ]
  %e.1271 = phi ptr [ %call7.i.i, %out_err.thread267 ], [ %e.1, %out_err.if.then115_crit_edge ]
  %205 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %mdev, align 64
  %eswitch.i243 = getelementptr inbounds %struct.mlx5_core_dev, ptr %206, i32 0, i32 17, i32 28
  %207 = ptrtoint ptr %eswitch.i243 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %eswitch.i243, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.1271, i32 0, i32 16
  %encap_tbl_lock.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %208, i32 0, i32 15, i32 9
  %call.i244 = call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt.i, ptr noundef %encap_tbl_lock.i) #15
  br i1 %call.i244, label %if.end.i247, label %if.then115.cleanup_crit_edge

if.then115.cleanup_crit_edge:                     ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i247:                                      ; preds = %if.then115
  %route_list.i245 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.1271, i32 0, i32 4
  %call.i.i.i246 = call zeroext i1 @__list_del_entry_valid(ptr noundef %route_list.i245) #15
  br i1 %call.i.i.i246, label %if.end.i.i.i248, label %if.end.i247.list_del.exit.i_crit_edge

if.end.i247.list_del.exit.i_crit_edge:            ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i248:                                  ; preds = %if.end.i247
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.1271, i32 0, i32 4, i32 1
  %209 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %prev.i.i.i, align 4
  %211 = ptrtoint ptr %route_list.i245 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %route_list.i245, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %210, ptr %prev1.i.i.i.i, align 4
  %214 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile ptr %212, ptr %210, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i248, %if.end.i247.list_del.exit.i_crit_edge
  %215 = ptrtoint ptr %route_list.i245 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr inttoptr (i32 256 to ptr), ptr %route_list.i245, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.1271, i32 0, i32 4, i32 1
  %216 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.1271, i32 0, i32 2, i32 1
  %217 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %218, null
  br i1 %tobool.not.i.not.i.i.i, label %list_del.exit.i.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

list_del.exit.i.hash_del_rcu.exit.i_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %list_del.exit.i
  %encap_hlist.i249 = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e.1271, i32 0, i32 2
  %219 = ptrtoint ptr %encap_hlist.i249 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %encap_hlist.i249, align 4
  %221 = ptrtoint ptr %218 to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %220, ptr %218, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %220, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %220, i32 0, i32 1
  %222 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %218, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %223 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %list_del.exit.i.hash_del_rcu.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %encap_tbl_lock.i) #15
  call fastcc void @mlx5e_encap_dealloc(ptr noundef %priv, ptr noundef nonnull %e.1271) #15
  br label %cleanup

out_err_init:                                     ; preds = %if.end35.out_err_init_crit_edge, %if.end30.out_err_init_crit_edge
  %err.3 = phi i32 [ %call38, %if.end35.out_err_init_crit_edge ], [ -12, %if.end30.out_err_init_crit_edge ]
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  call void @kfree(ptr noundef %call.i221) #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_err_init, %hash_del_rcu.exit.i, %if.then115.cleanup_crit_edge, %out_err.cleanup_crit_edge, %if.end109, %out_err.thread, %if.then11, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end109 ], [ %err.3, %out_err_init ], [ -95, %if.then11 ], [ -95, %do.body.cleanup_crit_edge ], [ %err.2, %out_err.cleanup_crit_edge ], [ -12, %out_err.thread ], [ %err.2272, %if.then115.cleanup_crit_edge ], [ %err.2272, %hash_del_rcu.exit.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_get_tc_tun(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_init_encap_attr(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_create_header_ipv4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_create_header_ipv6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_attach_decap(ptr nocapture noundef readonly %priv, ptr noundef %flow, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  %r_key.i = alloca %struct.mlx5e_decap_key, align 1
  %reformat_params = alloca %struct.mlx5_pkt_reformat_params, align 4
  %key = alloca %struct.mlx5e_decap_key, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %attr2 = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 25
  %4 = ptrtoint ptr %attr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reformat_params) #15
  %6 = call ptr @memset(ptr %reformat_params, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %key) #15
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 9
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  %and = and i32 %10, 1022
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and)
  %cmp = icmp ult i32 %and, 14
  br i1 %cmp, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_attach_decap.__msg) #15
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then7

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mlx5e_attach_decap.__msg, ptr %extack, align 4
  br label %cleanup

if.end8:                                          ; preds = %entry
  %parse_attr4 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %parse_attr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parse_attr4, align 4
  %eth = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %13, i32 0, i32 6
  %14 = call ptr @memcpy(ptr %key, ptr %eth, i32 14)
  %call.i = call fastcc i32 @jhash(ptr noundef nonnull %key, i32 noundef 14, i32 noundef 0) #15
  %decap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 15, i32 11
  tail call void @mutex_lock_nested(ptr noundef %decap_tbl_lock, i32 noundef 0) #15
  %15 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %16, i32 0, i32 17, i32 28
  %17 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eswitch.i, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %r_key.i) #15
  %call.i101 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not.i = icmp eq i32 %call.i101, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end8.do.end.i_crit_edge

if.end8.do.end.i_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end8
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b46.i = load i1, ptr @mlx5e_decap_get.__warned, align 1
  br i1 %.b46.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @mlx5e_decap_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 604, ptr noundef nonnull @.str.20) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end8.do.end.i_crit_edge
  %mul.i.i.i = mul i32 %call.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.mlx5_eswitch, ptr %18, i32 0, i32 15, i32 12, i32 %shr.i.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool12.not.i = icmp eq ptr %20, null
  %add.ptr.i = getelementptr i8, ptr %20, i32 -24
  %tobool14.not5054.i = icmp eq ptr %add.ptr.i, null
  %tobool14.not50.i = or i1 %tobool12.not.i, %tobool14.not5054.i
  br i1 %tobool14.not50.i, label %do.end.i.mlx5e_decap_get.exit.thread_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.mlx5e_decap_get.exit.thread_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_decap_get.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %e.051.i = phi ptr [ %add.ptr33.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %21 = call ptr @memcpy(ptr %r_key.i, ptr %e.051.i, i32 14)
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(14) %r_key.i, ptr noundef nonnull dereferenceable(14) %key, i32 14) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool17.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %for.body.i
  %refcnt.i.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %e.051.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #15
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i, i32 noundef 4) #15
  %22 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true18.i
  %24 = phi i32 [ %23, %land.lhs.true18.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %24, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #15
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #15
  %26 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %28 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 %27, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcnt.i.i) #15, !srcloc !134
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %27
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %30, 1
  %31 = or i32 %add5.i.i.i.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %.not.i.i.i.i.i = icmp sgt i32 %31, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.mlx5e_decap_take.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !127

if.end4.i.i.i.i.i.mlx5e_decap_take.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_decap_take.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 0) #15
  %32 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %mlx5e_decap_take.exit.i

mlx5e_decap_take.exit.i:                          ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.mlx5e_decap_take.exit.i_crit_edge
  %33 = phi i32 [ %30, %if.end4.i.i.i.i.i.mlx5e_decap_take.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #15
  br i1 %tobool12.i.i.i.i.not.i, label %mlx5e_decap_take.exit.i.for.inc.i_crit_edge, label %mlx5e_decap_get.exit

mlx5e_decap_take.exit.i.for.inc.i_crit_edge:      ; preds = %mlx5e_decap_take.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %mlx5e_decap_take.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %hlist.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %e.051.i, i32 0, i32 2
  %34 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %hlist.i, align 4
  %tobool29.not.i = icmp eq ptr %35, null
  %add.ptr33.i = getelementptr i8, ptr %35, i32 -24
  %tobool14.not55.i = icmp eq ptr %add.ptr33.i, null
  %tobool14.not.i = or i1 %tobool29.not.i, %tobool14.not55.i
  br i1 %tobool14.not.i, label %for.inc.i.mlx5e_decap_get.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.mlx5e_decap_get.exit.thread_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_decap_get.exit.thread

mlx5e_decap_get.exit.thread:                      ; preds = %for.inc.i.mlx5e_decap_get.exit.thread_crit_edge, %do.end.i.mlx5e_decap_get.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %r_key.i) #15
  br label %if.end20

mlx5e_decap_get.exit:                             ; preds = %mlx5e_decap_take.exit.i
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %r_key.i) #15
  %tobool11.not = icmp eq ptr %e.051.i, null
  br i1 %tobool11.not, label %mlx5e_decap_get.exit.if.end20_crit_edge, label %if.then12

mlx5e_decap_get.exit.if.end20_crit_edge:          ; preds = %mlx5e_decap_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then12:                                        ; preds = %mlx5e_decap_get.exit
  call void @mutex_unlock(ptr noundef %decap_tbl_lock) #15
  %res_ready = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %e.051.i, i32 0, i32 4
  call void @wait_for_completion(ptr noundef %res_ready) #15
  call void @mutex_lock_nested(ptr noundef %decap_tbl_lock, i32 noundef 0) #15
  %compl_result = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %e.051.i, i32 0, i32 5
  %36 = ptrtoint ptr %compl_result to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %compl_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool17.not = icmp eq i32 %37, 0
  br i1 %tobool17.not, label %if.then12.found_crit_edge, label %if.then12.out_free_crit_edge

if.then12.out_free_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.then12.found_crit_edge:                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %found

if.end20:                                         ; preds = %mlx5e_decap_get.exit.if.end20_crit_edge, %mlx5e_decap_get.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 108) #21
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  call void @mutex_unlock(ptr noundef %decap_tbl_lock) #15
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %39 = call ptr @memcpy(ptr %call7.i.i, ptr %key, i32 14)
  %refcnt = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  %40 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 1, ptr %refcnt, align 8
  %res_ready26 = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %res_ready26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %res_ready26, align 4
  %wait.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #15
  %flows = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %flows to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %flows, ptr %flows, align 8
  %prev.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %flows, ptr %prev.i, align 4
  %hlist = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 2
  %arrayidx29 = getelementptr %struct.mlx5_eswitch, ptr %3, i32 0, i32 15, i32 12, i32 %shr.i.i
  %44 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx29, align 4
  %46 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %hlist, align 8
  %pprev.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %arrayidx29, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !135
  %48 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %hlist, ptr %arrayidx29, align 4
  %tobool.not.i102 = icmp eq ptr %45, null
  br i1 %tobool.not.i102, label %if.end24.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end24.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %45, i32 0, i32 1
  %49 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %hlist, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end24.hlist_add_head_rcu.exit_crit_edge
  call void @mutex_unlock(ptr noundef %decap_tbl_lock) #15
  %50 = getelementptr inbounds i8, ptr %reformat_params, i32 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %50, align 4
  %52 = ptrtoint ptr %reformat_params to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %reformat_params, align 4
  %size = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 3
  %53 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 14, ptr %size, align 4
  %data = getelementptr inbounds %struct.mlx5_pkt_reformat_params, ptr %reformat_params, i32 0, i32 4
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %eth, ptr %data, align 4
  %55 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdev, align 64
  %call34 = call ptr @mlx5_packet_reformat_alloc(ptr noundef %56, ptr noundef nonnull %reformat_params, i32 noundef 8) #15
  %pkt_reformat = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call34, ptr %pkt_reformat, align 8
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %hlist_add_head_rcu.exit.if.end41_crit_edge

hlist_add_head_rcu.exit.if.end41_crit_edge:       ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end41

if.then37:                                        ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %call34 to i32
  %compl_result40 = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %call7.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %compl_result40 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %compl_result40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %hlist_add_head_rcu.exit.if.end41_crit_edge
  %err.0 = phi i32 [ %58, %if.then37 ], [ 0, %hlist_add_head_rcu.exit.if.end41_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %decap_tbl_lock, i32 noundef 0) #15
  call void @complete_all(ptr noundef %res_ready26) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool45.not = icmp eq i32 %err.0, 0
  br i1 %tobool45.not, label %if.end41.found_crit_edge, label %if.end41.out_free_crit_edge

if.end41.out_free_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free

if.end41.found_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #17
  br label %found

found:                                            ; preds = %if.end41.found_crit_edge, %if.then12.found_crit_edge
  %d.0 = phi ptr [ %e.051.i, %if.then12.found_crit_edge ], [ %call7.i.i, %if.end41.found_crit_edge ]
  %decap_reformat = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 6
  %60 = ptrtoint ptr %decap_reformat to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %d.0, ptr %decap_reformat, align 4
  %pkt_reformat48 = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.0, i32 0, i32 6
  %61 = ptrtoint ptr %pkt_reformat48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pkt_reformat48, align 4
  %decap_pkt_reformat = getelementptr inbounds %struct.mlx5_flow_attr, ptr %5, i32 13, i32 8
  %63 = ptrtoint ptr %decap_pkt_reformat to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %decap_pkt_reformat, align 4
  %l3_to_l2_reformat = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 5
  %flows49 = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.0, i32 0, i32 1
  %64 = ptrtoint ptr %flows49 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %flows49, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %l3_to_l2_reformat, ptr noundef %flows49, ptr noundef %65) #15
  br i1 %call.i.i, label %if.end.i.i, label %found.list_add.exit_crit_edge

found.list_add.exit_crit_edge:                    ; preds = %found
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add.exit

if.end.i.i:                                       ; preds = %found
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %l3_to_l2_reformat, ptr %prev1.i.i, align 4
  %67 = ptrtoint ptr %l3_to_l2_reformat to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %l3_to_l2_reformat, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %flows49, ptr %prev3.i.i, align 4
  %69 = ptrtoint ptr %flows49 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %l3_to_l2_reformat, ptr %flows49, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %found.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %decap_tbl_lock) #15
  br label %cleanup

out_free:                                         ; preds = %if.end41.out_free_crit_edge, %if.then12.out_free_crit_edge
  %d.1 = phi ptr [ %call7.i.i, %if.end41.out_free_crit_edge ], [ %e.051.i, %if.then12.out_free_crit_edge ]
  %err.1 = phi i32 [ %err.0, %if.end41.out_free_crit_edge ], [ -121, %if.then12.out_free_crit_edge ]
  call void @mutex_unlock(ptr noundef %decap_tbl_lock) #15
  %70 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdev, align 64
  %eswitch.i104 = getelementptr inbounds %struct.mlx5_core_dev, ptr %71, i32 0, i32 17, i32 28
  %72 = ptrtoint ptr %eswitch.i104 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %eswitch.i104, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.1, i32 0, i32 3
  %decap_tbl_lock.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %73, i32 0, i32 15, i32 11
  %call.i105 = call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt.i, ptr noundef %decap_tbl_lock.i) #15
  br i1 %call.i105, label %if.end.i, label %out_free.cleanup_crit_edge

out_free.cleanup_crit_edge:                       ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %out_free
  %pprev.i.i.i.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.1, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end.i.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.hash_del_rcu.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %hlist.i106 = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.1, i32 0, i32 2
  %76 = ptrtoint ptr %hlist.i106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hlist.i106, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %77, ptr %75, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %77, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %77, i32 0, i32 1
  %79 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %75, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %80 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %if.end.i.hash_del_rcu.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %decap_tbl_lock.i) #15
  %flows.i.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.1, i32 0, i32 1
  %81 = ptrtoint ptr %flows.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %flows.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %82, %flows.i.i
  br i1 %cmp.i.not.i.i, label %hash_del_rcu.exit.i.if.end.i.i107_crit_edge, label %do.end.i.i, !prof !127

hash_del_rcu.exit.i.if.end.i.i107_crit_edge:      ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i107

do.end.i.i:                                       ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 453, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i.i107

if.end.i.i107:                                    ; preds = %do.end.i.i, %hash_del_rcu.exit.i.if.end.i.i107_crit_edge
  %compl_result.i.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.1, i32 0, i32 5
  %83 = ptrtoint ptr %compl_result.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %compl_result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool21.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %if.end.i.i107.do.end29.i.i_crit_edge

if.end.i.i107.do.end29.i.i_crit_edge:             ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end29.i.i

if.then22.i.i:                                    ; preds = %if.end.i.i107
  call void @__sanitizer_cov_trace_pc() #17
  %85 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdev, align 64
  %pkt_reformat.i.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.1, i32 0, i32 6
  %87 = ptrtoint ptr %pkt_reformat.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pkt_reformat.i.i, align 4
  call void @mlx5_packet_reformat_dealloc(ptr noundef %86, ptr noundef %88) #15
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %if.then22.i.i, %if.end.i.i107.do.end29.i.i_crit_edge
  %rcu.i.i = getelementptr inbounds %struct.mlx5e_decap_entry, ptr %d.1, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 100 to ptr)) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end29.i.i, %out_free.cleanup_crit_edge, %list_add.exit, %if.then23, %if.then7, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ -12, %if.then23 ], [ -95, %if.then7 ], [ -95, %do.body.cleanup_crit_edge ], [ %err.1, %out_free.cleanup_crit_edge ], [ %err.1, %do.end29.i.i ]
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %key) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reformat_params) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_attach_decap_route(ptr noundef %priv, ptr noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  %tbl_time_after = alloca i32, align 4
  %key = alloca %struct.mlx5e_route_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tbl_time_after) #15
  %attr2 = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 25
  %4 = ptrtoint ptr %attr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attr2, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key) #15
  %6 = getelementptr inbounds %struct.mlx5e_route_key, ptr %key, i32 0, i32 1
  %parse_attr3 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %5, i32 0, i32 5
  %7 = getelementptr inbounds i8, ptr %key, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %9 = ptrtoint ptr %parse_attr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parse_attr3, align 4
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %3, i32 0, i32 15, i32 9
  tail call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  %rx_tun_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %5, i32 13, i32 7
  %11 = ptrtoint ptr %rx_tun_attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_tun_attr, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %14, i32 0, i32 17, i32 28
  %15 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eswitch.i, align 4
  %call.i = tail call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %16, i8 noundef zeroext 0) #15
  %encap3.i = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call.i, i32 0, i32 6, i32 12
  %17 = ptrtoint ptr %encap3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %encap3.i, align 4
  %route_lock.i = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %18, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %route_lock.i) #15
  %route_tbl_last_update.i = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %route_tbl_last_update.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %route_tbl_last_update.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %route_lock.i) #15
  %21 = ptrtoint ptr %tbl_time_after to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %tbl_time_after, align 4
  %spec = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %10, i32 0, i32 3
  %filter_dev = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %10, i32 0, i32 2
  %22 = ptrtoint ptr %filter_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %filter_dev, align 4
  %call4 = tail call i32 @mlx5e_tc_tun_route_lookup(ptr noundef %priv, ptr noundef %spec, ptr noundef %5, ptr noundef %23) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %24 = ptrtoint ptr %rx_tun_attr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_tun_attr, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool7.not = icmp eq i16 %27, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  %tun_ip_version = getelementptr inbounds %struct.mlx5_flow_attr, ptr %5, i32 0, i32 14
  %28 = ptrtoint ptr %tun_ip_version to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tun_ip_version, align 1
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp = icmp eq i8 %29, 4
  %dst_ip = getelementptr inbounds %struct.mlx5_rx_tun_attr, ptr %25, i32 0, i32 2
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %dst_ip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dst_ip, align 4
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %6, align 4
  br label %if.end17

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %34 = call ptr @memcpy(ptr %6, ptr %dst_ip, i32 16)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %35 = ptrtoint ptr %filter_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %filter_dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 17
  %37 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ifindex, align 4
  %call19 = call fastcc ptr @mlx5e_route_get_create(ptr noundef %priv, ptr noundef nonnull %key, i32 noundef %38, ptr noundef nonnull %tbl_time_after)
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %39 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %40 = ptrtoint ptr %tbl_time_after to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tbl_time_after, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %41)
  %cmp24.not = icmp eq i32 %20, %41
  br i1 %cmp24.not, label %if.end23.if.end31_crit_edge, label %if.then26

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then26:                                        ; preds = %if.end23
  %call27 = tail call fastcc i32 @mlx5e_route_enqueue_update(ptr noundef %priv, ptr noundef %call19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.if.end31_crit_edge, label %if.then29

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mlx5e_route_put_locked(ptr noundef %priv, ptr noundef %call19)
  br label %cleanup

if.end31:                                         ; preds = %if.then26.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %decap_route = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 8
  %42 = ptrtoint ptr %decap_route to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call19, ptr %decap_route, align 8
  %decap_routes = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 7
  %decap_flows = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call19, i32 0, i32 2
  %43 = ptrtoint ptr %decap_flows to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %decap_flows, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %decap_routes, ptr noundef %decap_flows, ptr noundef %44) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %decap_routes, ptr %prev1.i.i, align 4
  %46 = ptrtoint ptr %decap_routes to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %decap_routes, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %decap_flows, ptr %prev3.i.i, align 4
  %48 = ptrtoint ptr %decap_flows to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %decap_routes, ptr %decap_flows, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end31.cleanup_crit_edge, %if.then29, %if.then21, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ %call4, %if.end.cleanup_crit_edge ], [ %39, %if.then21 ], [ %call27, %if.then29 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tbl_time_after) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_route_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_route_get_create(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %key, i32 noundef %tunnel_dev_index, ptr nocapture noundef writeonly %route_tbl_change_time) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %call = tail call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %3, i8 noundef zeroext 0) #15
  %encap3 = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call, i32 0, i32 6, i32 12
  %4 = ptrtoint ptr %encap3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encap3, align 4
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i = icmp eq i32 %7, 4
  %endpoint_ip.i = getelementptr inbounds %struct.mlx5e_route_key, ptr %key, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx67.i.i = getelementptr i8, ptr %endpoint_ip.i, i32 3
  %8 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %9 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038733
  %arrayidx72.i.i = getelementptr i8, ptr %endpoint_ip.i, i32 2
  %10 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %11 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %endpoint_ip.i, i32 1
  %12 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %13 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %14 = ptrtoint ptr %endpoint_ip.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %endpoint_ip.i, align 1
  %conv83.i.i = zext i8 %15 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor88.i.i = xor i32 %add84.i.i, -1874655147
  %sub90.i.i = add i32 %xor88.i.i, -407022722
  %xor91.i.i = xor i32 %sub90.i.i, -559038733
  %or.i208.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #15
  %sub93.i.i = sub i32 %xor91.i.i, %or.i208.i.i
  %xor94.i.i = xor i32 %sub93.i.i, -1874655147
  %or.i209.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #15
  %sub96.i.i = sub i32 %xor94.i.i, %or.i209.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i210.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #15
  %sub99.i.i = sub i32 %xor97.i.i, %or.i210.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i211.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #15
  %sub102.i.i = sub i32 %xor100.i.i, %or.i211.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i212.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #15
  %sub105.i.i = sub i32 %xor103.i.i, %or.i212.i.i
  br label %hash_route_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = tail call fastcc i32 @jhash(ptr noundef %endpoint_ip.i, i32 noundef 16, i32 noundef 0) #15
  br label %hash_route_info.exit

hash_route_info.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub105.i.i, %if.then.i ], [ %call2.i, %if.end.i ]
  %route_lock = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %route_lock) #15
  %call5 = tail call fastcc ptr @mlx5e_route_get(ptr noundef %5, ptr noundef %key, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_bh(ptr noundef %route_lock) #15
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end10, label %if.then

if.then:                                          ; preds = %hash_route_info.exit
  %flags.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call5, i32 0, i32 3
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then8, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @mlx5e_route_put_locked(ptr noundef %priv, ptr noundef nonnull %call5)
  br label %cleanup

if.end10:                                         ; preds = %hash_route_info.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 64) #21
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %19 = call ptr @memcpy(ptr %call7.i.i, ptr %key, i32 20)
  %flags = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 1
  store i32 %or, ptr %flags, align 4
  %tunnel_dev_index17 = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %tunnel_dev_index17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %tunnel_dev_index, ptr %tunnel_dev_index17, align 4
  %refcnt = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  %23 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 1, ptr %refcnt, align 8
  %decap_flows = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %decap_flows to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %decap_flows, ptr %decap_flows, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %decap_flows, ptr %prev.i, align 8
  %encap_entries = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %encap_entries to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %encap_entries, ptr %encap_entries, align 4
  %prev.i48 = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %encap_entries, ptr %prev.i48, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef %route_lock) #15
  %route_tbl_last_update = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %route_tbl_last_update to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %route_tbl_last_update, align 4
  %30 = ptrtoint ptr %route_tbl_change_time to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %route_tbl_change_time, align 4
  %hlist = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 4
  %mul.i.i = mul i32 %retval.0.i, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx = getelementptr %struct.mlx5e_tc_tun_encap, ptr %5, i32 0, i32 4, i32 %shr.i
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %hlist, align 8
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end15.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end15.hlist_add_head.exit_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %hlist, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end15.hlist_add_head.exit_crit_edge
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %hlist, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %call7.i.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %route_lock) #15
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %if.end10.cleanup_crit_edge, %if.then8, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then8 ], [ %call7.i.i, %hlist_add_head.exit ], [ %call5, %if.then.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_route_enqueue_update(ptr nocapture noundef readonly %priv, ptr noundef %r) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 28
  %2 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eswitch, align 4
  %call = tail call ptr @mlx5_eswitch_get_uplink_priv(ptr noundef %3, i8 noundef zeroext 0) #15
  %netdev = getelementptr inbounds %struct.mlx5e_rep_priv, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 56) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %mlx5e_tc_init_fib_work.exit.thread, label %if.end, !prof !122

mlx5e_tc_init_fib_work.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1110, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #15
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @mlx5e_tc_init_fib_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry28.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry28.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry28.i, ptr %entry28.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry28.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mlx5e_tc_fib_event_work, ptr %func.i, align 4
  %event32.i = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %event32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %event32.i, align 4
  %ul_dev33.i = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %ul_dev33.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %5, ptr %ul_dev33.i, align 4
  %tobool.not.i1 = icmp eq ptr %5, null
  br i1 %tobool.not.i1, label %if.end.dev_hold.exit_crit_edge, label %do.body1.i

if.end.dev_hold.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !137
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %14 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcpu_refcnt.i, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %22, %16
  %23 = inttoptr i32 %add.i to ptr
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %add13.i = add i32 %25, 1
  store i32 %add13.i, ptr %23, align 4
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !138
  %and.i.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !122

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %13) #15, !srcloc !139
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end.dev_hold.exit_crit_edge
  %refcnt = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !140
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %dev_hold.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !122

dev_hold.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %dev_hold.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !127

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %dev_hold.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %dev_hold.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %r3 = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %r, ptr %r3, align 8
  %wq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 14
  %30 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq, align 16
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef nonnull %call7.i.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc.exit, %mlx5e_tc_init_fib_work.exit.thread
  %retval.0 = phi i32 [ 0, %refcount_inc.exit ], [ -12, %mlx5e_tc_init_fib_work.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_route_put_locked(ptr nocapture noundef readonly %priv, ptr noundef %r) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.rhs:                                         ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 17, i32 28
  %3 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eswitch, align 4
  %dep_map = getelementptr inbounds %struct.mlx5_eswitch, ptr %4, i32 0, i32 15, i32 9, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !122

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1010, i32 noundef 9, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %refcnt = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end27, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !127

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %cleanup

if.end27:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  %pprev.i.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.i.i, label %if.end27.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.end27.hash_del_rcu.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.end27
  %hlist = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r, i32 0, i32 4
  %8 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hlist, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %7, align 4
  %tobool.not.i7.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.end27.hash_del_rcu.exit_crit_edge
  %decap_flows.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r, i32 0, i32 2
  %13 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %decap_flows.i, align 4
  %cmp.i.not.i = icmp eq ptr %14, %decap_flows.i
  br i1 %cmp.i.not.i, label %hash_del_rcu.exit.if.end.i_crit_edge, label %do.end.i, !prof !127

hash_del_rcu.exit.if.end.i_crit_edge:             ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 987, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %hash_del_rcu.exit.if.end.i_crit_edge
  %encap_entries.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r, i32 0, i32 1
  %15 = ptrtoint ptr %encap_entries.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %encap_entries.i, align 4
  %cmp.i1.not.i = icmp eq ptr %16, %encap_entries.i
  br i1 %cmp.i1.not.i, label %if.end.i.if.end47.i_crit_edge, label %do.end41.i, !prof !127

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 988, i32 noundef 9, ptr noundef null) #15
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end41.i, %if.end.i.if.end47.i_crit_edge
  %tobool56.not.i = icmp eq ptr %r, null
  br i1 %tobool56.not.i, label %if.end47.i.cleanup_crit_edge, label %do.end60.i

if.end47.i.cleanup_crit_edge:                     ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end60.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #17
  %rcu.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 56 to ptr)) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end60.i, %if.end47.i.cleanup_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_detach_decap_route(ptr nocapture noundef readonly %priv, ptr noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %decap_route = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 8
  %0 = ptrtoint ptr %decap_route to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %decap_route, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 17, i32 28
  %4 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eswitch, align 4
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %5, i32 0, i32 15, i32 9
  tail call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  %decap_routes = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %decap_routes) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %decap_routes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %decap_routes, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %decap_routes to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %decap_routes, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %decap_route to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %decap_route, align 8
  %refcnt = getelementptr inbounds %struct.mlx5e_route_entry, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !126
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end6, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then3_crit_edge, label %if.then10.i.i.i, !prof !127

if.end5.i.i.i.if.then3_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then3

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %if.then3

if.then3:                                         ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then3_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  br label %cleanup

if.end6:                                          ; preds = %list_del.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !128
  %pprev.i.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %1, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.not.i.i, label %if.end6.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.end6.hash_del_rcu.exit_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.end6
  %hlist = getelementptr inbounds %struct.mlx5e_route_entry, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hlist, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %17, align 4
  %tobool.not.i7.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %22 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.end6.hash_del_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  %decap_flows.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %decap_flows.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, %decap_flows.i
  br i1 %cmp.i.not.i, label %hash_del_rcu.exit.if.end.i_crit_edge, label %do.end.i, !prof !127

hash_del_rcu.exit.if.end.i_crit_edge:             ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end.i:                                         ; preds = %hash_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 987, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %hash_del_rcu.exit.if.end.i_crit_edge
  %encap_entries.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %encap_entries.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %encap_entries.i, align 4
  %cmp.i1.not.i = icmp eq ptr %26, %encap_entries.i
  br i1 %cmp.i1.not.i, label %if.end.i.mlx5e_route_dealloc.exit_crit_edge, label %do.end41.i, !prof !127

if.end.i.mlx5e_route_dealloc.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_route_dealloc.exit

do.end41.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 988, i32 noundef 9, ptr noundef null) #15
  br label %mlx5e_route_dealloc.exit

mlx5e_route_dealloc.exit:                         ; preds = %do.end41.i, %if.end.i.mlx5e_route_dealloc.exit_crit_edge
  %rcu.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %1, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 56 to ptr)) #15
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_route_dealloc.exit, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_tc_tun_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1088, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %call.i.i, align 4
  %fib_nb = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %call.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %fib_nb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @mlx5e_tc_tun_fib_event, ptr %fib_nb, align 4
  %route_lock = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %call.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %route_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlx5e_tc_tun_init.__key, i16 noundef signext 3) #15
  %route_tbl = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %call.i.i, i32 0, i32 4
  %2 = call ptr @memset(ptr %route_tbl, i32 0, i32 1024)
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %call6 = tail call i32 @register_fib_notifier(ptr noundef %6, ptr noundef %fib_nb, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kvfree(ptr noundef nonnull %call.i.i) #15
  %7 = inttoptr i32 %call6 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then8 ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tc_tun_fib_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %key.i47 = alloca %struct.mlx5e_route_key, align 4
  %key.i = alloca %struct.mlx5e_route_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge64
  ]

entry.sw.bb_crit_edge64:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge64
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %6, label %sw.bb.cleanup_crit_edge [
    i32 2, label %if.then
    i32 10, label %if.then5
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key.i) #15
  %8 = getelementptr inbounds %struct.mlx5e_route_key, ptr %key.i, i32 0, i32 1
  %fi.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %ptr, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %key.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 255, i32 12)
  %11 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fi.i, align 4
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %fib_info_nh.exit.i, label %if.then.mlx5e_init_fib_work_ipv4.exit_crit_edge

if.then.mlx5e_init_fib_work_ipv4.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_init_fib_work_ipv4.exit

fib_info_nh.exit.i:                               ; preds = %if.then
  %fib_nh.i.i = getelementptr inbounds %struct.fib_info, ptr %12, i32 0, i32 20
  %15 = ptrtoint ptr %fib_nh.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fib_nh.i.i, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  br i1 %tobool2.not.i, label %fib_info_nh.exit.i.mlx5e_init_fib_work_ipv4.exit_crit_edge, label %lor.lhs.false.i

fib_info_nh.exit.i.mlx5e_init_fib_work_ipv4.exit_crit_edge: ; preds = %fib_info_nh.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_init_fib_work_ipv4.exit

lor.lhs.false.i:                                  ; preds = %fib_info_nh.exit.i
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 16
  %17 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.not.i = icmp eq ptr %18, @mlx5e_netdev_ops
  br i1 %cmp.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.mlx5e_init_fib_work_ipv4.exit_crit_edge

lor.lhs.false.i.mlx5e_init_fib_work_ipv4.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_init_fib_work_ipv4.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %dst_len.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %ptr, i32 0, i32 2
  %19 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp4.not.i = icmp eq i32 %20, 32
  br i1 %cmp4.not.i, label %if.end6.i, label %lor.lhs.false3.i.mlx5e_init_fib_work_ipv4.exit_crit_edge

lor.lhs.false3.i.mlx5e_init_fib_work_ipv4.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_init_fib_work_ipv4.exit

if.end6.i:                                        ; preds = %lor.lhs.false3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 2848, i32 noundef 56) #21
  %tobool.not.i1.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i1.i, label %if.then9.i, label %if.end11.i, !prof !122

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1110, i32 noundef 9, ptr noundef null) #15
  br label %mlx5e_init_fib_work_ipv4.exit

if.end11.i:                                       ; preds = %if.end6.i
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 0) #15
  %22 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %call7.i.i.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @mlx5e_tc_init_fib_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry28.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %entry28.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry28.i.i, ptr %entry28.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry28.i.i, ptr %prev.i.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx5e_tc_fib_event_work, ptr %func.i.i, align 4
  %event32.i.i = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %event32.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %event, ptr %event32.i.i, align 4
  %ul_dev33.i.i = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %ul_dev33.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %3, ptr %ul_dev33.i.i, align 4
  %dst.i = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %ptr, i32 0, i32 1
  %28 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst.i, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %8, align 4
  %31 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %key.i, align 4
  %call12.i = call fastcc ptr @mlx5e_route_lookup_for_update(ptr noundef %add.ptr, ptr noundef nonnull %key.i) #15
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %out.i, label %if.end15.i

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  %r16.i = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %r16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call12.i, ptr %r16.i, align 8
  tail call fastcc void @dev_hold(ptr noundef %3) #15
  br label %mlx5e_init_fib_work_ipv4.exit

out.i:                                            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #15
  br label %mlx5e_init_fib_work_ipv4.exit

mlx5e_init_fib_work_ipv4.exit:                    ; preds = %out.i, %if.end15.i, %if.then9.i, %lor.lhs.false3.i.mlx5e_init_fib_work_ipv4.exit_crit_edge, %lor.lhs.false.i.mlx5e_init_fib_work_ipv4.exit_crit_edge, %fib_info_nh.exit.i.mlx5e_init_fib_work_ipv4.exit_crit_edge, %if.then.mlx5e_init_fib_work_ipv4.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i.i.i, %if.end15.i ], [ null, %out.i ], [ inttoptr (i32 -12 to ptr), %if.then9.i ], [ null, %if.then.mlx5e_init_fib_work_ipv4.exit_crit_edge ], [ null, %lor.lhs.false3.i.mlx5e_init_fib_work_ipv4.exit_crit_edge ], [ null, %lor.lhs.false.i.mlx5e_init_fib_work_ipv4.exit_crit_edge ], [ null, %fib_info_nh.exit.i.mlx5e_init_fib_work_ipv4.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key.i) #15
  br label %if.end8

if.then5:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key.i47) #15
  %33 = getelementptr inbounds %struct.mlx5e_route_key, ptr %key.i47, i32 0, i32 1
  %rt.i = getelementptr inbounds %struct.fib6_entry_notifier_info, ptr %ptr, i32 0, i32 1
  %34 = ptrtoint ptr %rt.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rt.i, align 4
  %nh.i.i = getelementptr inbounds %struct.fib6_info, ptr %35, i32 0, i32 20
  %36 = ptrtoint ptr %nh.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nh.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then5
  %is_group.i.i.i = getelementptr inbounds %struct.nexthop, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %is_group.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_group.i.i.i, align 2, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i.i.i, label %cond.true.i.i.if.end16.i.i.i_crit_edge, label %if.then.i.i.i

cond.true.i.i.if.end16.i.i.i_crit_edge:           ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i.i
  %40 = getelementptr inbounds %struct.nexthop, ptr %37, i32 0, i32 12
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %40, align 4
  %call.i.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call.i.i.i, label %if.then.i.i.i.do.end10.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then.i.i.i.do.end10.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call4.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, label %land.lhs.true6.i.i.i

land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10.i.i.i

land.lhs.true6.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b46.i.i.i = load i1, ptr @nexthop_fib6_nh.__warned, align 1
  br i1 %.b46.i.i.i, label %land.lhs.true6.i.i.i.do.end10.i.i.i_crit_edge, label %if.then8.i.i.i

land.lhs.true6.i.i.i.do.end10.i.i.i_crit_edge:    ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10.i.i.i

if.then8.i.i.i:                                   ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nexthop_fib6_nh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 487, ptr noundef nonnull @.str.18) #15
  br label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.then8.i.i.i, %land.lhs.true6.i.i.i.do.end10.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge, %if.then.i.i.i.do.end10.i.i.i_crit_edge
  %num_nh.i.i.i.i = getelementptr inbounds %struct.nh_group, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %num_nh.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %num_nh.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp.i.i.i.i = icmp eq i16 %44, 0
  br i1 %cmp.i.i.i.i, label %do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge, label %nexthop_mpath_select.exit.i.i.i

do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge: ; preds = %do.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fib6_info_nh_dev.exit.i

nexthop_mpath_select.exit.i.i.i:                  ; preds = %do.end10.i.i.i
  %nh_entries.i.i.i.i = getelementptr inbounds %struct.nh_group, ptr %42, i32 0, i32 8
  %45 = ptrtoint ptr %nh_entries.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nh_entries.i.i.i.i, align 4
  %tobool13.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool13.not.i.i.i, label %nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge, label %nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge

nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16.i.i.i

nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %fib6_info_nh_dev.exit.i

if.end16.i.i.i:                                   ; preds = %nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge, %cond.true.i.i.if.end16.i.i.i_crit_edge
  %nh.addr.0.i.i.i = phi ptr [ %46, %nexthop_mpath_select.exit.i.i.i.if.end16.i.i.i_crit_edge ], [ %37, %cond.true.i.i.if.end16.i.i.i_crit_edge ]
  %47 = getelementptr inbounds %struct.nexthop, ptr %nh.addr.0.i.i.i, i32 0, i32 12
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %47, align 4
  %call22.i.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call22.i.i.i, label %if.end16.i.i.i.do.end34.i.i.i_crit_edge, label %lor.lhs.false23.i.i.i

if.end16.i.i.i.do.end34.i.i.i_crit_edge:          ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34.i.i.i

lor.lhs.false23.i.i.i:                            ; preds = %if.end16.i.i.i
  %call24.i.i.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i)
  %tobool25.not.i.i.i = icmp eq i32 %call24.i.i.i, 0
  br i1 %tobool25.not.i.i.i, label %land.lhs.true26.i.i.i, label %lor.lhs.false23.i.i.i.do.end34.i.i.i_crit_edge

lor.lhs.false23.i.i.i.do.end34.i.i.i_crit_edge:   ; preds = %lor.lhs.false23.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34.i.i.i

land.lhs.true26.i.i.i:                            ; preds = %lor.lhs.false23.i.i.i
  %call27.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %land.lhs.true26.i.i.i.do.end34.i.i.i_crit_edge, label %land.lhs.true29.i.i.i

land.lhs.true26.i.i.i.do.end34.i.i.i_crit_edge:   ; preds = %land.lhs.true26.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34.i.i.i

land.lhs.true29.i.i.i:                            ; preds = %land.lhs.true26.i.i.i
  %.b4445.i.i.i = load i1, ptr @nexthop_fib6_nh.__warned.49, align 1
  br i1 %.b4445.i.i.i, label %land.lhs.true29.i.i.i.do.end34.i.i.i_crit_edge, label %if.then31.i.i.i

land.lhs.true29.i.i.i.do.end34.i.i.i_crit_edge:   ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end34.i.i.i

if.then31.i.i.i:                                  ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @nexthop_fib6_nh.__warned.49, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.48, i32 noundef 493, ptr noundef nonnull @.str.18) #15
  br label %do.end34.i.i.i

do.end34.i.i.i:                                   ; preds = %if.then31.i.i.i, %land.lhs.true29.i.i.i.do.end34.i.i.i_crit_edge, %land.lhs.true26.i.i.i.do.end34.i.i.i_crit_edge, %lor.lhs.false23.i.i.i.do.end34.i.i.i_crit_edge, %if.end16.i.i.i.do.end34.i.i.i_crit_edge
  %family.i.i.i = getelementptr inbounds %struct.nh_info, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %family.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %51)
  %cmp.i.i.i = icmp eq i8 %51, 10
  %52 = getelementptr inbounds %struct.nh_info, ptr %49, i32 0, i32 5
  %spec.select.i.i.i = select i1 %cmp.i.i.i, ptr %52, ptr null
  br label %fib6_info_nh_dev.exit.i

cond.false.i.i:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  %fib6_nh2.i.i = getelementptr inbounds %struct.fib6_info, ptr %35, i32 0, i32 21
  br label %fib6_info_nh_dev.exit.i

fib6_info_nh_dev.exit.i:                          ; preds = %cond.false.i.i, %do.end34.i.i.i, %nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge, %do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge
  %cond.i.i = phi ptr [ %fib6_nh2.i.i, %cond.false.i.i ], [ null, %nexthop_mpath_select.exit.i.i.i.fib6_info_nh_dev.exit.i_crit_edge ], [ %spec.select.i.i.i, %do.end34.i.i.i ], [ null, %do.end10.i.i.i.fib6_info_nh_dev.exit.i_crit_edge ]
  %53 = ptrtoint ptr %cond.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cond.i.i, align 4
  %netdev_ops.i48 = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %netdev_ops.i48 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev_ops.i48, align 8
  %cmp.not.i49 = icmp eq ptr %56, @mlx5e_netdev_ops
  br i1 %cmp.not.i49, label %lor.lhs.false.i50, label %fib6_info_nh_dev.exit.i.mlx5e_init_fib_work_ipv6.exit_crit_edge

fib6_info_nh_dev.exit.i.mlx5e_init_fib_work_ipv6.exit_crit_edge: ; preds = %fib6_info_nh_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_init_fib_work_ipv6.exit

lor.lhs.false.i50:                                ; preds = %fib6_info_nh_dev.exit.i
  %57 = ptrtoint ptr %rt.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rt.i, align 4
  %plen.i = getelementptr inbounds %struct.fib6_info, ptr %58, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %60)
  %cmp2.not.i = icmp eq i32 %60, 128
  br i1 %cmp2.not.i, label %if.end.i, label %lor.lhs.false.i50.mlx5e_init_fib_work_ipv6.exit_crit_edge

lor.lhs.false.i50.mlx5e_init_fib_work_ipv6.exit_crit_edge: ; preds = %lor.lhs.false.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_init_fib_work_ipv6.exit

if.end.i:                                         ; preds = %lor.lhs.false.i50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 2848, i32 noundef 56) #21
  %tobool.not.i1.i52 = icmp eq ptr %call7.i.i.i.i51, null
  br i1 %tobool.not.i1.i52, label %if.then4.i, label %if.end6.i59, !prof !122

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1110, i32 noundef 9, ptr noundef null) #15
  br label %mlx5e_init_fib_work_ipv6.exit

if.end6.i59:                                      ; preds = %if.end.i
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i.i51, i32 noundef 0) #15
  %62 = ptrtoint ptr %call7.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -64, ptr %call7.i.i.i.i51, align 8
  %lockdep_map.i.i53 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i51, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i53, ptr noundef nonnull @.str.23, ptr noundef nonnull @mlx5e_tc_init_fib_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry28.i.i54 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i51, i32 0, i32 1
  %63 = ptrtoint ptr %entry28.i.i54 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %entry28.i.i54, ptr %entry28.i.i54, align 4
  %prev.i.i.i55 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i51, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry28.i.i54, ptr %prev.i.i.i55, align 8
  %func.i.i56 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i51, i32 0, i32 2
  %65 = ptrtoint ptr %func.i.i56 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @mlx5e_tc_fib_event_work, ptr %func.i.i56, align 4
  %event32.i.i57 = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i.i51, i32 0, i32 1
  %66 = ptrtoint ptr %event32.i.i57 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %event, ptr %event32.i.i57, align 4
  %ul_dev33.i.i58 = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i.i51, i32 0, i32 3
  %67 = ptrtoint ptr %ul_dev33.i.i58 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %3, ptr %ul_dev33.i.i58, align 4
  %68 = ptrtoint ptr %rt.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rt.i, align 4
  %fib6_dst8.i = getelementptr inbounds %struct.fib6_info, ptr %69, i32 0, i32 8
  %70 = call ptr @memcpy(ptr %33, ptr %fib6_dst8.i, i32 16)
  %71 = ptrtoint ptr %key.i47 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 6, ptr %key.i47, align 4
  %call9.i = call fastcc ptr @mlx5e_route_lookup_for_update(ptr noundef %add.ptr, ptr noundef nonnull %key.i47) #15
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %out.i60, label %if.end12.i

if.end12.i:                                       ; preds = %if.end6.i59
  %r13.i = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %call7.i.i.i.i51, i32 0, i32 2
  %72 = ptrtoint ptr %r13.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call9.i, ptr %r13.i, align 8
  %tobool.not.i2.i = icmp eq ptr %3, null
  br i1 %tobool.not.i2.i, label %if.end12.i.mlx5e_init_fib_work_ipv6.exit_crit_edge, label %do.body1.i.i

if.end12.i.mlx5e_init_fib_work_ipv6.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_init_fib_work_ipv6.exit

do.body1.i.i:                                     ; preds = %if.end12.i
  %73 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !137
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %74 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %80
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %82, %76
  %83 = inttoptr i32 %add.i.i to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %add13.i.i = add i32 %85, 1
  store i32 %add13.i.i, ptr %83, align 4
  %86 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !138
  %and.i.i.i.i = and i32 %86, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !122

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %73) #15, !srcloc !139
  br label %mlx5e_init_fib_work_ipv6.exit

out.i60:                                          ; preds = %if.end6.i59
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i51) #15
  br label %mlx5e_init_fib_work_ipv6.exit

mlx5e_init_fib_work_ipv6.exit:                    ; preds = %out.i60, %do.end30.i.i, %if.end12.i.mlx5e_init_fib_work_ipv6.exit_crit_edge, %if.then4.i, %lor.lhs.false.i50.mlx5e_init_fib_work_ipv6.exit_crit_edge, %fib6_info_nh_dev.exit.i.mlx5e_init_fib_work_ipv6.exit_crit_edge
  %retval.0.i61 = phi ptr [ null, %out.i60 ], [ inttoptr (i32 -12 to ptr), %if.then4.i ], [ null, %lor.lhs.false.i50.mlx5e_init_fib_work_ipv6.exit_crit_edge ], [ null, %fib6_info_nh_dev.exit.i.mlx5e_init_fib_work_ipv6.exit_crit_edge ], [ %call7.i.i.i.i51, %if.end12.i.mlx5e_init_fib_work_ipv6.exit_crit_edge ], [ %call7.i.i.i.i51, %do.end30.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key.i47) #15
  br label %if.end8

if.end8:                                          ; preds = %mlx5e_init_fib_work_ipv6.exit, %mlx5e_init_fib_work_ipv4.exit
  %fib_work.0 = phi ptr [ %retval.0.i, %mlx5e_init_fib_work_ipv4.exit ], [ %retval.0.i61, %mlx5e_init_fib_work_ipv6.exit ]
  %tobool.not.i62 = icmp eq ptr %fib_work.0, null
  %cmp.i = icmp ugt ptr %fib_work.0, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i62, %cmp.i
  br i1 %spec.select.i, label %if.else12, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %wq = getelementptr i8, ptr %3, i32 11088
  %87 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %wq, align 16
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %88, ptr noundef nonnull %fib_work.0) #15
  br label %cleanup

if.else12:                                        ; preds = %if.end8
  br i1 %cmp.i, label %do.body, label %if.else12.cleanup_crit_edge

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.else12
  %extack = getelementptr inbounds %struct.fib_notifier_info, ptr %ptr, i32 0, i32 1
  %89 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_tc_tun_fib_event.__msg) #15
  %tobool.not = icmp eq ptr %90, null
  br i1 %tobool.not, label %do.body.if.end16_crit_edge, label %if.then15

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @mlx5e_tc_tun_fib_event.__msg, ptr %90, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body.if.end16_crit_edge
  %mdev = getelementptr i8, ptr %3, i32 11328
  %92 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mdev, align 64
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 8
  %96 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i = and i32 %96, -16384
  %97 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %99, i32 0, i32 68
  %100 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pid, align 8
  %102 = ptrtoint ptr %fib_work.0 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %95, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 1688, i32 noundef %101, i32 noundef %102) #20
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else12.cleanup_crit_edge, %if.then10, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_fib_notifier(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_tc_tun_cleanup(ptr noundef %encap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %encap, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encap, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %fib_nb = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %encap, i32 0, i32 1
  %call1 = tail call i32 @unregister_fib_notifier(ptr noundef %5, ptr noundef %fib_nb) #15
  %6 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %encap, align 4
  %wq = getelementptr inbounds %struct.mlx5e_priv, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wq, align 16
  tail call void @flush_workqueue(ptr noundef %9) #15
  tail call void @kvfree(ptr noundef nonnull %encap) #15
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_fib_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlx5e_encap_valid(ptr nocapture noundef readonly %e) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mlx5e_encap_entry, ptr %e, i32 0, i32 13
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mlx5e_tc_update_neigh_used_value(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rep_encap_entry_detach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length, i32 noundef %initval) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %add = add i32 %length, -559038737
  %add1 = add i32 %add, %initval
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp213 = icmp ugt i32 %length, 12
  br i1 %cmp213, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.0218 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.0217 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %b.0216 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %a.0215 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add1, %entry.while.body_crit_edge ]
  %length.addr.0214 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.0218 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.0218, align 1
  %add2 = add i32 %1, %a.0215
  %add.ptr = getelementptr i8, ptr %k.0218, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.0216
  %add.ptr5 = getelementptr i8, ptr %k.0218, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.0217
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #15
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i201 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #15
  %xor12 = xor i32 %sub10, %or.i201
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i202 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #15
  %xor16 = xor i32 %sub14, %or.i202
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i203 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #15
  %xor20 = xor i32 %sub18, %or.i203
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i204 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #15
  %xor24 = xor i32 %sub22, %or.i204
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i205 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #15
  %xor28 = xor i32 %sub26, %or.i205
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.0214, -12
  %add.ptr31 = getelementptr i8, ptr %k.0218, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add1, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i206 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #15
  %sub87 = sub i32 %xor85, %or.i206
  %xor88 = xor i32 %add84, %sub87
  %or.i207 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #15
  %sub90 = sub i32 %xor88, %or.i207
  %xor91 = xor i32 %sub90, %b.7
  %or.i208 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #15
  %sub93 = sub i32 %xor91, %or.i208
  %xor94 = xor i32 %sub93, %sub87
  %or.i209 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #15
  %sub96 = sub i32 %xor94, %or.i209
  %xor97 = xor i32 %sub96, %sub90
  %or.i210 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #15
  %sub99 = sub i32 %xor97, %or.i210
  %xor100 = xor i32 %sub99, %sub93
  %or.i211 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #15
  %sub102 = sub i32 %xor100, %or.i211
  %xor103 = xor i32 %sub102, %sub96
  %or.i212 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #15
  %sub105 = sub i32 %xor103, %or.i212
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_eswitch_get_uplink_priv(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_set_fwd_to_int_port_actions(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_route_get(ptr nocapture noundef readonly %encap, ptr nocapture noundef readonly %key, i32 noundef %hash_key) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  %r_key = alloca %struct.mlx5e_route_key, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %r_key) #15
  %0 = getelementptr inbounds %struct.mlx5e_route_key, ptr %r_key, i32 0, i32 1
  %mul.i.i = mul i32 %hash_key, 1640531527
  %shr.i = lshr i32 %mul.i.i, 24
  %arrayidx = getelementptr %struct.mlx5e_tc_tun_encap, ptr %encap, i32 0, i32 4, i32 %shr.i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -40
  %tobool2.not3034 = icmp eq ptr %add.ptr, null
  %tobool2.not30 = or i1 %tobool.not, %tobool2.not3034
  br i1 %tobool2.not30, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %endpoint_ip11.i = getelementptr inbounds %struct.mlx5e_route_key, ptr %key, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %r.031 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr13, %for.inc.for.body_crit_edge ]
  %3 = call ptr @memcpy(ptr %r_key, ptr %r.031, i32 20)
  %4 = ptrtoint ptr %r_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_key, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %5, label %for.body.for.inc_crit_edge [
    i32 4, label %land.lhs.true.i
    i32 6, label %land.lhs.true6.i
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %7 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp2.i = icmp eq i32 %8, 4
  br i1 %cmp2.i, label %if.then.i, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = call i32 @memcmp(ptr noundef dereferenceable(4) %0, ptr noundef dereferenceable(4) %endpoint_ip11.i, i32 noundef 4) #22
  br label %cmp_route_info.exit

land.lhs.true6.i:                                 ; preds = %for.body
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %10)
  %cmp8.i = icmp eq i32 %10, 6
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true6.i.for.inc_crit_edge

land.lhs.true6.i.for.inc_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then9.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #17
  %call12.i = call i32 @memcmp(ptr noundef dereferenceable(16) %0, ptr noundef dereferenceable(16) %endpoint_ip11.i, i32 noundef 16) #22
  br label %cmp_route_info.exit

cmp_route_info.exit:                              ; preds = %if.then9.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call12.i, %if.then9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %land.lhs.true, label %cmp_route_info.exit.for.inc_crit_edge

cmp_route_info.exit.for.inc_crit_edge:            ; preds = %cmp_route_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %cmp_route_info.exit
  %refcnt = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r.031, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #15
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #15
  %11 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %13 = phi i32 [ %12, %land.lhs.true ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %13, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #15
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %17 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %16, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #15, !srcloc !134
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %16
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !127

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %18 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %19, 1
  %20 = or i32 %add5.i.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !127

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #15
  %21 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %22 = phi i32 [ %19, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool12.i.i.i.not = icmp eq i32 %22, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #15
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.for.inc_crit_edge, label %refcount_inc_not_zero.exit.cleanup_crit_edge

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

refcount_inc_not_zero.exit.for.inc_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.inc:                                          ; preds = %refcount_inc_not_zero.exit.for.inc_crit_edge, %cmp_route_info.exit.for.inc_crit_edge, %land.lhs.true6.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %hlist = getelementptr inbounds %struct.mlx5e_route_entry, ptr %r.031, i32 0, i32 4
  %23 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hlist, align 4
  %tobool9.not = icmp eq ptr %24, null
  %add.ptr13 = getelementptr i8, ptr %24, i32 -40
  %tobool2.not35 = icmp eq ptr %add.ptr13, null
  %tobool2.not = or i1 %tobool9.not, %tobool2.not35
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %refcount_inc_not_zero.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %r.0.lcssa = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %r.031, %refcount_inc_not_zero.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %r_key) #15
  ret ptr %r.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !137
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !138
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !122

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #15, !srcloc !139
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_tc_fib_event_work(ptr noundef %work) #0 align 64 {
entry:
  %decap_flows.i = alloca %struct.list_head, align 4
  %vport_num.i.i.i = alloca i16, align 2
  %encap_flows.i = alloca %struct.list_head, align 4
  %flow_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ul_dev1 = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %work, i32 0, i32 3
  %0 = ptrtoint ptr %ul_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ul_dev1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %r2 = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r2, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flow_list) #15
  %4 = getelementptr inbounds %struct.list_head, ptr %flow_list, i32 0, i32 1
  %5 = ptrtoint ptr %flow_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %flow_list, ptr %flow_list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %flow_list, ptr %4, align 4
  call void @rtnl_lock() #15
  %mdev = getelementptr i8, ptr %1, i32 11328
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 64
  %eswitch = getelementptr inbounds %struct.mlx5_core_dev, ptr %8, i32 0, i32 17, i32 28
  %9 = ptrtoint ptr %eswitch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %eswitch, align 4
  %encap_tbl_lock = getelementptr inbounds %struct.mlx5_eswitch, ptr %10, i32 0, i32 15, i32 9
  call void @mutex_lock_nested(ptr noundef %encap_tbl_lock, i32 noundef 0) #15
  %event = getelementptr inbounds %struct.mlx5e_tc_fib_event_data, ptr %work, i32 0, i32 1
  %11 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %flags.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %brmerge = select i1 %tobool.i, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %netdev.i = getelementptr i8, ptr %1, i32 11332
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 127
  %17 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nd_net.i.i, align 4
  %tunnel_dev_index.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %tunnel_dev_index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tunnel_dev_index.i, align 4
  %call1.i = call ptr @__dev_get_by_index(ptr noundef %18, i32 noundef %20) #15
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %encap_entries.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %encap_entries.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn62.i = load ptr, ptr %encap_entries.i, align 4
  %cmp.not64.i = icmp eq ptr %.pn62.i, %encap_entries.i
  br i1 %cmp.not64.i, label %if.end.i.if.end11_crit_edge, label %for.body.lr.ph.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %22 = getelementptr inbounds %struct.list_head, ptr %encap_flows.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn65.i = phi ptr [ %.pn62.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %e.066.i = getelementptr i8, ptr %.pn65.i, i32 -28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %encap_flows.i) #15
  %23 = ptrtoint ptr %encap_flows.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %encap_flows.i, ptr %encap_flows.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %encap_flows.i, ptr %22, align 4
  %flows.i.i = getelementptr i8, ptr %.pn65.i, i32 -8
  %25 = ptrtoint ptr %flows.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn16.i.i = load ptr, ptr %flows.i.i, align 4
  %cmp.not17.i.i = icmp eq ptr %.pn16.i.i, %flows.i.i
  br i1 %cmp.not17.i.i, label %for.body.i.mlx5e_take_all_encap_flows.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.mlx5e_take_all_encap_flows.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_take_all_encap_flows.exit.i

for.body.i.i:                                     ; preds = %mlx5e_take_tmp_flow.exit.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %.pn18.i.i = phi ptr [ %.pn.i.i, %mlx5e_take_tmp_flow.exit.i.i.for.body.i.i_crit_edge ], [ %.pn16.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %efi.0.i.i = getelementptr i8, ptr %.pn18.i.i, i32 -4
  %index.i.i = getelementptr i8, ptr %.pn18.i.i, i32 8
  %26 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.i, align 4
  %.neg.i.i = mul i32 %27, -16
  %idx.neg.i.i = add i32 %.neg.i.i, -308
  %add.ptr4.i.i = getelementptr i8, ptr %efi.0.i.i, i32 %idx.neg.i.i
  %call.i.i.i = call ptr @mlx5e_flow_get(ptr noundef %add.ptr4.i.i) #15
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %del_hw_done.i.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4.i.i, i32 0, i32 23
  call void @wait_for_completion(ptr noundef %del_hw_done.i.i.i) #15
  br label %mlx5e_take_tmp_flow.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %init_done.i.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4.i.i, i32 0, i32 22
  call void @wait_for_completion(ptr noundef %init_done.i.i.i) #15
  %tmp_entry_index.i.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4.i.i, i32 0, i32 18
  %28 = ptrtoint ptr %tmp_entry_index.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %tmp_entry_index.i.i.i, align 4
  %tmp_list.i.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %encap_flows.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %encap_flows.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tmp_list.i.i.i, ptr noundef nonnull %encap_flows.i, ptr noundef %30) #15
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.i.i.mlx5e_take_tmp_flow.exit.i.i_crit_edge

if.end.i.i.i.mlx5e_take_tmp_flow.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_take_tmp_flow.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %tmp_list.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %tmp_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %tmp_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %add.ptr4.i.i, i32 0, i32 19, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %encap_flows.i, ptr %prev3.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %encap_flows.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %tmp_list.i.i.i, ptr %encap_flows.i, align 4
  br label %mlx5e_take_tmp_flow.exit.i.i

mlx5e_take_tmp_flow.exit.i.i:                     ; preds = %if.end.i.i.i.i.i, %if.end.i.i.i.mlx5e_take_tmp_flow.exit.i.i_crit_edge, %if.then.i.i.i
  %35 = ptrtoint ptr %.pn18.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn.i.i = load ptr, ptr %.pn18.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %flows.i.i
  br i1 %cmp.not.i.i, label %mlx5e_take_tmp_flow.exit.i.i.mlx5e_take_all_encap_flows.exit.i_crit_edge, label %mlx5e_take_tmp_flow.exit.i.i.for.body.i.i_crit_edge

mlx5e_take_tmp_flow.exit.i.i.for.body.i.i_crit_edge: ; preds = %mlx5e_take_tmp_flow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

mlx5e_take_tmp_flow.exit.i.i.mlx5e_take_all_encap_flows.exit.i_crit_edge: ; preds = %mlx5e_take_tmp_flow.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_take_all_encap_flows.exit.i

mlx5e_take_all_encap_flows.exit.i:                ; preds = %mlx5e_take_tmp_flow.exit.i.i.mlx5e_take_all_encap_flows.exit.i_crit_edge, %for.body.i.mlx5e_take_all_encap_flows.exit.i_crit_edge
  %36 = ptrtoint ptr %encap_flows.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %encap_flows.i, align 4
  %cmp.i.i = icmp eq ptr %37, %encap_flows.i
  br i1 %cmp.i.i, label %mlx5e_take_all_encap_flows.exit.i.cleanup.i_crit_edge, label %if.end7.i

mlx5e_take_all_encap_flows.exit.i.cleanup.i_crit_edge: ; preds = %mlx5e_take_all_encap_flows.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end7.i:                                        ; preds = %mlx5e_take_all_encap_flows.exit.i
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end7.i.if.end10.i_crit_edge, label %for.body.i32.preheader.i

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

for.body.i32.preheader.i:                         ; preds = %if.end7.i
  %40 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev, align 64
  %eswitch.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %41, i32 0, i32 17, i32 28
  %42 = ptrtoint ptr %eswitch.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eswitch.i.i, align 4
  br label %for.body.i32.i

for.body.i32.i:                                   ; preds = %cleanup.i.i.for.body.i32.i_crit_edge, %for.body.i32.preheader.i
  %.pn55.i.i = phi ptr [ %.pn.i34.i, %cleanup.i.i.for.body.i32.i_crit_edge ], [ %37, %for.body.i32.preheader.i ]
  %flow.056.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -864
  %attr2.i.i = getelementptr i8, ptr %.pn55.i.i, i32 136
  %44 = ptrtoint ptr %attr2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %attr2.i.i, align 8
  %call.i.i = call zeroext i1 @mlx5e_is_offloaded_flow(ptr noundef %flow.056.i.i) #15
  br i1 %call.i.i, label %if.end.i.i, label %for.body.i32.i.cleanup.i.i_crit_edge

for.body.i32.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i32.i
  %flags.i.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -848
  %46 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i.i.i, align 4
  %48 = and i32 %47, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i.i = icmp eq i32 %48, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !120
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @mlx5e_tc_unoffload_from_slow_path(ptr noundef %43, ptr noundef %flow.056.i.i) #15
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %49 = ptrtoint ptr %attr2.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %attr2.i.i, align 8
  call void @mlx5e_tc_unoffload_fdb_rules(ptr noundef %43, ptr noundef %flow.056.i.i, ptr noundef %50) #15
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else.i.i, %if.then4.i.i
  %51 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mdev, align 64
  %modify_hdr.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %45, i32 0, i32 2
  %53 = ptrtoint ptr %modify_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %modify_hdr.i.i, align 4
  call void @mlx5_modify_header_dealloc(ptr noundef %52, ptr noundef %54) #15
  %55 = ptrtoint ptr %modify_hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %modify_hdr.i.i, align 4
  %dests.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %45, i32 1, i32 7
  %tmp_entry_index.i.i = getelementptr i8, ptr %.pn55.i.i, i32 -4
  %56 = ptrtoint ptr %tmp_entry_index.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tmp_entry_index.i.i, align 4
  %arrayidx.i.i = getelementptr [32 x %struct.anon.236], ptr %dests.i.i, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  %and.i33.i = and i32 %59, -3
  store i32 %and.i33.i, ptr %arrayidx.i.i, align 4
  %60 = load i32, ptr %tmp_entry_index.i.i, align 4
  %pkt_reformat.i.i = getelementptr [32 x %struct.anon.236], ptr %dests.i.i, i32 0, i32 %60, i32 2
  %61 = ptrtoint ptr %pkt_reformat.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %pkt_reformat.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end6.i.i, %for.body.i32.i.cleanup.i.i_crit_edge
  %62 = ptrtoint ptr %.pn55.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn.i34.i = load ptr, ptr %.pn55.i.i, align 4
  %cmp.not.i35.i = icmp eq ptr %.pn.i34.i, %encap_flows.i
  br i1 %cmp.not.i35.i, label %for.end.i.i, label %cleanup.i.i.for.body.i32.i_crit_edge

cleanup.i.i.for.body.i32.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i32.i

for.end.i.i:                                      ; preds = %cleanup.i.i
  %flags18.i.i = getelementptr i8, ptr %.pn65.i, i32 48
  %63 = ptrtoint ptr %flags18.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags18.i.i, align 4
  %65 = or i8 %64, 4
  store i8 %65, ptr %flags18.i.i, align 4
  %66 = and i8 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i.i, label %for.end.i.i.if.end10.i_crit_edge, label %if.then23.i.i

for.end.i.i.if.end10.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then23.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and26.i.i = and i8 %65, -2
  %67 = ptrtoint ptr %flags18.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and26.i.i, ptr %flags18.i.i, align 4
  %68 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mdev, align 64
  %pkt_reformat29.i.i = getelementptr i8, ptr %.pn65.i, i32 8
  %70 = ptrtoint ptr %pkt_reformat29.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pkt_reformat29.i.i, align 4
  call void @mlx5_packet_reformat_dealloc(ptr noundef %69, ptr noundef %71) #15
  %72 = ptrtoint ptr %pkt_reformat29.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %pkt_reformat29.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then23.i.i, %for.end.i.i.if.end10.i_crit_edge, %if.end7.i.if.end10.i_crit_edge
  br i1 %cmp, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  %73 = ptrtoint ptr %encap_flows.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %encap_flows.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %74, %encap_flows.i
  br i1 %cmp.i.not.i.i, label %if.then12.i.cleanup.i_crit_edge, label %if.then.i.i

if.then12.i.cleanup.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #17
  %75 = ptrtoint ptr %flow_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %flow_list, align 4
  %77 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %22, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %79 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %flow_list, ptr %prev3.i.i.i, align 4
  store ptr %74, ptr %flow_list, align 4
  %80 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %76, ptr %78, align 4
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.end10.i
  %81 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mdev, align 64
  %eswitch.i38.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %82, i32 0, i32 17, i32 28
  %83 = ptrtoint ptr %eswitch.i38.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %eswitch.i38.i, align 4
  %tun_info.i.i = getelementptr i8, ptr %.pn65.i, i32 12
  %85 = ptrtoint ptr %tun_info.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tun_info.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mode.i.i.i, align 1
  %89 = and i8 %88, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i.i.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %call3.i.i = call i32 @mlx5e_tc_tun_update_header_ipv4(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i, ptr noundef %e.066.i) #15
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i.i = call i32 @mlx5e_tc_tun_update_header_ipv6(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i, ptr noundef %e.066.i) #15
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call3.i.i, %cond.true.i.i ], [ %call4.i.i, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %tobool.not.i39.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool.not.i39.i, label %cond.end.i.i.if.end.i41.i_crit_edge, label %do.end.i.i

cond.end.i.i.if.end.i41.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i41.i

do.end.i.i:                                       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %90 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mdev, align 64
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 8
  %94 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i = and i32 %94, -16384
  %95 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %task.i.i, align 8
  %pid.i.i = getelementptr inbounds %struct.task_struct, ptr %97, i32 0, i32 68
  %98 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef 1358, i32 noundef %99, i32 noundef %cond.i.i) #20
  br label %if.end.i41.i

if.end.i41.i:                                     ; preds = %do.end.i.i, %cond.end.i.i.if.end.i41.i_crit_edge
  %flags.i40.i = getelementptr i8, ptr %.pn65.i, i32 48
  %100 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flags.i40.i, align 4
  %102 = and i8 %101, -5
  store i8 %102, ptr %flags.i40.i, align 4
  %103 = ptrtoint ptr %encap_flows.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn169.i.i = load ptr, ptr %encap_flows.i, align 4
  %cmp9.not171.i.i = icmp eq ptr %.pn169.i.i, %encap_flows.i
  br i1 %cmp9.not171.i.i, label %if.end.i41.i.mlx5e_reoffload_encap.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i41.i.mlx5e_reoffload_encap.exit.i_crit_edge: ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_reoffload_encap.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i41.i
  %out_dev.i.i = getelementptr i8, ptr %.pn65.i, i32 32
  %route_dev_ifindex.i.i = getelementptr i8, ptr %.pn65.i, i32 36
  %pkt_reformat.i42.i = getelementptr i8, ptr %.pn65.i, i32 8
  br label %for.body.i45.i

for.body.i45.i:                                   ; preds = %cleanup.i51.i.for.body.i45.i_crit_edge, %for.body.lr.ph.i.i
  %.pn172.i.i = phi ptr [ %.pn169.i.i, %for.body.lr.ph.i.i ], [ %.pn.i50.i, %cleanup.i51.i.for.body.i45.i_crit_edge ]
  %flow.0173.i.i = getelementptr i8, ptr %.pn172.i.i, i32 -864
  %attr11.i.i = getelementptr i8, ptr %.pn172.i.i, i32 136
  %104 = ptrtoint ptr %attr11.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %attr11.i.i, align 8
  %flags.i.i43.i = getelementptr i8, ptr %.pn172.i.i, i32 -848
  %106 = ptrtoint ptr %flags.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %flags.i.i43.i, align 4
  %108 = and i32 %107, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.i.not.i44.i = icmp eq i32 %108, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !120
  br i1 %tobool.i.not.i44.i, label %if.end14.i.i, label %for.body.i45.i.cleanup.i51.i_crit_edge

for.body.i45.i.cleanup.i51.i_crit_edge:           ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i51.i

if.end14.i.i:                                     ; preds = %for.body.i45.i
  %109 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %105, i32 0, i32 16
  %parse_attr15.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %105, i32 0, i32 5
  %110 = ptrtoint ptr %parse_attr15.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parse_attr15.i.i, align 4
  %spec16.i.i = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %111, i32 0, i32 3
  %mod_hdr_acts.i.i = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %out_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %out_dev.i.i, align 4
  %114 = ptrtoint ptr %route_dev_ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %route_dev_ifindex.i.i, align 4
  %tmp_entry_index.i46.i = getelementptr i8, ptr %.pn172.i.i, i32 -4
  %116 = ptrtoint ptr %tmp_entry_index.i46.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tmp_entry_index.i46.i, align 4
  %src_port_rewrite_act_id.i.i.i = getelementptr %struct.mlx5_esw_flow_attr, ptr %109, i32 0, i32 11, i32 %117, i32 5
  %118 = ptrtoint ptr %src_port_rewrite_act_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %src_port_rewrite_act_id.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vport_num.i.i.i) #15
  %120 = ptrtoint ptr %vport_num.i.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %vport_num.i.i.i, align 2, !annotation !136
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 127
  %121 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nd_net.i.i.i.i, align 4
  %call1.i.i.i = call ptr @dev_get_by_index(ptr noundef %122, i32 noundef %115) #15
  %tobool.not.i155.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not.i155.i.i, label %mlx5e_update_vf_tunnel.exit.thread.i.i, label %lor.lhs.false.i.i.i

mlx5e_update_vf_tunnel.exit.thread.i.i:           ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i.i.i) #15
  br label %do.end22.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end14.i.i
  %netdev_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i.i.i, i32 0, i32 16
  %123 = ptrtoint ptr %netdev_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %netdev_ops.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %124, @mlx5e_netdev_ops
  br i1 %cmp.not.i.i.i, label %lor.lhs.false2.i.i.i, label %lor.lhs.false.i.i.i.do.body1.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.body1.i.i.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %call3.i.i.i = call zeroext i1 @mlx5e_tc_is_vf_tunnel(ptr noundef %113, ptr noundef nonnull %call1.i.i.i) #15
  br i1 %call3.i.i.i, label %if.end.i.i47.i, label %lor.lhs.false2.i.i.i.do.body1.i.i.i.i_crit_edge

lor.lhs.false2.i.i.i.do.body1.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i.i.i

if.end.i.i47.i:                                   ; preds = %lor.lhs.false2.i.i.i
  %call4.i.i.i = call i32 @mlx5e_tc_query_route_vport(ptr noundef %113, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %vport_num.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end7.i.i.i, label %if.end.i.i47.i.do.body1.i.i.i.i_crit_edge

if.end.i.i47.i.do.body1.i.i.i.i_crit_edge:        ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body1.i.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i47.i
  call void @__sanitizer_cov_trace_pc() #17
  %in_mdev.i.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %105, i32 1, i32 1
  %125 = ptrtoint ptr %in_mdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %in_mdev.i.i.i, align 4
  %eswitch.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %126, i32 0, i32 17, i32 28
  %127 = ptrtoint ptr %eswitch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %eswitch.i.i.i, align 4
  %129 = ptrtoint ptr %vport_num.i.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %vport_num.i.i.i, align 2
  %call8.i.i.i = call i32 @mlx5_eswitch_get_vport_metadata_for_set(ptr noundef %128, i16 noundef zeroext %130) #15
  %131 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %84, align 8
  call void @mlx5e_tc_match_to_reg_mod_hdr_change(ptr noundef %132, ptr noundef %mod_hdr_acts.i.i, i32 noundef 1, i32 noundef %119, i32 noundef %call8.i.i.i) #15
  br label %do.body1.i.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.end7.i.i.i, %if.end.i.i47.i.do.body1.i.i.i.i_crit_edge, %lor.lhs.false2.i.i.i.do.body1.i.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.body1.i.i.i.i_crit_edge
  %err.0.ph.i.i.i = phi i32 [ -19, %lor.lhs.false.i.i.i.do.body1.i.i.i.i_crit_edge ], [ -19, %lor.lhs.false2.i.i.i.do.body1.i.i.i.i_crit_edge ], [ 0, %if.end7.i.i.i ], [ %call4.i.i.i, %if.end.i.i47.i.do.body1.i.i.i.i_crit_edge ]
  %133 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !137
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i.i.i, i32 0, i32 118
  %134 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %136 = ptrtoint ptr %135 to i32
  %137 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i.i.i = and i32 %137, -16384
  %138 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %140
  %141 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %142, %136
  %143 = inttoptr i32 %add.i.i.i.i to ptr
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %add13.i.i.i.i = add i32 %145, -1
  store i32 %add13.i.i.i.i, ptr %143, align 4
  %146 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !138
  %and.i.i.i.i.i.i = and i32 %146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.mlx5e_update_vf_tunnel.exit.i.i_crit_edge, !prof !122

do.body1.i.i.i.i.mlx5e_update_vf_tunnel.exit.i.i_crit_edge: ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_update_vf_tunnel.exit.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %mlx5e_update_vf_tunnel.exit.i.i

mlx5e_update_vf_tunnel.exit.i.i:                  ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.mlx5e_update_vf_tunnel.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %133) #15, !srcloc !139
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vport_num.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.ph.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %err.0.ph.i.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end28.i.i, label %mlx5e_update_vf_tunnel.exit.i.i.do.end22.i.i_crit_edge

mlx5e_update_vf_tunnel.exit.i.i.do.end22.i.i_crit_edge: ; preds = %mlx5e_update_vf_tunnel.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %mlx5e_update_vf_tunnel.exit.i.i.do.end22.i.i_crit_edge, %mlx5e_update_vf_tunnel.exit.thread.i.i
  %err.023.i165.i.i = phi i32 [ -19, %mlx5e_update_vf_tunnel.exit.thread.i.i ], [ %err.0.ph.i.i.i, %mlx5e_update_vf_tunnel.exit.i.i.do.end22.i.i_crit_edge ]
  %147 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdev, align 64
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 8
  %151 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i156.i.i = and i32 %151, -16384
  %152 = inttoptr i32 %and.i156.i.i to ptr
  %task26.i.i = getelementptr inbounds %struct.thread_info, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %task26.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %task26.i.i, align 8
  %pid27.i.i = getelementptr inbounds %struct.task_struct, ptr %154, i32 0, i32 68
  %155 = ptrtoint ptr %pid27.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %pid27.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %150, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef 1379, i32 noundef %156, i32 noundef %err.023.i165.i.i) #20
  br label %cleanup.i51.i

if.end28.i.i:                                     ; preds = %mlx5e_update_vf_tunnel.exit.i.i
  %call29.i.i = call i32 @mlx5e_tc_add_flow_mod_hdr(ptr noundef %add.ptr.i, ptr noundef %111, ptr noundef %flow.0173.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %tobool30.not.i.i = icmp eq i32 %call29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end40.i.i, label %do.end34.i.i

do.end34.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %157 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mdev, align 64
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %158, align 8
  %161 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i157.i.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i157.i.i to ptr
  %task38.i.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %task38.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %task38.i.i, align 8
  %pid39.i.i = getelementptr inbounds %struct.task_struct, ptr %164, i32 0, i32 68
  %165 = ptrtoint ptr %pid39.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %pid39.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, i32 noundef 1386, i32 noundef %166, i32 noundef %call29.i.i) #20
  br label %cleanup.i51.i

if.end40.i.i:                                     ; preds = %if.end28.i.i
  %167 = ptrtoint ptr %flags.i40.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %flags.i40.i, align 4
  %169 = and i8 %168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool44.not.i.i = icmp eq i8 %169, 0
  br i1 %tobool44.not.i.i, label %if.end40.i.i.offload_to_slow_path.i.i_crit_edge, label %if.then45.i.i

if.end40.i.i.offload_to_slow_path.i.i_crit_edge:  ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %offload_to_slow_path.i.i

if.then45.i.i:                                    ; preds = %if.end40.i.i
  %170 = ptrtoint ptr %pkt_reformat.i42.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pkt_reformat.i42.i, align 4
  %dests.i48.i = getelementptr %struct.mlx5_flow_attr, ptr %105, i32 1, i32 7
  %172 = ptrtoint ptr %tmp_entry_index.i46.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tmp_entry_index.i46.i, align 4
  %pkt_reformat47.i.i = getelementptr [32 x %struct.anon.236], ptr %dests.i48.i, i32 0, i32 %173, i32 2
  %174 = ptrtoint ptr %pkt_reformat47.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %171, ptr %pkt_reformat47.i.i, align 4
  %175 = load i32, ptr %tmp_entry_index.i46.i, align 4
  %arrayidx50.i.i = getelementptr [32 x %struct.anon.236], ptr %dests.i48.i, i32 0, i32 %175
  %176 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx50.i.i, align 4
  %or.i.i = or i32 %177, 2
  store i32 %or.i.i, ptr %arrayidx50.i.i, align 4
  %178 = ptrtoint ptr %dests.i48.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %dests.i48.i, align 4
  %180 = and i32 %179, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %180)
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %if.then45.i.i.offload_to_slow_path.i.i_crit_edge, label %if.then45.i.i.for.cond.i.i.i_crit_edge

if.then45.i.i.for.cond.i.i.i_crit_edge:           ; preds = %if.then45.i.i
  br label %for.cond.i.i.i

if.then45.i.i.offload_to_slow_path.i.i_crit_edge: ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %offload_to_slow_path.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then45.i.i.for.cond.i.i.i_crit_edge
  %i.013.i167.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ], [ 0, %if.then45.i.i.for.cond.i.i.i_crit_edge ]
  %inc.i.i.i = add nuw nsw i32 %i.013.i167.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end54.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end54.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.mlx5_esw_flow_attr, ptr %109, i32 0, i32 11, i32 %inc.i.i.i
  %182 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx.i.i.i, align 4
  %184 = and i32 %183, 3
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %mlx5e_tc_flow_all_encaps_valid.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i

mlx5e_tc_flow_all_encaps_valid.exit.i.i:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.013.i167.i.i)
  %cmp.i.le.i.i = icmp ult i32 %i.013.i167.i.i, 31
  br i1 %cmp.i.le.i.i, label %mlx5e_tc_flow_all_encaps_valid.exit.i.i.offload_to_slow_path.i.i_crit_edge, label %mlx5e_tc_flow_all_encaps_valid.exit.i.i.if.end54.i.i_crit_edge

mlx5e_tc_flow_all_encaps_valid.exit.i.i.if.end54.i.i_crit_edge: ; preds = %mlx5e_tc_flow_all_encaps_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54.i.i

mlx5e_tc_flow_all_encaps_valid.exit.i.i.offload_to_slow_path.i.i_crit_edge: ; preds = %mlx5e_tc_flow_all_encaps_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %offload_to_slow_path.i.i

if.end54.i.i:                                     ; preds = %mlx5e_tc_flow_all_encaps_valid.exit.i.i.if.end54.i.i_crit_edge, %for.cond.i.i.i.if.end54.i.i_crit_edge
  %call55.i.i = call ptr @mlx5e_tc_offload_fdb_rules(ptr noundef %84, ptr noundef %flow.0173.i.i, ptr noundef %spec16.i.i, ptr noundef %105) #15
  %cmp.i158.i.i = icmp ugt ptr %call55.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158.i.i, label %if.then57.i.i, label %if.else.i49.i

if.then57.i.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %186 = ptrtoint ptr %call55.i.i to i32
  %187 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %mdev, align 64
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 8
  %191 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i159.i.i = and i32 %191, -16384
  %192 = inttoptr i32 %and.i159.i.i to ptr
  %task65.i.i = getelementptr inbounds %struct.thread_info, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %task65.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %task65.i.i, align 8
  %pid66.i.i = getelementptr inbounds %struct.task_struct, ptr %194, i32 0, i32 68
  %195 = ptrtoint ptr %pid66.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %pid66.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.30, i32 noundef 1400, i32 noundef %196, i32 noundef %186) #20
  br label %if.end92.i.i

if.else.i49.i:                                    ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rule67.i.i = getelementptr i8, ptr %.pn172.i.i, i32 -844
  %197 = ptrtoint ptr %rule67.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call55.i.i, ptr %rule67.i.i, align 4
  br label %if.end92.i.i

offload_to_slow_path.i.i:                         ; preds = %mlx5e_tc_flow_all_encaps_valid.exit.i.i.offload_to_slow_path.i.i_crit_edge, %if.then45.i.i.offload_to_slow_path.i.i_crit_edge, %if.end40.i.i.offload_to_slow_path.i.i_crit_edge
  %call71.i.i = call ptr @mlx5e_tc_offload_to_slow_path(ptr noundef %84, ptr noundef %flow.0173.i.i, ptr noundef %spec16.i.i) #15
  %dests72.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %105, i32 1, i32 7
  %198 = ptrtoint ptr %tmp_entry_index.i46.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tmp_entry_index.i46.i, align 4
  %arrayidx74.i.i = getelementptr [32 x %struct.anon.236], ptr %dests72.i.i, i32 0, i32 %199
  %200 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx74.i.i, align 4
  %and76.i.i = and i32 %201, -3
  store i32 %and76.i.i, ptr %arrayidx74.i.i, align 4
  %cmp.i160.i.i = icmp ugt ptr %call71.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160.i.i, label %if.then78.i.i, label %if.else88.i.i

if.then78.i.i:                                    ; preds = %offload_to_slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %202 = ptrtoint ptr %call71.i.i to i32
  %203 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mdev, align 64
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 8
  %207 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i161.i.i = and i32 %207, -16384
  %208 = inttoptr i32 %and.i161.i.i to ptr
  %task86.i.i = getelementptr inbounds %struct.thread_info, ptr %208, i32 0, i32 2
  %209 = ptrtoint ptr %task86.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %task86.i.i, align 8
  %pid87.i.i = getelementptr inbounds %struct.task_struct, ptr %210, i32 0, i32 68
  %211 = ptrtoint ptr %pid87.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pid87.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %206, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.30, i32 noundef 1414, i32 noundef %212, i32 noundef %202) #20
  br label %if.end92.i.i

if.else88.i.i:                                    ; preds = %offload_to_slow_path.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rule89.i.i = getelementptr i8, ptr %.pn172.i.i, i32 -844
  %213 = ptrtoint ptr %rule89.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call71.i.i, ptr %rule89.i.i, align 4
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.else88.i.i, %if.then78.i.i, %if.else.i49.i, %if.then57.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i.i43.i) #15
  br label %cleanup.i51.i

cleanup.i51.i:                                    ; preds = %if.end92.i.i, %do.end34.i.i, %do.end22.i.i, %for.body.i45.i.cleanup.i51.i_crit_edge
  %214 = ptrtoint ptr %.pn172.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %.pn.i50.i = load ptr, ptr %.pn172.i.i, align 4
  %cmp9.not.i.i = icmp eq ptr %.pn.i50.i, %encap_flows.i
  br i1 %cmp9.not.i.i, label %cleanup.i51.i.mlx5e_reoffload_encap.exit.i_crit_edge, label %cleanup.i51.i.for.body.i45.i_crit_edge

cleanup.i51.i.for.body.i45.i_crit_edge:           ; preds = %cleanup.i51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i45.i

cleanup.i51.i.mlx5e_reoffload_encap.exit.i_crit_edge: ; preds = %cleanup.i51.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_reoffload_encap.exit.i

mlx5e_reoffload_encap.exit.i:                     ; preds = %cleanup.i51.i.mlx5e_reoffload_encap.exit.i_crit_edge, %if.end.i41.i.mlx5e_reoffload_encap.exit.i_crit_edge
  %215 = ptrtoint ptr %encap_flows.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load volatile ptr, ptr %encap_flows.i, align 4
  %cmp.i.not.i53.i = icmp eq ptr %216, %encap_flows.i
  br i1 %cmp.i.not.i53.i, label %mlx5e_reoffload_encap.exit.i.cleanup.i_crit_edge, label %if.then.i57.i

mlx5e_reoffload_encap.exit.i.cleanup.i_crit_edge: ; preds = %mlx5e_reoffload_encap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.then.i57.i:                                    ; preds = %mlx5e_reoffload_encap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %217 = ptrtoint ptr %flow_list to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %flow_list, align 4
  %219 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %22, align 4
  %prev3.i.i55.i = getelementptr inbounds %struct.list_head, ptr %216, i32 0, i32 1
  %221 = ptrtoint ptr %prev3.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %flow_list, ptr %prev3.i.i55.i, align 4
  store ptr %216, ptr %flow_list, align 4
  %222 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %218, ptr %220, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then.i57.i, %if.then.i.i
  %.sink69.i = phi ptr [ %218, %if.then.i57.i ], [ %76, %if.then.i.i ]
  %.sink.i = phi ptr [ %220, %if.then.i57.i ], [ %78, %if.then.i.i ]
  %prev6.i.i56.i = getelementptr inbounds %struct.list_head, ptr %.sink69.i, i32 0, i32 1
  %223 = ptrtoint ptr %prev6.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %.sink.i, ptr %prev6.i.i56.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %mlx5e_reoffload_encap.exit.i.cleanup.i_crit_edge, %if.then12.i.cleanup.i_crit_edge, %mlx5e_take_all_encap_flows.exit.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %encap_flows.i) #15
  %224 = ptrtoint ptr %.pn65.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %.pn.i = load ptr, ptr %.pn65.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encap_entries.i
  br i1 %cmp.not.i, label %cleanup.i.if.end11_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cleanup.i.if.end11_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %225 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mdev, align 64
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 8
  %229 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i53 = and i32 %229, -16384
  %230 = inttoptr i32 %and.i53 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %232, i32 0, i32 68
  %233 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %pid, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %228, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1552, i32 noundef %234, i32 noundef -19) #20
  br label %if.end11

if.end11:                                         ; preds = %do.end, %cleanup.i.if.end11_crit_edge, %if.end.i.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %decap_flows.i) #15
  %235 = getelementptr inbounds %struct.list_head, ptr %decap_flows.i, i32 0, i32 1
  %236 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %decap_flows.i, ptr %decap_flows.i, align 4
  %237 = ptrtoint ptr %235 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %decap_flows.i, ptr %235, align 4
  %238 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %netdev.i, align 4
  %nd_net.i.i55 = getelementptr inbounds %struct.net_device, ptr %239, i32 0, i32 127
  %240 = ptrtoint ptr %nd_net.i.i55 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %nd_net.i.i55, align 4
  %242 = ptrtoint ptr %tunnel_dev_index.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %tunnel_dev_index.i, align 4
  %call1.i57 = call ptr @__dev_get_by_index(ptr noundef %241, i32 noundef %243) #15
  %tobool.not.i58 = icmp eq ptr %call1.i57, null
  br i1 %tobool.not.i58, label %do.end18, label %if.end.i59

if.end.i59:                                       ; preds = %if.end11
  %decap_flows.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %3, i32 0, i32 2
  %244 = ptrtoint ptr %decap_flows.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %.pn10.i.i = load ptr, ptr %decap_flows.i.i, align 4
  %cmp.not11.i.i = icmp eq ptr %.pn10.i.i, %decap_flows.i.i
  br i1 %cmp.not11.i.i, label %if.end.i59.mlx5e_take_all_route_decap_flows.exit.i_crit_edge, label %if.end.i59.for.body.i.i62_crit_edge

if.end.i59.for.body.i.i62_crit_edge:              ; preds = %if.end.i59
  br label %for.body.i.i62

if.end.i59.mlx5e_take_all_route_decap_flows.exit.i_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_take_all_route_decap_flows.exit.i

for.body.i.i62:                                   ; preds = %mlx5e_take_tmp_flow.exit.i.i75.for.body.i.i62_crit_edge, %if.end.i59.for.body.i.i62_crit_edge
  %.pn12.i.i = phi ptr [ %.pn.i.i73, %mlx5e_take_tmp_flow.exit.i.i75.for.body.i.i62_crit_edge ], [ %.pn10.i.i, %if.end.i59.for.body.i.i62_crit_edge ]
  %flow.0.i.i = getelementptr i8, ptr %.pn12.i.i, i32 -40
  %call.i.i.i60 = call ptr @mlx5e_flow_get(ptr noundef %flow.0.i.i) #15
  %cmp.i.i.i.i61 = icmp ugt ptr %call.i.i.i60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i61, label %if.then.i.i.i64, label %if.end.i.i.i69

if.then.i.i.i64:                                  ; preds = %for.body.i.i62
  call void @__sanitizer_cov_trace_pc() #17
  %del_hw_done.i.i.i63 = getelementptr i8, ptr %.pn12.i.i, i32 900
  call void @wait_for_completion(ptr noundef %del_hw_done.i.i.i63) #15
  br label %mlx5e_take_tmp_flow.exit.i.i75

if.end.i.i.i69:                                   ; preds = %for.body.i.i62
  %init_done.i.i.i65 = getelementptr i8, ptr %.pn12.i.i, i32 844
  call void @wait_for_completion(ptr noundef %init_done.i.i.i65) #15
  %tmp_entry_index.i.i.i66 = getelementptr i8, ptr %.pn12.i.i, i32 820
  %245 = ptrtoint ptr %tmp_entry_index.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %tmp_entry_index.i.i.i66, align 4
  %tmp_list.i.i.i67 = getelementptr i8, ptr %.pn12.i.i, i32 824
  %246 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %decap_flows.i, align 4
  %call.i.i.i.i.i68 = call zeroext i1 @__list_add_valid(ptr noundef %tmp_list.i.i.i67, ptr noundef nonnull %decap_flows.i, ptr noundef %247) #15
  br i1 %call.i.i.i.i.i68, label %if.end.i.i.i.i.i72, label %if.end.i.i.i69.mlx5e_take_tmp_flow.exit.i.i75_crit_edge

if.end.i.i.i69.mlx5e_take_tmp_flow.exit.i.i75_crit_edge: ; preds = %if.end.i.i.i69
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_take_tmp_flow.exit.i.i75

if.end.i.i.i.i.i72:                               ; preds = %if.end.i.i.i69
  call void @__sanitizer_cov_trace_pc() #17
  %prev1.i.i.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %prev1.i.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %tmp_list.i.i.i67, ptr %prev1.i.i.i.i.i70, align 4
  %249 = ptrtoint ptr %tmp_list.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %247, ptr %tmp_list.i.i.i67, align 4
  %prev3.i.i.i.i.i71 = getelementptr i8, ptr %.pn12.i.i, i32 828
  %250 = ptrtoint ptr %prev3.i.i.i.i.i71 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %decap_flows.i, ptr %prev3.i.i.i.i.i71, align 4
  %251 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store volatile ptr %tmp_list.i.i.i67, ptr %decap_flows.i, align 4
  br label %mlx5e_take_tmp_flow.exit.i.i75

mlx5e_take_tmp_flow.exit.i.i75:                   ; preds = %if.end.i.i.i.i.i72, %if.end.i.i.i69.mlx5e_take_tmp_flow.exit.i.i75_crit_edge, %if.then.i.i.i64
  %252 = ptrtoint ptr %.pn12.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %.pn.i.i73 = load ptr, ptr %.pn12.i.i, align 4
  %cmp.not.i.i74 = icmp eq ptr %.pn.i.i73, %decap_flows.i.i
  br i1 %cmp.not.i.i74, label %mlx5e_take_tmp_flow.exit.i.i75.mlx5e_take_all_route_decap_flows.exit.i_crit_edge, label %mlx5e_take_tmp_flow.exit.i.i75.for.body.i.i62_crit_edge

mlx5e_take_tmp_flow.exit.i.i75.for.body.i.i62_crit_edge: ; preds = %mlx5e_take_tmp_flow.exit.i.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i62

mlx5e_take_tmp_flow.exit.i.i75.mlx5e_take_all_route_decap_flows.exit.i_crit_edge: ; preds = %mlx5e_take_tmp_flow.exit.i.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_take_all_route_decap_flows.exit.i

mlx5e_take_all_route_decap_flows.exit.i:          ; preds = %mlx5e_take_tmp_flow.exit.i.i75.mlx5e_take_all_route_decap_flows.exit.i_crit_edge, %if.end.i59.mlx5e_take_all_route_decap_flows.exit.i_crit_edge
  %253 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %flags.i, align 4
  %and.i.i77 = and i32 %254, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool.i.not.i78 = icmp eq i32 %and.i.i77, 0
  br i1 %tobool.i.not.i78, label %mlx5e_take_all_route_decap_flows.exit.i.if.end4.i_crit_edge, label %if.then3.i

mlx5e_take_all_route_decap_flows.exit.i.if.end4.i_crit_edge: ; preds = %mlx5e_take_all_route_decap_flows.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then3.i:                                       ; preds = %mlx5e_take_all_route_decap_flows.exit.i
  %255 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mdev, align 64
  %eswitch.i.i80 = getelementptr inbounds %struct.mlx5_core_dev, ptr %256, i32 0, i32 17, i32 28
  %257 = ptrtoint ptr %eswitch.i.i80 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %eswitch.i.i80, align 4
  %259 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %.pn12.i13.i = load ptr, ptr %decap_flows.i, align 4
  %cmp.not14.i.i = icmp eq ptr %.pn12.i13.i, %decap_flows.i
  br i1 %cmp.not14.i.i, label %if.then3.i.if.end4.i_crit_edge, label %if.then3.i.for.body.i14.i_crit_edge

if.then3.i.for.body.i14.i_crit_edge:              ; preds = %if.then3.i
  br label %for.body.i14.i

if.then3.i.if.end4.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

for.body.i14.i:                                   ; preds = %for.inc.i.i.for.body.i14.i_crit_edge, %if.then3.i.for.body.i14.i_crit_edge
  %.pn15.i.i = phi ptr [ %.pn.i15.i, %for.inc.i.i.for.body.i14.i_crit_edge ], [ %.pn12.i13.i, %if.then3.i.for.body.i14.i_crit_edge ]
  %flow.016.i.i = getelementptr i8, ptr %.pn15.i.i, i32 -864
  %call.i.i81 = call zeroext i1 @mlx5e_is_offloaded_flow(ptr noundef %flow.016.i.i) #15
  br i1 %call.i.i81, label %if.then.i.i82, label %for.body.i14.i.for.inc.i.i_crit_edge

for.body.i14.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then.i.i82:                                    ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #17
  %attr.i.i = getelementptr i8, ptr %.pn15.i.i, i32 136
  %260 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %attr.i.i, align 8
  call void @mlx5e_tc_unoffload_fdb_rules(ptr noundef %258, ptr noundef %flow.016.i.i, ptr noundef %261) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i82, %for.body.i14.i.for.inc.i.i_crit_edge
  %262 = ptrtoint ptr %.pn15.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %.pn.i15.i = load ptr, ptr %.pn15.i.i, align 4
  %cmp.not.i16.i = icmp eq ptr %.pn.i15.i, %decap_flows.i
  br i1 %cmp.not.i16.i, label %for.inc.i.i.if.end4.i_crit_edge, label %for.inc.i.i.for.body.i14.i_crit_edge

for.inc.i.i.for.body.i14.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i14.i

for.inc.i.i.if.end4.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.inc.i.i.if.end4.i_crit_edge, %if.then3.i.if.end4.i_crit_edge, %mlx5e_take_all_route_decap_flows.exit.i.if.end4.i_crit_edge
  br i1 %cmp, label %if.then6.i, label %if.end4.i.if.end7.i95_crit_edge

if.end4.i.if.end7.i95_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i95

if.then6.i:                                       ; preds = %if.end4.i
  %263 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mdev, align 64
  %eswitch.i18.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %264, i32 0, i32 17, i32 28
  %265 = ptrtoint ptr %eswitch.i18.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %eswitch.i18.i, align 4
  %267 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %.pn53.i.i = load ptr, ptr %decap_flows.i, align 4
  %cmp.not55.i.i = icmp eq ptr %.pn53.i.i, %decap_flows.i
  br i1 %cmp.not55.i.i, label %if.then6.i.if.end7.i95_crit_edge, label %if.then6.i.for.body.i19.i_crit_edge

if.then6.i.for.body.i19.i_crit_edge:              ; preds = %if.then6.i
  br label %for.body.i19.i

if.then6.i.if.end7.i95_crit_edge:                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i95

for.body.i19.i:                                   ; preds = %cleanup.i.i93.for.body.i19.i_crit_edge, %if.then6.i.for.body.i19.i_crit_edge
  %.pn56.i.i = phi ptr [ %.pn.i20.i, %cleanup.i.i93.for.body.i19.i_crit_edge ], [ %.pn53.i.i, %if.then6.i.for.body.i19.i_crit_edge ]
  %flow.057.i.i = getelementptr i8, ptr %.pn56.i.i, i32 -864
  %attr2.i.i83 = getelementptr i8, ptr %.pn56.i.i, i32 136
  %268 = ptrtoint ptr %attr2.i.i83 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %attr2.i.i83, align 8
  %flags.i.i.i84 = getelementptr i8, ptr %.pn56.i.i, i32 -848
  %270 = ptrtoint ptr %flags.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load volatile i32, ptr %flags.i.i.i84, align 4
  %272 = and i32 %271, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %272)
  %tobool.i.not.i.i85 = icmp eq i32 %272, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !120
  br i1 %tobool.i.not.i.i85, label %if.end.i.i87, label %for.body.i19.i.cleanup.i.i93_crit_edge

for.body.i19.i.cleanup.i.i93_crit_edge:           ; preds = %for.body.i19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i93

if.end.i.i87:                                     ; preds = %for.body.i19.i
  %parse_attr3.i.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %269, i32 0, i32 5
  %273 = ptrtoint ptr %parse_attr3.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %parse_attr3.i.i, align 4
  %spec4.i.i = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %274, i32 0, i32 3
  %filter_dev.i.i = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %filter_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %filter_dev.i.i, align 4
  %call5.i.i = call i32 @mlx5e_tc_tun_route_lookup(ptr noundef %add.ptr.i, ptr noundef %spec4.i.i, ptr noundef %269, ptr noundef %276) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i.i86 = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i.i86, label %if.end9.i.i, label %do.end.i.i91

do.end.i.i91:                                     ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #17
  %277 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %mdev, align 64
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %278, align 8
  %281 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i.i88 = and i32 %281, -16384
  %282 = inttoptr i32 %and.i.i.i88 to ptr
  %task.i.i89 = getelementptr inbounds %struct.thread_info, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %task.i.i89 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %task.i.i89, align 8
  %pid.i.i90 = getelementptr inbounds %struct.task_struct, ptr %284, i32 0, i32 68
  %285 = ptrtoint ptr %pid.i.i90 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %pid.i.i90, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %280, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef 1489, i32 noundef %286, i32 noundef %call5.i.i) #20
  br label %cleanup.i.i93

if.end9.i.i:                                      ; preds = %if.end.i.i87
  %call10.i.i = call ptr @mlx5e_tc_offload_fdb_rules(ptr noundef %266, ptr noundef %flow.057.i.i, ptr noundef %spec4.i.i, ptr noundef %269) #15
  %cmp.i.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then12.i.i, label %if.else.i.i92

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %287 = ptrtoint ptr %call10.i.i to i32
  %288 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %mdev, align 64
  %290 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %289, align 8
  %292 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i51.i.i = and i32 %292, -16384
  %293 = inttoptr i32 %and.i51.i.i to ptr
  %task20.i.i = getelementptr inbounds %struct.thread_info, ptr %293, i32 0, i32 2
  %294 = ptrtoint ptr %task20.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %task20.i.i, align 8
  %pid21.i.i = getelementptr inbounds %struct.task_struct, ptr %295, i32 0, i32 68
  %296 = ptrtoint ptr %pid21.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %pid21.i.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %291, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef 1497, i32 noundef %297, i32 noundef %287) #20
  br label %cleanup.i.i93

if.else.i.i92:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rule22.i.i = getelementptr i8, ptr %.pn56.i.i, i32 -844
  %298 = ptrtoint ptr %rule22.i.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %call10.i.i, ptr %rule22.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !119
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i.i.i84) #15
  br label %cleanup.i.i93

cleanup.i.i93:                                    ; preds = %if.else.i.i92, %if.then12.i.i, %do.end.i.i91, %for.body.i19.i.cleanup.i.i93_crit_edge
  %299 = ptrtoint ptr %.pn56.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %.pn.i20.i = load ptr, ptr %.pn56.i.i, align 4
  %cmp.not.i21.i = icmp eq ptr %.pn.i20.i, %decap_flows.i
  br i1 %cmp.not.i21.i, label %cleanup.i.i93.if.end7.i95_crit_edge, label %cleanup.i.i93.for.body.i19.i_crit_edge

cleanup.i.i93.for.body.i19.i_crit_edge:           ; preds = %cleanup.i.i93
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i19.i

cleanup.i.i93.if.end7.i95_crit_edge:              ; preds = %cleanup.i.i93
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7.i95

if.end7.i95:                                      ; preds = %cleanup.i.i93.if.end7.i95_crit_edge, %if.then6.i.if.end7.i95_crit_edge, %if.end4.i.if.end7.i95_crit_edge
  %300 = ptrtoint ptr %decap_flows.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load volatile ptr, ptr %decap_flows.i, align 4
  %cmp.i.not.i.i94 = icmp eq ptr %301, %decap_flows.i
  br i1 %cmp.i.not.i.i94, label %if.end7.i95.mlx5e_update_route_decap_flows.exit.thread_crit_edge, label %if.then.i22.i

if.end7.i95.mlx5e_update_route_decap_flows.exit.thread_crit_edge: ; preds = %if.end7.i95
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_update_route_decap_flows.exit.thread

if.then.i22.i:                                    ; preds = %if.end7.i95
  call void @__sanitizer_cov_trace_pc() #17
  %302 = ptrtoint ptr %flow_list to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %flow_list, align 4
  %304 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %235, align 4
  %prev3.i.i.i96 = getelementptr inbounds %struct.list_head, ptr %301, i32 0, i32 1
  %306 = ptrtoint ptr %prev3.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %306)
  store ptr %flow_list, ptr %prev3.i.i.i96, align 4
  store ptr %301, ptr %flow_list, align 4
  %307 = ptrtoint ptr %305 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %303, ptr %305, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %303, i32 0, i32 1
  %308 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %305, ptr %prev6.i.i.i, align 4
  br label %mlx5e_update_route_decap_flows.exit.thread

mlx5e_update_route_decap_flows.exit.thread:       ; preds = %if.then.i22.i, %if.end7.i95.mlx5e_update_route_decap_flows.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decap_flows.i) #15
  br label %if.end24

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %decap_flows.i) #15
  %309 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mdev, align 64
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %310, align 8
  %313 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i99 = and i32 %313, -16384
  %314 = inttoptr i32 %and.i99 to ptr
  %task22 = getelementptr inbounds %struct.thread_info, ptr %314, i32 0, i32 2
  %315 = ptrtoint ptr %task22 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %task22, align 8
  %pid23 = getelementptr inbounds %struct.task_struct, ptr %316, i32 0, i32 68
  %317 = ptrtoint ptr %pid23 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %pid23, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %312, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 1557, i32 noundef %318, i32 noundef -19) #20
  br label %if.end24

if.end24:                                         ; preds = %do.end18, %mlx5e_update_route_decap_flows.exit.thread
  br i1 %cmp, label %if.then26, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %319 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %flags.i, align 4
  %or = or i32 %320, 1
  store i32 %or, ptr %flags.i, align 4
  br label %out

out:                                              ; preds = %if.then26, %if.end24.out_crit_edge, %entry.out_crit_edge
  call void @mutex_unlock(ptr noundef %encap_tbl_lock) #15
  call void @rtnl_unlock() #15
  call void @mlx5e_put_flow_list(ptr noundef %add.ptr.i, ptr noundef nonnull %flow_list) #15
  %321 = ptrtoint ptr %r2 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %r2, align 4
  %323 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %mdev, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %324, i32 0, i32 17, i32 28
  %325 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %eswitch.i, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %322, i32 0, i32 5
  %encap_tbl_lock.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %326, i32 0, i32 15, i32 9
  %call.i = call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt.i, ptr noundef %encap_tbl_lock.i) #15
  br i1 %call.i, label %if.end.i100, label %out.mlx5e_route_put.exit_crit_edge

out.mlx5e_route_put.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_route_put.exit

if.end.i100:                                      ; preds = %out
  %pprev.i.i.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %322, i32 0, i32 4, i32 1
  %327 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %328, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end.i100.hash_del_rcu.exit.i_crit_edge, label %if.then.i.i.i101

if.end.i100.hash_del_rcu.exit.i_crit_edge:        ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #17
  br label %hash_del_rcu.exit.i

if.then.i.i.i101:                                 ; preds = %if.end.i100
  %hlist.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %322, i32 0, i32 4
  %329 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %hlist.i, align 4
  %331 = ptrtoint ptr %328 to i32
  call void @__asan_store4_noabort(i32 %331)
  store volatile ptr %330, ptr %328, align 4
  %tobool.not.i7.i.i.i = icmp eq ptr %330, null
  br i1 %tobool.not.i7.i.i.i, label %if.then.i.i.i101.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i101.__hlist_del.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i101
  call void @__sanitizer_cov_trace_pc() #17
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %330, i32 0, i32 1
  %332 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store volatile ptr %328, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i101.__hlist_del.exit.i.i.i_crit_edge
  %333 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store volatile ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del_rcu.exit.i

hash_del_rcu.exit.i:                              ; preds = %__hlist_del.exit.i.i.i, %if.end.i100.hash_del_rcu.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %encap_tbl_lock.i) #15
  %decap_flows.i.i102 = getelementptr inbounds %struct.mlx5e_route_entry, ptr %322, i32 0, i32 2
  %334 = ptrtoint ptr %decap_flows.i.i102 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load volatile ptr, ptr %decap_flows.i.i102, align 4
  %cmp.i.not.i.i103 = icmp eq ptr %335, %decap_flows.i.i102
  br i1 %cmp.i.not.i.i103, label %hash_del_rcu.exit.i.if.end.i.i105_crit_edge, label %do.end.i.i104, !prof !127

hash_del_rcu.exit.i.if.end.i.i105_crit_edge:      ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i105

do.end.i.i104:                                    ; preds = %hash_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 987, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i.i105

if.end.i.i105:                                    ; preds = %do.end.i.i104, %hash_del_rcu.exit.i.if.end.i.i105_crit_edge
  %encap_entries.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %322, i32 0, i32 1
  %336 = ptrtoint ptr %encap_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load volatile ptr, ptr %encap_entries.i.i, align 4
  %cmp.i1.not.i.i = icmp eq ptr %337, %encap_entries.i.i
  br i1 %cmp.i1.not.i.i, label %if.end.i.i105.if.end47.i.i_crit_edge, label %do.end41.i.i, !prof !127

if.end.i.i105.if.end47.i.i_crit_edge:             ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end47.i.i

do.end41.i.i:                                     ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 988, i32 noundef 9, ptr noundef null) #15
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.end41.i.i, %if.end.i.i105.if.end47.i.i_crit_edge
  %tobool56.not.i.i = icmp eq ptr %322, null
  br i1 %tobool56.not.i.i, label %if.end47.i.i.mlx5e_route_put.exit_crit_edge, label %do.end60.i.i

if.end47.i.i.mlx5e_route_put.exit_crit_edge:      ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mlx5e_route_put.exit

do.end60.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rcu.i.i = getelementptr inbounds %struct.mlx5e_route_entry, ptr %322, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull inttoptr (i32 56 to ptr)) #15
  br label %mlx5e_route_put.exit

mlx5e_route_put.exit:                             ; preds = %do.end60.i.i, %if.end47.i.i.mlx5e_route_put.exit_crit_edge, %out.mlx5e_route_put.exit_crit_edge
  %338 = ptrtoint ptr %ul_dev1 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %ul_dev1, align 4
  %tobool.not.i107 = icmp eq ptr %339, null
  br i1 %tobool.not.i107, label %mlx5e_route_put.exit.dev_put.exit_crit_edge, label %do.body1.i

mlx5e_route_put.exit.dev_put.exit_crit_edge:      ; preds = %mlx5e_route_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

do.body1.i:                                       ; preds = %mlx5e_route_put.exit
  %340 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !137
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %339, i32 0, i32 118
  %341 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %pcpu_refcnt.i, align 4
  %343 = ptrtoint ptr %342 to i32
  %344 = call i32 @llvm.read_register.i32(metadata !109) #15
  %and.i.i108 = and i32 %344, -16384
  %345 = inttoptr i32 %and.i.i108 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %345, i32 0, i32 3
  %346 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %347
  %348 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %349, %343
  %350 = inttoptr i32 %add.i to ptr
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %350, align 4
  %add13.i = add i32 %352, -1
  store i32 %add13.i, ptr %350, align 4
  %353 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !138
  %and.i.i.i109 = and i32 %353, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i109)
  %tobool24.not.i = icmp eq i32 %and.i.i.i109, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !122

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %340) #15, !srcloc !139
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %mlx5e_route_put.exit.dev_put.exit_crit_edge
  call void @kfree(ptr noundef %work) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flow_list) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_update_header_ipv4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_tun_update_header_ipv6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_add_flow_mod_hdr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_tc_is_vf_tunnel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_query_route_vport(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_set(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tc_match_to_reg_mod_hdr_change(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tc_match_to_reg_set_and_get_id(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlx5e_route_lookup_for_update(ptr noundef %encap, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp eq i32 %1, 4
  %endpoint_ip.i = getelementptr inbounds %struct.mlx5e_route_key, ptr %key, i32 0, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx67.i.i = getelementptr i8, ptr %endpoint_ip.i, i32 3
  %2 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %3 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, -559038733
  %arrayidx72.i.i = getelementptr i8, ptr %endpoint_ip.i, i32 2
  %4 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %5 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %add70.i.i, %shl74.i.i
  %arrayidx77.i.i = getelementptr i8, ptr %endpoint_ip.i, i32 1
  %6 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %7 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %add75.i.i, %shl79.i.i
  %8 = ptrtoint ptr %endpoint_ip.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %endpoint_ip.i, align 1
  %conv83.i.i = zext i8 %9 to i32
  %add84.i.i = add i32 %add80.i.i, %conv83.i.i
  %xor88.i.i = xor i32 %add84.i.i, -1874655147
  %sub90.i.i = add i32 %xor88.i.i, -407022722
  %xor91.i.i = xor i32 %sub90.i.i, -559038733
  %or.i208.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #15
  %sub93.i.i = sub i32 %xor91.i.i, %or.i208.i.i
  %xor94.i.i = xor i32 %sub93.i.i, -1874655147
  %or.i209.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #15
  %sub96.i.i = sub i32 %xor94.i.i, %or.i209.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i210.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #15
  %sub99.i.i = sub i32 %xor97.i.i, %or.i210.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i211.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #15
  %sub102.i.i = sub i32 %xor100.i.i, %or.i211.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i212.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #15
  %sub105.i.i = sub i32 %xor103.i.i, %or.i212.i.i
  br label %hash_route_info.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2.i = tail call fastcc i32 @jhash(ptr noundef %endpoint_ip.i, i32 noundef 16, i32 noundef 0) #15
  br label %hash_route_info.exit

hash_route_info.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub105.i.i, %if.then.i ], [ %call2.i, %if.end.i ]
  %route_lock = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %encap, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %route_lock) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %route_tbl_last_update = getelementptr inbounds %struct.mlx5e_tc_tun_encap, ptr %encap, i32 0, i32 3
  %11 = ptrtoint ptr %route_tbl_last_update to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %route_tbl_last_update, align 4
  %call1 = tail call fastcc ptr @mlx5e_route_get(ptr noundef %encap, ptr noundef %key, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_bh(ptr noundef %route_lock) #15
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nobuiltin }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !43, !44, !46, !47, !49, !51, !53, !54, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !103, !105, !107}
!llvm.named.register.sp = !{!109}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 166, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx5e_tc_encap_flows_add._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx5e_tc_encap_flows_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 190, i32 4}
!10 = !{ptr @mlx5e_tc_encap_flows_add._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mlx5e_tc_encap_flows_add._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 228, i32 4}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mlx5e_tc_encap_flows_del._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mlx5e_tc_encap_flows_del._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @mlx5e_attach_encap.__msg, !18, !"__msg", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 769, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 850, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mlx5e_attach_encap.__UNIQUE_ID_ddebug705, !20, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!24 = !{ptr @mlx5e_attach_decap.__msg, !25, !"__msg", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 899, i32 3}
!26 = !{ptr @mlx5e_tc_tun_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1710, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/diag/en_tc_tracepoint.h", i32 77, i32 1}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!40 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 583, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @is_duplicated_encap_entry.__msg, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 631, i32 3}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 632, i32 28}
!51 = !{ptr @init_completion.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/completion.h", i32 87, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 603, i32 2}
!56 = !{ptr @mlx5e_tc_init_fib_work.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1113, i32 2}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1551, i32 3}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mlx5e_tc_fib_event_work._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mlx5e_tc_fib_event_work._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1556, i32 3}
!66 = !{ptr @mlx5e_tc_fib_event_work._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlx5e_tc_fib_event_work._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1358, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mlx5e_reoffload_encap._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mlx5e_reoffload_encap._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1379, i32 4}
!75 = !{ptr @mlx5e_reoffload_encap._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mlx5e_reoffload_encap._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1385, i32 4}
!79 = !{ptr @mlx5e_reoffload_encap._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @mlx5e_reoffload_encap._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @mlx5e_reoffload_encap._entry.37, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1399, i32 5}
!83 = !{ptr @mlx5e_reoffload_encap._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @mlx5e_reoffload_encap._entry.39, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1413, i32 5}
!86 = !{ptr @mlx5e_reoffload_encap._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1488, i32 4}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mlx5e_reoffload_decap._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mlx5e_reoffload_decap._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1496, i32 4}
!94 = !{ptr @mlx5e_reoffload_decap._entry.43, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mlx5e_reoffload_decap._entry_ptr.45, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mlx5e_tc_tun_fib_event.__msg, !97, !"__msg", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1686, i32 4}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc_tun_encap.c", i32 1687, i32 4}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @mlx5e_tc_tun_fib_event._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @mlx5e_tc_tun_fib_event._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/net/nexthop.h", i32 468, i32 2}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/net/nexthop.h", i32 487, i32 12}
!107 = distinct !{null, !108, !"__warned", i1 false, i1 false}
!108 = !{!"../include/net/nexthop.h", i32 493, i32 8}
!109 = !{!"sp"}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i64 2160547045}
!120 = !{i64 2160548236}
!121 = !{i64 2149305391}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i64 2149305657}
!124 = !{ptr @mlx5e_encap_initialized, ptr @mlx5e_encap_valid}
!125 = !{i64 2148505149}
!126 = !{i64 2148419613, i64 2148419645, i64 2148419674, i64 2148419708, i64 2148419739, i64 2148419762}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2149546516}
!129 = !{i64 2148229011, i64 2148229016, i64 2148229029, i64 2148229073, i64 2148229107, i64 2148229128}
!130 = !{i64 2160698348}
!131 = !{i64 2160698605}
!132 = !{i64 2149313950}
!133 = !{i64 2149314986}
!134 = !{i64 901131, i64 901155, i64 901176, i64 901193, i64 901210}
!135 = !{i64 2150390970}
!136 = !{!"auto-init"}
!137 = !{i64 809876, i64 809937}
!138 = !{i64 812608}
!139 = !{i64 812893}
!140 = !{i64 2148417148, i64 2148417180, i64 2148417209, i64 2148417243, i64 2148417274, i64 2148417297}
!141 = !{i8 0, i8 2}
