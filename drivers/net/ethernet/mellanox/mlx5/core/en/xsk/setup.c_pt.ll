; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_xsk_param = type { i16, i16 }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.0 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.0 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.1 }
%struct.anon.1 = type { i8, i8 }
%struct.mlx5e_create_cq_param = type { ptr, ptr, i32, i32 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.185, %struct.anon.199, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.185 = type { %struct.anon.192 }
%struct.anon.192 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.194 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.172 }
%union.anon.172 = type { i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
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
%struct.mlx5e_channel_param = type { %struct.mlx5e_rq_param, %struct.mlx5e_sq_param, %struct.mlx5e_sq_param, %struct.mlx5e_sq_param, %struct.mlx5e_sq_param }
%struct.mlx5e_rq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, %struct.mlx5e_rq_frags_info }
%struct.mlx5e_cq_param = type { [16 x i32], %struct.mlx5_wq_param, i16, i8 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5e_rq_frags_info = type { [4 x %struct.mlx5e_rq_frag_info], i8, i8, i8 }
%struct.mlx5e_rq_frag_info = type { i32, i32 }
%struct.mlx5e_sq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, i8, i8, i16 }
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.184, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.184 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.217, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.217 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.203, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.203 = type { ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.141, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.164, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.141 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.142] }
%struct.anon.142 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.143 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.143 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.164 = type { %struct.mlx5_rsvd_gids, i32 }
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

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_validate_xsk_param(ptr noundef %params, ptr noundef %xsk, ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_size = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %0 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chunk_size, align 2
  %2 = add i16 %1, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2049, i16 %2)
  %3 = icmp ult i16 %2, -2049
  br i1 %3, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @mlx5e_rx_get_min_frag_sz(ptr noundef %params, ptr noundef %xsk) #7
  %4 = ptrtoint ptr %chunk_size to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chunk_size, align 2
  %conv7 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv7)
  %cmp8 = icmp ugt i32 %call, %conv7
  br i1 %cmp8, label %if.end.return_crit_edge, label %if.end11

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end11:                                         ; preds = %if.end
  %rq_wq_type = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %6 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rq_wq_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cond = icmp eq i8 %7, 2
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %mdev, ptr noundef %params, ptr noundef %xsk) #7
  br label %return

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call zeroext i1 @mlx5e_rx_is_linear_skb(ptr noundef %params, ptr noundef %xsk) #7
  br label %return

return:                                           ; preds = %sw.default, %sw.bb, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call13, %sw.bb ], [ %call14, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_get_min_frag_sz(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_rx_is_linear_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_open_xsk(ptr nocapture noundef readonly %priv, ptr noundef %params, ptr noundef %xsk, ptr noundef %pool, ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  %ccp = alloca %struct.mlx5e_create_cq_param, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ccp) #7
  %0 = call ptr @memset(ptr %ccp, i32 255, i32 16)
  call void @mlx5e_build_create_cq_param(ptr noundef nonnull %ccp, ptr noundef %c) #7
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %chunk_size.i = getelementptr inbounds %struct.mlx5e_xsk_param, ptr %xsk, i32 0, i32 1
  %3 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %chunk_size.i, align 2
  %5 = add i16 %4, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2049, i16 %5)
  %6 = icmp ult i16 %5, -2049
  br i1 %6, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @mlx5e_rx_get_min_frag_sz(ptr noundef %params, ptr noundef %xsk) #7
  %7 = ptrtoint ptr %chunk_size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chunk_size.i, align 2
  %conv7.i = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %conv7.i)
  %cmp8.i = icmp ugt i32 %call.i, %conv7.i
  br i1 %cmp8.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %rq_wq_type.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %rq_wq_type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rq_wq_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cond.i = icmp eq i8 %10, 2
  br i1 %cond.i, label %sw.bb.i, label %mlx5e_validate_xsk_param.exit

sw.bb.i:                                          ; preds = %if.end11.i
  %call13.i = call zeroext i1 @mlx5e_rx_mpwqe_is_linear_skb(ptr noundef %2, ptr noundef %params, ptr noundef %xsk) #7
  br i1 %call13.i, label %sw.bb.i.if.end_crit_edge, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

mlx5e_validate_xsk_param.exit:                    ; preds = %if.end11.i
  %call14.i = call zeroext i1 @mlx5e_rx_is_linear_skb(ptr noundef %params, ptr noundef %xsk) #7
  br i1 %call14.i, label %mlx5e_validate_xsk_param.exit.if.end_crit_edge, label %mlx5e_validate_xsk_param.exit.cleanup_crit_edge

