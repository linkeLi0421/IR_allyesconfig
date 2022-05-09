; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_health_reporter_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_err_ctx = type { ptr, ptr, ptr }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.176, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.174, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.174 = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.176 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.175, i32, i32 }
%union.anon.175 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_rq = type { %union.anon.177, %struct.anon.191, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.177 = type { %struct.anon.184 }
%struct.anon.184 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.186 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.185, i64, i32, [28 x i8] }
%union.anon.185 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type { %struct.anon.188, [0 x %struct.mlx5_mtt] }
%struct.anon.188 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.191 = type { i16, i32, i8 }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.180, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.183, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i8, i8, i16, i32 }
%union.anon.183 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.192, i32 }
%union.anon.192 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.mlx5e_dma_info = type { i32, %union.anon.179 }
%union.anon.179 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.206, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.206 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.207 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.207 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.208 }
%struct.anon.208 = type { i8, i8 }
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
%struct.mlx5e_tx_timeout_ctx = type { ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.162, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.164, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.162 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.163] }
%struct.anon.163 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
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
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.205, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.205 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.195, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.195 = type { ptr }
%struct.mlx5e_ptp = type { [8 x %struct.mlx5e_ptpsq], %struct.mlx5e_rq, %struct.napi_struct, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, [1 x i32], [124 x i8] }
%struct.mlx5e_ptpsq = type { %struct.mlx5e_txqsq, %struct.mlx5e_cq, i16, i16, %struct.mlx5e_skb_fifo, ptr, [104 x i8] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ERR CQE on SQ: 0x%x\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"TX timeout on queue: %d, SQ: 0x%x, CQ: 0x%x, SQ Cons: 0x%x SQ Prod: 0x%x, usecs since last trans: %u\00", [59 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlx5_tx_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.12, ptr @mlx5e_tx_reporter_recover, ptr @mlx5e_tx_reporter_dump, ptr @mlx5e_tx_reporter_diagnose, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to create tx reporter, err = %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to query SQ 0x%x state. err = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Wait for SQ 0x%x flush timeout (sq cc = 0x%x, sq pc = 0x%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@mlx5e_reset_txqsq_cc_pc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SQ 0x%x: cc (0x%x) != pc (0x%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SX Slice\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SQ\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QPC\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"send_buff\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mlx5e_safe_reopen_channels failed recovering from a tx_timeout, err(%d).\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SQs\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PTP SQ\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Common Config\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PTP\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stride size\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ts_format\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RT\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"FRC\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Port TS\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"channel ix\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tc\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"txq ix\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sqn\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HW state\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cc\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pc\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptp\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 557, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 574, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"mlx5_tx_reporter_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 582, i32 49 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 600, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 57, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 24, i32 6 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 32, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 418, i32 53 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 432, i32 53 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 436, i32 53 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 452, i32 53 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 123, i32 6 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 583, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 501, i32 47 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 521, i32 55 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 320, i32 53 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 333, i32 53 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 274, i32 40 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 278, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 282, i32 43 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 282, i32 68 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 282, i32 75 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 299, i32 53 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 206, i32 40 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 161, i32 40 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 165, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 169, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 173, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 177, i32 41 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 181, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 185, i32 40 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 231, i32 43 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 231, i32 54 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @.str, ptr @.str.1, ptr @mlx5_tx_reporter_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_tx_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_tx_err_cqe(ptr noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  %err_str = alloca [256 x i8], align 1
  %err_ctx = alloca %struct.mlx5e_err_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %err_str) #5
  %0 = call ptr @memset(ptr %err_str, i32 255, i32 256)
  %priv1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 28
  %1 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %err_ctx) #5
  %ctx = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 2
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sq, ptr %ctx, align 4
  %4 = ptrtoint ptr %err_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlx5e_tx_reporter_err_cqe_recover, ptr %err_ctx, align 4
  %dump = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 1
  %5 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mlx5e_tx_reporter_dump_sq, ptr %dump, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %6 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sqn, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %err_str, i32 noundef 256, ptr noundef nonnull @.str, i32 noundef %7)
  %tx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %2, i32 0, i32 46
  %8 = ptrtoint ptr %tx_reporter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_reporter, align 4
  %call3 = call i32 @mlx5e_health_report(ptr noundef %2, ptr noundef %9, ptr noundef nonnull %err_str, ptr noundef nonnull %err_ctx) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %err_ctx) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %err_str) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tx_reporter_err_cqe_recover(ptr noundef %ctx) #0 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %state, align 1, !annotation !77
  %mdev1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 27
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 8
  %netdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 26
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  %state2 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 22
  %5 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state2, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 17
  %8 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sqn, align 4
  %call3 = call i32 @mlx5_core_query_sq_state(ptr noundef %2, i32 noundef %9, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sqn, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %11, i32 noundef %call3) #8
  br label %out

if.end7:                                          ; preds = %if.end
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp.not = icmp eq i8 %13, 3
  br i1 %cmp.not, label %if.end10, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end10:                                         ; preds = %if.end7
  %txq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 16
  %14 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %txq, align 64
  call void @mlx5e_tx_disable_queue(ptr noundef %15) #5
  %16 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %call.i = call i64 @_mlx5_tout_ms(ptr noundef %17, i32 noundef 9) #5
  %conv.i = trunc i64 %call.i to i32
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #5
  %19 = add i32 %call2.i.i, %18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub18.i = sub i32 %20, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub18.i)
  %cmp19.i = icmp slt i32 %sub18.i, 0
  br i1 %cmp19.i, label %while.body.lr.ph.i, label %if.end10.mlx5e_wait_for_sq_flush.exit_crit_edge

