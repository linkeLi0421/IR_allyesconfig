; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_health_reporter_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_err_ctx = type { ptr, ptr, ptr }
%struct.mlx5e_rq = type { %union.anon, %struct.anon.171, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon = type { %struct.anon.163 }
%struct.anon.163 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.166 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.164 }
%union.anon.164 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.165, i64, i32, [28 x i8] }
%union.anon.165 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { %struct.anon.168, [0 x %struct.mlx5_mtt] }
%struct.anon.168 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.171 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.185, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.4 }
%union.anon.4 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.185 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.159, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.162, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.159 = type { %struct.anon.160 }
%struct.anon.160 = type { i8, i8, i16, i32 }
%union.anon.162 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.187, i32 }
%union.anon.187 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.186, i32, i32 }
%union.anon.186 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.190, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.190 = type { ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.209, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.209 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.210 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.210 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.211 }
%struct.anon.211 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.mlx5_rsc_key = type { i32, i32, i32, i32, i32, i32 }
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.208, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.anon.208 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.207, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.207 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.173, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.175, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.173 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.174] }
%struct.anon.174 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.147 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.147 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.175 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5e_ptp = type { [8 x %struct.mlx5e_ptpsq], %struct.mlx5e_rq, %struct.napi_struct, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, [1 x i32], [124 x i8] }
%struct.mlx5e_ptpsq = type { %struct.mlx5e_txqsq, %struct.mlx5e_cq, i16, i16, %struct.mlx5e_skb_fifo, ptr, [104 x i8] }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ICOSQ: 0x%x, \00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RX timeout on channel: %d, %sRQ: 0x%x, CQ: 0x%x\00", [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ERR CQE on RQ: 0x%x\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ERR CQE on ICOSQ: 0x%x\00", [41 x i8] zeroinitializer }, align 32
@mlx5_rx_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.18, ptr @mlx5e_rx_reporter_recover, ptr @mlx5e_rx_reporter_dump, ptr @mlx5e_rx_reporter_diagnose, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to create rx reporter, err = %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RX Slice\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RQ\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QPC\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"receive_buff\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to move rq 0x%x to reset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to move rq 0x%x to ready\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to query ICOSQ 0x%x state. err = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Wait for ICOSQ 0x%x flush timeout (cc = 0x%x, pc = 0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx5e_reset_icosq_cc_pc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ICOSQ 0x%x: cc (0x%x) != pc (0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SX Slice\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ICOSQ\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_buff\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RQs\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PTP RQ\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Common config\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stride size\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ts_format\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RT\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FRC\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTP\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"filter_type\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"channel ix\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rqn\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HW state\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SW state\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WQE counter\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"posted WQEs\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cc\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sqn\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WQE size\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CQ\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cqn\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 696, i32 42 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 698, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 713, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 727, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"mlx5_rx_reporter_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 742, i32 49 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 759, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 569, i32 53 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 583, i32 53 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 587, i32 53 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 603, i32 53 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 142, i32 19 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 147, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 85, i32 19 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 49, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 57, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 507, i32 53 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 521, i32 53 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 541, i32 53 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 743, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 644, i32 47 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 657, i32 61 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 417, i32 53 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 364, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 368, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 372, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 376, i32 43 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 376, i32 68 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 376, i32 75 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 393, i32 53 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 397, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 335, i32 40 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 278, i32 40 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 282, i32 39 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 286, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 290, i32 40 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 294, i32 40 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 298, i32 40 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 216, i32 40 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 228, i32 40 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 232, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 237, i32 53 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 241, i32 40 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 443, i32 43 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 443, i32 54 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mlx5_rx_reporter_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_rx_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_rx_timeout(ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  %icosq_str = alloca [256 x i8], align 1
  %err_str = alloca [256 x i8], align 1
  %err_ctx = alloca %struct.mlx5e_err_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %icosq_str) #6
  %0 = call ptr @memset(ptr %icosq_str, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %err_str) #6
  %1 = call ptr @memset(ptr %err_str, i32 255, i32 256)
  %icosq1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 11
  %2 = ptrtoint ptr %icosq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %icosq1, align 16
  %priv2 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 12
  %4 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %err_ctx) #6
  %ctx = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 2
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rq, ptr %ctx, align 4
  %7 = ptrtoint ptr %err_ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx5e_rx_reporter_timeout_recover, ptr %err_ctx, align 4
  %dump = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 1
  %8 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mlx5e_rx_reporter_dump_rq, ptr %dump, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sqn = getelementptr inbounds %struct.mlx5e_icosq, ptr %3, i32 0, i32 8
  %9 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sqn, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %icosq_str, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ix = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 18
  %11 = ptrtoint ptr %ix to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ix, align 4
  %rqn = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 30
  %13 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rqn, align 4
  %mcq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mcq, align 32
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %err_str, i32 noundef 256, ptr noundef nonnull @.str.1, i32 noundef %12, ptr noundef nonnull %icosq_str, i32 noundef %14, i32 noundef %16)
  %rx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 47
  %17 = ptrtoint ptr %rx_reporter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_reporter, align 16
  %call7 = call i32 @mlx5e_health_report(ptr noundef %5, ptr noundef %18, ptr noundef nonnull %err_str, ptr noundef nonnull %err_ctx) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %err_ctx) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %err_str) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %icosq_str) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_timeout_recover(ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %eq1 = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 6, i32 3, i32 18
  %0 = ptrtoint ptr %eq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eq1, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 8
  %ch_stats = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %ch_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch_stats, align 4
  %call = tail call i32 @mlx5e_health_channel_eq_recover(ptr noundef %3, ptr noundef %1, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %icosq = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 11
  %6 = ptrtoint ptr %icosq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %icosq, align 16
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.mlx5e_icosq, ptr %7, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_dump_rq(ptr noundef %priv, ptr noundef %fmsg, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %key = alloca %struct.mlx5_rsc_key, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key) #6
  %0 = getelementptr inbounds i8, ptr %key, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %size, align 4
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 15, ptr %key, align 4
  %call5 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %key, align 4
  %rqn = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 30
  %7 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rqn, align 4
  %index1 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %index1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %index1, align 4
  %num_of_obj1 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 3
  %10 = ptrtoint ptr %num_of_obj1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_of_obj1, align 4
  %call22 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %11 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %key, align 4
  %num_of_obj2 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %num_of_obj2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65535, ptr %num_of_obj2, align 4
  %call35 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %call39 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_report(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_rq_cqe_err(ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  %err_str = alloca [256 x i8], align 1
  %err_ctx = alloca %struct.mlx5e_err_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %err_str) #6
  %0 = call ptr @memset(ptr %err_str, i32 255, i32 256)
  %priv1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 12
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %err_ctx) #6
  %ctx = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 2
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rq, ptr %ctx, align 4
  %4 = ptrtoint ptr %err_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlx5e_rx_reporter_err_rq_cqe_recover, ptr %err_ctx, align 4
  %dump = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 1
  %5 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlx5e_rx_reporter_dump_rq, ptr %dump, align 4
  %rqn = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 30
  %6 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rqn, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %err_str, i32 noundef 256, ptr noundef nonnull @.str.2, i32 noundef %7)
  %rx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %2, i32 0, i32 47
  %8 = ptrtoint ptr %rx_reporter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_reporter, align 16
  %call3 = call i32 @mlx5e_health_report(ptr noundef %2, ptr noundef %9, ptr noundef nonnull %err_str, ptr noundef nonnull %err_ctx) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %err_ctx) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %err_str) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_err_rq_cqe_recover(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_deactivate_rq(ptr noundef %ctx) #6
  tail call void @mlx5e_free_rx_descs(ptr noundef %ctx) #6
  %netdev.i = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev.i, align 8
  %call.i = tail call i32 @mlx5e_modify_rq_state(ptr noundef %ctx, i32 noundef 3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @mlx5e_modify_rq_state(ptr noundef %ctx, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.out_crit_edge

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state) #6
  tail call void @mlx5e_activate_rq(ptr noundef %ctx) #6
  %stats = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 4
  %recover = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %3, i32 0, i32 34
  %4 = ptrtoint ptr %recover to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %recover, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %recover, align 8
  br label %cleanup

out:                                              ; preds = %if.end.i.out_crit_edge, %entry.out_crit_edge
  %.str.10.sink.i = phi ptr [ @.str.9, %entry.out_crit_edge ], [ @.str.10, %if.end.i.out_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call1.i, %if.end.i.out_crit_edge ]
  %rqn4.i = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 30
  %6 = ptrtoint ptr %rqn4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rqn4.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull %.str.10.sink.i, i32 noundef %7) #9
  %state1 = getelementptr inbounds %struct.mlx5e_rq, ptr %ctx, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state1) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end
  %retval.0 = phi i32 [ %retval.0.ph.i, %out ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_icosq_cqe_err(ptr noundef %icosq) local_unnamed_addr #0 align 64 {
entry:
  %err_str = alloca [256 x i8], align 1
  %err_ctx = alloca %struct.mlx5e_err_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 13
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 8
  %priv1 = getelementptr inbounds %struct.mlx5e_channel, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %err_str) #6
  %4 = call ptr @memset(ptr %err_str, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %err_ctx) #6
  %ctx = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 2
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %icosq, ptr %ctx, align 4
  %6 = ptrtoint ptr %err_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mlx5e_rx_reporter_err_icosq_cqe_recover, ptr %err_ctx, align 4
  %dump = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 1
  %7 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx5e_rx_reporter_dump_icosq, ptr %dump, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 8
  %8 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sqn, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %err_str, i32 noundef 256, ptr noundef nonnull @.str.3, i32 noundef %9)
  %rx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %3, i32 0, i32 47
  %10 = ptrtoint ptr %rx_reporter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_reporter, align 16
  %call3 = call i32 @mlx5e_health_report(ptr noundef %3, ptr noundef %11, ptr noundef nonnull %err_str, ptr noundef nonnull %err_ctx) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %err_ctx) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %err_str) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_err_icosq_cqe_recover(ptr noundef %ctx) #0 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %state, align 1, !annotation !99
  %channel = getelementptr inbounds %struct.mlx5e_icosq, ptr %ctx, i32 0, i32 13
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel, align 8
  %icosq_recovery_lock = getelementptr inbounds %struct.mlx5e_channel, ptr %2, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %icosq_recovery_lock, i32 noundef 0) #6
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel, align 8
  %state5 = getelementptr inbounds %struct.mlx5e_channel, ptr %4, i32 0, i32 15, i32 17
  %5 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state5, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  %xskrq7 = getelementptr inbounds %struct.mlx5e_channel, ptr %4, i32 0, i32 15
  %spec.select = select i1 %tobool.not, ptr null, ptr %xskrq7
  %mdev9 = getelementptr inbounds %struct.mlx5e_channel, ptr %4, i32 0, i32 22
  %7 = ptrtoint ptr %mdev9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev9, align 8
  %netdev = getelementptr inbounds %struct.mlx5e_channel, ptr %4, i32 0, i32 8
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_icosq, ptr %ctx, i32 0, i32 8
  %11 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sqn, align 4
  %call11 = call i32 @mlx5_core_query_sq_state(ptr noundef %8, i32 noundef %12, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sqn, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %14, i32 noundef %call11) #9
  br label %out

