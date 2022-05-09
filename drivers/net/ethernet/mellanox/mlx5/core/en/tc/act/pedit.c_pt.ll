; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_act = type { ptr, ptr, ptr }
%struct.mlx5e_tc_flow = type { %struct.rhash_head, ptr, i64, i32, [2 x ptr], %struct.list_head, ptr, %struct.list_head, ptr, [32 x %struct.encap_route_flow_item], [32 x %struct.encap_flow_item], ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.list_head, %struct.refcount_struct, %struct.callback_head, %struct.completion, %struct.completion, i32, ptr }
%struct.rhash_head = type { ptr }
%struct.encap_route_flow_item = type { ptr, i32 }
%struct.encap_flow_item = type { ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.222, ptr }
%union.anon.222 = type { %struct.anon.230 }
%struct.anon.230 = type { i32, i64, i64, i64, i32 }
%struct.anon.224 = type { i32, i32, i32, i32 }
%struct.mlx5e_tc_flow_parse_attr = type { [32 x ptr], [32 x %struct.mlx5e_mpls_info], ptr, %struct.mlx5_flow_spec, %struct.mlx5e_tc_mod_hdr_acts, [32 x i32], %struct.ethhdr, %struct.mlx5e_tc_act_parse_state }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.mlx5e_tc_act_parse_state = type { i32, ptr, ptr, i8, i8, i8, i8, i8, ptr, %struct.mlx5e_mpls_info, [2 x %struct.pedit_headers_action], [32 x i32], i32, ptr }
%struct.pedit_headers_action = type { %struct.pedit_headers, %struct.pedit_headers, i32 }
%struct.pedit_headers = type { %struct.ethhdr, %struct.vlan_hdr, %struct.iphdr, %struct.ipv6hdr, %struct.tcphdr, %struct.udphdr }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
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
%struct.spinlock = type { %union.anon.17 }
%union.anon.17 = type { %struct.raw_spinlock }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.netdev_net_notifier = type { %struct.list_head, ptr }
%struct.mlx5e_promisc_table = type { %struct.mlx5e_flow_table, ptr }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5e_l2_table = type { %struct.mlx5e_flow_table, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.mlx5e_l2_rule, %struct.mlx5e_l2_rule, ptr, i8, i8, i8 }
%struct.mlx5e_l2_rule = type { [8 x i8], ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.239 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.239 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.240], ptr, ptr }
%struct.anon.240 = type { i32, ptr, ptr, ptr, ptr, i32 }

@mlx5e_tc_act_pedit = dso_local global { %struct.mlx5e_tc_act, [20 x i8] } { %struct.mlx5e_tc_act { ptr @tc_act_can_offload_pedit, ptr @tc_act_parse_pedit, ptr null }, [20 x i8] zeroinitializer }, align 32
@parse_pedit_to_reformat.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mlx5_core: Unsupported action id\00", [63 x i8] zeroinitializer }, align 32
@parse_pedit_to_reformat.__msg.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlx5_core: Only Ethernet modification is supported\00", [45 x i8] zeroinitializer }, align 32
@parse_pedit_to_modify_hdr.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mlx5_core: legacy pedit isn't offloaded\00", [56 x i8] zeroinitializer }, align 32
@parse_pedit_to_modify_hdr.__msg.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: The pedit offload action is not supported\00", [43 x i8] zeroinitializer }, align 32
@pedit_header_offsets = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 0, i32 20, i32 40, i32 80, i32 100], [40 x i8] zeroinitializer }, align 32
@set_pedit_val.__msg = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"mlx5_core: curr_pmask and new mask same. Acting twice on same location\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [19 x i8] c"mlx5e_tc_act_pedit\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 162, i32 21 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 91, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 96, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 58, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 63, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"pedit_header_offsets\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 10, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.22 = private constant [61 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 31, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @mlx5e_tc_act_pedit, ptr @parse_pedit_to_reformat.__msg, ptr @parse_pedit_to_reformat.__msg.1, ptr @parse_pedit_to_modify_hdr.__msg, ptr @parse_pedit_to_modify_hdr.__msg.2, ptr @pedit_header_offsets, ptr @set_pedit_val.__msg], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_pedit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pedit_to_reformat.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pedit_to_reformat.__msg.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pedit_to_modify_hdr.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_pedit_to_modify_hdr.__msg.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pedit_header_offsets to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pedit_val.__msg to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_tc_act_pedit_parse_action(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %act, i32 noundef %namespace, ptr nocapture noundef %parse_attr, ptr nocapture noundef %hdrs, ptr noundef %flow, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %flow, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %flags.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %flow, i32 0, i32 3
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !23
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %act, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 13
  br i1 %cmp.not.i, label %if.end2.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @parse_pedit_to_reformat.__msg) #3
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.return_crit_edge, label %if.then1.i

