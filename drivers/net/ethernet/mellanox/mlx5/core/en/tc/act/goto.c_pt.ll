; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_tc_act = type { ptr, ptr, ptr }
%struct.mlx5e_tc_act_parse_state = type { i32, ptr, ptr, i8, i8, i8, i8, i8, ptr, %struct.mlx5e_mpls_info, [2 x %struct.pedit_headers_action], [32 x i32], i32, ptr }
%struct.mlx5e_mpls_info = type { i32, i8, i8, i8 }
%struct.pedit_headers_action = type { %struct.pedit_headers, %struct.pedit_headers, i32 }
%struct.pedit_headers = type { %struct.ethhdr, %struct.vlan_hdr, %struct.iphdr, %struct.ipv6hdr, %struct.tcphdr, %struct.udphdr }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.52 }
%union.anon.52 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
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
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.221, ptr }
%union.anon.221 = type { %struct.anon.226 }
%struct.anon.226 = type { i32, i64, i64, i64, i32 }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.mlx5_flow_attr = type { i32, ptr, ptr, %struct.mlx5_ct_attr, ptr, ptr, i32, i16, i32, ptr, ptr, i8, i8, i8, i8, i32, %union.anon.234 }
%struct.mlx5_ct_attr = type { i16, i16, ptr, ptr, i32 }
%union.anon.234 = type { [0 x %struct.mlx5_esw_flow_attr] }
%struct.mlx5_esw_flow_attr = type { ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x i16], [2 x i16], [2 x i8], i8, [32 x %struct.anon.235], ptr, ptr }
%struct.anon.235 = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.mlx5e_tc_flow_parse_attr = type { [32 x ptr], [32 x %struct.mlx5e_mpls_info], ptr, %struct.mlx5_flow_spec, %struct.mlx5e_tc_mod_hdr_acts, [32 x i32], %struct.ethhdr, %struct.mlx5e_tc_act_parse_state }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }

@mlx5e_tc_act_goto = dso_local global { %struct.mlx5e_tc_act, [20 x i8] } { %struct.mlx5e_tc_act { ptr @tc_act_can_offload_goto, ptr @tc_act_parse_goto, ptr @tc_act_post_parse_goto }, [20 x i8] zeroinitializer }, align 32
@validate_goto_chain.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"mlx5_core: Goto action is not supported\00", [56 x i8] zeroinitializer }, align 32
@validate_goto_chain.__msg.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx5_core: Goto lower numbered chain isn't supported\00", [43 x i8] zeroinitializer }, align 32
@validate_goto_chain.__msg.2 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"mlx5_core: Requested destination chain is out of supported range\00", [63 x i8] zeroinitializer }, align 32
@validate_goto_chain.__msg.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"mlx5_core: Goto chain is not allowed if action has reformat or decap\00", [59 x i8] zeroinitializer }, align 32
@tc_act_post_parse_goto.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mlx5_core: Decap with goto isn't supported\00", [53 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Decap with goto isn't supported\00", [32 x i8] zeroinitializer }, align 32
@tc_act_post_parse_goto.__msg.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mlx5_core: Mirroring goto chain rules isn't supported\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"mlx5e_tc_act_goto\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 118, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 30, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 36, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 41, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 49, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 105, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 106, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.27 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 111, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @mlx5e_tc_act_goto, ptr @validate_goto_chain.__msg, ptr @validate_goto_chain.__msg.1, ptr @validate_goto_chain.__msg.2, ptr @validate_goto_chain.__msg.3, ptr @tc_act_post_parse_goto.__msg, ptr @.str, ptr @tc_act_post_parse_goto.__msg.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_tc_act_goto to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_goto_chain.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_goto_chain.__msg.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_goto_chain.__msg.2 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_goto_chain.__msg.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_act_post_parse_goto.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_act_post_parse_goto.__msg.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @tc_act_can_offload_goto(ptr nocapture noundef readonly %parse_state, ptr nocapture noundef readonly %act, i32 noundef %act_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %flow2 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %2 = ptrtoint ptr %flow2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flow2, align 4
  %priv = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %call.i = tail call zeroext i1 @mlx5e_is_eswitch_flow(ptr noundef %3) #4
  %call1.i = tail call zeroext i1 @mlx5e_is_ft_flow(ptr noundef %3) #4
  %6 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 21
  br i1 %call.i, label %cond.true7.i, label %cond.false9.i

cond.true7.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 64
  %eswitch.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 17, i32 28
  %11 = ptrtoint ptr %eswitch.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eswitch.i, align 4
  %esw_chains_priv.i = getelementptr inbounds %struct.mlx5_eswitch, ptr %12, i32 0, i32 2, i32 0, i32 0, i32 12
  %13 = ptrtoint ptr %esw_chains_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond85.i = load ptr, ptr %esw_chains_priv.i, align 4
  %call586.i = tail call i32 @mlx5_chains_get_chain_range(ptr noundef %cond85.i) #4
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 64
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %15, i32 0, i32 8, i32 0, i32 8
  br label %cond.end19.i