if.end15:                                         ; preds = %entry
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %cmp.not = icmp eq i8 %16, 3
  br i1 %cmp.not, label %if.end18, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end18:                                         ; preds = %if.end15
  call void @mlx5e_deactivate_rq(ptr noundef %4) #6
  %tobool19.not = icmp eq ptr %spec.select, null
  br i1 %tobool19.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void @mlx5e_deactivate_rq(ptr noundef nonnull %spec.select) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5e_channel, ptr %18, i32 0, i32 22
  %19 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i64 @_mlx5_tout_ms(ptr noundef %20, i32 noundef 9) #6
  %conv.i = trunc i64 %call.i to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #6
  %22 = add i32 %call2.i.i, %21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub19.i = sub i32 %23, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub19.i)
  %cmp20.i = icmp slt i32 %sub19.i, 0
  br i1 %cmp20.i, label %while.body.lr.ph.i, label %if.end21.mlx5e_wait_for_icosq_flush.exit_crit_edge

if.end21.mlx5e_wait_for_icosq_flush.exit_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_wait_for_icosq_flush.exit

while.body.lr.ph.i:                               ; preds = %if.end21
  %pc.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %ctx, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ctx, align 128
  %26 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pc.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp5.i = icmp eq i16 %25, %27
  br i1 %cmp5.i, label %if.end25, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @msleep(i32 noundef 20) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %28, %22
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.mlx5e_wait_for_icosq_flush.exit_crit_edge

