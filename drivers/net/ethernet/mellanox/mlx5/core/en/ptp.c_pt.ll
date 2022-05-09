; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.141, %union.anon.142, [48 x i8], %union.anon.143, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.145, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.141 = type { ptr }
%union.anon.142 = type { i64 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, ptr }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.147, i32, i32, i32, i16, i16, %union.anon.149, i32, %union.anon.150, %union.anon.151, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.147 = type { i32 }
%union.anon.149 = type { i32 }
%union.anon.150 = type { i32 }
%union.anon.151 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.mlx5e_ptp_cq_stats = type { i64, i64, i64, i64 }
%struct.mlx5e_create_cq_param = type { ptr, ptr, i32, i32 }
%struct.mlx5e_create_sq_param = type { ptr, i32, i32, i32, i8, i8 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mlx5e_rq = type { %union.anon.182, %struct.anon.196, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.182 = type { %struct.anon.189 }
%struct.anon.189 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.191 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.162 }
%union.anon.162 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.190, i64, i32, [28 x i8] }
%union.anon.190 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { %struct.anon.193, [0 x %struct.mlx5_mtt] }
%struct.anon.193 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.196 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.179, i32, %struct.list_head, ptr, i16 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.179 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.185, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.188, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.185 = type { %struct.anon.186 }
%struct.anon.186 = type { i8, i8, i16, i32 }
%union.anon.188 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.197, i32 }
%union.anon.197 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.180, i32, i32 }
%union.anon.180 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.184 }
%union.anon.184 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.215, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.215 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.216 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.216 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.217 }
%struct.anon.217 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.mlx5e_dcbx = type { i32, %struct.mlx5e_cee_config, i8, [8 x i8], i8, i8, i32, i32, i16 }
%struct.mlx5e_cee_config = type { [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.mlx5e_xsk = type { ptr, i16, i8 }
%struct.mlx5e_scratchpad = type { ptr }
%struct.mlx5e_htb = type { [256 x %struct.hlist_head], [8 x i32], ptr, i16, i16, i16 }
%struct.mlx5e_ptp = type { [8 x %struct.mlx5e_ptpsq], %struct.mlx5e_rq, %struct.napi_struct, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, [1 x i32], [124 x i8] }
%struct.mlx5e_ptpsq = type { %struct.mlx5e_txqsq, %struct.mlx5e_cq, i16, i16, %struct.mlx5e_skb_fifo, ptr, [104 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.181, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.181 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.167, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.167 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.168] }
%struct.anon.168 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.129 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.129 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.169 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.166, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.166 = type { ptr }
%struct.mlx5e_ptp_params = type { %struct.mlx5e_params, %struct.mlx5e_sq_param, %struct.mlx5e_rq_param }
%struct.mlx5e_sq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, i8, i8, i16 }
%struct.mlx5e_cq_param = type { [16 x i32], %struct.mlx5_wq_param, i16, i8 }
%struct.mlx5_wq_param = type { i32, i32 }
%struct.mlx5e_rq_param = type { %struct.mlx5e_cq_param, [60 x i32], %struct.mlx5_wq_param, %struct.mlx5e_rq_frags_info }
%struct.mlx5e_rq_frags_info = type { [4 x %struct.mlx5e_rq_frag_info], i8, i8, i8 }
%struct.mlx5e_rq_frag_info = type { i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.140 = type { ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.mlx5e_ptp_fs = type { ptr, ptr, ptr, i8 }
%struct.mlx5e_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }

@mlx5e_ptp_rx_manage_fs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en/ptp.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"netdevice: %s%s: Don't try to add PTP RX-FS rules\00", [46 x i8] zeroinitializer }, align 32
@mlx5e_ptp_rx_manage_fs.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"netdevice: %s%s: Don't try to remove PTP RX-FS rules\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mlx5e_ptp_alloc_txqsq.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&sq->recover_work)\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@switch.table.netdev_reg_state = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 805, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 812, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 695, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 723, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/ptp.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 211, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4963, i32 10 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4975, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4976, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4977, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4978, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4979, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4980, i32 28 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4983, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 4984, i32 9 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"switch.table.netdev_reg_state\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mlx5e_ptp_alloc_txqsq.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.netdev_reg_state], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ptp_alloc_txqsq.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netdev_reg_state to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlx5e_skb_cb_hwtstamp_init(ptr nocapture noundef writeonly %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = call ptr @memset(ptr %cb, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_skb_cb_hwtstamp_handler(ptr noundef %skb, i32 noundef %hwtstamp_type, i64 noundef %hwtstamp, ptr nocapture noundef %cq_stats) local_unnamed_addr #1 align 64 {
entry:
  %hwts.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hwtstamp_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %hwtstamp_type, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %port_hwtstamp = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  %port_hwtstamp.sink = phi ptr [ %port_hwtstamp, %sw.bb1 ], [ %cb.i, %sw.bb ]
  %1 = ptrtoint ptr %port_hwtstamp.sink to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %hwtstamp, ptr %port_hwtstamp.sink, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %cb.i15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i15 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %cb.i15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %sw.epilog.return_crit_edge, label %lor.lhs.false

sw.epilog.return_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %sw.epilog
  %port_hwtstamp6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %port_hwtstamp6 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_hwtstamp6, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool7.not = icmp eq i64 %5, 0
  br i1 %tobool7.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwts.i) #13
  %6 = ptrtoint ptr %port_hwtstamp6 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %port_hwtstamp6, align 8
  %sub.i = sub i64 %7, %3
  %8 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 7812500, i64 %8)
  %cmp3.i = icmp sgt i64 %8, 7812500
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %abort.i = getelementptr inbounds %struct.mlx5e_ptp_cq_stats, ptr %cq_stats, i32 0, i32 2
  %9 = ptrtoint ptr %abort.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %abort.i, align 8
  %inc.i = add i64 %10, 1
  store i64 %inc.i, ptr %abort.i, align 8
  %abort_abs_diff_ns.i = getelementptr inbounds %struct.mlx5e_ptp_cq_stats, ptr %cq_stats, i32 0, i32 3
  %11 = ptrtoint ptr %abort_abs_diff_ns.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %abort_abs_diff_ns.i, align 8
  %add.i = add i64 %12, %8
  store i64 %add.i, ptr %abort_abs_diff_ns.i, align 8
  br label %mlx5e_skb_cb_hwtstamp_tx.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %hwts.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %7, ptr %hwts.i, align 8
  call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef nonnull %hwts.i) #13
  br label %mlx5e_skb_cb_hwtstamp_tx.exit

mlx5e_skb_cb_hwtstamp_tx.exit:                    ; preds = %if.end.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwts.i) #13
  %14 = call ptr @memset(ptr %cb.i15, i32 0, i32 16)
  br label %return

return:                                           ; preds = %mlx5e_skb_cb_hwtstamp_tx.exit, %lor.lhs.false.return_crit_edge, %sw.epilog.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ptp_open(ptr noundef %priv, ptr nocapture noundef readonly %params, i8 noundef zeroext %lag_port, ptr nocapture noundef writeonly %cp) local_unnamed_addr #1 align 64 {
entry:
  %ccp.i78.i = alloca %struct.mlx5e_create_cq_param, align 4
  %csp.i.i.i = alloca %struct.mlx5e_create_sq_param, align 4
  %ccp.i.i = alloca %struct.mlx5e_create_cq_param, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 14080, i32 noundef 3520, i32 noundef -1) #16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 832, i32 noundef 3520, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i, null
  %tobool6.not = icmp eq ptr %call.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %priv7 = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %priv7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %priv7, align 4
  %3 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev2, align 64
  %mdev9 = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %mdev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mdev9, align 8
  %tstamp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 34
  %tstamp10 = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %tstamp10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tstamp, ptr %tstamp10, align 4
  %pdev.i71 = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %pdev.i71 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i71, align 8
  %dev1.i72 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %pdev = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1.i72, ptr %pdev, align 32
  %10 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev1, align 4
  %netdev14 = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %netdev14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %netdev14, align 4
  %mkey = getelementptr inbounds %struct.mlx5_core_dev, ptr %4, i32 0, i32 20, i32 0, i32 2
  %13 = ptrtoint ptr %mkey to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mkey, align 4
  %mkey_be = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %mkey_be to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mkey_be, align 8
  %mqprio.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 4
  %16 = ptrtoint ptr %mqprio.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mqprio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.i = icmp eq i16 %17, 0
  br i1 %cmp.i, label %cond.true.i, label %if.end.mlx5e_get_dcb_num_tc.exit_crit_edge

if.end.mlx5e_get_dcb_num_tc.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_get_dcb_num_tc.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %num_tc.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_tc.i, align 2
  br label %mlx5e_get_dcb_num_tc.exit

mlx5e_get_dcb_num_tc.exit:                        ; preds = %cond.true.i, %if.end.mlx5e_get_dcb_num_tc.exit_crit_edge
  %cond.i = phi i8 [ %19, %cond.true.i ], [ 1, %if.end.mlx5e_get_dcb_num_tc.exit_crit_edge ]
  %num_tc = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %num_tc to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %cond.i, ptr %num_tc, align 4
  %ptp_stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28
  %stats = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ptp_stats, ptr %stats, align 16
  %lag_port17 = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %lag_port17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %lag_port, ptr %lag_port17, align 1
  %pflags.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 15
  %23 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pflags.i, align 4
  %and.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %mlx5e_get_dcb_num_tc.exit.if.end.i_crit_edge, label %if.then.i

mlx5e_get_dcb_num_tc.exit.if.end.i_crit_edge:     ; preds = %mlx5e_get_dcb_num_tc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %mlx5e_get_dcb_num_tc.exit
  call void @__sanitizer_cov_trace_pc() #15
  %state.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.i, align 4
  %or.i.i = or i32 %26, 1
  store i32 %or.i.i, ptr %state.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %mlx5e_get_dcb_num_tc.exit.if.end.i_crit_edge
  %ptp_rx.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 20
  %27 = ptrtoint ptr %ptp_rx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ptp_rx.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool1.not.i = icmp eq i8 %28, 0
  br i1 %tobool1.not.i, label %if.end.i.mlx5e_ptp_set_state.exit_crit_edge, label %if.then2.i

if.end.i.mlx5e_ptp_set_state.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_set_state.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %state3.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 12
  %29 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state3.i, align 4
  %or.i11.i = or i32 %30, 2
  store i32 %or.i11.i, ptr %state3.i, align 4
  br label %mlx5e_ptp_set_state.exit

mlx5e_ptp_set_state.exit:                         ; preds = %if.then2.i, %if.end.i.mlx5e_ptp_set_state.exit_crit_edge
  %state6.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 12
  %31 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state6.i, align 4
  %and3.i.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool.not.i.i.not = icmp eq i32 %and3.i.i, 0
  br i1 %tobool.not.i.i.not, label %mlx5e_ptp_set_state.exit.err_free_crit_edge, label %if.end21

mlx5e_ptp_set_state.exit.err_free_crit_edge:      ; preds = %mlx5e_ptp_set_state.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free

if.end21:                                         ; preds = %mlx5e_ptp_set_state.exit
  %napi = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 2
  tail call void @netif_napi_add(ptr noundef %1, ptr noundef %napi, ptr noundef nonnull @mlx5e_ptp_napi_poll, i32 noundef 64) #13
  %tx_min_inline_mode.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 10
  %33 = ptrtoint ptr %tx_min_inline_mode.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tx_min_inline_mode.i, align 4
  %tx_min_inline_mode2.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 10
  %35 = ptrtoint ptr %tx_min_inline_mode2.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %tx_min_inline_mode2.i, align 4
  %num_channels.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 3
  %36 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %num_channels.i, align 4
  %num_channels3.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %num_channels3.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %num_channels3.i, align 4
  %hard_mtu.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 19
  %39 = ptrtoint ptr %hard_mtu.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hard_mtu.i, align 4
  %hard_mtu4.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 19
  %41 = ptrtoint ptr %hard_mtu4.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %hard_mtu4.i, align 4
  %sw_mtu.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 18
  %42 = ptrtoint ptr %sw_mtu.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sw_mtu.i, align 4
  %sw_mtu5.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 18
  %44 = ptrtoint ptr %sw_mtu5.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %sw_mtu5.i, align 4
  %mqprio.i74 = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 4
  %45 = call ptr @memcpy(ptr %mqprio.i74, ptr %mqprio.i, i32 72)
  %46 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %state6.i, align 4
  %and1.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i76 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i76, label %if.end21.if.end.i79_crit_edge, label %if.then.i78

if.end21.if.end.i79_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i79

if.then.i78:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %params, align 4
  %50 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %call.i.i, align 4
  %51 = ptrtoint ptr %mdev9 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mdev9, align 8
  %txq_sq_param.i = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1
  tail call void @mlx5e_build_sq_param_common(ptr noundef %52, ptr noundef %txq_sq_param.i) #13
  %53 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %call.i.i, align 4
  %add.ptr3.i.i = getelementptr %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1, i32 1, i32 20
  %55 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr3.i.i, align 4
  %and.i.i = and i32 %56, -32
  %57 = and i8 %54, 31
  %and4.i.i = zext i8 %57 to i32
  %or.i.i77 = or i32 %and.i.i, %and4.i.i
  store i32 %or.i.i77, ptr %add.ptr3.i.i, align 4
  %stop_room.i.i = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1, i32 5
  %58 = ptrtoint ptr %stop_room.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 31, ptr %stop_room.i.i, align 2
  tail call void @mlx5e_build_tx_cq_param(ptr noundef %52, ptr noundef nonnull %call.i.i, ptr noundef %txq_sq_param.i) #13
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.then.i78, %if.end21.if.end.i79_crit_edge
  %59 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state6.i, align 4
  %61 = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool11.not.i = icmp eq i32 %61, 0
  br i1 %tobool11.not.i, label %if.end.i79.mlx5e_ptp_build_params.exit_crit_edge, label %if.then12.i

if.end.i79.mlx5e_ptp_build_params.exit_crit_edge: ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_build_params.exit