mlx5e_validate_xsk_param.exit.cleanup_crit_edge:  ; preds = %mlx5e_validate_xsk_param.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlx5e_validate_xsk_param.exit.if.end_crit_edge:   ; preds = %mlx5e_validate_xsk_param.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %mlx5e_validate_xsk_param.exit.if.end_crit_edge, %sw.bb.i.if.end_crit_edge
  %call.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1672, i32 noundef 3520, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 64
  %q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 35
  %13 = ptrtoint ptr %q_counter to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %q_counter, align 4
  %call.i92 = call i32 @mlx5e_build_rq_param(ptr noundef %12, ptr noundef %params, ptr noundef %xsk, i16 noundef zeroext %14, ptr noundef nonnull %call.i.i) #7
  %xdp_sq.i = getelementptr inbounds %struct.mlx5e_channel_param, ptr %call.i.i, i32 0, i32 2
  call void @mlx5e_build_xdpsq_param(ptr noundef %12, ptr noundef %params, ptr noundef %xdp_sq.i) #7
  %priv5 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 21
  %15 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv5, align 4
  %rx_cq_moderation = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 7
  %xskrq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15
  %cq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 6
  %17 = ptrtoint ptr %rx_cq_moderation to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %.unpack = load i32, ptr %rx_cq_moderation, align 2
  %18 = insertvalue [2 x i32] undef, i32 %.unpack, 0
  %.elt87 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 7, i32 2
  %19 = ptrtoint ptr %.elt87 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %.unpack88 = load i32, ptr %.elt87, align 2
  %20 = insertvalue [2 x i32] %18, i32 %.unpack88, 1
  %call6 = call i32 @mlx5e_open_cq(ptr noundef %16, [2 x i32] %20, ptr noundef nonnull %call.i.i, ptr noundef nonnull %ccp, ptr noundef %cq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end11, label %if.end3.err_free_cparam_crit_edge, !prof !9

if.end3.err_free_cparam_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_cparam

if.end11:                                         ; preds = %if.end3
  %mdev1.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 22
  %21 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev1.i.i, align 8
  %23 = ptrtoint ptr %rq_wq_type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rq_wq_type.i, align 1
  %wq_type.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 29
  %25 = ptrtoint ptr %wq_type.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %wq_type.i.i, align 32
  %pdev.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 7
  %26 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i.i, align 8
  %pdev2.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 2
  %28 = ptrtoint ptr %pdev2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %pdev2.i.i, align 4
  %netdev.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 8
  %29 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev.i.i, align 4
  %netdev3.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 3
  %31 = ptrtoint ptr %netdev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %netdev3.i.i, align 8
  %32 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv5, align 4
  %priv4.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 12
  %34 = ptrtoint ptr %priv4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %priv4.i.i, align 4
  %tstamp.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 23
  %35 = ptrtoint ptr %tstamp.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tstamp.i.i, align 4
  %tstamp5.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 9
  %37 = ptrtoint ptr %tstamp5.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %tstamp5.i.i, align 8
  %clock.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 27
  %clock6.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 10
  %38 = ptrtoint ptr %clock6.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %clock.i.i, ptr %clock6.i.i, align 4
  %icosq.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 3
  %icosq7.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 11
  %39 = ptrtoint ptr %icosq7.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %icosq.i.i, ptr %icosq7.i.i, align 16
  %ix.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 25
  %40 = ptrtoint ptr %ix.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ix.i.i, align 4
  %ix8.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 18
  %42 = ptrtoint ptr %ix8.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ix8.i.i, align 4
  %mdev9.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 31
  %43 = ptrtoint ptr %mdev9.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %22, ptr %mdev9.i.i, align 8
  %sw_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %44 = ptrtoint ptr %sw_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sw_mtu.i.i, align 4
  %hard_mtu.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %46 = ptrtoint ptr %hard_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hard_mtu.i.i, align 4
  %add.i.i = add i32 %47, %45
  %hw_mtu.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 19
  %48 = ptrtoint ptr %hw_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i.i, ptr %hw_mtu.i.i, align 16
  %rq_xdpsq.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 1
  %xdpsq.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 22
  %49 = ptrtoint ptr %xdpsq.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %rq_xdpsq.i.i, ptr %xdpsq.i.i, align 4
  %xsk_pool.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 25
  %50 = ptrtoint ptr %xsk_pool.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %pool, ptr %xsk_pool.i.i, align 8
  %channel_stats.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %33, i32 0, i32 25
  %51 = ptrtoint ptr %channel_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %channel_stats.i.i, align 16
  %arrayidx.i.i = getelementptr ptr, ptr %52, i32 %41
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i, align 4
  %xskrq.i.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %54, i32 0, i32 4
  %stats.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 4
  %55 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %xskrq.i.i, ptr %stats.i.i, align 4
  %caps.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %22, i32 0, i32 8
  %56 = ptrtoint ptr %caps.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %caps.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i32, ptr %57, i32 34
  %58 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %59, 28
  %conv.i.i.i.i = and i32 %shr.i.i.i.i, 3
  %60 = add nsw i32 %conv.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %60)
  %61 = icmp ult i32 %60, 2
  %cond.i.i.i = select i1 %61, ptr @mlx5_real_time_cyc2time, ptr @mlx5_timecounter_cyc2time
  %ptp_cyc2time.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 36
  %62 = ptrtoint ptr %ptp_cyc2time.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cond.i.i.i, ptr %ptp_cyc2time.i.i, align 128
  %num_channels.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 3
  %63 = ptrtoint ptr %num_channels.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %num_channels.i.i, align 4
  %tobool.i.i = icmp ne ptr %xsk, null
  %call14.i.i = call i32 @mlx5e_rq_set_handlers(ptr noundef %xskrq, ptr noundef %params, i1 noundef zeroext %tobool.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %mlx5e_init_xsk_rq.exit.i, label %if.end11.err_close_rx_cq_crit_edge

if.end11.err_close_rx_cq_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_close_rx_cq

mlx5e_init_xsk_rq.exit.i:                         ; preds = %if.end11
  %conv.i.i = zext i16 %64 to i32
  %add13.i.i = add i32 %41, %conv.i.i
  %xdp_rxq.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 35
  %65 = ptrtoint ptr %netdev3.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev3.i.i, align 8
  %call17.i.i = call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq.i.i, ptr noundef %66, i32 noundef %add13.i.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool.not.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool.not.i, label %mlx5e_open_xsk_rq.exit, label %mlx5e_init_xsk_rq.exit.i.err_close_rx_cq_crit_edge

mlx5e_init_xsk_rq.exit.i.err_close_rx_cq_crit_edge: ; preds = %mlx5e_init_xsk_rq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_close_rx_cq

mlx5e_open_xsk_rq.exit:                           ; preds = %mlx5e_init_xsk_rq.exit.i
  %call2.i = call i32 @mlx5e_open_rq(ptr noundef %params, ptr noundef nonnull %call.i.i, ptr noundef %xsk, i32 noundef 0, ptr noundef %xskrq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool14.not = icmp eq i32 %call2.i, 0
  br i1 %tobool14.not, label %if.end22, label %mlx5e_open_xsk_rq.exit.err_close_rx_cq_crit_edge, !prof !9

mlx5e_open_xsk_rq.exit.err_close_rx_cq_crit_edge: ; preds = %mlx5e_open_xsk_rq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_close_rx_cq

if.end22:                                         ; preds = %mlx5e_open_xsk_rq.exit
  %67 = ptrtoint ptr %priv5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv5, align 4
  %tx_cq_moderation = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8
  %cq25 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 16, i32 8
  %69 = ptrtoint ptr %tx_cq_moderation to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %.unpack89 = load i32, ptr %tx_cq_moderation, align 2
  %70 = insertvalue [2 x i32] undef, i32 %.unpack89, 0
  %.elt90 = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 8, i32 2
  %71 = ptrtoint ptr %.elt90 to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %.unpack91 = load i32, ptr %.elt90, align 2
  %72 = insertvalue [2 x i32] %70, i32 %.unpack91, 1
  %call26 = call i32 @mlx5e_open_cq(ptr noundef %68, [2 x i32] %72, ptr noundef %xdp_sq.i, ptr noundef nonnull %ccp, ptr noundef %cq25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end35, label %if.end22.err_close_rq_crit_edge, !prof !9

if.end22.err_close_rq_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_close_rq

if.end35:                                         ; preds = %if.end22
  %xsksq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 16
  %call38 = call i32 @mlx5e_open_xdpsq(ptr noundef %c, ptr noundef %params, ptr noundef %xdp_sq.i, ptr noundef %pool, ptr noundef %xsksq, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end47, label %err_close_tx_cq, !prof !9

if.end47:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @kvfree(ptr noundef nonnull %call.i.i) #7
  %state = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 24
  call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  br label %cleanup

err_close_tx_cq:                                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlx5e_close_cq(ptr noundef %cq25) #7
  br label %err_close_rq

err_close_rq:                                     ; preds = %err_close_tx_cq, %if.end22.err_close_rq_crit_edge
  %err.0 = phi i32 [ %call26, %if.end22.err_close_rq_crit_edge ], [ %call38, %err_close_tx_cq ]
  call void @mlx5e_close_rq(ptr noundef %xskrq) #7
  br label %err_close_rx_cq

err_close_rx_cq:                                  ; preds = %err_close_rq, %mlx5e_open_xsk_rq.exit.err_close_rx_cq_crit_edge, %mlx5e_init_xsk_rq.exit.i.err_close_rx_cq_crit_edge, %if.end11.err_close_rx_cq_crit_edge
  %err.1 = phi i32 [ %call2.i, %mlx5e_open_xsk_rq.exit.err_close_rx_cq_crit_edge ], [ %err.0, %err_close_rq ], [ %call14.i.i, %if.end11.err_close_rx_cq_crit_edge ], [ %call17.i.i, %mlx5e_init_xsk_rq.exit.i.err_close_rx_cq_crit_edge ]
  call void @mlx5e_close_cq(ptr noundef %cq) #7
  br label %err_free_cparam

err_free_cparam:                                  ; preds = %err_close_rx_cq, %if.end3.err_free_cparam_crit_edge
  %err.2 = phi i32 [ %call6, %if.end3.err_free_cparam_crit_edge ], [ %err.1, %err_close_rx_cq ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_cparam, %if.end47, %if.end.cleanup_crit_edge, %mlx5e_validate_xsk_param.exit.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_free_cparam ], [ 0, %if.end47 ], [ -22, %mlx5e_validate_xsk_param.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccp) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_create_cq_param(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_cq(ptr noundef, [2 x i32], ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_xdpsq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_cq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_rq(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_close_xsk(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 24
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #7
  tail call void @synchronize_net() #7
  %xskrq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15
  tail call void @mlx5e_close_rq(ptr noundef %xskrq) #7
  %cq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 6
  tail call void @mlx5e_close_cq(ptr noundef %cq) #7
  %xsksq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 16
  tail call void @mlx5e_close_xdpsq(ptr noundef %xsksq) #7
  %cq3 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 16, i32 8
  tail call void @mlx5e_close_cq(ptr noundef %cq3) #7
  %0 = call ptr @memset(ptr %xskrq, i32 0, i32 4224)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_xdpsq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_activate_xsk(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_reporter_icosq_suspend_recovery(ptr noundef %c) #7
  %state = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 17
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #7
  tail call void @mlx5e_reporter_icosq_resume_recovery(ptr noundef %c) #7
  %async_icosq_lock = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %async_icosq_lock) #7
  %async_icosq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 17
  tail call void @mlx5e_trigger_irq(ptr noundef %async_icosq) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_icosq_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_reporter_icosq_suspend_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_reporter_icosq_resume_recovery(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_trigger_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_deactivate_xsk(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_reporter_icosq_suspend_recovery(ptr noundef %c) #7
  %state = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 15, i32 17
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #7
  tail call void @mlx5e_reporter_icosq_resume_recovery(ptr noundef %c) #7
  tail call void @synchronize_net() #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_build_rq_param(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_xdpsq_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_rq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rq_set_handlers(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @mlx5_real_time_cyc2time(ptr nocapture noundef readnone %clock, i64 noundef %timestamp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i64 %timestamp, 32
  %mul = mul nuw nsw i64 %shr, 1000000000
  %and = and i64 %timestamp, 4294967295
  %add = add nuw nsw i64 %mul, %and
  ret i64 %add
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlx5_timecounter_cyc2time(ptr noundef %clock, i64 noundef %timestamp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 1
  %dep_map.c48.i.i = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 1, i32 0, i32 0, i32 1
  %tc = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 6, i32 1
  br label %do.body

do.body:                                          ; preds = %read_seqbegin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !10
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  %1 = tail call ptr @llvm.returnaddress(i32 0) #7
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #7
  tail call void @trace_hardirqs_on() #7
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call ptr @llvm.returnaddress(i32 0) #7
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #7
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #7
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !11
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !12

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #7, !srcloc !13
  %6 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %lock, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !15
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %lock, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %9, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !16
  %call2 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %timestamp) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !17
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %lock, align 4
  %cmp.i.i.i.not = icmp eq i32 %11, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %read_seqbegin.exit.do.body_crit_edge

read_seqbegin.exit.do.body_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #9
  ret i64 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 950111, i64 950172}
!11 = !{i64 952843}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 953128}
!14 = !{i64 2150419240}
!15 = !{i64 2150419082}
!16 = !{i64 2150419410}
!17 = !{i64 2150404481}