cond.false9.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chains4.i = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 13, i32 3, i32 2
  %16 = ptrtoint ptr %chains4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond.i = load ptr, ptr %chains4.i, align 4
  %call5.i = tail call i32 @mlx5_chains_get_chain_range(ptr noundef %cond.i) #4
  %17 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev.i, align 64
  %arrayidx13.i = getelementptr %struct.mlx5_core_dev, ptr %18, i32 0, i32 8, i32 0, i32 7
  br label %cond.end19.i

cond.end19.i:                                     ; preds = %cond.false9.i, %cond.true7.i
  %call589.i = phi i32 [ %call586.i, %cond.true7.i ], [ %call5.i, %cond.false9.i ]
  %cond87.i = phi ptr [ %cond85.i, %cond.true7.i ], [ %cond.i, %cond.false9.i ]
  %.pn.in.i = phi ptr [ %arrayidx.i, %cond.true7.i ], [ %arrayidx13.i, %cond.false9.i ]
  %19 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cond20.in.in.in.i = getelementptr i32, ptr %.pn.i, i32 16
  %20 = ptrtoint ptr %cond20.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %cond20.in.in.i = load i32, ptr %cond20.in.in.in.i, align 4
  br i1 %call1.i, label %do.body.i, label %if.end24.i

do.body.i:                                        ; preds = %cond.end19.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_goto_chain.__msg) #4
  %tobool22.not.i = icmp eq ptr %1, null
  br i1 %tobool22.not.i, label %do.body.i.validate_goto_chain.exit_crit_edge, label %do.body.i.cleanup.sink.split.i_crit_edge

do.body.i.cleanup.sink.split.i_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

do.body.i.validate_goto_chain.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_goto_chain.exit

if.end24.i:                                       ; preds = %cond.end19.i
  %call25.i = tail call zeroext i1 @mlx5_chains_backwards_supported(ptr noundef %cond87.i) #4
  br i1 %call25.i, label %if.end24.i.if.end35.i_crit_edge, label %land.lhs.true.i

if.end24.i.if.end35.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %attr.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %3, i32 0, i32 25
  %21 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %attr.i, align 8
  %chain.i = getelementptr inbounds %struct.mlx5_flow_attr, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chain.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %24)
  %cmp.not.i = icmp ugt i32 %8, %24
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end35.i_crit_edge, label %do.body27.i

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35.i

do.body27.i:                                      ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_goto_chain.__msg.1) #4
  %tobool29.not.i = icmp eq ptr %1, null
  br i1 %tobool29.not.i, label %do.body27.i.validate_goto_chain.exit_crit_edge, label %do.body27.i.cleanup.sink.split.i_crit_edge

do.body27.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

do.body27.i.validate_goto_chain.exit_crit_edge:   ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_goto_chain.exit

if.end35.i:                                       ; preds = %land.lhs.true.i.if.end35.i_crit_edge, %if.end24.i.if.end35.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call589.i)
  %cmp36.i = icmp ugt i32 %8, %call589.i
  br i1 %cmp36.i, label %do.body38.i, label %if.end46.i

do.body38.i:                                      ; preds = %if.end35.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_goto_chain.__msg.2) #4
  %tobool40.not.i = icmp eq ptr %1, null
  br i1 %tobool40.not.i, label %do.body38.i.validate_goto_chain.exit_crit_edge, label %do.body38.i.cleanup.sink.split.i_crit_edge

do.body38.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

do.body38.i.validate_goto_chain.exit_crit_edge:   ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_goto_chain.exit

if.end46.i:                                       ; preds = %if.end35.i
  %attr47.i = getelementptr inbounds %struct.mlx5e_tc_flow, ptr %3, i32 0, i32 25
  %25 = ptrtoint ptr %attr47.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attr47.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %and48.i = and i32 %28, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp ne i32 %and48.i, 0
  %29 = and i32 %cond20.in.in.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool51.not.i = icmp eq i32 %29, 0
  %or.cond.i = select i1 %tobool49.not.i, i1 %tobool51.not.i, i1 false
  br i1 %or.cond.i, label %do.body53.i, label %if.end46.i.validate_goto_chain.exit_crit_edge

if.end46.i.validate_goto_chain.exit_crit_edge:    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_goto_chain.exit

do.body53.i:                                      ; preds = %if.end46.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @validate_goto_chain.__msg.3) #4
  %tobool55.not.i = icmp eq ptr %1, null
  br i1 %tobool55.not.i, label %do.body53.i.validate_goto_chain.exit_crit_edge, label %do.body53.i.cleanup.sink.split.i_crit_edge

do.body53.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

do.body53.i.validate_goto_chain.exit_crit_edge:   ; preds = %do.body53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %validate_goto_chain.exit