if.then12.i:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #15
  %vlan_strip_disable.i = getelementptr inbounds %struct.mlx5e_params, ptr %params, i32 0, i32 11
  %62 = ptrtoint ptr %vlan_strip_disable.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vlan_strip_disable.i, align 1, !range !50
  %vlan_strip_disable14.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 11
  %64 = ptrtoint ptr %vlan_strip_disable14.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %vlan_strip_disable14.i, align 1
  %65 = ptrtoint ptr %mdev9 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mdev9, align 8
  %67 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev14, align 4
  %69 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %priv7, align 4
  %q_counter.i = getelementptr inbounds %struct.mlx5e_priv, ptr %70, i32 0, i32 35
  %71 = ptrtoint ptr %q_counter.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %q_counter.i, align 4
  %rq_param.i.i = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 2
  %rq_wq_type.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %rq_wq_type.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %rq_wq_type.i.i, align 1
  tail call void @mlx5e_init_rq_type_params(ptr noundef %66, ptr noundef nonnull %call.i.i) #13
  %max_mtu.i.i = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 31
  %74 = ptrtoint ptr %max_mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_mtu.i.i, align 4
  %76 = ptrtoint ptr %sw_mtu5.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %sw_mtu5.i, align 4
  %call.i.i80 = tail call i32 @mlx5e_build_rq_param(ptr noundef %66, ptr noundef nonnull %call.i.i, ptr noundef null, i16 noundef zeroext %72, ptr noundef %rq_param.i.i) #13
  br label %mlx5e_ptp_build_params.exit

mlx5e_ptp_build_params.exit:                      ; preds = %if.then12.i, %if.end.i79.mlx5e_ptp_build_params.exit_crit_edge
  %77 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile i32, ptr %state6.i, align 4
  %and1.i.i82 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i82)
  %tobool.not.i83 = icmp eq i32 %and1.i.i82, 0
  br i1 %tobool.not.i83, label %mlx5e_ptp_build_params.exit.if.end8.i_crit_edge, label %if.then.i84

mlx5e_ptp_build_params.exit.if.end8.i_crit_edge:  ; preds = %mlx5e_ptp_build_params.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then.i84:                                      ; preds = %mlx5e_ptp_build_params.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ccp.i.i) #13
  %79 = ptrtoint ptr %mqprio.i74 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %mqprio.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp.i.i.i = icmp eq i16 %80, 0
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %if.then.i84.mlx5e_get_dcb_num_tc.exit.i.i_crit_edge

if.then.i84.mlx5e_get_dcb_num_tc.exit.i.i_crit_edge: ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_get_dcb_num_tc.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #15
  %num_tc.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 4, i32 1
  %81 = ptrtoint ptr %num_tc.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %num_tc.i.i.i, align 2
  %phi.cast.i.i = zext i8 %82 to i32
  br label %mlx5e_get_dcb_num_tc.exit.i.i

mlx5e_get_dcb_num_tc.exit.i.i:                    ; preds = %cond.true.i.i.i, %if.then.i84.mlx5e_get_dcb_num_tc.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %phi.cast.i.i, %cond.true.i.i.i ], [ 1, %if.then.i84.mlx5e_get_dcb_num_tc.exit.i.i_crit_edge ]
  %node.i.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %node.i.i, align 4
  %84 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %stats, align 16
  %ch_stats.i.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %ch_stats.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %ch_stats.i.i, align 4
  %87 = ptrtoint ptr %ccp.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %napi, ptr %ccp.i.i, align 4
  %ix.i.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i.i, i32 0, i32 3
  %88 = ptrtoint ptr %ix.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %ix.i.i, align 4
  %txq_sq_param.i.i = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i.i)
  %cmp109.not.i.i = icmp eq i32 %cond.i.i.i, 0
  br i1 %cmp109.not.i.i, label %mlx5e_get_dcb_num_tc.exit.i.i.if.end.i86_crit_edge, label %mlx5e_get_dcb_num_tc.exit.i.i.for.body.i.i_crit_edge

mlx5e_get_dcb_num_tc.exit.i.i.for.body.i.i_crit_edge: ; preds = %mlx5e_get_dcb_num_tc.exit.i.i
  br label %for.body.i.i

mlx5e_get_dcb_num_tc.exit.i.i.if.end.i86_crit_edge: ; preds = %mlx5e_get_dcb_num_tc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i86

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %mlx5e_get_dcb_num_tc.exit.i.i.for.body.i.i_crit_edge
  %tc.0110.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %mlx5e_get_dcb_num_tc.exit.i.i.for.body.i.i_crit_edge ]
  %cq6.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.0110.i.i, i32 0, i32 10
  %89 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %priv7, align 4
  %call7.i.i = call i32 @mlx5e_open_cq(ptr noundef %90, [2 x i32] zeroinitializer, ptr noundef %txq_sq_param.i.i, ptr noundef nonnull %ccp.i.i, ptr noundef %cq6.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i.i85 = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i.i85, label %for.inc.i.i, label %for.body.i.i.out_err_txqsq_cq.i.i_crit_edge

for.body.i.i.out_err_txqsq_cq.i.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_txqsq_cq.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %tc.0110.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %cond.i.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.body12.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.inc.i.i.for.body12.i.i_crit_edge:             ; preds = %for.inc.i.i
  br label %for.body12.i.i

for.body12.i.i:                                   ; preds = %for.inc31.i.i.for.body12.i.i_crit_edge, %for.inc.i.i.for.body12.i.i_crit_edge
  %tc.1112.i.i = phi i32 [ %inc32.i.i, %for.inc31.i.i.for.body12.i.i_crit_edge ], [ 0, %for.inc.i.i.for.body12.i.i_crit_edge ]
  %ts_cq.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.1112.i.i, i32 1
  %91 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv7, align 4
  %call20.i.i = call i32 @mlx5e_open_cq(ptr noundef %92, [2 x i32] zeroinitializer, ptr noundef %txq_sq_param.i.i, ptr noundef nonnull %ccp.i.i, ptr noundef %ts_cq.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %for.inc31.i.i, label %for.cond34.preheader.i.i

for.cond34.preheader.i.i:                         ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tc.1112.i.i)
  %cmp35114.not.i.i = icmp eq i32 %tc.1112.i.i, 0
  br i1 %cmp35114.not.i.i, label %for.cond34.preheader.i.i.out_err_txqsq_cq.i.i_crit_edge, label %for.cond34.preheader.i.i.for.body37.i.i_crit_edge

for.cond34.preheader.i.i.for.body37.i.i_crit_edge: ; preds = %for.cond34.preheader.i.i
  br label %for.body37.i.i

for.cond34.preheader.i.i.out_err_txqsq_cq.i.i_crit_edge: ; preds = %for.cond34.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_txqsq_cq.i.i

for.inc31.i.i:                                    ; preds = %for.body12.i.i
  %93 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %priv7, align 4
  %arrayidx26.i.i = getelementptr %struct.mlx5e_priv, ptr %94, i32 0, i32 28, i32 3, i32 %tc.1112.i.i
  %cq_stats.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.1112.i.i, i32 5
  %95 = ptrtoint ptr %cq_stats.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %arrayidx26.i.i, ptr %cq_stats.i.i, align 4
  %inc32.i.i = add nuw nsw i32 %tc.1112.i.i, 1
  %exitcond125.not.i.i = icmp eq i32 %inc32.i.i, %cond.i.i.i
  br i1 %exitcond125.not.i.i, label %for.inc31.i.i.if.end.i86_crit_edge, label %for.inc31.i.i.for.body12.i.i_crit_edge

for.inc31.i.i.for.body12.i.i_crit_edge:           ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12.i.i

for.inc31.i.i.if.end.i86_crit_edge:               ; preds = %for.inc31.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i86

for.body37.i.i:                                   ; preds = %for.body37.i.i.for.body37.i.i_crit_edge, %for.cond34.preheader.i.i.for.body37.i.i_crit_edge
  %tc.2115.in.i.i = phi i32 [ %tc.2115.i.i, %for.body37.i.i.for.body37.i.i_crit_edge ], [ %tc.1112.i.i, %for.cond34.preheader.i.i.for.body37.i.i_crit_edge ]
  %tc.2115.i.i = add nsw i32 %tc.2115.in.i.i, -1
  %ts_cq40.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.2115.i.i, i32 1
  call void @mlx5e_close_cq(ptr noundef %ts_cq40.i.i) #13
  %cmp35.i.i = icmp sgt i32 %tc.2115.in.i.i, 1
  br i1 %cmp35.i.i, label %for.body37.i.i.for.body37.i.i_crit_edge, label %for.body37.i.i.out_err_txqsq_cq.i.i_crit_edge

for.body37.i.i.out_err_txqsq_cq.i.i_crit_edge:    ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_err_txqsq_cq.i.i

for.body37.i.i.for.body37.i.i_crit_edge:          ; preds = %for.body37.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body37.i.i

out_err_txqsq_cq.i.i:                             ; preds = %for.body37.i.i.out_err_txqsq_cq.i.i_crit_edge, %for.cond34.preheader.i.i.out_err_txqsq_cq.i.i_crit_edge, %for.body.i.i.out_err_txqsq_cq.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call20.i.i, %for.cond34.preheader.i.i.out_err_txqsq_cq.i.i_crit_edge ], [ %call20.i.i, %for.body37.i.i.out_err_txqsq_cq.i.i_crit_edge ], [ %call7.i.i, %for.body.i.i.out_err_txqsq_cq.i.i_crit_edge ]
  %tc.3.i.i = phi i32 [ %cond.i.i.i, %for.cond34.preheader.i.i.out_err_txqsq_cq.i.i_crit_edge ], [ %cond.i.i.i, %for.body37.i.i.out_err_txqsq_cq.i.i_crit_edge ], [ %tc.0110.i.i, %for.body.i.i.out_err_txqsq_cq.i.i_crit_edge ]
  %tc.4116.i.i = add i32 %tc.3.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tc.4116.i.i)
  %cmp47117.i.i = icmp sgt i32 %tc.4116.i.i, -1
  br i1 %cmp47117.i.i, label %out_err_txqsq_cq.i.i.for.body49.i.i_crit_edge, label %out_err_txqsq_cq.i.i.mlx5e_ptp_open_tx_cqs.exit.i_crit_edge

out_err_txqsq_cq.i.i.mlx5e_ptp_open_tx_cqs.exit.i_crit_edge: ; preds = %out_err_txqsq_cq.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_open_tx_cqs.exit.i

out_err_txqsq_cq.i.i.for.body49.i.i_crit_edge:    ; preds = %out_err_txqsq_cq.i.i
  br label %for.body49.i.i

for.body49.i.i:                                   ; preds = %for.body49.i.i.for.body49.i.i_crit_edge, %out_err_txqsq_cq.i.i.for.body49.i.i_crit_edge
  %tc.4118.i.i = phi i32 [ %tc.4.i.i, %for.body49.i.i.for.body49.i.i_crit_edge ], [ %tc.4116.i.i, %out_err_txqsq_cq.i.i.for.body49.i.i_crit_edge ]
  %cq53.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.4118.i.i, i32 0, i32 10
  call void @mlx5e_close_cq(ptr noundef %cq53.i.i) #13
  %tc.4.i.i = add nsw i32 %tc.4118.i.i, -1
  %cmp47.not.i.i = icmp eq i32 %tc.4118.i.i, 0
  br i1 %cmp47.not.i.i, label %for.body49.i.i.mlx5e_ptp_open_tx_cqs.exit.i_crit_edge, label %for.body49.i.i.for.body49.i.i_crit_edge

for.body49.i.i.for.body49.i.i_crit_edge:          ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49.i.i

for.body49.i.i.mlx5e_ptp_open_tx_cqs.exit.i_crit_edge: ; preds = %for.body49.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_open_tx_cqs.exit.i

mlx5e_ptp_open_tx_cqs.exit.i:                     ; preds = %for.body49.i.i.mlx5e_ptp_open_tx_cqs.exit.i_crit_edge, %out_err_txqsq_cq.i.i.mlx5e_ptp_open_tx_cqs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccp.i.i) #13
  br label %mlx5e_ptp_open_queues.exit

if.end.i86:                                       ; preds = %for.inc31.i.i.if.end.i86_crit_edge, %mlx5e_get_dcb_num_tc.exit.i.i.if.end.i86_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccp.i.i) #13
  %96 = ptrtoint ptr %mqprio.i74 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %mqprio.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %cmp.i.i67.i = icmp eq i16 %97, 0
  br i1 %cmp.i.i67.i, label %mlx5e_get_dcb_num_tc.exit.i70.i, label %mlx5e_get_dcb_num_tc.exit.thread.i.i

mlx5e_get_dcb_num_tc.exit.thread.i.i:             ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #15
  %98 = ptrtoint ptr %num_channels3.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %num_channels3.i, align 4
  %conv276.i.i = zext i16 %99 to i32
  br label %for.body.lr.ph.i72.i

mlx5e_get_dcb_num_tc.exit.i70.i:                  ; preds = %if.end.i86
  %num_tc.i.i68.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %num_tc.i.i68.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %num_tc.i.i68.i, align 2
  %phi.cast.i69.i = zext i8 %101 to i32
  %102 = ptrtoint ptr %num_channels3.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %num_channels3.i, align 4
  %conv2.i.i = zext i16 %103 to i32
  %mul.i.i = mul nuw nsw i32 %conv2.i.i, %phi.cast.i69.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %cmp53.not.i.i = icmp eq i8 %101, 0
  br i1 %cmp53.not.i.i, label %mlx5e_get_dcb_num_tc.exit.i70.i.if.end8.i_crit_edge, label %mlx5e_get_dcb_num_tc.exit.i70.i.for.body.lr.ph.i72.i_crit_edge

mlx5e_get_dcb_num_tc.exit.i70.i.for.body.lr.ph.i72.i_crit_edge: ; preds = %mlx5e_get_dcb_num_tc.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i72.i

mlx5e_get_dcb_num_tc.exit.i70.i.if.end8.i_crit_edge: ; preds = %mlx5e_get_dcb_num_tc.exit.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