do.body.i.return_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @parse_pedit_to_reformat.__msg, ptr %extack, align 4
  br label %return

if.end2.i:                                        ; preds = %if.then
  %6 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp3.not.i = icmp eq i32 %8, 1
  br i1 %cmp3.not.i, label %if.end13.i, label %do.body5.i

do.body5.i:                                       ; preds = %if.end2.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @parse_pedit_to_reformat.__msg.1) #3
  %tobool7.not.i = icmp eq ptr %extack, null
  br i1 %tobool7.not.i, label %do.body5.i.return_crit_edge, label %if.then8.i

do.body5.i.return_crit_edge:                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then8.i:                                       ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @parse_pedit_to_reformat.__msg.1, ptr %extack, align 4
  br label %return

if.end13.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #5
  %mask14.i = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask14.i, align 8
  %neg.i = xor i32 %11, -1
  %val15.i = getelementptr inbounds %struct.anon.224, ptr %6, i32 0, i32 3
  %12 = ptrtoint ptr %val15.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val15.i, align 4
  %offset16.i = getelementptr inbounds %struct.anon.224, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %offset16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %offset16.i, align 4
  %eth.i = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %parse_attr, i32 0, i32 6
  %and.i = and i32 %13, %neg.i
  %shr.i = lshr i32 %15, 2
  %add.ptr.i = getelementptr i32, ptr %eth.i, i32 %shr.i
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %17, %and.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %18 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %act, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %19)
  %cmp.i = icmp ne i32 %19, 13
  %20 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 8
  %conv3.i = and i32 %22, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp4.i = icmp eq i32 %conv3.i, 0
  br i1 %cmp4.i, label %do.body.i8, label %if.end7.i

do.body.i8:                                       ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @parse_pedit_to_modify_hdr.__msg) #3
  %tobool.not.i7 = icmp eq ptr %extack, null
  br i1 %tobool.not.i7, label %do.body.i8.return_crit_edge, label %if.then6.i

do.body.i8.return_crit_edge:                      ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then6.i:                                       ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @parse_pedit_to_modify_hdr.__msg, ptr %extack, align 4
  br label %return

if.end7.i:                                        ; preds = %if.end
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %24 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %namespace)
  %cmp.i.i = icmp eq i32 %namespace, 8
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %25, i32 0, i32 8, i32 0, i32 8
  %arrayidx3.i.i = getelementptr %struct.mlx5_core_dev, ptr %25, i32 0, i32 8, i32 0, i32 7
  %.pn.in.i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i, ptr %arrayidx3.i.i
  %26 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %retval.0.in.in.in.i.i = getelementptr i32, ptr %.pn.i.i, i32 17
  %27 = ptrtoint ptr %retval.0.in.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %retval.0.in.in.i.i = load i32, ptr %retval.0.in.in.in.i.i, align 4
  %28 = and i32 %retval.0.in.in.i.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool8.not.i = icmp eq i32 %28, 0
  br i1 %tobool8.not.i, label %do.body10.i, label %if.end18.i

do.body10.i:                                      ; preds = %if.end7.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @parse_pedit_to_modify_hdr.__msg.2) #3
  %tobool12.not.i = icmp eq ptr %extack, null
  br i1 %tobool12.not.i, label %do.body10.i.return_crit_edge, label %if.then13.i

do.body10.i.return_crit_edge:                     ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then13.i:                                      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @parse_pedit_to_modify_hdr.__msg.2, ptr %extack, align 4
  br label %return

if.end18.i:                                       ; preds = %if.end7.i
  %mask19.i = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %mask19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mask19.i, align 8
  %offset21.i = getelementptr inbounds %struct.anon.224, ptr %20, i32 0, i32 1
  %32 = ptrtoint ptr %offset21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset21.i, align 4
  %neg.i9 = xor i32 %31, -1
  %idxprom.i = zext i1 %cmp.i to i32
  %masks.i.i = getelementptr %struct.pedit_headers_action, ptr %hdrs, i32 %idxprom.i, i32 1
  %arrayidx.i1.i = getelementptr [6 x i32], ptr @pedit_header_offsets, i32 0, i32 %conv3.i
  %34 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %masks.i.i, i32 %35
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %33
  %36 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr1.i.i, align 4
  %and.i.i = and i32 %37, %neg.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end18.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @set_pedit_val.__msg) #3
  %tobool6.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool6.not.i.i, label %do.body.i.i.return_crit_edge, label %if.then7.i.i