if.end10.mlx5e_wait_for_sq_flush.exit_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_wait_for_sq_flush.exit

while.body.lr.ph.i:                               ; preds = %if.end10
  %pc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ctx, align 128
  %23 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pc.i, align 128
  call void @__sanitizer_cov_trace_cmp2(i16 %22, i16 %24)
  %cmp5.i = icmp eq i16 %22, %24
  br i1 %cmp5.i, label %if.end14, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  call void @msleep(i32 noundef 20) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %25, %19
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.mlx5e_wait_for_sq_flush.exit_crit_edge

if.end.i.mlx5e_wait_for_sq_flush.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_wait_for_sq_flush.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

mlx5e_wait_for_sq_flush.exit:                     ; preds = %if.end.i.mlx5e_wait_for_sq_flush.exit_crit_edge, %if.end10.mlx5e_wait_for_sq_flush.exit_crit_edge
  %26 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev, align 4
  %28 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sqn, align 4
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ctx, align 128
  %conv8.i = zext i16 %31 to i32
  %pc9.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 5
  %32 = ptrtoint ptr %pc9.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pc9.i, align 128
  %conv10.i = zext i16 %33 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.4, i32 noundef %29, i32 noundef %conv8.i, i32 noundef %conv10.i) #8
  br label %out

if.end14:                                         ; preds = %while.body.i
  %34 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sqn, align 4
  %call16 = call i32 @mlx5e_health_sq_to_ready(ptr noundef %2, ptr noundef %4, i32 noundef %35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end19:                                         ; preds = %if.end14
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ctx, align 128
  %38 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pc.i, align 128
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp.not.i = icmp eq i16 %37, %39
  br i1 %cmp.not.i, label %if.end19.mlx5e_reset_txqsq_cc_pc.exit_crit_edge, label %land.rhs.i

if.end19.mlx5e_reset_txqsq_cc_pc.exit_crit_edge:  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_reset_txqsq_cc_pc.exit

land.rhs.i:                                       ; preds = %if.end19
  %.b53.i = load i1, ptr @mlx5e_reset_txqsq_cc_pc.__already_done, align 1
  br i1 %.b53.i, label %land.rhs.i.mlx5e_reset_txqsq_cc_pc.exit_crit_edge, label %if.then.i, !prof !78

land.rhs.i.mlx5e_reset_txqsq_cc_pc.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_reset_txqsq_cc_pc.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mlx5e_reset_txqsq_cc_pc.__already_done, align 1
  %40 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sqn, align 4
  %conv20.i = zext i16 %37 to i32
  %conv22.i = zext i16 %39 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 34, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %41, i32 noundef %conv20.i, i32 noundef %conv22.i) #5
  br label %mlx5e_reset_txqsq_cc_pc.exit

mlx5e_reset_txqsq_cc_pc.exit:                     ; preds = %if.then.i, %land.rhs.i.mlx5e_reset_txqsq_cc_pc.exit_crit_edge, %if.end19.mlx5e_reset_txqsq_cc_pc.exit_crit_edge
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 0, ptr %ctx, align 128
  %dma_fifo_cc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 2
  %43 = ptrtoint ptr %dma_fifo_cc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %dma_fifo_cc.i, align 4
  %44 = ptrtoint ptr %pc.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %pc.i, align 128
  %stats = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ctx, i32 0, i32 13
  %45 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stats, align 32
  %recover = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %46, i32 0, i32 25
  %47 = ptrtoint ptr %recover to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %recover, align 8
  %inc = add i64 %48, 1
  store i64 %inc, ptr %recover, align 8
  call void @_clear_bit(i32 noundef 2, ptr noundef %state2) #5
  call void @mlx5e_activate_txqsq(ptr noundef %ctx) #5
  br label %cleanup