for.body.lr.ph.i72.i:                             ; preds = %mlx5e_get_dcb_num_tc.exit.i70.i.for.body.lr.ph.i72.i_crit_edge, %mlx5e_get_dcb_num_tc.exit.thread.i.i
  %mul80.i.i = phi i32 [ %conv276.i.i, %mlx5e_get_dcb_num_tc.exit.thread.i.i ], [ %mul.i.i, %mlx5e_get_dcb_num_tc.exit.i70.i.for.body.lr.ph.i72.i_crit_edge ]
  %cond.i79.i.i = phi i32 [ 1, %mlx5e_get_dcb_num_tc.exit.thread.i.i ], [ %phi.cast.i69.i, %mlx5e_get_dcb_num_tc.exit.i70.i.for.body.lr.ph.i72.i_crit_edge ]
  %add.ptr.i.i.i.i = getelementptr %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1, i32 1, i32 12
  %stop_room.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1, i32 5
  %wq25.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1, i32 2
  %db_numa_node.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 1, i32 2, i32 1
  %tisn2.i.i.i = getelementptr inbounds %struct.mlx5e_create_sq_param, ptr %csp.i.i.i, i32 0, i32 3
  %tis_lst_sz.i.i.i = getelementptr inbounds %struct.mlx5e_create_sq_param, ptr %csp.i.i.i, i32 0, i32 4
  %cqn3.i.i.i = getelementptr inbounds %struct.mlx5e_create_sq_param, ptr %csp.i.i.i, i32 0, i32 1
  %min_inline_mode5.i.i.i = getelementptr inbounds %struct.mlx5e_create_sq_param, ptr %csp.i.i.i, i32 0, i32 5
  %ts_cqe_to_dest_cqn.i.i.i = getelementptr inbounds %struct.mlx5e_create_sq_param, ptr %csp.i.i.i, i32 0, i32 2
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.inc.i76.i.for.body.i73.i_crit_edge, %for.body.lr.ph.i72.i
  %tc.054.i.i = phi i32 [ 0, %for.body.lr.ph.i72.i ], [ %inc.i74.i, %for.inc.i76.i.for.body.i73.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %tc.054.i.i, %mul80.i.i
  %104 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %priv7, align 4
  %106 = ptrtoint ptr %lag_port17 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %lag_port17, align 1
  %idxprom.i.i = zext i8 %107 to i32
  %arrayidx5.i.i = getelementptr %struct.mlx5e_priv, ptr %105, i32 0, i32 10, i32 %idxprom.i.i, i32 %tc.054.i.i
  %108 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %csp.i.i.i) #13
  %110 = call ptr @memset(ptr %csp.i.i.i, i32 0, i32 20)
  %111 = ptrtoint ptr %mdev9 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mdev9, align 8
  %wq2.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 11
  %113 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev, align 32
  %pdev3.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 20
  %115 = ptrtoint ptr %pdev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %114, ptr %pdev3.i.i.i.i, align 4
  %116 = ptrtoint ptr %tstamp10 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tstamp10, align 4
  %tstamp4.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 24
  %118 = ptrtoint ptr %tstamp4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %tstamp4.i.i.i.i, align 4
  %clock.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %112, i32 0, i32 27
  %clock5.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 25
  %119 = ptrtoint ptr %clock5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %clock.i.i.i.i, ptr %clock5.i.i.i.i, align 32
  %120 = ptrtoint ptr %mkey_be to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mkey_be, align 8
  %mkey_be6.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 21
  %122 = ptrtoint ptr %mkey_be6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %mkey_be6.i.i.i.i, align 16
  %123 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %netdev14, align 4
  %netdev7.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 26
  %125 = ptrtoint ptr %netdev7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %netdev7.i.i.i.i, align 4
  %priv8.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 28
  %126 = ptrtoint ptr %priv8.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %105, ptr %priv8.i.i.i.i, align 4
  %mdev9.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 27
  %127 = ptrtoint ptr %mdev9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %112, ptr %mdev9.i.i.i.i, align 8
  %ch_ix.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 30
  %128 = ptrtoint ptr %ch_ix.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %ch_ix.i.i.i.i, align 4
  %txq_ix10.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 31
  %129 = ptrtoint ptr %txq_ix10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add.i.i, ptr %txq_ix10.i.i.i.i, align 8
  %bfreg.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %112, i32 0, i32 20, i32 0, i32 3
  %130 = ptrtoint ptr %bfreg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %bfreg.i.i.i.i, align 4
  %uar_map.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 15
  %132 = ptrtoint ptr %uar_map.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %131, ptr %uar_map.i.i.i.i, align 4
  %133 = ptrtoint ptr %tx_min_inline_mode2.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %tx_min_inline_mode2.i, align 4
  %min_inline_mode.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 19
  %135 = ptrtoint ptr %min_inline_mode.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %134, ptr %min_inline_mode.i.i.i.i, align 2
  %136 = ptrtoint ptr %sw_mtu5.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %sw_mtu5.i, align 4
  %138 = ptrtoint ptr %hard_mtu4.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hard_mtu4.i, align 4
  %add.i.i.i.i = add i32 %139, %137
  %hw_mtu.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 23
  %140 = ptrtoint ptr %hw_mtu.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add.i.i.i.i, ptr %hw_mtu.i.i.i.i, align 8
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5e_priv, ptr %105, i32 0, i32 28, i32 2, i32 %tc.054.i.i
  %stats.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 13
  %141 = ptrtoint ptr %stats.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %arrayidx.i.i.i.i, ptr %stats.i.i.i.i, align 32
  %ptpsq13.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 34
  %142 = ptrtoint ptr %ptpsq13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %arrayidx6.i.i, ptr %ptpsq13.i.i.i.i, align 4
  %recover_work.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 33
  call void @__init_work(ptr noundef %recover_work.i.i.i.i, i32 noundef 0) #13
  %143 = ptrtoint ptr %recover_work.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -64, ptr %recover_work.i.i.i.i, align 32
  %lockdep_map.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 33, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @mlx5e_ptp_alloc_txqsq.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry17.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 33, i32 1
  %144 = ptrtoint ptr %entry17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %entry17.i.i.i.i, ptr %entry17.i.i.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 33, i32 1, i32 1
  %145 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %entry17.i.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %func.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 33, i32 2
  %146 = ptrtoint ptr %func.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @mlx5e_tx_err_cqe_work, ptr %func.i.i.i.i, align 4
  %arrayidx19.i.i.i.i = getelementptr %struct.mlx5_core_dev, ptr %112, i32 0, i32 8, i32 0, i32 1
  %147 = ptrtoint ptr %arrayidx19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx19.i.i.i.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %151 = and i32 %150, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool.not.i.i.i.i = icmp eq i32 %151, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %for.body.i73.i.if.end.i.i.i.i_crit_edge

for.body.i73.i.if.end.i.i.i.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #15
  %state.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 22
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i.i.i.i) #13
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %for.body.i73.i.if.end.i.i.i.i_crit_edge
  %152 = ptrtoint ptr %stop_room.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %stop_room.i.i.i.i, align 2
  %stop_room22.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 18
  %154 = ptrtoint ptr %stop_room22.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %153, ptr %stop_room22.i.i.i.i, align 8
  %caps.i.i.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %112, i32 0, i32 8
  %155 = ptrtoint ptr %caps.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %caps.i.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i.i = getelementptr i32, ptr %156, i32 34
  %157 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %add.ptr.i.i.i.i.i.i, align 4
  %shr.i.i.i.i.i.i = lshr i32 %158, 30
  %159 = add nsw i32 %shr.i.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %160 = icmp ult i32 %159, 2
  %cond.i.i.i.i.i = select i1 %160, ptr @mlx5_real_time_cyc2time, ptr @mlx5_timecounter_cyc2time
  %ptp_cyc2time.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 35
  %161 = ptrtoint ptr %ptp_cyc2time.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %cond.i.i.i.i.i, ptr %ptp_cyc2time.i.i.i.i, align 16
  %162 = ptrtoint ptr %db_numa_node.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -1, ptr %db_numa_node.i.i.i.i, align 4
  %wq_ctrl.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 29
  %call27.i.i.i.i = call i32 @mlx5_wq_cyc_create(ptr noundef %112, ptr noundef %wq25.i.i.i.i, ptr noundef %add.ptr.i.i.i.i, ptr noundef %wq2.i.i.i.i, ptr noundef %wq_ctrl.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i.i)
  %tobool28.not.i.i.i.i = icmp eq i32 %call27.i.i.i.i, 0
  br i1 %tobool28.not.i.i.i.i, label %if.end30.i.i.i.i, label %if.end.i.i.i.i.mlx5e_ptp_open_txqsq.exit.i.i_crit_edge

if.end.i.i.i.i.mlx5e_ptp_open_txqsq.exit.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_open_txqsq.exit.i.i

if.end30.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %db.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 11, i32 1
  %163 = ptrtoint ptr %db.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %db.i.i.i.i, align 4
  %arrayidx31.i.i.i.i = getelementptr i32, ptr %164, i32 1
  store ptr %arrayidx31.i.i.i.i, ptr %db.i.i.i.i, align 4
  %call33.i.i.i.i = call i32 @mlx5e_alloc_txqsq_db(ptr noundef %arrayidx6.i.i, i32 noundef -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i.i.i)
  %tobool34.not.i.i.i.i = icmp eq i32 %call33.i.i.i.i, 0
  br i1 %tobool34.not.i.i.i.i, label %if.end.i.i.i, label %err_sq_wq_destroy.i.i.i.i

err_sq_wq_destroy.i.i.i.i:                        ; preds = %if.end30.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mlx5_wq_destroy(ptr noundef %wq_ctrl.i.i.i.i) #13
  br label %mlx5e_ptp_open_txqsq.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end30.i.i.i.i
  %165 = ptrtoint ptr %tisn2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %109, ptr %tisn2.i.i.i, align 4
  %166 = ptrtoint ptr %tis_lst_sz.i.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %tis_lst_sz.i.i.i, align 4
  %mcq.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 10, i32 3
  %167 = ptrtoint ptr %mcq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mcq.i.i.i, align 32
  %169 = ptrtoint ptr %cqn3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %cqn3.i.i.i, align 4
  %170 = ptrtoint ptr %csp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %wq_ctrl.i.i.i.i, ptr %csp.i.i.i, align 4
  %171 = ptrtoint ptr %min_inline_mode.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %min_inline_mode.i.i.i.i, align 2
  %173 = ptrtoint ptr %min_inline_mode5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %min_inline_mode5.i.i.i, align 1
  %mcq6.i.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i, i32 1, i32 3
  %174 = ptrtoint ptr %mcq6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %mcq6.i.i.i, align 32
  %176 = ptrtoint ptr %ts_cqe_to_dest_cqn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %ts_cqe_to_dest_cqn.i.i.i, align 4
  %177 = ptrtoint ptr %mdev9 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mdev9, align 8
  %sqn.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 17
  %call8.i.i.i = call i32 @mlx5e_create_sq_rdy(ptr noundef %178, ptr noundef %txq_sq_param.i.i, ptr noundef nonnull %csp.i.i.i, i16 noundef zeroext 0, ptr noundef %sqn.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %call8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %if.end11.i.i.i, label %if.end.i.i.i.err_free_txqsq.i.i.i_crit_edge

if.end.i.i.i.err_free_txqsq.i.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_txqsq.i.i.i

if.end11.i.i.i:                                   ; preds = %if.end.i.i.i
  %sz_m1.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx6.i.i, i32 0, i32 11, i32 0, i32 1
  %179 = ptrtoint ptr %sz_m1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %sz_m1.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %180, 1
  %181 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i.i.i.i, i32 4) #13
  %182 = extractvalue { i32, i1 } %181, 1
  %183 = extractvalue { i32, i1 } %181, 0
  %retval.0.i.i.i.i.i = select i1 %182, i32 -1, i32 %183
  %call.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i.i.i.i.i, i32 noundef 3520, i32 noundef -1) #16
  %skb_fifo.i.i.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i, i32 4
  %184 = ptrtoint ptr %skb_fifo.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %call.i.i.i.i.i, ptr %skb_fifo.i.i.i.i, align 4
  %tobool.not.i39.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i39.i.i.i, label %if.end11.i.i.i.err_free_txqsq.i.i.i_crit_edge, label %for.inc.i76.i

if.end11.i.i.i.err_free_txqsq.i.i.i_crit_edge:    ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_txqsq.i.i.i

err_free_txqsq.i.i.i:                             ; preds = %if.end11.i.i.i.err_free_txqsq.i.i.i_crit_edge, %if.end.i.i.i.err_free_txqsq.i.i.i_crit_edge
  %err.0.i.i.i = phi i32 [ %call8.i.i.i, %if.end.i.i.i.err_free_txqsq.i.i.i_crit_edge ], [ -12, %if.end11.i.i.i.err_free_txqsq.i.i.i_crit_edge ]
  call void @mlx5e_free_txqsq(ptr noundef %arrayidx6.i.i) #13
  br label %mlx5e_ptp_open_txqsq.exit.i.i

mlx5e_ptp_open_txqsq.exit.i.i:                    ; preds = %err_free_txqsq.i.i.i, %err_sq_wq_destroy.i.i.i.i, %if.end.i.i.i.i.mlx5e_ptp_open_txqsq.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %err.0.i.i.i, %err_free_txqsq.i.i.i ], [ %call33.i.i.i.i, %err_sq_wq_destroy.i.i.i.i ], [ %call27.i.i.i.i, %if.end.i.i.i.i.mlx5e_ptp_open_txqsq.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %csp.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tc.054.i.i)
  %cmp956.not.i.i = icmp eq i32 %tc.054.i.i, 0
  br i1 %cmp956.not.i.i, label %mlx5e_ptp_open_txqsq.exit.i.i.close_tx_cqs.i_crit_edge, label %mlx5e_ptp_open_txqsq.exit.i.i.for.body11.i.i_crit_edge

mlx5e_ptp_open_txqsq.exit.i.i.for.body11.i.i_crit_edge: ; preds = %mlx5e_ptp_open_txqsq.exit.i.i
  br label %for.body11.i.i

mlx5e_ptp_open_txqsq.exit.i.i.close_tx_cqs.i_crit_edge: ; preds = %mlx5e_ptp_open_txqsq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_tx_cqs.i