cleanup.sink.split.i:                             ; preds = %do.body53.i.cleanup.sink.split.i_crit_edge, %do.body38.i.cleanup.sink.split.i_crit_edge, %do.body27.i.cleanup.sink.split.i_crit_edge, %do.body.i.cleanup.sink.split.i_crit_edge
  %validate_goto_chain.__msg.3.sink.i = phi ptr [ @validate_goto_chain.__msg, %do.body.i.cleanup.sink.split.i_crit_edge ], [ @validate_goto_chain.__msg.1, %do.body27.i.cleanup.sink.split.i_crit_edge ], [ @validate_goto_chain.__msg.2, %do.body38.i.cleanup.sink.split.i_crit_edge ], [ @validate_goto_chain.__msg.3, %do.body53.i.cleanup.sink.split.i_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %validate_goto_chain.__msg.3.sink.i, ptr %1, align 4
  br label %validate_goto_chain.exit

validate_goto_chain.exit:                         ; preds = %cleanup.sink.split.i, %do.body53.i.validate_goto_chain.exit_crit_edge, %if.end46.i.validate_goto_chain.exit_crit_edge, %do.body38.i.validate_goto_chain.exit_crit_edge, %do.body27.i.validate_goto_chain.exit_crit_edge, %do.body.i.validate_goto_chain.exit_crit_edge
  %tobool.not = phi i1 [ false, %do.body.i.validate_goto_chain.exit_crit_edge ], [ false, %do.body27.i.validate_goto_chain.exit_crit_edge ], [ false, %do.body38.i.validate_goto_chain.exit_crit_edge ], [ true, %if.end46.i.validate_goto_chain.exit_crit_edge ], [ false, %do.body53.i.validate_goto_chain.exit_crit_edge ], [ false, %cleanup.sink.split.i ]
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tc_act_parse_goto(ptr nocapture noundef readnone %parse_state, ptr nocapture noundef readonly %act, ptr nocapture noundef readnone %priv, ptr nocapture noundef %attr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %attr, align 4
  %or = or i32 %1, 12
  store i32 %or, ptr %attr, align 4
  %2 = getelementptr inbounds %struct.flow_action_entry, ptr %act, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %dest_chain = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 8
  %5 = ptrtoint ptr %dest_chain to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dest_chain, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc_act_post_parse_goto(ptr nocapture noundef readonly %parse_state, ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parse_attr1 = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 5
  %0 = ptrtoint ptr %parse_attr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parse_attr1, align 4
  %extack2 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 2
  %2 = ptrtoint ptr %extack2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extack2, align 4
  %flow3 = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 1
  %4 = ptrtoint ptr %flow3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flow3, align 4
  %dest_chain = getelementptr inbounds %struct.mlx5_flow_attr, ptr %attr, i32 0, i32 8
  %6 = ptrtoint ptr %dest_chain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dest_chain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %decap = getelementptr inbounds %struct.mlx5e_tc_act_parse_state, ptr %parse_state, i32 0, i32 5
  %8 = ptrtoint ptr %decap to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %decap, align 2, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_act_post_parse_goto.__msg) #4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.body.if.end8_crit_edge, label %if.then7

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tc_act_post_parse_goto.__msg, ptr %3, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body.if.end8_crit_edge
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %12, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call = tail call zeroext i1 @mlx5e_is_eswitch_flow(ptr noundef %5) #4
  br i1 %call, label %if.end9.cleanup_crit_edge, label %land.lhs.true

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end9
  %mirred_ifindex = getelementptr inbounds %struct.mlx5e_tc_flow_parse_attr, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %mirred_ifindex to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mirred_ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool10.not = icmp eq i32 %14, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %do.body12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body12:                                        ; preds = %land.lhs.true
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tc_act_post_parse_goto.__msg.4) #4
  %tobool14.not = icmp eq ptr %3, null
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %if.then15

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tc_act_post_parse_goto.__msg.4, ptr %3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ -95, %if.then15 ], [ -95, %do.body12.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_eswitch_flow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_ft_flow(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_chains_get_chain_range(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_chains_backwards_supported(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @mlx5e_tc_act_goto, !1, !"mlx5e_tc_act_goto", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 118, i32 21}
!2 = !{ptr @validate_goto_chain.__msg, !3, !"__msg", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 30, i32 3}
!4 = !{ptr @validate_goto_chain.__msg.1, !5, !"__msg", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 36, i32 3}
!6 = !{ptr @validate_goto_chain.__msg.2, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 41, i32 3}
!8 = !{ptr @validate_goto_chain.__msg.3, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 49, i32 3}
!10 = !{ptr @tc_act_post_parse_goto.__msg, !11, !"__msg", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 105, i32 3}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 106, i32 29}
!14 = !{ptr @tc_act_post_parse_goto.__msg.4, !15, !"__msg", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/tc/act/goto.c", i32 111, i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