if.end.i.mlx5e_wait_for_icosq_flush.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_wait_for_icosq_flush.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

mlx5e_wait_for_icosq_flush.exit:                  ; preds = %if.end.i.mlx5e_wait_for_icosq_flush.exit_crit_edge, %if.end21.mlx5e_wait_for_icosq_flush.exit_crit_edge
  %29 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %channel, align 8
  %netdev.i = getelementptr inbounds %struct.mlx5e_channel, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev.i, align 4
  %33 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sqn, align 4
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ctx, align 128
  %conv9.i = zext i16 %36 to i32
  %pc10.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %ctx, i32 0, i32 1
  %37 = ptrtoint ptr %pc10.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pc10.i, align 2
  %conv11.i = zext i16 %38 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %conv9.i, i32 noundef %conv11.i) #9
  br label %out

if.end25:                                         ; preds = %while.body.i
  call void @mlx5e_deactivate_icosq(ptr noundef %ctx) #6
  %39 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sqn, align 4
  %call27 = call i32 @mlx5e_health_sq_to_ready(ptr noundef %8, ptr noundef %10, i32 noundef %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end30:                                         ; preds = %if.end25
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ctx, align 128
  %43 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %pc.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %44)
  %cmp.not.i = icmp eq i16 %42, %44
  br i1 %cmp.not.i, label %if.end30.mlx5e_reset_icosq_cc_pc.exit_crit_edge, label %land.rhs.i

if.end30.mlx5e_reset_icosq_cc_pc.exit_crit_edge:  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_reset_icosq_cc_pc.exit

land.rhs.i:                                       ; preds = %if.end30
  %.b52.i = load i1, ptr @mlx5e_reset_icosq_cc_pc.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.mlx5e_reset_icosq_cc_pc.exit_crit_edge, label %if.then.i, !prof !100

land.rhs.i.mlx5e_reset_icosq_cc_pc.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_reset_icosq_cc_pc.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mlx5e_reset_icosq_cc_pc.__already_done, align 1
  %45 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sqn, align 4
  %conv20.i = zext i16 %42 to i32
  %conv22.i = zext i16 %44 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %46, i32 noundef %conv20.i, i32 noundef %conv22.i) #6
  br label %mlx5e_reset_icosq_cc_pc.exit

mlx5e_reset_icosq_cc_pc.exit:                     ; preds = %if.then.i, %land.rhs.i.mlx5e_reset_icosq_cc_pc.exit_crit_edge, %if.end30.mlx5e_reset_icosq_cc_pc.exit_crit_edge
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %ctx, align 128
  %48 = ptrtoint ptr %pc.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %pc.i, align 2
  call void @mlx5e_free_rx_in_progress_descs(ptr noundef %4) #6
  br i1 %tobool19.not, label %if.end40.critedge, label %if.then32