for.inc.i76.i:                                    ; preds = %if.end11.i.i.i
  %skb_fifo_pc.i.i.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i, i32 3
  %pc.i.i.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i, i32 4, i32 1
  %185 = ptrtoint ptr %pc.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %skb_fifo_pc.i.i.i.i, ptr %pc.i.i.i.i, align 4
  %skb_fifo_cc.i.i.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i, i32 2
  %cc.i.i.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i, i32 4, i32 2
  %186 = ptrtoint ptr %cc.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %skb_fifo_cc.i.i.i.i, ptr %cc.i.i.i.i, align 4
  %187 = trunc i32 %add.i.i.i.i.i to i16
  %conv.i.i.i.i = add i16 %187, -1
  %mask.i.i.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.054.i.i, i32 4, i32 3
  %188 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv.i.i.i.i, ptr %mask.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %csp.i.i.i) #13
  %inc.i74.i = add nuw nsw i32 %tc.054.i.i, 1
  %exitcond.not.i75.i = icmp eq i32 %inc.i74.i, %cond.i79.i.i
  br i1 %exitcond.not.i75.i, label %for.inc.i76.i.if.end8.i_crit_edge, label %for.inc.i76.i.for.body.i73.i_crit_edge

for.inc.i76.i.for.body.i73.i_crit_edge:           ; preds = %for.inc.i76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i73.i

for.inc.i76.i.if.end8.i_crit_edge:                ; preds = %for.inc.i76.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

for.body11.i.i:                                   ; preds = %for.body11.i.i.for.body11.i.i_crit_edge, %mlx5e_ptp_open_txqsq.exit.i.i.for.body11.i.i_crit_edge
  %tc.157.in.i.i = phi i32 [ %tc.157.i.i, %for.body11.i.i.for.body11.i.i_crit_edge ], [ %tc.054.i.i, %mlx5e_ptp_open_txqsq.exit.i.i.for.body11.i.i_crit_edge ]
  %tc.157.i.i = add nsw i32 %tc.157.in.i.i, -1
  %arrayidx13.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.157.i.i
  call fastcc void @mlx5e_ptp_close_txqsq(ptr noundef %arrayidx13.i.i) #13
  %cmp9.i.i = icmp sgt i32 %tc.157.in.i.i, 1
  br i1 %cmp9.i.i, label %for.body11.i.i.for.body11.i.i_crit_edge, label %mlx5e_ptp_open_txqsqs.exit.i

for.body11.i.i.for.body11.i.i_crit_edge:          ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body11.i.i

mlx5e_ptp_open_txqsqs.exit.i:                     ; preds = %for.body11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %tobool5.not.i = icmp eq i32 %retval.0.i.i.i, 0
  br i1 %tobool5.not.i, label %mlx5e_ptp_open_txqsqs.exit.i.if.end8.i_crit_edge, label %mlx5e_ptp_open_txqsqs.exit.i.close_tx_cqs.i_crit_edge

mlx5e_ptp_open_txqsqs.exit.i.close_tx_cqs.i_crit_edge: ; preds = %mlx5e_ptp_open_txqsqs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_tx_cqs.i

mlx5e_ptp_open_txqsqs.exit.i.if.end8.i_crit_edge: ; preds = %mlx5e_ptp_open_txqsqs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %mlx5e_ptp_open_txqsqs.exit.i.if.end8.i_crit_edge, %for.inc.i76.i.if.end8.i_crit_edge, %mlx5e_get_dcb_num_tc.exit.i70.i.if.end8.i_crit_edge, %mlx5e_ptp_build_params.exit.if.end8.i_crit_edge
  %189 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load volatile i32, ptr %state6.i, align 4
  %191 = and i32 %190, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool12.not.i = icmp eq i32 %191, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end27_crit_edge, label %if.then13.i

if.end8.i.if.end27_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then13.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ccp.i78.i) #13
  %cq1.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 6
  %node.i79.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i78.i, i32 0, i32 2
  %192 = ptrtoint ptr %node.i79.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -1, ptr %node.i79.i, align 4
  %193 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %stats, align 16
  %ch_stats.i81.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i78.i, i32 0, i32 1
  %195 = ptrtoint ptr %ch_stats.i81.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %194, ptr %ch_stats.i81.i, align 4
  %196 = ptrtoint ptr %ccp.i78.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %napi, ptr %ccp.i78.i, align 4
  %ix.i83.i = getelementptr inbounds %struct.mlx5e_create_cq_param, ptr %ccp.i78.i, i32 0, i32 3
  %197 = ptrtoint ptr %ix.i83.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %ix.i83.i, align 4
  %rq_param.i.i87 = getelementptr inbounds %struct.mlx5e_ptp_params, ptr %call.i.i, i32 0, i32 2
  %198 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %priv7, align 4
  %call4.i.i = call i32 @mlx5e_open_cq(ptr noundef %199, [2 x i32] zeroinitializer, ptr noundef %rq_param.i.i87, ptr noundef nonnull %ccp.i78.i, ptr noundef %cq1.i.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccp.i78.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool15.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.then13.i.close_txqsq.i_crit_edge

if.then13.i.close_txqsq.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_txqsq.i

if.end17.i:                                       ; preds = %if.then13.i
  %rq.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1
  %200 = ptrtoint ptr %mdev9 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mdev9, align 8
  %202 = ptrtoint ptr %priv7 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %priv7, align 4
  %rq_wq_type.i.i.i = getelementptr inbounds %struct.mlx5e_params, ptr %call.i.i, i32 0, i32 1
  %204 = ptrtoint ptr %rq_wq_type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %rq_wq_type.i.i.i, align 1
  %wq_type.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 29
  %206 = ptrtoint ptr %wq_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 %205, ptr %wq_type.i.i.i, align 32
  %207 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %pdev, align 32
  %pdev3.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 2
  %209 = ptrtoint ptr %pdev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %208, ptr %pdev3.i.i.i, align 4
  %netdev.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %203, i32 0, i32 22
  %210 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %netdev.i.i.i, align 4
  %netdev4.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 3
  %212 = ptrtoint ptr %netdev4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %211, ptr %netdev4.i.i.i, align 8
  %priv5.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 12
  %213 = ptrtoint ptr %priv5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %203, ptr %priv5.i.i.i, align 4
  %clock.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %201, i32 0, i32 27
  %clock6.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 10
  %214 = ptrtoint ptr %clock6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %clock.i.i.i, ptr %clock6.i.i.i, align 4
  %tstamp.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %203, i32 0, i32 34
  %tstamp7.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 9
  %215 = ptrtoint ptr %tstamp7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %tstamp.i.i.i, ptr %tstamp7.i.i.i, align 8
  %mdev8.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 31
  %216 = ptrtoint ptr %mdev8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %201, ptr %mdev8.i.i.i, align 8
  %217 = ptrtoint ptr %sw_mtu5.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %sw_mtu5.i, align 4
  %219 = ptrtoint ptr %hard_mtu4.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %hard_mtu4.i, align 4
  %add.i.i.i = add i32 %220, %218
  %hw_mtu.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 19
  %221 = ptrtoint ptr %hw_mtu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %add.i.i.i, ptr %hw_mtu.i.i.i, align 16
  %rq10.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %203, i32 0, i32 28, i32 4
  %stats.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 4
  %222 = ptrtoint ptr %stats.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %rq10.i.i.i, ptr %stats.i.i.i, align 4
  %ix.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 18
  %223 = ptrtoint ptr %ix.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 0, ptr %ix.i.i.i, align 4
  %caps.i.i.i.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %201, i32 0, i32 8
  %224 = ptrtoint ptr %caps.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %caps.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %225, i32 34
  %226 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  %shr.i.i.i.i.i = lshr i32 %227, 28
  %conv.i.i.i.i.i = and i32 %shr.i.i.i.i.i, 3
  %228 = add nsw i32 %conv.i.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %228)
  %229 = icmp ult i32 %228, 2
  %cond.i.i.i.i = select i1 %229, ptr @mlx5_real_time_cyc2time, ptr @mlx5_timecounter_cyc2time
  %ptp_cyc2time.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 36
  %230 = ptrtoint ptr %ptp_cyc2time.i.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %cond.i.i.i.i, ptr %ptp_cyc2time.i.i.i, align 128
  %call11.i.i.i = call i32 @mlx5e_rq_set_handlers(ptr noundef %rq.i.i, ptr noundef %call.i.i, i1 noundef zeroext false) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %mlx5e_init_ptp_rq.exit.i.i, label %if.end17.i.close_rx_cq.i_crit_edge

if.end17.i.close_rx_cq.i_crit_edge:               ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_rx_cq.i

mlx5e_init_ptp_rq.exit.i.i:                       ; preds = %if.end17.i
  %xdp_rxq.i.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %call.i, i32 0, i32 1, i32 35
  %231 = ptrtoint ptr %netdev4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %netdev4.i.i.i, align 8
  %233 = ptrtoint ptr %ix.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %ix.i.i.i, align 4
  %call14.i.i.i = call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq.i.i.i, ptr noundef %232, i32 noundef %234, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i.i)
  %tobool.not.i85.i = icmp eq i32 %call14.i.i.i, 0
  br i1 %tobool.not.i85.i, label %mlx5e_ptp_open_rq.exit.i, label %mlx5e_init_ptp_rq.exit.i.i.close_rx_cq.i_crit_edge

mlx5e_init_ptp_rq.exit.i.i.close_rx_cq.i_crit_edge: ; preds = %mlx5e_init_ptp_rq.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_rx_cq.i

mlx5e_ptp_open_rq.exit.i:                         ; preds = %mlx5e_init_ptp_rq.exit.i.i
  %call3.i.i = call i32 @mlx5e_open_rq(ptr noundef %call.i.i, ptr noundef %rq_param.i.i87, ptr noundef null, i32 noundef -1, ptr noundef %rq.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool19.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool19.not.i, label %mlx5e_ptp_open_rq.exit.i.if.end27_crit_edge, label %mlx5e_ptp_open_rq.exit.i.close_rx_cq.i_crit_edge

mlx5e_ptp_open_rq.exit.i.close_rx_cq.i_crit_edge: ; preds = %mlx5e_ptp_open_rq.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_rx_cq.i

mlx5e_ptp_open_rq.exit.i.if.end27_crit_edge:      ; preds = %mlx5e_ptp_open_rq.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

close_rx_cq.i:                                    ; preds = %mlx5e_ptp_open_rq.exit.i.close_rx_cq.i_crit_edge, %mlx5e_init_ptp_rq.exit.i.i.close_rx_cq.i_crit_edge, %if.end17.i.close_rx_cq.i_crit_edge
  %retval.0.i86104.i = phi i32 [ %call3.i.i, %mlx5e_ptp_open_rq.exit.i.close_rx_cq.i_crit_edge ], [ %call11.i.i.i, %if.end17.i.close_rx_cq.i_crit_edge ], [ %call14.i.i.i, %mlx5e_init_ptp_rq.exit.i.i.close_rx_cq.i_crit_edge ]
  %235 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load volatile i32, ptr %state6.i, align 4
  %237 = and i32 %236, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %tobool26.not.i = icmp eq i32 %237, 0
  br i1 %tobool26.not.i, label %close_rx_cq.i.close_txqsq.i_crit_edge, label %if.then27.i

close_rx_cq.i.close_txqsq.i_crit_edge:            ; preds = %close_rx_cq.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_txqsq.i

if.then27.i:                                      ; preds = %close_rx_cq.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @mlx5e_close_cq(ptr noundef %cq1.i.i) #13
  br label %close_txqsq.i

close_txqsq.i:                                    ; preds = %if.then27.i, %close_rx_cq.i.close_txqsq.i_crit_edge, %if.then13.i.close_txqsq.i_crit_edge
  %err.0.i = phi i32 [ %call4.i.i, %if.then13.i.close_txqsq.i_crit_edge ], [ %retval.0.i86104.i, %if.then27.i ], [ %retval.0.i86104.i, %close_rx_cq.i.close_txqsq.i_crit_edge ]
  %238 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load volatile i32, ptr %state6.i, align 4
  %and1.i64.i = and i32 %239, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i64.i)
  %tobool32.not.i = icmp eq i32 %and1.i64.i, 0
  br i1 %tobool32.not.i, label %close_txqsq.i.close_tx_cqs.i_crit_edge, label %if.then33.i

close_txqsq.i.close_tx_cqs.i_crit_edge:           ; preds = %close_txqsq.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_tx_cqs.i

if.then33.i:                                      ; preds = %close_txqsq.i
  %240 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %241)
  %cmp6.not.i.i = icmp eq i8 %241, 0
  br i1 %cmp6.not.i.i, label %if.then33.i.close_tx_cqs.i_crit_edge, label %if.then33.i.for.body.i88.i_crit_edge

if.then33.i.for.body.i88.i_crit_edge:             ; preds = %if.then33.i
  br label %for.body.i88.i

if.then33.i.close_tx_cqs.i_crit_edge:             ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_tx_cqs.i

for.body.i88.i:                                   ; preds = %for.body.i88.i.for.body.i88.i_crit_edge, %if.then33.i.for.body.i88.i_crit_edge
  %tc.07.i.i = phi i32 [ %inc.i87.i, %for.body.i88.i.for.body.i88.i_crit_edge ], [ 0, %if.then33.i.for.body.i88.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.07.i.i
  call fastcc void @mlx5e_ptp_close_txqsq(ptr noundef %arrayidx.i.i) #13
  %inc.i87.i = add nuw nsw i32 %tc.07.i.i, 1
  %242 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %num_tc, align 4
  %conv.i.i = zext i8 %243 to i32
  %cmp.i.i = icmp ult i32 %inc.i87.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i88.i.for.body.i88.i_crit_edge, label %for.body.i88.i.close_tx_cqs.i_crit_edge

for.body.i88.i.close_tx_cqs.i_crit_edge:          ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %close_tx_cqs.i

for.body.i88.i.for.body.i88.i_crit_edge:          ; preds = %for.body.i88.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i88.i

close_tx_cqs.i:                                   ; preds = %for.body.i88.i.close_tx_cqs.i_crit_edge, %if.then33.i.close_tx_cqs.i_crit_edge, %close_txqsq.i.close_tx_cqs.i_crit_edge, %mlx5e_ptp_open_txqsqs.exit.i.close_tx_cqs.i_crit_edge, %mlx5e_ptp_open_txqsq.exit.i.i.close_tx_cqs.i_crit_edge
  %err.1.i = phi i32 [ %retval.0.i.i.i, %mlx5e_ptp_open_txqsqs.exit.i.close_tx_cqs.i_crit_edge ], [ %err.0.i, %close_txqsq.i.close_tx_cqs.i_crit_edge ], [ %err.0.i, %if.then33.i.close_tx_cqs.i_crit_edge ], [ %retval.0.i.i.i, %mlx5e_ptp_open_txqsq.exit.i.i.close_tx_cqs.i_crit_edge ], [ %err.0.i, %for.body.i88.i.close_tx_cqs.i_crit_edge ]
  %244 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load volatile i32, ptr %state6.i, align 4
  %and1.i65.i = and i32 %245, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i65.i)
  %tobool38.not.i = icmp eq i32 %and1.i65.i, 0
  br i1 %tobool38.not.i, label %close_tx_cqs.i.mlx5e_ptp_open_queues.exit_crit_edge, label %if.then39.i