do.body.i.i.return_crit_edge:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @set_pedit_val.__msg, ptr %extack, align 4
  br label %return

if.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr %struct.pedit_headers_action, ptr %hdrs, i32 %idxprom.i
  %val20.i = getelementptr inbounds %struct.anon.224, ptr %20, i32 0, i32 3
  %39 = ptrtoint ptr %val20.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val20.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %arrayidx.i, i32 %35
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr4.i.i, i32 %33
  %or.i.i = or i32 %37, %neg.i9
  %41 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i.i, ptr %add.ptr1.i.i, align 4
  %and9.i.i = and i32 %40, %neg.i9
  %42 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr5.i.i, align 4
  %or10.i.i = or i32 %43, %and9.i.i
  store i32 %or10.i.i, ptr %add.ptr5.i.i, align 4
  %pedits.i = getelementptr %struct.pedit_headers_action, ptr %hdrs, i32 %idxprom.i, i32 2
  %44 = ptrtoint ptr %pedits.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pedits.i, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %pedits.i, align 4
  br label %return

return:                                           ; preds = %if.end25.i, %if.then7.i.i, %do.body.i.i.return_crit_edge, %if.then13.i, %do.body10.i.return_crit_edge, %if.then6.i, %do.body.i8.return_crit_edge, %if.end13.i, %if.then8.i, %do.body5.i.return_crit_edge, %if.then1.i, %do.body.i.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13.i ], [ -95, %if.then1.i ], [ -95, %do.body.i.return_crit_edge ], [ -95, %if.then8.i ], [ -95, %do.body5.i.return_crit_edge ], [ 0, %if.end25.i ], [ -95, %if.then6.i ], [ -95, %do.body.i8.return_crit_edge ], [ -95, %if.then13.i ], [ -95, %do.body10.i.return_crit_edge ], [ -95, %if.then7.i.i ], [ -95, %do.body.i.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tc_act_can_offload_pedit(ptr nocapture noundef readnone %parse_state, ptr nocapture noundef readnone %act, i32 noundef %act_index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_act_parse_pedit(ptr nocapture noundef %parse_state, ptr nocapture noundef readonly %act, ptr nocapture noundef readnone %priv, ptr nocapture noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flow1 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %0 = ptrtoint ptr %flow1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow1, align 4
  %call = tail call i32 @mlx5e_get_flow_namespace(ptr noundef %1) #3
  %priv2 = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %parse_attr = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %parse_attr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parse_attr, align 4
  %hdrs = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 10
  %extack = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extack, align 4
  %call4 = tail call i32 @mlx5e_tc_act_pedit_parse_action(ptr noundef %3, ptr noundef %act, i32 noundef %call, ptr noundef %5, ptr noundef %hdrs, ptr noundef %1, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i, align 4
  %10 = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !23
  br i1 %tobool.i.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %attr, align 4
  %or = or i32 %12, 64
  store i32 %or, ptr %attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp = icmp eq i32 %call, 8
  br i1 %cmp, label %if.then8, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %out_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 4
  %13 = ptrtoint ptr %out_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out_count, align 4
  %split_count = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 1, i32 3, i32 3
  %15 = ptrtoint ptr %split_count to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %split_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_get_flow_namespace(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @mlx5e_tc_act_pedit, !1, !"mlx5e_tc_act_pedit", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c", i32 162, i32 21}
!2 = !{ptr @parse_pedit_to_reformat.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c", i32 91, i32 3}
!4 = !{ptr @parse_pedit_to_reformat.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c", i32 96, i32 3}
!6 = !{ptr @parse_pedit_to_modify_hdr.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c", i32 58, i32 3}
!8 = !{ptr @parse_pedit_to_modify_hdr.__msg.2, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c", i32 63, i32 3}
!10 = !{ptr @set_pedit_val.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c", i32 31, i32 3}
!12 = !{ptr @pedit_header_offsets, !13, !"pedit_header_offsets", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/pedit.c", i32 10, i32 12}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2160504505}