if.then32:                                        ; preds = %mlx5e_reset_icosq_cc_pc.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @mlx5e_free_rx_in_progress_descs(ptr noundef nonnull %spec.select) #6
  %state34.c = getelementptr inbounds %struct.mlx5e_icosq, ptr %ctx, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state34.c) #6
  call void @mlx5e_activate_icosq(ptr noundef %ctx) #6
  call void @mlx5e_activate_rq(ptr noundef %4) #6
  %stats.c = getelementptr inbounds %struct.mlx5e_rq, ptr %4, i32 0, i32 4
  %49 = ptrtoint ptr %stats.c to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %stats.c, align 4
  %recover.c = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %50, i32 0, i32 34
  %51 = ptrtoint ptr %recover.c to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %recover.c, align 8
  %inc.c = add i64 %52, 1
  store i64 %inc.c, ptr %recover.c, align 8
  call void @mlx5e_activate_rq(ptr noundef nonnull %spec.select) #6
  br label %if.end40

if.end40.critedge:                                ; preds = %mlx5e_reset_icosq_cc_pc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %state34.c83 = getelementptr inbounds %struct.mlx5e_icosq, ptr %ctx, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state34.c83) #6
  call void @mlx5e_activate_icosq(ptr noundef %ctx) #6
  call void @mlx5e_activate_rq(ptr noundef %4) #6
  br label %if.end40

if.end40:                                         ; preds = %if.end40.critedge, %if.then32
  %.sink = phi ptr [ %4, %if.end40.critedge ], [ %spec.select, %if.then32 ]
  %stats.c84 = getelementptr inbounds %struct.mlx5e_rq, ptr %.sink, i32 0, i32 4
  %53 = ptrtoint ptr %stats.c84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stats.c84, align 4
  %recover.c85 = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %54, i32 0, i32 34
  %55 = ptrtoint ptr %recover.c85 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %recover.c85, align 8
  %inc.c86 = add i64 %56, 1
  store i64 %inc.c86, ptr %recover.c85, align 8
  br label %cleanup