close_tx_cqs.i.mlx5e_ptp_open_queues.exit_crit_edge: ; preds = %close_tx_cqs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_open_queues.exit

if.then39.i:                                      ; preds = %close_tx_cqs.i
  %246 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %cmp22.not.i.i = icmp eq i8 %247, 0
  br i1 %cmp22.not.i.i, label %if.then39.i.mlx5e_ptp_open_queues.exit_crit_edge, label %if.then39.i.for.body.i94.i_crit_edge

if.then39.i.for.body.i94.i_crit_edge:             ; preds = %if.then39.i
  br label %for.body.i94.i

if.then39.i.mlx5e_ptp_open_queues.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_open_queues.exit

for.cond2.preheader.i.i:                          ; preds = %for.body.i94.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %cmp525.not.i.i = icmp eq i8 %249, 0
  br i1 %cmp525.not.i.i, label %for.cond2.preheader.i.i.mlx5e_ptp_open_queues.exit_crit_edge, label %for.cond2.preheader.i.i.for.body7.i.i_crit_edge

for.cond2.preheader.i.i.for.body7.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  br label %for.body7.i.i

for.cond2.preheader.i.i.mlx5e_ptp_open_queues.exit_crit_edge: ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_open_queues.exit

for.body.i94.i:                                   ; preds = %for.body.i94.i.for.body.i94.i_crit_edge, %if.then39.i.for.body.i94.i_crit_edge
  %tc.023.i.i = phi i32 [ %inc.i91.i, %for.body.i94.i.for.body.i94.i_crit_edge ], [ 0, %if.then39.i.for.body.i94.i_crit_edge ]
  %ts_cq.i90.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.023.i.i, i32 1
  call void @mlx5e_close_cq(ptr noundef %ts_cq.i90.i) #13
  %inc.i91.i = add nuw nsw i32 %tc.023.i.i, 1
  %248 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %num_tc, align 4
  %conv.i92.i = zext i8 %249 to i32
  %cmp.i93.i = icmp ult i32 %inc.i91.i, %conv.i92.i
  br i1 %cmp.i93.i, label %for.body.i94.i.for.body.i94.i_crit_edge, label %for.cond2.preheader.i.i

for.body.i94.i.for.body.i94.i_crit_edge:          ; preds = %for.body.i94.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i94.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.cond2.preheader.i.i.for.body7.i.i_crit_edge
  %tc.126.i.i = phi i32 [ %inc11.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ 0, %for.cond2.preheader.i.i.for.body7.i.i_crit_edge ]
  %cq.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %call.i, i32 0, i32 %tc.126.i.i, i32 0, i32 10
  call void @mlx5e_close_cq(ptr noundef %cq.i.i) #13
  %inc11.i.i = add nuw nsw i32 %tc.126.i.i, 1
  %250 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %num_tc, align 4
  %conv4.i.i = zext i8 %251 to i32
  %cmp5.i.i = icmp ult i32 %inc11.i.i, %conv4.i.i
  br i1 %cmp5.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge, label %for.body7.i.i.mlx5e_ptp_open_queues.exit_crit_edge

for.body7.i.i.mlx5e_ptp_open_queues.exit_crit_edge: ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_open_queues.exit

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7.i.i

mlx5e_ptp_open_queues.exit:                       ; preds = %for.body7.i.i.mlx5e_ptp_open_queues.exit_crit_edge, %for.cond2.preheader.i.i.mlx5e_ptp_open_queues.exit_crit_edge, %if.then39.i.mlx5e_ptp_open_queues.exit_crit_edge, %close_tx_cqs.i.mlx5e_ptp_open_queues.exit_crit_edge, %mlx5e_ptp_open_tx_cqs.exit.i
  %retval.0.i = phi i32 [ %err.0.i.i, %mlx5e_ptp_open_tx_cqs.exit.i ], [ %err.1.i, %close_tx_cqs.i.mlx5e_ptp_open_queues.exit_crit_edge ], [ %err.1.i, %if.then39.i.mlx5e_ptp_open_queues.exit_crit_edge ], [ %err.1.i, %for.cond2.preheader.i.i.mlx5e_ptp_open_queues.exit_crit_edge ], [ %err.1.i, %for.body7.i.i.mlx5e_ptp_open_queues.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool23.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool23.not, label %mlx5e_ptp_open_queues.exit.if.end27_crit_edge, label %err_napi_del, !prof !51

mlx5e_ptp_open_queues.exit.if.end27_crit_edge:    ; preds = %mlx5e_ptp_open_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.end27:                                         ; preds = %mlx5e_ptp_open_queues.exit.if.end27_crit_edge, %mlx5e_ptp_open_rq.exit.i.if.end27_crit_edge, %if.end8.i.if.end27_crit_edge
  %252 = ptrtoint ptr %state6.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load volatile i32, ptr %state6.i, align 4
  %254 = and i32 %253, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool29.not = icmp eq i32 %254, 0
  br i1 %tobool29.not, label %if.end27.if.end31_crit_edge, label %if.then30

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %rx_ptp_opened = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %255 = ptrtoint ptr %rx_ptp_opened to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %rx_ptp_opened, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end27.if.end31_crit_edge
  %256 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call.i, ptr %cp, align 4
  br label %cleanup.sink.split

err_napi_del:                                     ; preds = %mlx5e_ptp_open_queues.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__netif_napi_del(ptr noundef %napi) #13
  call void @synchronize_net() #13
  br label %err_free

err_free:                                         ; preds = %err_napi_del, %mlx5e_ptp_set_state.exit.err_free_crit_edge
  %err.0 = phi i32 [ -22, %mlx5e_ptp_set_state.exit.err_free_crit_edge ], [ %retval.0.i, %err_napi_del ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_free, %if.end31
  %call.i.sink = phi ptr [ %call.i, %err_free ], [ %call.i.i, %if.end31 ]
  %retval.0.ph = phi i32 [ %err.0, %err_free ], [ 0, %if.end31 ]
  call void @kvfree(ptr noundef nonnull %call.i.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_ptp_napi_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  %hwts.i.i.i.i = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -13696
  %stats = getelementptr i8, ptr %napi, i32 240
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 16
  %rq1 = getelementptr i8, ptr %napi, i32 -3456
  %2 = tail call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !52
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %poll = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %poll to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %poll, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %poll, align 8
  %state = getelementptr i8, ptr %napi, i32 256
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %for.cond.preheader

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader:                               ; preds = %rcu_read_lock.exit
  %num_tc = getelementptr i8, ptr %napi, i32 236
  %10 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp168.not = icmp eq i8 %11, 0
  br i1 %cmp168.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %smax.i = call i32 @llvm.smax.i32(i32 %budget, i32 1) #13
  %12 = add nsw i32 %smax.i, -1
  br label %for.body

for.body:                                         ; preds = %mlx5e_ptp_poll_ts_cq.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %mlx5e_ptp_poll_ts_cq.exit.for.body_crit_edge ]
  %busy.0169 = phi i8 [ 0, %for.body.lr.ph ], [ %or14, %mlx5e_ptp_poll_ts_cq.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %add.ptr, i32 0, i32 %i.0170
  %cq = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx, i32 0, i32 10
  %call3 = call zeroext i1 @mlx5e_poll_tx_cq(ptr noundef %cq, i32 noundef %budget) #13
  %conv4 = zext i1 %call3 to i8
  %or = or i8 %busy.0169, %conv4
  %ts_cq = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1
  %state.i = getelementptr %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 0, i32 22
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i130 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i130, label %for.body.mlx5e_ptp_poll_ts_cq.exit_crit_edge, label %if.end.i, !prof !53

for.body.mlx5e_ptp_poll_ts_cq.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_poll_ts_cq.exit

if.end.i:                                         ; preds = %for.body
  %cc.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cc.i.i.i, align 4
  %sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sz_m1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %18, %16
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 0, i32 3
  %19 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %20 to i32
  %add.i.i.i.i = add i32 %and.i.i.i.i, %conv.i.i.i.i
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 0, i32 6
  %21 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i8 %22 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i.i
  %23 = ptrtoint ptr %ts_cq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ts_cq, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %24, i32 %shr.i.i.i.i
  %25 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i.i = zext i16 %28 to i32
  %and.i.i15.i.i = and i32 %add.i.i.i.i, %conv2.i.i.i.i
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 0, i32 5
  %29 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %30 to i32
  %shl.i.i.i.i = shl i32 %and.i.i15.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %26, i32 %shl.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %30)
  %cmp.i.i.i = icmp eq i8 %30, 7
  %conv2.i.i.i = zext i1 %cmp.i.i.i to i32
  %add.ptr.i.i.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i.i, i32 %conv2.i.i.i
  %op_own.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i.i, i32 0, i32 23
  %31 = ptrtoint ptr %op_own.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %op_own.i.i, align 1
  %33 = and i8 %32, 1
  %log_sz.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 0, i32 4
  %34 = ptrtoint ptr %log_sz.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %log_sz.i.i.i.i, align 4
  %conv.i.i17.i.i = zext i8 %35 to i32
  %shr.i.i18.i.i = lshr i32 %16, %conv.i.i17.i.i
  %conv5.i.i = and i32 %shr.i.i18.i.i, 1
  %conv6.i.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i.i, i32 %conv6.i.i)
  %cmp.not.i.i = icmp eq i32 %conv5.i.i, %conv6.i.i
  br i1 %cmp.not.i.i, label %mlx5_cqwq_get_cqe.exit.i, label %if.end.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge

if.end.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_poll_ts_cq.exit

mlx5_cqwq_get_cqe.exit.i:                         ; preds = %if.end.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !54
  %tobool5.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool5.not.i, label %mlx5_cqwq_get_cqe.exit.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge, label %do.body.preheader.i

mlx5_cqwq_get_cqe.exit.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge: ; preds = %mlx5_cqwq_get_cqe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_poll_ts_cq.exit

do.body.preheader.i:                              ; preds = %mlx5_cqwq_get_cqe.exit.i
  %skb_fifo.i.i = getelementptr %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 4
  %cc.i.i26.i = getelementptr %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 4, i32 2
  %mask.i.i.i.i = getelementptr %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 4, i32 3
  %cq_stats.i.i = getelementptr %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 5
  %ptp_cyc2time.i.i = getelementptr %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 0, i32 35
  %clock.i.i = getelementptr %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 0, i32 25
  br label %do.body.i

do.body.i:                                        ; preds = %mlx5_cqwq_get_cqe.exit61.i.do.body.i_crit_edge, %do.body.preheader.i
  %cqe.0.i = phi ptr [ %add.ptr.i.i51.i, %mlx5_cqwq_get_cqe.exit61.i.do.body.i_crit_edge ], [ %add.ptr.i.i.i, %do.body.preheader.i ]
  %work_done.0.i = phi i32 [ %inc.i, %mlx5_cqwq_get_cqe.exit61.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %36 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cc.i.i.i, align 4
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr %cc.i.i.i, align 4
  %38 = ptrtoint ptr %cc.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cc.i.i26.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 2
  %inc.i.i.i = add i16 %41, 1
  store i16 %inc.i.i.i, ptr %39, align 2
  %42 = ptrtoint ptr %skb_fifo.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb_fifo.i.i, align 4
  %44 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %mask.i.i.i.i, align 4
  %and4.i.i.i.i = and i16 %45, %41
  %and.i.i.i27.i = zext i16 %and4.i.i.i.i to i32
  %arrayidx.i.i.i28.i = getelementptr ptr, ptr %43, i32 %and.i.i.i27.i
  %46 = ptrtoint ptr %arrayidx.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i.i.i28.i, align 4
  %op_own.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0.i, i32 0, i32 23
  %48 = ptrtoint ptr %op_own.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %op_own.i.i.i, align 1
  %.mask.i.i = and i8 %49, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %.mask.i.i)
  %cmp.not.i29.i = icmp eq i8 %.mask.i.i, 32
  br i1 %cmp.not.i29.i, label %if.end.i30.i, label %if.then.i.i, !prof !51

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %50 = ptrtoint ptr %cq_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cq_stats.i.i, align 4
  %err_cqe.i.i = getelementptr inbounds %struct.mlx5e_ptp_cq_stats, ptr %51, i32 0, i32 1
  br label %mlx5e_ptp_handle_ts_cqe.exit.i

if.end.i30.i:                                     ; preds = %do.body.i
  %52 = ptrtoint ptr %ptp_cyc2time.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptp_cyc2time.i.i, align 16
  %54 = ptrtoint ptr %clock.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clock.i.i, align 32
  %timestamp_h.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0.i, i32 0, i32 18
  %56 = ptrtoint ptr %timestamp_h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %timestamp_h.i.i.i, align 4
  %timestamp_l.i.i.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %cqe.0.i, i32 0, i32 19
  %58 = ptrtoint ptr %timestamp_l.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %timestamp_l.i.i.i, align 4
  %conv.i.i.i = zext i32 %59 to i64
  %conv1.i.i.i = zext i32 %57 to i64
  %shl.i.i.i = shl nuw i64 %conv1.i.i.i, 32
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i
  %call.i.i.i = call i64 %53(ptr noundef %55, i64 noundef %or.i.i.i) #13
  %60 = ptrtoint ptr %cq_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cq_stats.i.i, align 4
  %port_hwtstamp.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %port_hwtstamp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %call.i.i.i, ptr %port_hwtstamp.i.i.i, align 8
  %cb.i15.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 3
  %63 = ptrtoint ptr %cb.i15.i.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %cb.i15.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool.not.i.i.i = icmp eq i64 %64, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i.i.i)
  %tobool7.not.i.i.i = icmp eq i64 %call.i.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i.i, i1 true, i1 %tobool7.not.i.i.i
  br i1 %or.cond.i.i, label %if.end.i30.i.mlx5e_skb_cb_hwtstamp_handler.exit.i.i_crit_edge, label %if.end.i.i.i