out:                                              ; preds = %if.end14.out_crit_edge, %mlx5e_wait_for_sq_flush.exit, %if.end7.out_crit_edge, %if.then5
  %err.0 = phi i32 [ %call3, %if.then5 ], [ 0, %if.end7.out_crit_edge ], [ -110, %mlx5e_wait_for_sq_flush.exit ], [ %call16, %if.end14.out_crit_edge ]
  call void @_clear_bit(i32 noundef 2, ptr noundef %state2) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %mlx5e_reset_txqsq_cc_pc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %mlx5e_reset_txqsq_cc_pc.exit ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tx_reporter_dump_sq(ptr noundef %priv, ptr noundef %fmsg, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %key = alloca %struct.mlx5_rsc_key, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 5
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %size, align 4
  %5 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %key, align 4
  %call5 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
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
  %call22 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %11 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 7, ptr %key, align 4
  %num_of_obj2 = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key, i32 0, i32 4
  %12 = ptrtoint ptr %num_of_obj2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65535, ptr %num_of_obj2, align 4
  %call35 = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %priv, ptr noundef nonnull %key, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %call39 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call43, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call26, %if.end25.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call35, %if.end33.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key) #5
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_report(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_reporter_tx_timeout(ptr noundef %sq) local_unnamed_addr #0 align 64 {
entry:
  %err_str = alloca [256 x i8], align 1
  %to_ctx = alloca %struct.mlx5e_tx_timeout_ctx, align 8
  %err_ctx = alloca %struct.mlx5e_err_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %err_str) #5
  %0 = call ptr @memset(ptr %err_str, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_ctx) #5
  %1 = ptrtoint ptr %to_ctx to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %to_ctx, align 8
  %priv1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 28
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %err_ctx) #5
  %4 = ptrtoint ptr %to_ctx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sq, ptr %to_ctx, align 8
  %ctx = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 2
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %to_ctx, ptr %ctx, align 4
  %6 = ptrtoint ptr %err_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mlx5e_tx_reporter_timeout_recover, ptr %err_ctx, align 4
  %dump = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %err_ctx, i32 0, i32 1
  %7 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx5e_tx_reporter_timeout_dump, ptr %dump, align 4
  %ch_ix = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 30
  %8 = ptrtoint ptr %ch_ix to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_ix, align 4
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %10 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sqn, align 4
  %mcq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 10, i32 3
  %12 = ptrtoint ptr %mcq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mcq, align 32
  %14 = ptrtoint ptr %sq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sq, align 128
  %conv = zext i16 %15 to i32
  %pc = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %16 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pc, align 128
  %conv3 = zext i16 %17 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %txq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 16
  %19 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %txq, align 64
  %trans_start = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %trans_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %trans_start, align 16
  %sub = sub i32 %18, %22
  %call = call i32 @jiffies_to_usecs(i32 noundef %sub) #5
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %err_str, i32 noundef 256, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv, i32 noundef %conv3, i32 noundef %call)
  %tx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %3, i32 0, i32 46
  %23 = ptrtoint ptr %tx_reporter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_reporter, align 4
  %call6 = call i32 @mlx5e_health_report(ptr noundef %3, ptr noundef %24, ptr noundef nonnull %err_str, ptr noundef nonnull %err_ctx) #5
  %status = getelementptr inbounds %struct.mlx5e_tx_timeout_ctx, ptr %to_ctx, i32 0, i32 1
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %err_ctx) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_ctx) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %err_str) #5
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tx_reporter_timeout_recover(ptr nocapture noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %eq2 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %1, i32 0, i32 10, i32 3, i32 18
  %2 = ptrtoint ptr %eq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eq2, align 4
  %priv3 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %1, i32 0, i32 28
  %4 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv3, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev, align 4
  %ch_stats = getelementptr inbounds %struct.mlx5e_txqsq, ptr %1, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %ch_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ch_stats, align 4
  %call = tail call i32 @mlx5e_health_channel_eq_recover(ptr noundef %7, ptr noundef %3, ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %status = getelementptr inbounds %struct.mlx5e_tx_timeout_ctx, ptr %ctx, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @mlx5e_safe_reopen_channels(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %status8 = getelementptr inbounds %struct.mlx5e_tx_timeout_ctx, ptr %ctx, i32 0, i32 1
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %status8, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %status8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call5, ptr %status8, align 4
  %state = getelementptr inbounds %struct.mlx5e_txqsq, ptr %1, i32 0, i32 22
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #5
  %netdev11 = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 22
  %13 = ptrtoint ptr %netdev11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev11, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then
  %retval.0 = phi i32 [ %call5, %if.end9 ], [ 0, %if.then7 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tx_reporter_timeout_dump(ptr noundef %priv, ptr noundef %fmsg, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call i32 @mlx5e_tx_reporter_dump_sq(ptr noundef %priv, ptr noundef %fmsg, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_tx_create(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 64
  %dl_port.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 20, i32 1
  %call1 = tail call ptr @devlink_port_health_reporter_create(ptr noundef %dl_port.i, ptr noundef nonnull @mlx5_tx_reporter_ops, i64 noundef 500, ptr noundef %priv) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  %4 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 46
  %5 = ptrtoint ptr %tx_reporter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %tx_reporter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_port_health_reporter_create(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_reporter_tx_destroy(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_reporter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 46
  %0 = ptrtoint ptr %tx_reporter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_reporter, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devlink_port_health_reporter_destroy(ptr noundef nonnull %1) #5
  %2 = ptrtoint ptr %tx_reporter to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tx_reporter, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_health_reporter_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_query_sq_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tx_disable_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_sq_to_ready(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_txqsq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @_mlx5_tout_ms(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_channel_eq_recover(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_safe_reopen_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tx_reporter_recover(ptr noundef %reporter, ptr noundef readonly %context, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #5
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %ctx.i = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @mlx5e_health_recover_channels(ptr noundef %call) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call.i, %cond.true ], [ %call2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tx_reporter_dump(ptr noundef %reporter, ptr noundef %fmsg, ptr noundef readonly %context, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %key.i = alloca %struct.mlx5_rsc_key, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #5
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dump.i = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dump.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump.i, align 4
  %ctx.i = getelementptr inbounds %struct.mlx5e_err_ctx, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx.i, align 4
  %call.i = tail call i32 %1(ptr noundef %call, ptr noundef %fmsg, ptr noundef %3) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9
  %ptp.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %key.i) #5
  %6 = getelementptr inbounds i8, ptr %key.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %state.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %cond.false.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge, label %if.end.i

cond.false.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge: ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

if.end.i:                                         ; preds = %cond.false
  %call1.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge

if.end.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

if.end4.i:                                        ; preds = %if.end.i
  %size.i = getelementptr inbounds %struct.mlx5_rsc_key, ptr %key.i, i32 0, i32 5
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4096, ptr %size.i, align 4
  %11 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 13, ptr %key.i, align 4
  %call5.i = call i32 @mlx5e_health_rsc_fmsg_dump(ptr noundef %call, ptr noundef nonnull %key.i, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge

if.end4.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge

if.end8.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.cond.preheader.i, label %if.end12.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge

if.end12.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

for.cond.preheader.i:                             ; preds = %if.end12.i
  %num.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp118.not.i = icmp eq i32 %13, 0
  br i1 %cmp118.not.i, label %for.cond.preheader.i.for.end37.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end37.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %mqprio.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc35.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0119.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc36.i, %for.inc35.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %i.0119.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  br label %for.cond20.i

for.cond20.i:                                     ; preds = %for.body25.i.for.cond20.i_crit_edge, %for.body.i
  %tc.0.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body25.i.for.cond20.i_crit_edge ]
  %18 = ptrtoint ptr %mqprio.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mqprio.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.i.i = icmp eq i16 %19, 0
  br i1 %cmp.i.i, label %cond.true.i.i, label %for.cond20.i.mlx5e_get_dcb_num_tc.exit.i_crit_edge

for.cond20.i.mlx5e_get_dcb_num_tc.exit.i_crit_edge: ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_get_dcb_num_tc.exit.i

cond.true.i.i:                                    ; preds = %for.cond20.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_tc.i.i, align 2
  br label %mlx5e_get_dcb_num_tc.exit.i

mlx5e_get_dcb_num_tc.exit.i:                      ; preds = %cond.true.i.i, %for.cond20.i.mlx5e_get_dcb_num_tc.exit.i_crit_edge
  %cond.i.i = phi i8 [ %21, %cond.true.i.i ], [ 1, %for.cond20.i.mlx5e_get_dcb_num_tc.exit.i_crit_edge ]
  %conv.i = zext i8 %cond.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tc.0.i, i32 %conv.i)
  %cmp23.i = icmp ult i32 %tc.0.i, %conv.i
  br i1 %cmp23.i, label %for.body25.i, label %for.inc35.i

for.body25.i:                                     ; preds = %mlx5e_get_dcb_num_tc.exit.i
  %sqn.i = getelementptr %struct.mlx5e_channel, ptr %17, i32 0, i32 2, i32 %tc.0.i, i32 17
  %22 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sqn.i, align 4
  %call28.i = call i32 @mlx5e_health_queue_dump(ptr noundef %call, ptr noundef %fmsg, i32 noundef %23, ptr noundef nonnull @.str.8) #5
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  %inc.i = add nuw nsw i32 %tc.0.i, 1
  br i1 %tobool29.not.i, label %for.body25.i.for.cond20.i_crit_edge, label %for.body25.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge

for.body25.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge: ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

for.body25.i.for.cond20.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond20.i

for.inc35.i:                                      ; preds = %mlx5e_get_dcb_num_tc.exit.i
  %inc36.i = add nuw i32 %i.0119.i, 1
  %24 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num.i, align 8
  %cmp.i = icmp ult i32 %inc36.i, %25
  br i1 %cmp.i, label %for.inc35.i.for.body.i_crit_edge, label %for.inc35.i.for.end37.i_crit_edge

for.inc35.i.for.end37.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end37.i

for.inc35.i.for.body.i_crit_edge:                 ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end37.i:                                      ; preds = %for.inc35.i.for.end37.i_crit_edge, %for.cond.preheader.i.for.end37.i_crit_edge
  %tobool38.not.i = icmp eq ptr %5, null
  br i1 %tobool38.not.i, label %for.end37.i.if.end64.i_crit_edge, label %land.lhs.true.i

for.end37.i.if.end64.i_crit_edge:                 ; preds = %for.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

land.lhs.true.i:                                  ; preds = %for.end37.i
  %state39.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %5, i32 0, i32 12
  %26 = ptrtoint ptr %state39.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state39.i, align 4
  %and1.i109.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i109.i)
  %tobool41.not.i = icmp eq i32 %and1.i109.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.if.end64.i_crit_edge, label %for.cond43.preheader.i

land.lhs.true.i.if.end64.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

for.cond43.preheader.i:                           ; preds = %land.lhs.true.i
  %mqprio.i110.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4
  %num_tc.i112.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4, i32 1
  br label %for.cond43.i

for.cond43.i:                                     ; preds = %for.body50.i.for.cond43.i_crit_edge, %for.cond43.preheader.i
  %tc.1.i = phi i32 [ %inc62.i, %for.body50.i.for.cond43.i_crit_edge ], [ 0, %for.cond43.preheader.i ]
  %28 = ptrtoint ptr %mqprio.i110.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mqprio.i110.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i111.i = icmp eq i16 %29, 0
  br i1 %cmp.i111.i, label %cond.true.i113.i, label %for.cond43.i.mlx5e_get_dcb_num_tc.exit115.i_crit_edge

for.cond43.i.mlx5e_get_dcb_num_tc.exit115.i_crit_edge: ; preds = %for.cond43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_get_dcb_num_tc.exit115.i

cond.true.i113.i:                                 ; preds = %for.cond43.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %num_tc.i112.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_tc.i112.i, align 2
  br label %mlx5e_get_dcb_num_tc.exit115.i

mlx5e_get_dcb_num_tc.exit115.i:                   ; preds = %cond.true.i113.i, %for.cond43.i.mlx5e_get_dcb_num_tc.exit115.i_crit_edge
  %cond.i114.i = phi i8 [ %31, %cond.true.i113.i ], [ 1, %for.cond43.i.mlx5e_get_dcb_num_tc.exit115.i_crit_edge ]
  %conv47.i = zext i8 %cond.i114.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tc.1.i, i32 %conv47.i)
  %cmp48.i = icmp ult i32 %tc.1.i, %conv47.i
  br i1 %cmp48.i, label %for.body50.i, label %mlx5e_get_dcb_num_tc.exit115.i.if.end64.i_crit_edge

mlx5e_get_dcb_num_tc.exit115.i.if.end64.i_crit_edge: ; preds = %mlx5e_get_dcb_num_tc.exit115.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

for.body50.i:                                     ; preds = %mlx5e_get_dcb_num_tc.exit115.i
  %sqn53.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %5, i32 0, i32 %tc.1.i, i32 0, i32 17
  %32 = ptrtoint ptr %sqn53.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sqn53.i, align 4
  %call54.i = call i32 @mlx5e_health_queue_dump(ptr noundef %call, ptr noundef %fmsg, i32 noundef %33, ptr noundef nonnull @.str.14) #5
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  %inc62.i = add nuw nsw i32 %tc.1.i, 1
  br i1 %tobool55.not.i, label %for.body50.i.for.cond43.i_crit_edge, label %for.body50.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge

for.body50.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge: ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

for.body50.i.for.cond43.i_crit_edge:              ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond43.i

if.end64.i:                                       ; preds = %mlx5e_get_dcb_num_tc.exit115.i.if.end64.i_crit_edge, %land.lhs.true.i.if.end64.i_crit_edge, %for.end37.i.if.end64.i_crit_edge
  %call65.i = call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #5
  br label %mlx5e_tx_reporter_dump_all_sqs.exit

mlx5e_tx_reporter_dump_all_sqs.exit:              ; preds = %if.end64.i, %for.body50.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge, %for.body25.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge, %if.end12.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge, %if.end8.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge, %if.end4.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge, %if.end.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge, %cond.false.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge
  %retval.6.i = phi i32 [ %call65.i, %if.end64.i ], [ 0, %cond.false.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge ], [ %call1.i, %if.end.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge ], [ %call5.i, %if.end4.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge ], [ %call9.i, %if.end8.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge ], [ %call13.i, %if.end12.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge ], [ %call54.i, %for.body50.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge ], [ %call28.i, %for.body25.i.mlx5e_tx_reporter_dump_all_sqs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %key.i) #5
  br label %cond.end

cond.end:                                         ; preds = %mlx5e_tx_reporter_dump_all_sqs.exit, %cond.true
  %cond = phi i32 [ %call.i, %cond.true ], [ %retval.6.i, %mlx5e_tx_reporter_dump_all_sqs.exit ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_tx_reporter_diagnose(ptr noundef %reporter, ptr noundef %fmsg, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #5
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9
  %ptp = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 128
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ptp.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call.i, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ptp.i, align 4
  %call1.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call fastcc i32 @mlx5e_tx_reporter_diagnose_generic_txqsq(ptr noundef %fmsg, ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.unlock_crit_edge

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end5.i:                                        ; preds = %if.end.i
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %if.end5.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge, label %lor.lhs.false.i

if.end5.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_diagnose_common_config.exit

lor.lhs.false.i:                                  ; preds = %if.end5.i
  %state.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool8.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge, label %if.end10.i

lor.lhs.false.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_diagnose_common_config.exit

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %call12.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.unlock_crit_edge

if.end10.i.unlock_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end15.i:                                       ; preds = %if.end10.i
  %call16.i = tail call fastcc i32 @mlx5e_tx_reporter_diagnose_generic_txqsq(ptr noundef %fmsg, ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.unlock_crit_edge

if.end15.i.unlock_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end19.i:                                       ; preds = %if.end15.i
  %call20.i = tail call fastcc i32 @mlx5e_tx_reporter_diagnose_generic_tx_port_ts(ptr noundef %fmsg, ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i.unlock_crit_edge

if.end19.i.unlock_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end23.i:                                       ; preds = %if.end19.i
  %call24.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge, label %if.end23.i.unlock_crit_edge

if.end23.i.unlock_crit_edge:                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end23.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_tx_reporter_diagnose_common_config.exit

mlx5e_tx_reporter_diagnose_common_config.exit:    ; preds = %if.end23.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge, %lor.lhs.false.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge, %if.end5.i.mlx5e_tx_reporter_diagnose_common_config.exit_crit_edge
  %call28.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool3.not = icmp eq i32 %call28.i, 0
  br i1 %tobool3.not, label %if.end5, label %mlx5e_tx_reporter_diagnose_common_config.exit.unlock_crit_edge

mlx5e_tx_reporter_diagnose_common_config.exit.unlock_crit_edge: ; preds = %mlx5e_tx_reporter_diagnose_common_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end5:                                          ; preds = %mlx5e_tx_reporter_diagnose_common_config.exit
  %call6 = tail call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %if.end5.unlock_crit_edge

if.end5.unlock_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

for.cond.preheader:                               ; preds = %if.end5
  %num = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp133.not = icmp eq i32 %13, 0
  br i1 %cmp133.not, label %for.cond.preheader.for.end30_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end30_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mqprio.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4
  %num_tc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc28.for.body_crit_edge, %for.body.lr.ph
  %i.0134 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.inc28.for.body_crit_edge ]
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels, align 128
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0134
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %mlx5e_tx_reporter_build_diagnose_output.exit.for.cond13_crit_edge, %for.body
  %tc.0 = phi i32 [ 0, %for.body ], [ %inc, %mlx5e_tx_reporter_build_diagnose_output.exit.for.cond13_crit_edge ]
  %18 = ptrtoint ptr %mqprio.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %mqprio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp.i = icmp eq i16 %19, 0
  br i1 %cmp.i, label %cond.true.i, label %for.cond13.mlx5e_get_dcb_num_tc.exit_crit_edge

for.cond13.mlx5e_get_dcb_num_tc.exit_crit_edge:   ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_get_dcb_num_tc.exit

cond.true.i:                                      ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_tc.i, align 2
  br label %mlx5e_get_dcb_num_tc.exit

mlx5e_get_dcb_num_tc.exit:                        ; preds = %cond.true.i, %for.cond13.mlx5e_get_dcb_num_tc.exit_crit_edge
  %cond.i = phi i8 [ %21, %cond.true.i ], [ 1, %for.cond13.mlx5e_get_dcb_num_tc.exit_crit_edge ]
  %conv = zext i8 %cond.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tc.0, i32 %conv)
  %cmp16 = icmp ult i32 %tc.0, %conv
  br i1 %cmp16, label %for.body18, label %for.inc28

for.body18:                                       ; preds = %mlx5e_get_dcb_num_tc.exit
  %arrayidx20 = getelementptr %struct.mlx5e_channel, ptr %17, i32 0, i32 2, i32 %tc.0
  %call.i93 = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.end.i96, label %for.body18.unlock_crit_edge

for.body18.unlock_crit_edge:                      ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end.i96:                                       ; preds = %for.body18
  %ch_ix.i = getelementptr %struct.mlx5e_channel, ptr %17, i32 0, i32 2, i32 %tc.0, i32 30
  %22 = ptrtoint ptr %ch_ix.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch_ix.i, align 4
  %call1.i95 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.23, i32 noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool2.not.i = icmp eq i32 %call1.i95, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i96.unlock_crit_edge

if.end.i96.unlock_crit_edge:                      ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end4.i:                                        ; preds = %if.end.i96
  %call5.i = tail call fastcc i32 @mlx5e_tx_reporter_build_diagnose_output_sq_common(ptr noundef %fmsg, ptr noundef %arrayidx20, i32 noundef %tc.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i97 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i97, label %mlx5e_tx_reporter_build_diagnose_output.exit, label %if.end4.i.unlock_crit_edge

if.end4.i.unlock_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

mlx5e_tx_reporter_build_diagnose_output.exit:     ; preds = %if.end4.i
  %call9.i = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #5
  %tobool22.not = icmp eq i32 %call9.i, 0
  %inc = add nuw nsw i32 %tc.0, 1
  br i1 %tobool22.not, label %mlx5e_tx_reporter_build_diagnose_output.exit.for.cond13_crit_edge, label %mlx5e_tx_reporter_build_diagnose_output.exit.unlock_crit_edge

mlx5e_tx_reporter_build_diagnose_output.exit.unlock_crit_edge: ; preds = %mlx5e_tx_reporter_build_diagnose_output.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

mlx5e_tx_reporter_build_diagnose_output.exit.for.cond13_crit_edge: ; preds = %mlx5e_tx_reporter_build_diagnose_output.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond13

for.inc28:                                        ; preds = %mlx5e_get_dcb_num_tc.exit
  %inc29 = add nuw i32 %i.0134, 1
  %24 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num, align 8
  %cmp = icmp ult i32 %inc29, %25
  br i1 %cmp, label %for.inc28.for.body_crit_edge, label %for.inc28.for.end30_crit_edge

for.inc28.for.end30_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.inc28.for.body_crit_edge:                     ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end30:                                        ; preds = %for.inc28.for.end30_crit_edge, %for.cond.preheader.for.end30_crit_edge
  %tobool31.not = icmp eq ptr %1, null
  br i1 %tobool31.not, label %for.end30.close_sqs_nest_crit_edge, label %lor.lhs.false

for.end30.close_sqs_nest_crit_edge:               ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %close_sqs_nest

lor.lhs.false:                                    ; preds = %for.end30
  %state32 = getelementptr inbounds %struct.mlx5e_ptp, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %state32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %state32, align 4
  %and1.i92 = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i92)
  %tobool34.not = icmp eq i32 %and1.i92, 0
  br i1 %tobool34.not, label %lor.lhs.false.close_sqs_nest_crit_edge, label %for.cond37.preheader

lor.lhs.false.close_sqs_nest_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %close_sqs_nest

for.cond37.preheader:                             ; preds = %lor.lhs.false
  %mqprio.i99 = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4
  %num_tc.i101 = getelementptr inbounds %struct.mlx5e_priv, ptr %call, i32 0, i32 9, i32 3, i32 4, i32 1
  br label %for.cond37

for.cond37:                                       ; preds = %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.for.cond37_crit_edge, %for.cond37.preheader
  %tc.1 = phi i32 [ %inc51, %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.for.cond37_crit_edge ], [ 0, %for.cond37.preheader ]
  %28 = ptrtoint ptr %mqprio.i99 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mqprio.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.i100 = icmp eq i16 %29, 0
  br i1 %cmp.i100, label %cond.true.i102, label %for.cond37.mlx5e_get_dcb_num_tc.exit104_crit_edge

for.cond37.mlx5e_get_dcb_num_tc.exit104_crit_edge: ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlx5e_get_dcb_num_tc.exit104

cond.true.i102:                                   ; preds = %for.cond37
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %num_tc.i101 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_tc.i101, align 2
  br label %mlx5e_get_dcb_num_tc.exit104

mlx5e_get_dcb_num_tc.exit104:                     ; preds = %cond.true.i102, %for.cond37.mlx5e_get_dcb_num_tc.exit104_crit_edge
  %cond.i103 = phi i8 [ %31, %cond.true.i102 ], [ 1, %for.cond37.mlx5e_get_dcb_num_tc.exit104_crit_edge ]
  %conv41 = zext i8 %cond.i103 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %tc.1, i32 %conv41)
  %cmp42 = icmp ult i32 %tc.1, %conv41
  br i1 %cmp42, label %for.body44, label %mlx5e_get_dcb_num_tc.exit104.close_sqs_nest_crit_edge

mlx5e_get_dcb_num_tc.exit104.close_sqs_nest_crit_edge: ; preds = %mlx5e_get_dcb_num_tc.exit104
  call void @__sanitizer_cov_trace_pc() #7
  br label %close_sqs_nest

for.body44:                                       ; preds = %mlx5e_get_dcb_num_tc.exit104
  %arrayidx45 = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %1, i32 0, i32 %tc.1
  %call.i105 = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool.not.i106 = icmp eq i32 %call.i105, 0
  br i1 %tobool.not.i106, label %if.end.i109, label %for.body44.unlock_crit_edge

for.body44.unlock_crit_edge:                      ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end.i109:                                      ; preds = %for.body44
  %call1.i107 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107)
  %tobool2.not.i108 = icmp eq i32 %call1.i107, 0
  br i1 %tobool2.not.i108, label %if.end4.i112, label %if.end.i109.unlock_crit_edge

if.end.i109.unlock_crit_edge:                     ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end4.i112:                                     ; preds = %if.end.i109
  %call5.i110 = tail call fastcc i32 @mlx5e_tx_reporter_build_diagnose_output_sq_common(ptr noundef %fmsg, ptr noundef %arrayidx45, i32 noundef %tc.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i110)
  %tobool6.not.i111 = icmp eq i32 %call5.i110, 0
  br i1 %tobool6.not.i111, label %if.end8.i114, label %if.end4.i112.unlock_crit_edge

if.end4.i112.unlock_crit_edge:                    ; preds = %if.end4.i112
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end8.i114:                                     ; preds = %if.end4.i112
  %call9.i113 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i113)
  %tobool10.not.i = icmp eq i32 %call9.i113, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i114.unlock_crit_edge

if.end8.i114.unlock_crit_edge:                    ; preds = %if.end8.i114
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end12.i:                                       ; preds = %if.end8.i114
  %ts_cq.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %1, i32 0, i32 %tc.1, i32 1
  %call13.i = tail call i32 @mlx5e_health_cq_diag_fmsg(ptr noundef %ts_cq.i, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.unlock_crit_edge

if.end12.i.unlock_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

if.end16.i:                                       ; preds = %if.end12.i
  %call17.i = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit, label %if.end16.i.unlock_crit_edge

if.end16.i.unlock_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit: ; preds = %if.end16.i
  %call21.i = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #5
  %tobool47.not = icmp eq i32 %call21.i, 0
  %inc51 = add nuw nsw i32 %tc.1, 1
  br i1 %tobool47.not, label %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.for.cond37_crit_edge, label %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.unlock_crit_edge

mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.unlock_crit_edge: ; preds = %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock

mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.for.cond37_crit_edge: ; preds = %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond37

close_sqs_nest:                                   ; preds = %mlx5e_get_dcb_num_tc.exit104.close_sqs_nest_crit_edge, %lor.lhs.false.close_sqs_nest_crit_edge, %for.end30.close_sqs_nest_crit_edge
  %call53 = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #5
  br label %unlock

unlock:                                           ; preds = %close_sqs_nest, %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.unlock_crit_edge, %if.end16.i.unlock_crit_edge, %if.end12.i.unlock_crit_edge, %if.end8.i114.unlock_crit_edge, %if.end4.i112.unlock_crit_edge, %if.end.i109.unlock_crit_edge, %for.body44.unlock_crit_edge, %mlx5e_tx_reporter_build_diagnose_output.exit.unlock_crit_edge, %if.end4.i.unlock_crit_edge, %if.end.i96.unlock_crit_edge, %for.body18.unlock_crit_edge, %if.end5.unlock_crit_edge, %mlx5e_tx_reporter_diagnose_common_config.exit.unlock_crit_edge, %if.end23.i.unlock_crit_edge, %if.end19.i.unlock_crit_edge, %if.end15.i.unlock_crit_edge, %if.end10.i.unlock_crit_edge, %if.end.i.unlock_crit_edge, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %err.3 = phi i32 [ %call28.i, %mlx5e_tx_reporter_diagnose_common_config.exit.unlock_crit_edge ], [ %call6, %if.end5.unlock_crit_edge ], [ %call53, %close_sqs_nest ], [ 0, %entry.unlock_crit_edge ], [ %call24.i, %if.end23.i.unlock_crit_edge ], [ %call20.i, %if.end19.i.unlock_crit_edge ], [ %call16.i, %if.end15.i.unlock_crit_edge ], [ %call12.i, %if.end10.i.unlock_crit_edge ], [ %call2.i, %if.end.i.unlock_crit_edge ], [ %call1.i, %if.end.unlock_crit_edge ], [ %call.i105, %for.body44.unlock_crit_edge ], [ %call1.i107, %if.end.i109.unlock_crit_edge ], [ %call5.i110, %if.end4.i112.unlock_crit_edge ], [ %call9.i113, %if.end8.i114.unlock_crit_edge ], [ %call13.i, %if.end12.i.unlock_crit_edge ], [ %call17.i, %if.end16.i.unlock_crit_edge ], [ %call21.i, %mlx5e_tx_reporter_build_diagnose_output_ptpsq.exit.unlock_crit_edge ], [ %call9.i, %mlx5e_tx_reporter_build_diagnose_output.exit.unlock_crit_edge ], [ %call.i93, %for.body18.unlock_crit_edge ], [ %call1.i95, %if.end.i96.unlock_crit_edge ], [ %call5.i, %if.end4.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #5
  ret i32 %err.3
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_tx_reporter_diagnose_generic_txqsq(ptr noundef %fmsg, ptr noundef %txqsq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev = getelementptr inbounds %struct.mlx5e_txqsq, ptr %txqsq, i32 0, i32 27
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 34
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %shr.i = lshr i32 %5, 30
  %6 = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  %sz_m1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %txqsq, i32 0, i32 11, i32 0, i32 1
  %8 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sz_m1.i, align 4
  %call3 = tail call i32 @devlink_fmsg_u64_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.17, i64 noundef 64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.i = add i32 %9, 1
  %call7 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.18, i32 noundef %add.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %cond = select i1 %7, ptr @.str.20, ptr @.str.21
  %call13 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %cq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %txqsq, i32 0, i32 10
  %call17 = tail call i32 @mlx5e_health_cq_common_diag_fmsg(ptr noundef %cq, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_tx_reporter_diagnose_generic_tx_port_ts(ptr noundef %fmsg, ptr noundef %ptpsq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_health_fmsg_named_obj_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ts_cq = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %ptpsq, i32 0, i32 1
  %call1 = tail call i32 @mlx5e_health_cq_common_diag_fmsg(ptr noundef %ts_cq, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @mlx5e_health_fmsg_named_obj_nest_end(ptr noundef %fmsg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
define internal fastcc i32 @mlx5e_tx_reporter_build_diagnose_output_sq_common(ptr noundef %fmsg, ptr noundef %sq, i32 noundef %tc) unnamed_addr #0 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %txq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 16
  %0 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txq, align 64
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %and.i = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %priv1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 28
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %state, align 1, !annotation !77
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %5, i32 0, i32 21
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 64
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 17
  %9 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sqn, align 4
  %call2 = call i32 @mlx5_core_query_sq_state(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.24, i32 noundef %tc) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %txq_ix = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 31
  %11 = ptrtoint ptr %txq_ix to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txq_ix, align 8
  %call7 = call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.25, i32 noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %13 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sqn, align 4
  %call12 = call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.26, i32 noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %state, align 1
  %call16 = call i32 @devlink_fmsg_u8_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.27, i8 noundef zeroext %16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call21 = call i32 @devlink_fmsg_bool_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.28, i1 noundef zeroext %tobool.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %sq to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %sq, align 128
  %conv = zext i16 %18 to i32
  %call25 = call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.29, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %pc = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 5
  %19 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %pc, align 128
  %conv29 = zext i16 %20 to i32
  %call30 = call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.30, i32 noundef %conv29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %cq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 10
  %call34 = call i32 @mlx5e_health_cq_diag_fmsg(ptr noundef %cq, ptr noundef %fmsg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %eq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %sq, i32 0, i32 10, i32 3, i32 18
  %21 = ptrtoint ptr %eq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %eq, align 4
  %call39 = call i32 @mlx5e_health_eq_diag_fmsg(ptr noundef %22, ptr noundef %fmsg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end37 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u8_pair_put(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_bool_pair_put(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_cq_diag_fmsg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_health_eq_diag_fmsg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 557, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 574, i32 4}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 600, i32 8}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 57, i32 19}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 24, i32 6}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 32, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 418, i32 53}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 432, i32 53}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 436, i32 53}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 452, i32 53}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 123, i32 6}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 583, i32 11}
!26 = !{ptr @mlx5_tx_reporter_ops, !27, !"mlx5_tx_reporter_ops", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 582, i32 49}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 501, i32 47}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 521, i32 55}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 320, i32 53}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 333, i32 53}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 274, i32 40}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 278, i32 40}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 282, i32 43}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 282, i32 68}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 282, i32 75}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 299, i32 53}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 206, i32 40}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 161, i32 40}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 165, i32 40}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 169, i32 40}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 173, i32 39}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 177, i32 41}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 181, i32 40}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 185, i32 40}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 231, i32 43}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/reporter_tx.c", i32 231, i32 54}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{!"branch_weights", i32 2000, i32 1}