out:                                              ; preds = %if.end25.out_crit_edge, %mlx5e_wait_for_icosq_flush.exit, %if.end15.out_crit_edge, %if.then13
  %err.0 = phi i32 [ %call11, %if.then13 ], [ 0, %if.end15.out_crit_edge ], [ -110, %mlx5e_wait_for_icosq_flush.exit ], [ %call27, %if.end25.out_crit_edge ]
  %state43 = getelementptr inbounds %struct.mlx5e_icosq, ptr %ctx, i32 0, i32 10
  call void @_clear_bit(i32 noundef 2, ptr noundef %state43) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end40
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end40 ]
  %57 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %channel, align 8
  %icosq_recovery_lock45 = getelementptr inbounds %struct.mlx5e_channel, ptr %58, i32 0, i32 27
  call void @mutex_unlock(ptr noundef %icosq_recovery_lock45) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_dump_icosq(ptr noundef %priv, ptr noundef %fmsg, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %key = alloca %struct.mlx5_rsc_key, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key) #6
  %0 = getelementptr inbounds i8, ptr %key, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %size, align 4
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %key, align 4
  %call5 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %key, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 17
  %7 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sqn, align 4
  %index1 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %index1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %index1, align 4
  %num_of_obj1 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 3
  %10 = ptrtoint ptr %num_of_obj1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_of_obj1, align 4
  %call22 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %11 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %key, align 4
  %num_of_obj2 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %num_of_obj2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65535, ptr %num_of_obj2, align 4
  %call35 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %call39 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_icosq_suspend_recovery(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icosq_recovery_lock = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %icosq_recovery_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_icosq_resume_recovery(ptr noundef %c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %icosq_recovery_lock = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 27
  tail call void @mutex_unlock(ptr noundef %icosq_recovery_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_rx_create(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 64
  %dl_port.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 20, i32 1
  %call1 = tail call ptr @devlink_port_health_reporter_create(ptr noundef %dl_port.i, ptr noundef nonnull @mlx5_rx_reporter_ops, i64 noundef 500, ptr noundef %priv) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %4 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 47
  %5 = ptrtoint ptr %rx_reporter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %rx_reporter, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_port_health_reporter_create(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_rx_destroy(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 47
  %0 = ptrtoint ptr %rx_reporter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_reporter, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devlink_port_health_reporter_destroy(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %rx_reporter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rx_reporter, align 16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_health_reporter_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_channel_eq_recover(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_rq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_free_rx_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_rq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_modify_rq_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_query_sq_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_icosq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_sq_to_ready(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_free_rx_in_progress_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_icosq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_recover(ptr noundef %reporter, ptr noundef readonly %context, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #6
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ctx.i = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @mlx5e_health_recover_channels(ptr noundef %call) #6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call.i, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_dump(ptr noundef %reporter, ptr noundef %fmsg, ptr noundef readonly %context, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %key.i = alloca %struct.mlx5_rsc_key, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #6
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dump.i = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dump.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump.i, align 4
  %ctx.i = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 %1(ptr noundef %call, ptr noundef %fmsg, ptr noundef %3) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9
  %ptp.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key.i) #6
  %6 = getelementptr inbounds i8, ptr %key.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %state.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %cond.false.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge, label %if.end.i

cond.false.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge: ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

if.end.i:                                         ; preds = %cond.false
  %call1.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge

if.end.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

if.end4.i:                                        ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key.i, i32 0, i32 5
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %size.i, align 4
  %11 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15, ptr %key.i, align 4
  %call5.i = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %call, ptr noundef nonnull %key.i, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge

if.end4.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge

if.end8.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.cond.preheader.i, label %if.end12.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge

if.end12.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

for.cond.preheader.i:                             ; preds = %if.end12.i
  %num.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp69.not.i = icmp eq i32 %13, 0
  br i1 %cmp69.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.070.i, 1
  %14 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.070.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %17, i32 %i.070.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %rqn.i = getelementptr inbounds %struct.mlx5e_rq, ptr %19, i32 0, i32 30
  %20 = ptrtoint ptr %rqn.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rqn.i, align 4
  %call20.i = call i32 @mlx5e_health_queue_dump(ptr noundef %call, ptr noundef %fmsg, i32 noundef %21, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %for.cond.i, label %for.body.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge

for.body.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %tobool24.not.i = icmp eq ptr %5, null
  br i1 %tobool24.not.i, label %for.end.i.if.end35.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end35.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %for.end.i
  %state25.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %5, i32 0, i32 12
  %22 = ptrtoint ptr %state25.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state25.i, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool27.not.i = icmp eq i32 %24, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i.if.end35.i_crit_edge, label %if.then28.i

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  %rqn30.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %5, i32 0, i32 1, i32 30
  %25 = ptrtoint ptr %rqn30.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rqn30.i, align 4
  %call31.i = call i32 @mlx5e_health_queue_dump(ptr noundef %call, ptr noundef %fmsg, i32 noundef %26, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then28.i.if.end35.i_crit_edge, label %if.then28.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge

if.then28.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

if.then28.i.if.end35.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then28.i.if.end35.i_crit_edge, %land.lhs.true.i.if.end35.i_crit_edge, %for.end.i.if.end35.i_crit_edge
  %call36.i = call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #6
  br label %mlx5e_rx_reporter_dump_all_rqs.exit

mlx5e_rx_reporter_dump_all_rqs.exit:              ; preds = %if.end35.i, %if.then28.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge, %for.body.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge, %if.end12.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge, %if.end8.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge, %if.end4.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge, %if.end.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge, %cond.false.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge
  %retval.2.i = phi i32 [ %call36.i, %if.end35.i ], [ 0, %cond.false.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge ], [ %call1.i, %if.end.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge ], [ %call5.i, %if.end4.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge ], [ %call9.i, %if.end8.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge ], [ %call13.i, %if.end12.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge ], [ %call31.i, %if.then28.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge ], [ %call20.i, %for.body.i.mlx5e_rx_reporter_dump_all_rqs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key.i) #6
  br label %cond.end

cond.end:                                         ; preds = %mlx5e_rx_reporter_dump_all_rqs.exit, %cond.true
  %cond = phi i32 [ %call.i, %cond.true ], [ %retval.2.i, %mlx5e_rx_reporter_dump_all_rqs.exit ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_rx_reporter_diagnose(ptr noundef %reporter, ptr noundef %fmsg, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #6
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9
  %ptp = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #6
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #6
  %channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels.i, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ptp.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call.i, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp.i, align 4
  %call2.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call fastcc i32 @mlx5e_rx_reporter_diagnose_generic_rq(ptr noundef %7, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end6.i:                                        ; preds = %if.end.i
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %if.end6.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge, label %land.lhs.true.i

if.end6.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_diagnose_common_config.exit

land.lhs.true.i:                                  ; preds = %if.end6.i
  %state.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not.i = icmp eq i32 %12, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge, label %if.then10.i

land.lhs.true.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_diagnose_common_config.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  %call.i.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then10.i.unlock_crit_edge

if.then10.i.unlock_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end.i.i:                                       ; preds = %if.then10.i
  %rx_filter.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call.i, i32 0, i32 34, i32 2
  %13 = ptrtoint ptr %rx_filter.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_filter.i.i, align 8
  %call1.i.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.29, i32 noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.unlock_crit_edge

if.end.i.i.unlock_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end4.i.i:                                      ; preds = %if.end.i.i
  %rq.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %9, i32 0, i32 1
  %call5.i.i = tail call fastcc i32 @mlx5e_rx_reporter_diagnose_generic_rq(ptr noundef %rq.i.i, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i, label %if.end4.i.i.unlock_crit_edge

if.end4.i.i.unlock_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i: ; preds = %if.end4.i.i
  %call9.i.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool12.not.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool12.not.i, label %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge, label %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i.unlock_crit_edge

mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i.unlock_crit_edge: ; preds = %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge: ; preds = %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mlx5e_rx_reporter_diagnose_common_config.exit

mlx5e_rx_reporter_diagnose_common_config.exit:    ; preds = %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge, %land.lhs.true.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge, %if.end6.i.mlx5e_rx_reporter_diagnose_common_config.exit_crit_edge
  %call16.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool3.not = icmp eq i32 %call16.i, 0
  br i1 %tobool3.not, label %if.end5, label %mlx5e_rx_reporter_diagnose_common_config.exit.unlock_crit_edge

mlx5e_rx_reporter_diagnose_common_config.exit.unlock_crit_edge: ; preds = %mlx5e_rx_reporter_diagnose_common_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end5:                                          ; preds = %mlx5e_rx_reporter_diagnose_common_config.exit
  %call6 = tail call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

for.cond.preheader:                               ; preds = %if.end5
  %num = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp61.not = icmp eq i32 %16, 0
  br i1 %cmp61.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %mlx5e_rx_reporter_build_diagnose_output.exit
  %inc = add nuw i32 %i.062, 1
  %17 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num, align 8
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channels, align 128
  %arrayidx = getelementptr ptr, ptr %20, i32 %i.062
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call.i53 = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i55, label %for.body.unlock_crit_edge

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end.i55:                                       ; preds = %for.body
  %ix.i = getelementptr inbounds %struct.mlx5e_rq, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %ix.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ix.i, align 4
  %call1.i = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.30, i32 noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i55.unlock_crit_edge

if.end.i55.unlock_crit_edge:                      ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end4.i:                                        ; preds = %if.end.i55
  %call5.i = tail call fastcc i32 @mlx5e_rx_reporter_build_diagnose_output_rq_common(ptr noundef %22, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %mlx5e_rx_reporter_build_diagnose_output.exit, label %if.end4.i.unlock_crit_edge

if.end4.i.unlock_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

mlx5e_rx_reporter_build_diagnose_output.exit:     ; preds = %if.end4.i
  %call9.i = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool14.not = icmp eq i32 %call9.i, 0
  br i1 %tobool14.not, label %for.cond, label %mlx5e_rx_reporter_build_diagnose_output.exit.unlock_crit_edge

mlx5e_rx_reporter_build_diagnose_output.exit.unlock_crit_edge: ; preds = %mlx5e_rx_reporter_build_diagnose_output.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tobool17.not = icmp eq ptr %1, null
  br i1 %tobool17.not, label %for.end.if.end27_crit_edge, label %land.lhs.true

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %for.end
  %state18 = getelementptr inbounds %struct.mlx5e_ptp, ptr %1, i32 0, i32 12
  %25 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state18, align 4
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool20.not = icmp eq i32 %27, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end27_crit_edge, label %if.then21

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then21:                                        ; preds = %land.lhs.true
  %rq22 = getelementptr inbounds %struct.mlx5e_ptp, ptr %1, i32 0, i32 1
  %call23 = tail call fastcc i32 @mlx5e_rx_reporter_build_diagnose_output_ptp_rq(ptr noundef %rq22, ptr noundef %fmsg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.unlock_crit_edge

if.then21.unlock_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %for.end.if.end27_crit_edge
  %call28 = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #6
  br label %unlock

unlock:                                           ; preds = %if.end27, %if.then21.unlock_crit_edge, %mlx5e_rx_reporter_build_diagnose_output.exit.unlock_crit_edge, %if.end4.i.unlock_crit_edge, %if.end.i55.unlock_crit_edge, %for.body.unlock_crit_edge, %if.end5.unlock_crit_edge, %mlx5e_rx_reporter_diagnose_common_config.exit.unlock_crit_edge, %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i.unlock_crit_edge, %if.end4.i.i.unlock_crit_edge, %if.end.i.i.unlock_crit_edge, %if.then10.i.unlock_crit_edge, %if.end.i.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.0 = phi i32 [ %call16.i, %mlx5e_rx_reporter_diagnose_common_config.exit.unlock_crit_edge ], [ %call6, %if.end5.unlock_crit_edge ], [ %call23, %if.then21.unlock_crit_edge ], [ %call28, %if.end27 ], [ 0, %entry.unlock_crit_edge ], [ %call.i.i, %if.then10.i.unlock_crit_edge ], [ %call1.i.i, %if.end.i.i.unlock_crit_edge ], [ %call5.i.i, %if.end4.i.i.unlock_crit_edge ], [ %call9.i.i, %mlx5e_rx_reporter_diagnose_common_ptp_config.exit.i.unlock_crit_edge ], [ %call3.i, %if.end.i.unlock_crit_edge ], [ %call2.i, %if.end.unlock_crit_edge ], [ %call.i53, %for.body.unlock_crit_edge ], [ %call1.i, %if.end.i55.unlock_crit_edge ], [ %call5.i, %if.end4.i.unlock_crit_edge ], [ %call9.i, %mlx5e_rx_reporter_build_diagnose_output.exit.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #6
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_recover_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_queue_dump(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_rx_reporter_build_diagnose_output_ptp_rq(ptr noundef %rq, ptr noundef %fmsg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @mlx5e_rx_reporter_build_diagnose_output_rq_common(ptr noundef %rq, ptr noundef %fmsg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_rx_reporter_diagnose_generic_rq(ptr noundef %rq, ptr noundef %fmsg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 12
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %params2 = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 9, i32 3
  %retval.0.in.in.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %2 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.in.i = load i32, ptr %retval.0.in.in.i, align 4
  %retval.0.i = add i32 %retval.0.in.i, 1
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 21
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %6, i32 34
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %8, 28
  %conv.i = and i32 %shr.i, 3
  %9 = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %10 = icmp ult i32 %9, 2
  %call5 = tail call zeroext i8 @mlx5e_mpwqe_get_log_stride_size(ptr noundef %4, ptr noundef %params2, ptr noundef null) #6
  %conv = zext i8 %call5 to i32
  %shl = shl nuw i32 1, %conv
  %call6 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rq_wq_type = getelementptr inbounds %struct.mlx5e_priv, ptr %1, i32 0, i32 9, i32 3, i32 1
  %11 = ptrtoint ptr %rq_wq_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rq_wq_type, align 1
  %call7 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.22, i8 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %conv11 = zext i32 %shl to i64
  %call12 = tail call i32 @devlink_fmsg_u64_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.23, i64 noundef %conv11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %cond = select i1 %10, ptr @.str.26, ptr @.str.27
  %call22 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %cq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6
  %call26 = tail call i32 @mlx5e_health_cq_common_diag_fmsg(ptr noundef %cq, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call30, %if.end29 ], [ %call6, %entry.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5e_mpwqe_get_log_stride_size(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u8_pair_put(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u64_pair_put(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_pair_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_string_pair_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_cq_common_diag_fmsg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_rx_reporter_build_diagnose_output_rq_common(ptr noundef %rq, ptr noundef %fmsg) unnamed_addr #0 align 64 {
entry:
  %icosq_hw_state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 31
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %rqn = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 30
  %2 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rqn, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 272, i32 noundef 3520, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup55_crit_edge, label %if.end.i

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @mlx5_core_query_rq(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %mlx5e_query_rq_state.exit

mlx5e_query_rq_state.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  br label %cleanup55

if.end:                                           ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %call.i.i.i, i32 32
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %5, 20
  %6 = trunc i32 %shr.i to i8
  %conv.i = and i8 %6, 15
  tail call void @kvfree(ptr noundef nonnull %call.i.i.i) #6
  %wq_type.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 29
  %7 = ptrtoint ptr %wq_type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wq_type.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cond.i = icmp eq i8 %8, 2
  %cur_sz.i = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 5
  %cur_sz3.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 4
  %retval.0.in.in.i = select i1 %cond.i, ptr %cur_sz.i, ptr %cur_sz3.i
  %9 = ptrtoint ptr %retval.0.in.in.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %retval.0.in.i = load i16, ptr %retval.0.in.in.i, align 4
  %retval.0.i101 = zext i16 %retval.0.in.i to i32
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %cur_sz3.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cur_sz3.i, align 4
  br label %mlx5e_rqwq_get_head.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %wqe_ctr.i.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 3
  %12 = ptrtoint ptr %wqe_ctr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wqe_ctr.i.i, align 2
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %rq, i32 0, i32 1
  %14 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sz_m1.i.i.i, align 4
  %16 = trunc i32 %15 to i16
  %conv1.i.i.i = and i16 %13, %16
  br label %mlx5e_rqwq_get_head.exit

mlx5e_rqwq_get_head.exit:                         ; preds = %sw.default.i, %sw.bb.i
  %retval.0.i104 = phi i16 [ %11, %sw.bb.i ], [ %conv1.i.i.i, %sw.default.i ]
  %wqe_ctr.i.i107 = getelementptr inbounds %struct.mlx5_wq_ll, ptr %rq, i32 0, i32 4
  %wqe_ctr.i5.i = getelementptr inbounds %struct.mlx5_wq_cyc, ptr %rq, i32 0, i32 3
  %retval.0.in.i108 = select i1 %cond.i, ptr %wqe_ctr.i.i107, ptr %wqe_ctr.i5.i
  %17 = ptrtoint ptr %retval.0.in.i108 to i32
  call void @__asan_load2_noabort(i32 %17)
  %retval.0.i109 = load i16, ptr %retval.0.in.i108, align 2
  %18 = ptrtoint ptr %rqn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rqn, align 4
  %call5 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.31, i32 noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %mlx5e_rqwq_get_head.exit.cleanup55_crit_edge

mlx5e_rqwq_get_head.exit.cleanup55_crit_edge:     ; preds = %mlx5e_rqwq_get_head.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end8:                                          ; preds = %mlx5e_rqwq_get_head.exit
  %call9 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.32, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup55_crit_edge

if.end8.cleanup55_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end12:                                         ; preds = %if.end8
  %state = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 17
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 8
  %conv = trunc i32 %21 to i8
  %call13 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.33, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup55_crit_edge

if.end12.cleanup55_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end16:                                         ; preds = %if.end12
  %conv17 = zext i16 %retval.0.i109 to i32
  %call18 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.34, i32 noundef %conv17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup55_crit_edge

if.end16.cleanup55_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end21:                                         ; preds = %if.end16
  %call22 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i101) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup55_crit_edge

if.end21.cleanup55_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end25:                                         ; preds = %if.end21
  %conv26 = zext i16 %retval.0.i104 to i32
  %call27 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.36, i32 noundef %conv26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end25.cleanup55_crit_edge

if.end25.cleanup55_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end30:                                         ; preds = %if.end25
  %cq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6
  %call31 = tail call i32 @mlx5e_health_cq_diag_fmsg(ptr noundef %cq, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup55_crit_edge

if.end30.cleanup55_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end34:                                         ; preds = %if.end30
  %eq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 6, i32 3, i32 18
  %22 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eq, align 4
  %call36 = tail call i32 @mlx5e_health_eq_diag_fmsg(ptr noundef %23, ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.cleanup55_crit_edge

if.end34.cleanup55_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end39:                                         ; preds = %if.end34
  %icosq = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 11
  %24 = ptrtoint ptr %icosq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %icosq, align 16
  %tobool40.not = icmp eq ptr %25, null
  br i1 %tobool40.not, label %if.end39.if.end54_crit_edge, label %if.then41

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then41:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %icosq_hw_state) #6
  %26 = ptrtoint ptr %icosq_hw_state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %icosq_hw_state, align 1, !annotation !99
  %27 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev, align 8
  %sqn = getelementptr inbounds %struct.mlx5e_icosq, ptr %25, i32 0, i32 8
  %29 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sqn, align 4
  %call45 = call i32 @mlx5_core_query_sq_state(ptr noundef %28, i32 noundef %30, ptr noundef nonnull %icosq_hw_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %icosq_hw_state) #6
  br label %cleanup55

cleanup:                                          ; preds = %if.then41
  %31 = ptrtoint ptr %icosq_hw_state to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %icosq_hw_state, align 1
  %call49 = call fastcc i32 @mlx5e_reporter_icosq_diagnose(ptr noundef nonnull %25, i8 noundef zeroext %32, ptr noundef %fmsg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %icosq_hw_state) #6
  br i1 %tobool50.not, label %cleanup.if.end54_crit_edge, label %cleanup.cleanup55_crit_edge

cleanup.cleanup55_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

cleanup.if.end54_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.end54:                                         ; preds = %cleanup.if.end54_crit_edge, %if.end39.if.end54_crit_edge
  br label %cleanup55

cleanup55:                                        ; preds = %if.end54, %cleanup.cleanup55_crit_edge, %cleanup.thread, %if.end34.cleanup55_crit_edge, %if.end30.cleanup55_crit_edge, %if.end25.cleanup55_crit_edge, %if.end21.cleanup55_crit_edge, %if.end16.cleanup55_crit_edge, %if.end12.cleanup55_crit_edge, %if.end8.cleanup55_crit_edge, %mlx5e_rqwq_get_head.exit.cleanup55_crit_edge, %mlx5e_query_rq_state.exit, %entry.cleanup55_crit_edge
  %retval.1 = phi i32 [ 0, %if.end54 ], [ %call49, %cleanup.cleanup55_crit_edge ], [ %call1.i, %mlx5e_query_rq_state.exit ], [ %call5, %mlx5e_rqwq_get_head.exit.cleanup55_crit_edge ], [ %call9, %if.end8.cleanup55_crit_edge ], [ %call13, %if.end12.cleanup55_crit_edge ], [ %call18, %if.end16.cleanup55_crit_edge ], [ %call22, %if.end21.cleanup55_crit_edge ], [ %call27, %if.end25.cleanup55_crit_edge ], [ %call31, %if.end30.cleanup55_crit_edge ], [ %call36, %if.end34.cleanup55_crit_edge ], [ %call45, %cleanup.thread ], [ -12, %entry.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_cq_diag_fmsg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_eq_diag_fmsg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_reporter_icosq_diagnose(ptr nocapture noundef readonly %icosq, i8 noundef zeroext %hw_state, ptr noundef %fmsg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sqn = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 8
  %0 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sqn, align 4
  %call1 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.37, i32 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.32, i8 noundef zeroext %hw_state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %icosq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %icosq, align 128
  %conv = zext i16 %3 to i32
  %call9 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.36, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %pc = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 1
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pc, align 2
  %conv13 = zext i16 %5 to i32
  %call14 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.38, i32 noundef %conv13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sz_m1.i, align 4
  %add.i = add i32 %7, 1
  %call19 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.39, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %call23 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %mcq = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mcq, align 32
  %call27 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.41, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %cc33 = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 4, i32 0, i32 2
  %10 = ptrtoint ptr %cc33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cc33, align 4
  %call34 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.36, i32 noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %sz_m1.i88 = getelementptr inbounds %struct.mlx5e_icosq, ptr %icosq, i32 0, i32 4, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %sz_m1.i88 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sz_m1.i88, align 4
  %add.i89 = add i32 %13, 1
  %call41 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.24, i32 noundef %add.i89) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %call45 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end44.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call49, %if.end48 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call34, %if.end30.cleanup_crit_edge ], [ %call41, %if.end37.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_query_rq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 696, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 698, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 713, i32 37}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 727, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 759, i32 29}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 569, i32 53}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 583, i32 53}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 587, i32 53}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 603, i32 53}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 142, i32 19}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 147, i32 19}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 85, i32 19}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 49, i32 6}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 57, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 507, i32 53}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 521, i32 53}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 541, i32 53}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 743, i32 10}
!38 = !{ptr @mlx5_rx_reporter_ops, !39, !"mlx5_rx_reporter_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 742, i32 49}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 644, i32 47}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 657, i32 61}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 417, i32 53}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 364, i32 39}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 368, i32 40}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 372, i32 40}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 376, i32 43}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 376, i32 68}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 376, i32 75}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 393, i32 53}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 397, i32 40}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 335, i32 40}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 278, i32 40}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 282, i32 39}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 286, i32 39}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 290, i32 40}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 294, i32 40}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 298, i32 40}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 216, i32 40}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 228, i32 40}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 232, i32 40}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 237, i32 53}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 241, i32 40}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 443, i32 43}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_rx.c", i32 443, i32 54}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{!"branch_weights", i32 2000, i32 1}