if.end.i30.i.mlx5e_skb_cb_hwtstamp_handler.exit.i.i_crit_edge: ; preds = %if.end.i30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_skb_cb_hwtstamp_handler.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end.i30.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwts.i.i.i.i) #13
  %sub.i.i.i.i = sub i64 %call.i.i.i, %64
  %65 = call i64 @llvm.abs.i64(i64 %sub.i.i.i.i, i1 false) #13
  call void @__sanitizer_cov_trace_const_cmp8(i64 7812500, i64 %65)
  %cmp3.i.i.i.i = icmp sgt i64 %65, 7812500
  br i1 %cmp3.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %abort.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptp_cq_stats, ptr %61, i32 0, i32 2
  %66 = ptrtoint ptr %abort.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %abort.i.i.i.i, align 8
  %inc.i.i.i.i = add i64 %67, 1
  store i64 %inc.i.i.i.i, ptr %abort.i.i.i.i, align 8
  %abort_abs_diff_ns.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptp_cq_stats, ptr %61, i32 0, i32 3
  %68 = ptrtoint ptr %abort_abs_diff_ns.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %abort_abs_diff_ns.i.i.i.i, align 8
  %add.i.i.i31.i = add i64 %69, %65
  store i64 %add.i.i.i31.i, ptr %abort_abs_diff_ns.i.i.i.i, align 8
  br label %mlx5e_skb_cb_hwtstamp_tx.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %70 = ptrtoint ptr %hwts.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %call.i.i.i, ptr %hwts.i.i.i.i, align 8
  call void @skb_tstamp_tx(ptr noundef %47, ptr noundef nonnull %hwts.i.i.i.i) #13
  br label %mlx5e_skb_cb_hwtstamp_tx.exit.i.i.i

mlx5e_skb_cb_hwtstamp_tx.exit.i.i.i:              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwts.i.i.i.i) #13
  %71 = call ptr @memset(ptr %cb.i15.i.i.i, i32 0, i32 16)
  br label %mlx5e_skb_cb_hwtstamp_handler.exit.i.i

mlx5e_skb_cb_hwtstamp_handler.exit.i.i:           ; preds = %mlx5e_skb_cb_hwtstamp_tx.exit.i.i.i, %if.end.i30.i.mlx5e_skb_cb_hwtstamp_handler.exit.i.i_crit_edge
  %72 = ptrtoint ptr %cq_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cq_stats.i.i, align 4
  br label %mlx5e_ptp_handle_ts_cqe.exit.i

mlx5e_ptp_handle_ts_cqe.exit.i:                   ; preds = %mlx5e_skb_cb_hwtstamp_handler.exit.i.i, %if.then.i.i
  %.sink18.i.i = phi ptr [ %73, %mlx5e_skb_cb_hwtstamp_handler.exit.i.i ], [ %err_cqe.i.i, %if.then.i.i ]
  %74 = ptrtoint ptr %.sink18.i.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %.sink18.i.i, align 8
  %inc9.i.i = add i64 %75, 1
  store i64 %inc9.i.i, ptr %.sink18.i.i, align 8
  call void @napi_consume_skb(ptr noundef %47, i32 noundef %budget) #13
  %inc.i = add nuw nsw i32 %work_done.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0.i, i32 %12)
  %exitcond.not.i = icmp eq i32 %work_done.0.i, %12
  br i1 %exitcond.not.i, label %mlx5e_ptp_handle_ts_cqe.exit.i.do.end.i_crit_edge, label %land.rhs.i

mlx5e_ptp_handle_ts_cqe.exit.i.do.end.i_crit_edge: ; preds = %mlx5e_ptp_handle_ts_cqe.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.rhs.i:                                       ; preds = %mlx5e_ptp_handle_ts_cqe.exit.i
  %76 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cc.i.i.i, align 4
  %78 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sz_m1.i.i.i.i, align 4
  %and.i.i.i34.i = and i32 %79, %77
  %80 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i36.i = zext i16 %81 to i32
  %add.i.i.i37.i = add i32 %and.i.i.i34.i, %conv.i.i.i36.i
  %82 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i39.i = zext i8 %83 to i32
  %shr.i.i.i40.i = lshr i32 %add.i.i.i37.i, %conv1.i.i.i39.i
  %84 = ptrtoint ptr %ts_cq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ts_cq, align 4
  %arrayidx.i.i.i41.i = getelementptr %struct.mlx5_buf_list, ptr %85, i32 %shr.i.i.i40.i
  %86 = ptrtoint ptr %arrayidx.i.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i.i41.i, align 4
  %88 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv2.i.i.i43.i = zext i16 %89 to i32
  %and.i.i15.i44.i = and i32 %add.i.i.i37.i, %conv2.i.i.i43.i
  %90 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i46.i = zext i8 %91 to i32
  %shl.i.i.i47.i = shl i32 %and.i.i15.i44.i, %conv3.i.i.i46.i
  %add.ptr.i.i.i48.i = getelementptr i8, ptr %87, i32 %shl.i.i.i47.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %91)
  %cmp.i.i49.i = icmp eq i8 %91, 7
  %conv2.i.i50.i = zext i1 %cmp.i.i49.i to i32
  %add.ptr.i.i51.i = getelementptr %struct.mlx5_cqe64, ptr %add.ptr.i.i.i48.i, i32 %conv2.i.i50.i
  %op_own.i52.i = getelementptr inbounds %struct.mlx5_cqe64, ptr %add.ptr.i.i51.i, i32 0, i32 23
  %92 = ptrtoint ptr %op_own.i52.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %op_own.i52.i, align 1
  %94 = and i8 %93, 1
  %95 = ptrtoint ptr %log_sz.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %log_sz.i.i.i.i, align 4
  %conv.i.i17.i54.i = zext i8 %96 to i32
  %shr.i.i18.i55.i = lshr i32 %77, %conv.i.i17.i54.i
  %conv5.i56.i = and i32 %shr.i.i18.i55.i, 1
  %conv6.i57.i = zext i8 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i56.i, i32 %conv6.i57.i)
  %cmp.not.i58.i = icmp eq i32 %conv5.i56.i, %conv6.i57.i
  br i1 %cmp.not.i58.i, label %mlx5_cqwq_get_cqe.exit61.i, label %land.rhs.i.do.end.i_crit_edge

land.rhs.i.do.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

mlx5_cqwq_get_cqe.exit61.i:                       ; preds = %land.rhs.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !54
  %tobool9.not.i = icmp eq ptr %add.ptr.i.i51.i, null
  br i1 %tobool9.not.i, label %mlx5_cqwq_get_cqe.exit61.i.do.end.i_crit_edge, label %mlx5_cqwq_get_cqe.exit61.i.do.body.i_crit_edge

mlx5_cqwq_get_cqe.exit61.i.do.body.i_crit_edge:   ; preds = %mlx5_cqwq_get_cqe.exit61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i

mlx5_cqwq_get_cqe.exit61.i.do.end.i_crit_edge:    ; preds = %mlx5_cqwq_get_cqe.exit61.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i:                                         ; preds = %mlx5_cqwq_get_cqe.exit61.i.do.end.i_crit_edge, %land.rhs.i.do.end.i_crit_edge, %mlx5e_ptp_handle_ts_cqe.exit.i.do.end.i_crit_edge
  %inc.lcssa.i = phi i32 [ %inc.i, %land.rhs.i.do.end.i_crit_edge ], [ %smax.i, %mlx5e_ptp_handle_ts_cqe.exit.i.do.end.i_crit_edge ], [ %inc.i, %mlx5_cqwq_get_cqe.exit61.i.do.end.i_crit_edge ]
  %97 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %cc.i.i.i, align 4
  %and.i.i = and i32 %98, 16777215
  %db.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx, i32 0, i32 1, i32 0, i32 1
  %99 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %db.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and.i.i, ptr %100, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !55
  call void @arm_heavy_mb() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.lcssa.i, i32 %budget)
  %cmp13.i = icmp eq i32 %inc.lcssa.i, %budget
  br label %mlx5e_ptp_poll_ts_cq.exit

mlx5e_ptp_poll_ts_cq.exit:                        ; preds = %do.end.i, %mlx5_cqwq_get_cqe.exit.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge, %if.end.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge, %for.body.mlx5e_ptp_poll_ts_cq.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp13.i, %do.end.i ], [ false, %for.body.mlx5e_ptp_poll_ts_cq.exit_crit_edge ], [ false, %mlx5_cqwq_get_cqe.exit.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge ], [ false, %if.end.i.mlx5e_ptp_poll_ts_cq.exit_crit_edge ]
  %conv11 = zext i1 %retval.0.i to i8
  %or14 = or i8 %or, %conv11
  %inc17 = add nuw nsw i32 %i.0170, 1
  %102 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %num_tc, align 4
  %conv = zext i8 %103 to i32
  %cmp = icmp ult i32 %inc17, %conv
  br i1 %cmp, label %mlx5e_ptp_poll_ts_cq.exit.for.body_crit_edge, label %if.end.loopexit.loopexit

mlx5e_ptp_poll_ts_cq.exit.for.body_crit_edge:     ; preds = %mlx5e_ptp_poll_ts_cq.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end.loopexit.loopexit:                         ; preds = %mlx5e_ptp_poll_ts_cq.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or14)
  %phi.cmp = icmp ne i8 %or14, 0
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit.loopexit, %for.cond.preheader.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %busy.1.off0 = phi i1 [ false, %rcu_read_lock.exit.if.end_crit_edge ], [ false, %for.cond.preheader.if.end_crit_edge ], [ %phi.cmp, %if.end.loopexit.loopexit ]
  %104 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %state, align 4
  %106 = and i32 %105, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool21.not = icmp eq i32 %106, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool22.not = icmp eq i32 %budget, 0
  %or.cond = or i1 %tobool22.not, %tobool21.not
  br i1 %or.cond, label %if.end42, label %if.then25, !prof !56

if.then25:                                        ; preds = %if.end
  %cq26 = getelementptr i8, ptr %napi, i32 -3200
  %call27 = call i32 @mlx5e_poll_rx_cq(ptr noundef %cq26, i32 noundef %budget) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %budget)
  %cmp28 = icmp eq i32 %call27, %budget
  %or32124 = or i1 %busy.1.off0, %cmp28
  %post_wqes = getelementptr i8, ptr %napi, i32 -608
  %107 = ptrtoint ptr %post_wqes to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %post_wqes, align 32
  %call35 = call zeroext i1 %108(ptr noundef %rq1) #13
  %or39125 = or i1 %or32124, %call35
  br i1 %or39125, label %if.then25.out_crit_edge, label %if.then25.if.end45_crit_edge

if.then25.if.end45_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end42:                                         ; preds = %if.end
  br i1 %busy.1.off0, label %if.end42.out_crit_edge, label %if.end42.if.end45_crit_edge

if.end42.if.end45_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end45

if.end42.out_crit_edge:                           ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end45:                                         ; preds = %if.end42.if.end45_crit_edge, %if.then25.if.end45_crit_edge
  %work_done.0166 = phi i32 [ %call27, %if.then25.if.end45_crit_edge ], [ 0, %if.end42.if.end45_crit_edge ]
  %call46 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0166) #13
  br i1 %call46, label %if.end56, label %if.end45.out_crit_edge, !prof !51

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end56:                                         ; preds = %if.end45
  %arm = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %1, i32 0, i32 2
  %109 = ptrtoint ptr %arm to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arm, align 8
  %inc57 = add i64 %110, 1
  store i64 %inc57, ptr %arm, align 8
  %111 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %state, align 4
  %and1.i127 = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i127)
  %tobool61.not = icmp eq i32 %and1.i127, 0
  br i1 %tobool61.not, label %if.end56.if.end79_crit_edge, label %for.cond63.preheader

if.end56.if.end79_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

for.cond63.preheader:                             ; preds = %if.end56
  %num_tc64 = getelementptr i8, ptr %napi, i32 236
  %113 = ptrtoint ptr %num_tc64 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %num_tc64, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %cmp66172.not = icmp eq i8 %114, 0
  br i1 %cmp66172.not, label %for.cond63.preheader.if.end79_crit_edge, label %for.cond63.preheader.for.body68_crit_edge

for.cond63.preheader.for.body68_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body68

for.cond63.preheader.if.end79_crit_edge:          ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

for.body68:                                       ; preds = %for.body68.for.body68_crit_edge, %for.cond63.preheader.for.body68_crit_edge
  %i.1173 = phi i32 [ %inc77, %for.body68.for.body68_crit_edge ], [ 0, %for.cond63.preheader.for.body68_crit_edge ]
  %arrayidx70 = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %add.ptr, i32 0, i32 %i.1173
  %mcq1.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx70, i32 0, i32 10, i32 3
  %uar.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx70, i32 0, i32 10, i32 3, i32 4
  %115 = ptrtoint ptr %uar.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %uar.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %cc.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx70, i32 0, i32 10, i32 0, i32 2
  %119 = ptrtoint ptr %cc.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %cc.i, align 4
  %arm_sn.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx70, i32 0, i32 10, i32 3, i32 12
  %121 = ptrtoint ptr %arm_sn.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arm_sn.i.i, align 4
  %and1.i.i131 = and i32 %120, 16777215
  %and.i.i132 = shl i32 %122, 28
  %shl.i.i = and i32 %and.i.i132, 805306368
  %or2.i.i = or i32 %shl.i.i, %and1.i.i131
  %arm_db.i.i = getelementptr inbounds %struct.mlx5e_txqsq, ptr %arrayidx70, i32 0, i32 10, i32 3, i32 3
  %123 = ptrtoint ptr %arm_db.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arm_db.i.i, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or2.i.i, ptr %124, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !57
  call void @arm_heavy_mb() #13
  %126 = ptrtoint ptr %mcq1.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mcq1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %118, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or2.i.i) #13, !srcloc !58
  %add.ptr.i.i.i133 = getelementptr i8, ptr %118, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i133, i32 %127) #13, !srcloc !58
  %mcq1.i134 = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx70, i32 0, i32 1, i32 3
  %uar.i135 = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx70, i32 0, i32 1, i32 3, i32 4
  %128 = ptrtoint ptr %uar.i135 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %uar.i135, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %cc.i136 = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx70, i32 0, i32 1, i32 0, i32 2
  %132 = ptrtoint ptr %cc.i136 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %cc.i136, align 4
  %arm_sn.i.i137 = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx70, i32 0, i32 1, i32 3, i32 12
  %134 = ptrtoint ptr %arm_sn.i.i137 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arm_sn.i.i137, align 4
  %and1.i.i138 = and i32 %133, 16777215
  %and.i.i139 = shl i32 %135, 28
  %shl.i.i140 = and i32 %and.i.i139, 805306368
  %or2.i.i141 = or i32 %shl.i.i140, %and1.i.i138
  %arm_db.i.i142 = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %arrayidx70, i32 0, i32 1, i32 3, i32 3
  %136 = ptrtoint ptr %arm_db.i.i142 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arm_db.i.i142, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %or2.i.i141, ptr %137, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !57
  call void @arm_heavy_mb() #13
  %139 = ptrtoint ptr %mcq1.i134 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %mcq1.i134, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %131, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i143, i32 %or2.i.i141) #13, !srcloc !58
  %add.ptr.i.i.i144 = getelementptr i8, ptr %131, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i144, i32 %140) #13, !srcloc !58
  %inc77 = add nuw nsw i32 %i.1173, 1
  %141 = ptrtoint ptr %num_tc64 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %num_tc64, align 4
  %conv65 = zext i8 %142 to i32
  %cmp66 = icmp ult i32 %inc77, %conv65
  br i1 %cmp66, label %for.body68.for.body68_crit_edge, label %for.body68.if.end79_crit_edge

for.body68.if.end79_crit_edge:                    ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

for.body68.for.body68_crit_edge:                  ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body68

if.end79:                                         ; preds = %for.body68.if.end79_crit_edge, %for.cond63.preheader.if.end79_crit_edge, %if.end56.if.end79_crit_edge
  %143 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load volatile i32, ptr %state, align 4
  %145 = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool83.not = icmp eq i32 %145, 0
  br i1 %tobool83.not, label %if.end79.out_crit_edge, label %if.then84

if.end79.out_crit_edge:                           ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  %mcq1.i145 = getelementptr i8, ptr %napi, i32 -3168
  %uar.i146 = getelementptr i8, ptr %napi, i32 -3152
  %146 = ptrtoint ptr %uar.i146 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %uar.i146, align 4
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 4
  %cc.i147 = getelementptr i8, ptr %napi, i32 -3180
  %150 = ptrtoint ptr %cc.i147 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cc.i147, align 4
  %arm_sn.i.i148 = getelementptr i8, ptr %napi, i32 -3068
  %152 = ptrtoint ptr %arm_sn.i.i148 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arm_sn.i.i148, align 4
  %and1.i.i149 = and i32 %151, 16777215
  %and.i.i150 = shl i32 %153, 28
  %shl.i.i151 = and i32 %and.i.i150, 805306368
  %or2.i.i152 = or i32 %shl.i.i151, %and1.i.i149
  %arm_db.i.i153 = getelementptr i8, ptr %napi, i32 -3156
  %154 = ptrtoint ptr %arm_db.i.i153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arm_db.i.i153, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %or2.i.i152, ptr %155, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !57
  call void @arm_heavy_mb() #13
  %157 = ptrtoint ptr %mcq1.i145 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mcq1.i145, align 4
  %add.ptr.i.i154 = getelementptr i8, ptr %149, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i154, i32 %or2.i.i152) #13, !srcloc !58
  %add.ptr.i.i.i155 = getelementptr i8, ptr %149, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i155, i32 %158) #13, !srcloc !58
  br label %out

out:                                              ; preds = %if.then84, %if.end79.out_crit_edge, %if.end45.out_crit_edge, %if.end42.out_crit_edge, %if.then25.out_crit_edge
  %work_done.1 = phi i32 [ %work_done.0166, %if.end45.out_crit_edge ], [ %work_done.0166, %if.then84 ], [ %work_done.0166, %if.end79.out_crit_edge ], [ %budget, %if.end42.out_crit_edge ], [ %budget, %if.then25.out_crit_edge ]
  %call.i156 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i156, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i159

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i159:                               ; preds = %out
  %call1.i157 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i157)
  %tobool.not.i158 = icmp eq i32 %call1.i157, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i161

land.lhs.true.i159.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i161:                              ; preds = %land.lhs.true.i159
  %.b4.i160 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i160, label %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, label %if.then.i162

land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i162:                                     ; preds = %land.lhs.true2.i161
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i162, %land.lhs.true2.i161.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i159.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !59
  %159 = call i32 @llvm.read_register.i32(metadata !40) #13
  %and.i.i.i.i.i163 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i.i.i163 to ptr
  %preempt_count.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i.i.i164 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i.i.i164, align 4
  %sub.i.i.i = add i32 %162, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i164, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret i32 %work_done.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ptp_close(ptr noundef %c) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 12
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rq.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 1
  tail call void @mlx5e_close_rq(ptr noundef %rq.i) #13
  %cq.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 1, i32 6
  tail call void @mlx5e_close_cq(ptr noundef %cq.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i13.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i13.i)
  %tobool5.not.i = icmp eq i32 %and1.i13.i, 0
  br i1 %tobool5.not.i, label %if.end.i.mlx5e_ptp_close_queues.exit_crit_edge, label %if.then6.i

if.end.i.mlx5e_ptp_close_queues.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_close_queues.exit

if.then6.i:                                       ; preds = %if.end.i
  %num_tc.i.i = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 6
  %5 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_tc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp6.not.i.i = icmp eq i8 %6, 0
  br i1 %cmp6.not.i.i, label %if.then6.i.mlx5e_ptp_close_queues.exit_crit_edge, label %if.then6.i.for.body.i.i_crit_edge

if.then6.i.for.body.i.i_crit_edge:                ; preds = %if.then6.i
  br label %for.body.i.i

if.then6.i.mlx5e_ptp_close_queues.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_close_queues.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then6.i.for.body.i.i_crit_edge
  %tc.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then6.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %c, i32 0, i32 %tc.07.i.i
  tail call fastcc void @mlx5e_ptp_close_txqsq(ptr noundef %arrayidx.i.i) #13
  %inc.i.i = add nuw nsw i32 %tc.07.i.i, 1
  %7 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_tc.i.i, align 4
  %conv.i.i = zext i8 %8 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %mlx5e_ptp_close_txqsqs.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

mlx5e_ptp_close_txqsqs.exit.i:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp22.not.i.i = icmp eq i8 %8, 0
  br i1 %cmp22.not.i.i, label %mlx5e_ptp_close_txqsqs.exit.i.mlx5e_ptp_close_queues.exit_crit_edge, label %mlx5e_ptp_close_txqsqs.exit.i.for.body.i18.i_crit_edge

mlx5e_ptp_close_txqsqs.exit.i.for.body.i18.i_crit_edge: ; preds = %mlx5e_ptp_close_txqsqs.exit.i
  br label %for.body.i18.i

mlx5e_ptp_close_txqsqs.exit.i.mlx5e_ptp_close_queues.exit_crit_edge: ; preds = %mlx5e_ptp_close_txqsqs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_close_queues.exit

for.cond2.preheader.i.i:                          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp525.not.i.i = icmp eq i8 %10, 0
  br i1 %cmp525.not.i.i, label %for.cond2.preheader.i.i.mlx5e_ptp_close_queues.exit_crit_edge, label %for.cond2.preheader.i.i.for.body7.i.i_crit_edge

for.cond2.preheader.i.i.for.body7.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  br label %for.body7.i.i

for.cond2.preheader.i.i.mlx5e_ptp_close_queues.exit_crit_edge: ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_close_queues.exit

for.body.i18.i:                                   ; preds = %for.body.i18.i.for.body.i18.i_crit_edge, %mlx5e_ptp_close_txqsqs.exit.i.for.body.i18.i_crit_edge
  %tc.023.i.i = phi i32 [ %inc.i15.i, %for.body.i18.i.for.body.i18.i_crit_edge ], [ 0, %mlx5e_ptp_close_txqsqs.exit.i.for.body.i18.i_crit_edge ]
  %ts_cq.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %c, i32 0, i32 %tc.023.i.i, i32 1
  tail call void @mlx5e_close_cq(ptr noundef %ts_cq.i.i) #13
  %inc.i15.i = add nuw nsw i32 %tc.023.i.i, 1
  %9 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_tc.i.i, align 4
  %conv.i16.i = zext i8 %10 to i32
  %cmp.i17.i = icmp ult i32 %inc.i15.i, %conv.i16.i
  br i1 %cmp.i17.i, label %for.body.i18.i.for.body.i18.i_crit_edge, label %for.cond2.preheader.i.i

for.body.i18.i.for.body.i18.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i18.i

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.cond2.preheader.i.i.for.body7.i.i_crit_edge
  %tc.126.i.i = phi i32 [ %inc11.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ 0, %for.cond2.preheader.i.i.for.body7.i.i_crit_edge ]
  %cq.i.i = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %c, i32 0, i32 %tc.126.i.i, i32 0, i32 10
  tail call void @mlx5e_close_cq(ptr noundef %cq.i.i) #13
  %inc11.i.i = add nuw nsw i32 %tc.126.i.i, 1
  %11 = ptrtoint ptr %num_tc.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_tc.i.i, align 4
  %conv4.i.i = zext i8 %12 to i32
  %cmp5.i.i = icmp ult i32 %inc11.i.i, %conv4.i.i
  br i1 %cmp5.i.i, label %for.body7.i.i.for.body7.i.i_crit_edge, label %for.body7.i.i.mlx5e_ptp_close_queues.exit_crit_edge

for.body7.i.i.mlx5e_ptp_close_queues.exit_crit_edge: ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_close_queues.exit

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7.i.i

mlx5e_ptp_close_queues.exit:                      ; preds = %for.body7.i.i.mlx5e_ptp_close_queues.exit_crit_edge, %for.cond2.preheader.i.i.mlx5e_ptp_close_queues.exit_crit_edge, %mlx5e_ptp_close_txqsqs.exit.i.mlx5e_ptp_close_queues.exit_crit_edge, %if.then6.i.mlx5e_ptp_close_queues.exit_crit_edge, %if.end.i.mlx5e_ptp_close_queues.exit_crit_edge
  %napi = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 2
  tail call void @__netif_napi_del(ptr noundef %napi) #13
  tail call void @synchronize_net() #13
  tail call void @kvfree(ptr noundef %c) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ptp_activate_channel(ptr noundef %c) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 2
  tail call void @napi_enable(ptr noundef %napi) #13
  %state = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %num_tc = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 6
  %2 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp19.not = icmp eq i8 %3, 0
  br i1 %cmp19.not, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tc.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %c, i32 0, i32 %tc.020
  tail call void @mlx5e_activate_txqsq(ptr noundef %arrayidx) #13
  %inc = add nuw nsw i32 %tc.020, 1
  %4 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_tc, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %priv = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 9
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %call7 = tail call fastcc i32 @mlx5e_ptp_rx_set_fs(ptr noundef %10)
  %rq = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 1
  tail call void @mlx5e_activate_rq(ptr noundef %rq) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_txqsq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_ptp_rx_set_fs(ptr noundef %priv) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_res = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_res, align 4
  %call = tail call i32 @mlx5e_rx_res_get_tirn_ptp(ptr noundef %1) #13
  %ptp_fs1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 13
  %2 = ptrtoint ptr %ptp_fs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp_fs1, align 4
  %valid = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlx5e_fs_tt_redirect_udp_create(ptr noundef %priv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @mlx5e_fs_tt_redirect_udp_add_rule(ptr noundef %priv, i32 noundef 2, i32 noundef %call, i16 noundef zeroext 319) #13
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call6 to i32
  br label %out_destroy_fs_udp

if.end10:                                         ; preds = %if.end5
  %udp_v4_rule = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %udp_v4_rule to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %udp_v4_rule, align 4
  %call11 = tail call ptr @mlx5e_fs_tt_redirect_udp_add_rule(ptr noundef %priv, i32 noundef 3, i32 noundef %call, i16 noundef zeroext 319) #13
  %cmp.i57 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %call11 to i32
  br label %out_destroy_udp_v4_rule

if.end15:                                         ; preds = %if.end10
  %udp_v6_rule = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %udp_v6_rule to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %udp_v6_rule, align 4
  %call16 = tail call i32 @mlx5e_fs_tt_redirect_any_create(ptr noundef %priv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_destroy_udp_v6_rule_crit_edge

if.end15.out_destroy_udp_v6_rule_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_destroy_udp_v6_rule

if.end19:                                         ; preds = %if.end15
  %call20 = tail call ptr @mlx5e_fs_tt_redirect_any_add_rule(ptr noundef %priv, i32 noundef %call, i16 noundef zeroext -30473) #13
  %cmp.i58 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %call20 to i32
  tail call void @mlx5e_fs_tt_redirect_any_destroy(ptr noundef %priv) #13
  br label %out_destroy_udp_v6_rule

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call20, ptr %3, align 4
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %valid, align 4
  br label %cleanup

out_destroy_udp_v6_rule:                          ; preds = %if.then22, %if.end15.out_destroy_udp_v6_rule_crit_edge
  %err.0 = phi i32 [ %call16, %if.end15.out_destroy_udp_v6_rule_crit_edge ], [ %10, %if.then22 ]
  %13 = ptrtoint ptr %udp_v6_rule to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udp_v6_rule, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %14) #13
  br label %out_destroy_udp_v4_rule

out_destroy_udp_v4_rule:                          ; preds = %out_destroy_udp_v6_rule, %if.then13
  %err.1 = phi i32 [ %8, %if.then13 ], [ %err.0, %out_destroy_udp_v6_rule ]
  %15 = ptrtoint ptr %udp_v4_rule to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_v4_rule, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %16) #13
  br label %out_destroy_fs_udp

out_destroy_fs_udp:                               ; preds = %out_destroy_udp_v4_rule, %if.then8
  %err.2 = phi i32 [ %6, %if.then8 ], [ %err.1, %out_destroy_udp_v4_rule ]
  tail call void @mlx5e_fs_tt_redirect_udp_destroy(ptr noundef %priv) #13
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_fs_udp, %if.end24, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %err.2, %out_destroy_fs_udp ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_activate_rq(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ptp_deactivate_channel(ptr noundef %c) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %rq = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 1
  tail call void @mlx5e_deactivate_rq(ptr noundef %rq) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %and1.i15 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i15)
  %tobool4.not = icmp eq i32 %and1.i15, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %for.cond.preheader

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

for.cond.preheader:                               ; preds = %if.end
  %num_tc = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 6
  %5 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp17.not = icmp eq i8 %6, 0
  br i1 %cmp17.not, label %for.cond.preheader.if.end7_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end7_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tc.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x %struct.mlx5e_ptpsq], ptr %c, i32 0, i32 %tc.018
  tail call void @mlx5e_deactivate_txqsq(ptr noundef %arrayidx) #13
  %inc = add nuw nsw i32 %tc.018, 1
  %7 = ptrtoint ptr %num_tc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_tc, align 4
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end7_crit_edge

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end7:                                          ; preds = %for.body.if.end7_crit_edge, %for.cond.preheader.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %napi = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %napi) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_rq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_deactivate_txqsq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_ptp_get_rqn(ptr noundef %c, ptr nocapture noundef writeonly %rqn) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %c, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 12
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %rqn2 = getelementptr inbounds %struct.mlx5e_ptp, ptr %c, i32 0, i32 1, i32 30
  %3 = ptrtoint ptr %rqn2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rqn2, align 4
  %5 = ptrtoint ptr %rqn to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rqn, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ptp_alloc_rx_fs(ptr nocapture noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 4
  %features = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #17
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ptp_fs4 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 13
  %5 = ptrtoint ptr %ptp_fs4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %ptp_fs4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ptp_free_rx_fs(ptr noundef %priv) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 4
  %features = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptp_fs1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 13
  %4 = ptrtoint ptr %ptp_fs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_fs1, align 4
  %valid.i = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.mlx5e_ptp_rx_unset_fs.exit_crit_edge, label %if.end.i

if.end.mlx5e_ptp_rx_unset_fs.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_rx_unset_fs.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %9) #13
  tail call void @mlx5e_fs_tt_redirect_any_destroy(ptr noundef %priv) #13
  %udp_v6_rule.i = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %udp_v6_rule.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udp_v6_rule.i, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %11) #13
  %udp_v4_rule.i = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %udp_v4_rule.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udp_v4_rule.i, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %13) #13
  tail call void @mlx5e_fs_tt_redirect_udp_destroy(ptr noundef %priv) #13
  %14 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %valid.i, align 4
  br label %mlx5e_ptp_rx_unset_fs.exit

mlx5e_ptp_rx_unset_fs.exit:                       ; preds = %if.end.i, %if.end.mlx5e_ptp_rx_unset_fs.exit_crit_edge
  tail call void @kfree(ptr noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_ptp_rx_unset_fs.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ptp_rx_manage_fs(ptr noundef %priv, i1 noundef zeroext %set) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %ptp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp, align 4
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %2 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %profile, align 4
  %features = getelementptr inbounds %struct.mlx5e_profile, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %features, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool1.not = icmp eq i32 %and1.i, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool6.not = icmp eq ptr %1, null
  br i1 %set, label %if.then5, label %if.end51

if.then5:                                         ; preds = %if.end3
  br i1 %tobool6.not, label %if.then5.land.end_crit_edge, label %lor.lhs.false

if.then5.land.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

lor.lhs.false:                                    ; preds = %if.then5
  %state7 = getelementptr inbounds %struct.mlx5e_ptp, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state7, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  br i1 %tobool9.not, label %lor.lhs.false.land.end_crit_edge, label %if.end49

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false.land.end_crit_edge, %if.then5.land.end_crit_edge
  %.b128 = load i1, ptr @mlx5e_ptp_rx_manage_fs.__already_done, align 1
  br i1 %.b128, label %land.end.cleanup_crit_edge, label %if.then16, !prof !51

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then16:                                        ; preds = %land.end
  store i1 true, ptr @mlx5e_ptp_rx_manage_fs.__already_done, align 1
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.then16.netdev_name.exit_crit_edge, label %lor.lhs.false.i

if.then16.netdev_name.exit_crit_edge:             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @strchr(ptr noundef %12, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %12, ptr @.str.9
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %if.then16.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.9, %if.then16.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call28 = tail call fastcc ptr @netdev_reg_state(ptr noundef %12)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 805, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i, ptr noundef nonnull %call28) #13
  br label %cleanup

if.end49:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call fastcc i32 @mlx5e_ptp_rx_set_fs(ptr noundef %priv)
  br label %cleanup

if.end51:                                         ; preds = %if.end3
  br i1 %tobool6.not, label %if.end51.if.end110_crit_edge, label %land.lhs.true

if.end51.if.end110_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end51
  %state53 = getelementptr inbounds %struct.mlx5e_ptp, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %state53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state53, align 4
  %17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool56.not = icmp eq i32 %17, 0
  br i1 %tobool56.not, label %land.lhs.true.if.end110_crit_edge, label %land.end64

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end110

land.end64:                                       ; preds = %land.lhs.true
  %.b126127 = load i1, ptr @mlx5e_ptp_rx_manage_fs.__already_done.2, align 1
  br i1 %.b126127, label %land.end64.cleanup_crit_edge, label %if.then71, !prof !51

land.end64.cleanup_crit_edge:                     ; preds = %land.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then71:                                        ; preds = %land.end64
  store i1 true, ptr @mlx5e_ptp_rx_manage_fs.__already_done.2, align 1
  %netdev85 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %18 = ptrtoint ptr %netdev85 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev85, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i132 = icmp eq i8 %21, 0
  br i1 %tobool.not.i132, label %if.then71.netdev_name.exit138_crit_edge, label %lor.lhs.false.i136

if.then71.netdev_name.exit138_crit_edge:          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit138

lor.lhs.false.i136:                               ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #15
  %call.i133 = tail call ptr @strchr(ptr noundef %19, i32 noundef 37) #13
  %tobool2.not.i134 = icmp eq ptr %call.i133, null
  %spec.select.i135 = select i1 %tobool2.not.i134, ptr %19, ptr @.str.9
  br label %netdev_name.exit138

netdev_name.exit138:                              ; preds = %lor.lhs.false.i136, %if.then71.netdev_name.exit138_crit_edge
  %retval.0.i137 = phi ptr [ @.str.9, %if.then71.netdev_name.exit138_crit_edge ], [ %spec.select.i135, %lor.lhs.false.i136 ]
  %call88 = tail call fastcc ptr @netdev_reg_state(ptr noundef %19)
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 812, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i137, ptr noundef nonnull %call88) #13
  br label %cleanup

if.end110:                                        ; preds = %land.lhs.true.if.end110_crit_edge, %if.end51.if.end110_crit_edge
  %ptp_fs1.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 13
  %22 = ptrtoint ptr %ptp_fs1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ptp_fs1.i, align 4
  %valid.i = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %valid.i, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i139 = icmp eq i8 %25, 0
  br i1 %tobool.not.i139, label %if.end110.cleanup_crit_edge, label %if.end.i

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %27) #13
  tail call void @mlx5e_fs_tt_redirect_any_destroy(ptr noundef %priv) #13
  %udp_v6_rule.i = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %udp_v6_rule.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udp_v6_rule.i, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %29) #13
  %udp_v4_rule.i = getelementptr inbounds %struct.mlx5e_ptp_fs, ptr %23, i32 0, i32 1
  %30 = ptrtoint ptr %udp_v4_rule.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %udp_v4_rule.i, align 4
  tail call void @mlx5e_fs_tt_redirect_del_rule(ptr noundef %31) #13
  tail call void @mlx5e_fs_tt_redirect_udp_destroy(ptr noundef %priv) #13
  %32 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %valid.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end110.cleanup_crit_edge, %netdev_name.exit138, %land.end64.cleanup_crit_edge, %if.end49, %netdev_name.exit, %land.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call50, %if.end49 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %netdev_name.exit ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %netdev_name.exit138 ], [ -22, %land.end64.cleanup_crit_edge ], [ 0, %if.end110.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc nonnull ptr @netdev_reg_state(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %reg_state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 121
  %0 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load45 = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45)
  %1 = icmp ult i8 %bf.load45, 6
  br i1 %1, label %switch.lookup, label %land.end

land.end:                                         ; preds = %entry
  %.b46 = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46, label %land.end.return_crit_edge, label %if.then, !prof !51

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21 = zext i8 %bf.load45 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef %dev, i32 noundef %bf.cast21) #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = sext i8 %bf.load45 to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netdev_reg_state, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %if.then, %land.end.return_crit_edge
  %retval.0 = phi ptr [ @.str.18, %if.then ], [ @.str.18, %land.end.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_poll_tx_cq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_poll_rx_cq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_consume_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_sq_param_common(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_build_tx_cq_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_init_rq_type_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_build_rq_param(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_cq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_cq(ptr noundef, [2 x i32], ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_ptp_close_txqsq(ptr noundef %ptpsq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ptpsq, i32 0, i32 27
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 8
  %skb_fifo = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %ptpsq, i32 0, i32 4
  %pc.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %ptpsq, i32 0, i32 4, i32 1
  %cc.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %ptpsq, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pc.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 2
  %6 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %9)
  %cmp.not5.i.i = icmp eq i16 %5, %9
  br i1 %cmp.not5.i.i, label %entry.mlx5e_ptp_free_traffic_db.exit_crit_edge, label %while.body.lr.ph.i.i

entry.mlx5e_ptp_free_traffic_db.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_free_traffic_db.exit

while.body.lr.ph.i.i:                             ; preds = %entry
  %mask.i.i.i.i = getelementptr inbounds %struct.mlx5e_ptpsq, ptr %ptpsq, i32 0, i32 4, i32 3
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %10 = phi i16 [ %9, %while.body.lr.ph.i.i ], [ %26, %while.body.i.i.while.body.i.i_crit_edge ]
  %11 = phi ptr [ %7, %while.body.lr.ph.i.i ], [ %24, %while.body.i.i.while.body.i.i_crit_edge ]
  %inc.i.i.i = add i16 %10, 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %inc.i.i.i, ptr %11, align 2
  %13 = ptrtoint ptr %skb_fifo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb_fifo, align 4
  %15 = ptrtoint ptr %mask.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mask.i.i.i.i, align 4
  %and4.i.i.i.i = and i16 %16, %10
  %and.i.i.i.i = zext i16 %and4.i.i.i.i to i32
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %14, i32 %and.i.i.i.i
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %18, i32 noundef 1) #13
  %19 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pc.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %20, align 2
  %23 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cc.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 2
  %cmp.not.i.i = icmp eq i16 %22, %26
  br i1 %cmp.not.i.i, label %while.body.i.i.mlx5e_ptp_free_traffic_db.exit_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i.i

while.body.i.i.mlx5e_ptp_free_traffic_db.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %mlx5e_ptp_free_traffic_db.exit

mlx5e_ptp_free_traffic_db.exit:                   ; preds = %while.body.i.i.mlx5e_ptp_free_traffic_db.exit_crit_edge, %entry.mlx5e_ptp_free_traffic_db.exit_crit_edge
  %27 = ptrtoint ptr %skb_fifo to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb_fifo, align 4
  tail call void @kvfree(ptr noundef %28) #13
  %recover_work = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ptpsq, i32 0, i32 33
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %recover_work) #13
  %sqn = getelementptr inbounds %struct.mlx5e_txqsq, ptr %ptpsq, i32 0, i32 17
  %29 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sqn, align 4
  tail call void @mlx5_core_destroy_sq(ptr noundef %1, i32 noundef %30) #13
  tail call void @mlx5e_free_txqsq_descs(ptr noundef %ptpsq) #13
  tail call void @mlx5e_free_txqsq(ptr noundef %ptpsq) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_create_sq_rdy(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_free_txqsq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tx_err_cqe_work(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_wq_cyc_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_alloc_txqsq_db(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_wq_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @mlx5_real_time_cyc2time(ptr nocapture noundef readnone %clock, i64 noundef %timestamp) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %shr = lshr i64 %timestamp, 32
  %mul = mul nuw nsw i64 %shr, 1000000000
  %and = and i64 %timestamp, 4294967295
  %add = add nuw nsw i64 %mul, %and
  ret i64 %add
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlx5_timecounter_cyc2time(ptr noundef %clock, i64 noundef %timestamp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %lock = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 1
  %dep_map.c48.i.i = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 1, i32 0, i32 0, i32 1
  %tc = getelementptr inbounds %struct.mlx5_clock, ptr %clock, i32 0, i32 6, i32 1
  br label %do.body

do.body:                                          ; preds = %read_seqbegin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !60
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @trace_hardirqs_off() #13
  %1 = tail call ptr @llvm.returnaddress(i32 0) #13
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #13
  tail call void @trace_hardirqs_on() #13
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = tail call ptr @llvm.returnaddress(i32 0) #13
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #13
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #13
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !61
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !53

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #13, !srcloc !62
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !64
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %lock, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %9, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !65
  %call2 = tail call i64 @timecounter_cyc2time(ptr noundef %tc, i64 noundef %timestamp) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !66
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %lock, align 4
  %cmp.i.i.i.not = icmp eq i32 %11, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %read_seqbegin.exit.do.body_crit_edge

read_seqbegin.exit.do.body_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.end:                                           ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #15
  ret i64 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_free_txqsq_descs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_core_destroy_sq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_open_rq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rq_set_handlers(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_close_rq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_ptp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_fs_tt_redirect_udp_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_fs_tt_redirect_udp_add_rule(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_fs_tt_redirect_any_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_fs_tt_redirect_any_add_rule(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_fs_tt_redirect_any_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_fs_tt_redirect_del_rule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_fs_tt_redirect_udp_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38}
!llvm.named.register.sp = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/ptp.c", i32 805, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/ptp.c", i32 812, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 450, i32 3}
!16 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlx5e_ptp_alloc_txqsq.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/ptp.c", i32 211, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!40 = !{!"sp"}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i8 0, i8 2}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2149668302}
!53 = !{!"branch_weights", i32 1, i32 2000}
!54 = !{i64 2159727243}
!55 = !{i64 2159978618}
!56 = !{!"branch_weights", i32 2002, i32 2000}
!57 = !{i64 2158870974}
!58 = !{i64 6607596}
!59 = !{i64 2149668568}
!60 = !{i64 965977, i64 966038}
!61 = !{i64 968709}
!62 = !{i64 968994}
!63 = !{i64 2150435106}
!64 = !{i64 2150434948}
!65 = !{i64 2150435276}
!66 = !{i64 2150420347}
