; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_stats.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_rmon_hist_range = type { i16, i16 }
%struct.mlx5e_stats_grp = type { i16, ptr, ptr, ptr, ptr }
%struct.counter_desc = type { [32 x i8], i32 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.223, %struct.anon.237, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.223 = type { %struct.anon.230 }
%struct.anon.230 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.232 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.231, i64, i32, [28 x i8] }
%union.anon.231 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.232 = type { %struct.anon.233 }
%struct.anon.233 = type { %struct.anon.234, [0 x %struct.mlx5_mtt] }
%struct.anon.234 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.237 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.220, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.220 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.226, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.229, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.226 = type { %struct.anon.227 }
%struct.anon.227 = type { i8, i8, i16, i32 }
%union.anon.229 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.238, i32 }
%union.anon.238 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.221, i32, i32 }
%union.anon.221 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.225 }
%union.anon.225 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.256, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.256 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.257 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.257 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.258 }
%struct.anon.258 = type { i8, i8 }
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
%struct.mlx5e_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.208, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.210, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.208 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.209] }
%struct.anon.209 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.190 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.190 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.210 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.ethtool_pause_stats = type { i64, i64 }
%struct.ethtool_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_eth_ctrl_stats = type { i64, i64, i64 }
%struct.ethtool_rmon_stats = type { i64, i64, i64, i64, [10 x i64], [10 x i64] }
%struct.ethtool_fec_stats = type { %struct.ethtool_fec_stat, %struct.ethtool_fec_stat, %struct.ethtool_fec_stat }
%struct.ethtool_fec_stat = type { i64, [8 x i64] }
%struct.mlx5_pme_stats = type { [5 x i64], [13 x i64] }

@mlx5e_rmon_ranges = internal constant { [11 x %struct.ethtool_rmon_hist_range], [52 x i8] } { [11 x %struct.ethtool_rmon_hist_range] [%struct.ethtool_rmon_hist_range { i16 0, i16 64 }, %struct.ethtool_rmon_hist_range { i16 65, i16 127 }, %struct.ethtool_rmon_hist_range { i16 128, i16 255 }, %struct.ethtool_rmon_hist_range { i16 256, i16 511 }, %struct.ethtool_rmon_hist_range { i16 512, i16 1023 }, %struct.ethtool_rmon_hist_range { i16 1024, i16 1518 }, %struct.ethtool_rmon_hist_range { i16 1519, i16 2047 }, %struct.ethtool_rmon_hist_range { i16 2048, i16 4095 }, %struct.ethtool_rmon_hist_range { i16 4096, i16 8191 }, %struct.ethtool_rmon_hist_range { i16 8192, i16 10239 }, %struct.ethtool_rmon_hist_range zeroinitializer], [52 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_sw = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_sw_num_stats, ptr @mlx5e_stats_grp_sw_fill_strings, ptr @mlx5e_stats_grp_sw_fill_stats, ptr @mlx5e_stats_grp_sw_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_qcnt = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 2, ptr @mlx5e_stats_grp_qcnt_num_stats, ptr @mlx5e_stats_grp_qcnt_fill_strings, ptr @mlx5e_stats_grp_qcnt_fill_stats, ptr @mlx5e_stats_grp_qcnt_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_vnic_env = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_vnic_env_num_stats, ptr @mlx5e_stats_grp_vnic_env_fill_strings, ptr @mlx5e_stats_grp_vnic_env_fill_stats, ptr @mlx5e_stats_grp_vnic_env_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_vport = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 2, ptr @mlx5e_stats_grp_vport_num_stats, ptr @mlx5e_stats_grp_vport_fill_strings, ptr @mlx5e_stats_grp_vport_fill_stats, ptr @mlx5e_stats_grp_vport_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_802_3 = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 2, ptr @mlx5e_stats_grp_802_3_num_stats, ptr @mlx5e_stats_grp_802_3_fill_strings, ptr @mlx5e_stats_grp_802_3_fill_stats, ptr @mlx5e_stats_grp_802_3_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_2863 = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_2863_num_stats, ptr @mlx5e_stats_grp_2863_fill_strings, ptr @mlx5e_stats_grp_2863_fill_stats, ptr @mlx5e_stats_grp_2863_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_2819 = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_2819_num_stats, ptr @mlx5e_stats_grp_2819_fill_strings, ptr @mlx5e_stats_grp_2819_fill_stats, ptr @mlx5e_stats_grp_2819_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_phy = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_phy_num_stats, ptr @mlx5e_stats_grp_phy_fill_strings, ptr @mlx5e_stats_grp_phy_fill_stats, ptr @mlx5e_stats_grp_phy_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_pcie = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_pcie_num_stats, ptr @mlx5e_stats_grp_pcie_fill_strings, ptr @mlx5e_stats_grp_pcie_fill_stats, ptr @mlx5e_stats_grp_pcie_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_per_prio = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_per_prio_num_stats, ptr @mlx5e_stats_grp_per_prio_fill_strings, ptr @mlx5e_stats_grp_per_prio_fill_stats, ptr @mlx5e_stats_grp_per_prio_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_pme = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_pme_num_stats, ptr @mlx5e_stats_grp_pme_fill_strings, ptr @mlx5e_stats_grp_pme_fill_stats, ptr @mlx5e_stats_grp_pme_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_channels = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_channels_num_stats, ptr @mlx5e_stats_grp_channels_fill_strings, ptr @mlx5e_stats_grp_channels_fill_stats, ptr @mlx5e_stats_grp_channels_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_per_port_buff_congest = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_per_port_buff_congest_num_stats, ptr @mlx5e_stats_grp_per_port_buff_congest_fill_strings, ptr @mlx5e_stats_grp_per_port_buff_congest_fill_stats, ptr @mlx5e_stats_grp_per_port_buff_congest_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_eth_ext = dso_local constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_eth_ext_num_stats, ptr @mlx5e_stats_grp_eth_ext_fill_strings, ptr @mlx5e_stats_grp_eth_ext_fill_stats, ptr @mlx5e_stats_grp_eth_ext_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_ipsec_sw = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_ipsec_hw = external dso_local constant %struct.mlx5e_stats_grp, align 4
@mlx5e_stats_grp_tls = internal constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_tls_num_stats, ptr @mlx5e_stats_grp_tls_fill_strings, ptr @mlx5e_stats_grp_tls_fill_stats, ptr @mlx5e_stats_grp_tls_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_ptp = internal constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_ptp_num_stats, ptr @mlx5e_stats_grp_ptp_fill_strings, ptr @mlx5e_stats_grp_ptp_fill_stats, ptr @mlx5e_stats_grp_ptp_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_stats_grp_qos = internal constant { %struct.mlx5e_stats_grp, [44 x i8] } { %struct.mlx5e_stats_grp { i16 0, ptr @mlx5e_stats_grp_qos_num_stats, ptr @mlx5e_stats_grp_qos_fill_strings, ptr @mlx5e_stats_grp_qos_fill_stats, ptr @mlx5e_stats_grp_qos_update_stats }, [44 x i8] zeroinitializer }, align 32
@mlx5e_nic_stats_grps = dso_local constant { [19 x ptr], [52 x i8] } { [19 x ptr] [ptr @mlx5e_stats_grp_sw, ptr @mlx5e_stats_grp_qcnt, ptr @mlx5e_stats_grp_vnic_env, ptr @mlx5e_stats_grp_vport, ptr @mlx5e_stats_grp_802_3, ptr @mlx5e_stats_grp_2863, ptr @mlx5e_stats_grp_2819, ptr @mlx5e_stats_grp_phy, ptr @mlx5e_stats_grp_eth_ext, ptr @mlx5e_stats_grp_pcie, ptr @mlx5e_stats_grp_per_prio, ptr @mlx5e_stats_grp_pme, ptr @mlx5e_stats_grp_ipsec_sw, ptr @mlx5e_stats_grp_ipsec_hw, ptr @mlx5e_stats_grp_tls, ptr @mlx5e_stats_grp_channels, ptr @mlx5e_stats_grp_per_port_buff_congest, ptr @mlx5e_stats_grp_ptp, ptr @mlx5e_stats_grp_qos], [52 x i8] zeroinitializer }, align 32
@sw_stats_desc = internal constant { [118 x %struct.counter_desc], [1064 x i8] } { [118 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"tx_tso_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"tx_tso_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"tx_tso_inner_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"tx_tso_inner_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"tx_added_vlan_packets\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"tx_nop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"tx_mpwqe_blks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"tx_mpwqe_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"tx_tls_encrypted_packets\00\00\00\00\00\00\00\00", i32 600 }, %struct.counter_desc { [32 x i8] c"tx_tls_encrypted_bytes\00\00\00\00\00\00\00\00\00\00", i32 608 }, %struct.counter_desc { [32 x i8] c"tx_tls_ooo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 616 }, %struct.counter_desc { [32 x i8] c"tx_tls_dump_packets\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 624 }, %struct.counter_desc { [32 x i8] c"tx_tls_dump_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 632 }, %struct.counter_desc { [32 x i8] c"tx_tls_resync_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 640 }, %struct.counter_desc { [32 x i8] c"tx_tls_skip_no_sync_data\00\00\00\00\00\00\00\00", i32 648 }, %struct.counter_desc { [32 x i8] c"tx_tls_drop_no_sync_data\00\00\00\00\00\00\00\00", i32 656 }, %struct.counter_desc { [32 x i8] c"tx_tls_drop_bypass_req\00\00\00\00\00\00\00\00\00\00", i32 664 }, %struct.counter_desc { [32 x i8] c"rx_lro_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"rx_lro_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.counter_desc { [32 x i8] c"rx_gro_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"rx_gro_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.counter_desc { [32 x i8] c"rx_gro_skbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"rx_gro_match_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"rx_gro_large_hds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"rx_ecn_mark\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"rx_removed_vlan_packets\00\00\00\00\00\00\00\00\00", i32 168 }, %struct.counter_desc { [32 x i8] c"rx_csum_unnecessary\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"rx_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"rx_csum_complete\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"rx_csum_complete_tail\00\00\00\00\00\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"rx_csum_complete_tail_slow\00\00\00\00\00\00", i32 208 }, %struct.counter_desc { [32 x i8] c"rx_csum_unnecessary_inner\00\00\00\00\00\00\00", i32 216 }, %struct.counter_desc { [32 x i8] c"rx_xdp_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 224 }, %struct.counter_desc { [32 x i8] c"rx_xdp_redirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 232 }, %struct.counter_desc { [32 x i8] c"rx_xdp_tx_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.counter_desc { [32 x i8] c"rx_xdp_tx_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 248 }, %struct.counter_desc { [32 x i8] c"rx_xdp_tx_inlnw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.counter_desc { [32 x i8] c"rx_xdp_tx_nops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.counter_desc { [32 x i8] c"rx_xdp_tx_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272 }, %struct.counter_desc { [32 x i8] c"rx_xdp_tx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 280 }, %struct.counter_desc { [32 x i8] c"rx_xdp_tx_cqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 288 }, %struct.counter_desc { [32 x i8] c"tx_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 296 }, %struct.counter_desc { [32 x i8] c"tx_csum_partial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 304 }, %struct.counter_desc { [32 x i8] c"tx_csum_partial_inner\00\00\00\00\00\00\00\00\00\00\00", i32 312 }, %struct.counter_desc { [32 x i8] c"tx_queue_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 320 }, %struct.counter_desc { [32 x i8] c"tx_queue_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 328 }, %struct.counter_desc { [32 x i8] c"tx_xmit_more\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 336 }, %struct.counter_desc { [32 x i8] c"tx_recover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 344 }, %struct.counter_desc { [32 x i8] c"tx_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 352 }, %struct.counter_desc { [32 x i8] c"tx_queue_wake\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 360 }, %struct.counter_desc { [32 x i8] c"tx_cqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 368 }, %struct.counter_desc { [32 x i8] c"tx_xdp_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 376 }, %struct.counter_desc { [32 x i8] c"tx_xdp_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 384 }, %struct.counter_desc { [32 x i8] c"tx_xdp_inlnw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 392 }, %struct.counter_desc { [32 x i8] c"tx_xdp_nops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 400 }, %struct.counter_desc { [32 x i8] c"tx_xdp_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 408 }, %struct.counter_desc { [32 x i8] c"tx_xdp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 416 }, %struct.counter_desc { [32 x i8] c"tx_xdp_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 424 }, %struct.counter_desc { [32 x i8] c"rx_wqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 432 }, %struct.counter_desc { [32 x i8] c"rx_mpwqe_filler_cqes\00\00\00\00\00\00\00\00\00\00\00\00", i32 440 }, %struct.counter_desc { [32 x i8] c"rx_mpwqe_filler_strides\00\00\00\00\00\00\00\00\00", i32 448 }, %struct.counter_desc { [32 x i8] c"rx_oversize_pkts_sw_drop\00\00\00\00\00\00\00\00", i32 456 }, %struct.counter_desc { [32 x i8] c"rx_buff_alloc_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 464 }, %struct.counter_desc { [32 x i8] c"rx_cqe_compress_blks\00\00\00\00\00\00\00\00\00\00\00\00", i32 472 }, %struct.counter_desc { [32 x i8] c"rx_cqe_compress_pkts\00\00\00\00\00\00\00\00\00\00\00\00", i32 480 }, %struct.counter_desc { [32 x i8] c"rx_cache_reuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 488 }, %struct.counter_desc { [32 x i8] c"rx_cache_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 496 }, %struct.counter_desc { [32 x i8] c"rx_cache_empty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 504 }, %struct.counter_desc { [32 x i8] c"rx_cache_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 512 }, %struct.counter_desc { [32 x i8] c"rx_cache_waive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 520 }, %struct.counter_desc { [32 x i8] c"rx_congst_umr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 528 }, %struct.counter_desc { [32 x i8] c"rx_arfs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 536 }, %struct.counter_desc { [32 x i8] c"rx_recover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 544 }, %struct.counter_desc { [32 x i8] c"rx_tls_decrypted_packets\00\00\00\00\00\00\00\00", i32 672 }, %struct.counter_desc { [32 x i8] c"rx_tls_decrypted_bytes\00\00\00\00\00\00\00\00\00\00", i32 680 }, %struct.counter_desc { [32 x i8] c"rx_tls_resync_req_pkt\00\00\00\00\00\00\00\00\00\00\00", i32 688 }, %struct.counter_desc { [32 x i8] c"rx_tls_resync_req_start\00\00\00\00\00\00\00\00\00", i32 696 }, %struct.counter_desc { [32 x i8] c"rx_tls_resync_req_end\00\00\00\00\00\00\00\00\00\00\00", i32 704 }, %struct.counter_desc { [32 x i8] c"rx_tls_resync_req_skip\00\00\00\00\00\00\00\00\00\00", i32 712 }, %struct.counter_desc { [32 x i8] c"rx_tls_resync_res_ok\00\00\00\00\00\00\00\00\00\00\00\00", i32 720 }, %struct.counter_desc { [32 x i8] c"rx_tls_resync_res_retry\00\00\00\00\00\00\00\00\00", i32 728 }, %struct.counter_desc { [32 x i8] c"rx_tls_resync_res_skip\00\00\00\00\00\00\00\00\00\00", i32 736 }, %struct.counter_desc { [32 x i8] c"rx_tls_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 744 }, %struct.counter_desc { [32 x i8] c"ch_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 552 }, %struct.counter_desc { [32 x i8] c"ch_poll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 560 }, %struct.counter_desc { [32 x i8] c"ch_arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 568 }, %struct.counter_desc { [32 x i8] c"ch_aff_change\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 576 }, %struct.counter_desc { [32 x i8] c"ch_force_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 584 }, %struct.counter_desc { [32 x i8] c"ch_eq_rearm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 592 }, %struct.counter_desc { [32 x i8] c"rx_xsk_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 752 }, %struct.counter_desc { [32 x i8] c"rx_xsk_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 760 }, %struct.counter_desc { [32 x i8] c"rx_xsk_csum_complete\00\00\00\00\00\00\00\00\00\00\00\00", i32 768 }, %struct.counter_desc { [32 x i8] c"rx_xsk_csum_unnecessary\00\00\00\00\00\00\00\00\00", i32 776 }, %struct.counter_desc { [32 x i8] c"rx_xsk_csum_unnecessary_inner\00\00\00", i32 784 }, %struct.counter_desc { [32 x i8] c"rx_xsk_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 792 }, %struct.counter_desc { [32 x i8] c"rx_xsk_ecn_mark\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 800 }, %struct.counter_desc { [32 x i8] c"rx_xsk_removed_vlan_packets\00\00\00\00\00", i32 808 }, %struct.counter_desc { [32 x i8] c"rx_xsk_xdp_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 816 }, %struct.counter_desc { [32 x i8] c"rx_xsk_xdp_redirect\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 824 }, %struct.counter_desc { [32 x i8] c"rx_xsk_wqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 832 }, %struct.counter_desc { [32 x i8] c"rx_xsk_mpwqe_filler_cqes\00\00\00\00\00\00\00\00", i32 840 }, %struct.counter_desc { [32 x i8] c"rx_xsk_mpwqe_filler_strides\00\00\00\00\00", i32 848 }, %struct.counter_desc { [32 x i8] c"rx_xsk_oversize_pkts_sw_drop\00\00\00\00", i32 856 }, %struct.counter_desc { [32 x i8] c"rx_xsk_buff_alloc_err\00\00\00\00\00\00\00\00\00\00\00", i32 864 }, %struct.counter_desc { [32 x i8] c"rx_xsk_cqe_compress_blks\00\00\00\00\00\00\00\00", i32 872 }, %struct.counter_desc { [32 x i8] c"rx_xsk_cqe_compress_pkts\00\00\00\00\00\00\00\00", i32 880 }, %struct.counter_desc { [32 x i8] c"rx_xsk_congst_umr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 888 }, %struct.counter_desc { [32 x i8] c"rx_xsk_arfs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 896 }, %struct.counter_desc { [32 x i8] c"tx_xsk_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 904 }, %struct.counter_desc { [32 x i8] c"tx_xsk_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 912 }, %struct.counter_desc { [32 x i8] c"tx_xsk_inlnw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 920 }, %struct.counter_desc { [32 x i8] c"tx_xsk_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 928 }, %struct.counter_desc { [32 x i8] c"tx_xsk_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 936 }, %struct.counter_desc { [32 x i8] c"tx_xsk_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 944 }], [1064 x i8] zeroinitializer }, align 32
@q_stats_desc = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_out_of_buffer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }], [60 x i8] zeroinitializer }, align 32
@drop_rq_stats_desc = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_if_down_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }], [60 x i8] zeroinitializer }, align 32
@vnic_env_stats_steer_desc = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_steer_missed_packets\00\00\00\00\00\00\00\00\00", i32 32 }], [60 x i8] zeroinitializer }, align 32
@vnic_env_stats_dev_oob_desc = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"dev_internal_queue_oob\00\00\00\00\00\00\00\00\00\00", i32 76 }], [60 x i8] zeroinitializer }, align 32
@vport_stats_desc = internal constant { [20 x %struct.counter_desc], [176 x i8] } { [20 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_vport_unicast_packets\00\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"rx_vport_unicast_bytes\00\00\00\00\00\00\00\00\00\00", i32 152 }, %struct.counter_desc { [32 x i8] c"tx_vport_unicast_packets\00\00\00\00\00\00\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"tx_vport_unicast_bytes\00\00\00\00\00\00\00\00\00\00", i32 168 }, %struct.counter_desc { [32 x i8] c"rx_vport_multicast_packets\00\00\00\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"rx_vport_multicast_bytes\00\00\00\00\00\00\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"tx_vport_multicast_packets\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"tx_vport_multicast_bytes\00\00\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"rx_vport_broadcast_packets\00\00\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"rx_vport_broadcast_bytes\00\00\00\00\00\00\00\00", i32 120 }, %struct.counter_desc { [32 x i8] c"tx_vport_broadcast_packets\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"tx_vport_broadcast_bytes\00\00\00\00\00\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"rx_vport_rdma_unicast_packets\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"rx_vport_rdma_unicast_bytes\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"tx_vport_rdma_unicast_packets\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"tx_vport_rdma_unicast_bytes\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"rx_vport_rdma_multicast_packets\00", i32 80 }, %struct.counter_desc { [32 x i8] c"rx_vport_rdma_multicast_bytes\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"tx_vport_rdma_multicast_packets\00", i32 96 }, %struct.counter_desc { [32 x i8] c"tx_vport_rdma_multicast_bytes\00\00\00", i32 104 }], [176 x i8] zeroinitializer }, align 32
@pport_802_3_stats_desc = internal constant { [18 x %struct.counter_desc], [184 x i8] } { [18 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"tx_packets_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"rx_packets_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"rx_crc_errors_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"tx_bytes_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"rx_bytes_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"tx_multicast_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"tx_broadcast_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"rx_multicast_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"rx_broadcast_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"rx_in_range_len_errors_phy\00\00\00\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"rx_out_of_range_len_phy\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"rx_oversize_pkts_phy\00\00\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.counter_desc { [32 x i8] c"rx_symbol_err_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"tx_mac_control_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.counter_desc { [32 x i8] c"rx_mac_control_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"rx_unsupported_op_phy\00\00\00\00\00\00\00\00\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"rx_pause_ctrl_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"tx_pause_ctrl_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 152 }], [184 x i8] zeroinitializer }, align 32
@pport_2863_stats_desc = internal constant { [3 x %struct.counter_desc], [52 x i8] } { [3 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_discards_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"tx_discards_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"tx_errors_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }], [52 x i8] zeroinitializer }, align 32
@pport_2819_stats_desc = internal constant { [13 x %struct.counter_desc], [108 x i8] } { [13 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_undersize_pkts_phy\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"rx_fragments_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"rx_jabbers_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"rx_64_bytes_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"rx_65_to_127_bytes_phy\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.counter_desc { [32 x i8] c"rx_128_to_255_bytes_phy\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"rx_256_to_511_bytes_phy\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.counter_desc { [32 x i8] c"rx_512_to_1023_bytes_phy\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"rx_1024_to_1518_bytes_phy\00\00\00\00\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"rx_1519_to_2047_bytes_phy\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"rx_2048_to_4095_bytes_phy\00\00\00\00\00\00\00", i32 152 }, %struct.counter_desc { [32 x i8] c"rx_4096_to_8191_bytes_phy\00\00\00\00\00\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"rx_8192_to_10239_bytes_phy\00\00\00\00\00\00", i32 168 }], [108 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"link_down_events_phy\00", [43 x i8] zeroinitializer }, align 32
@pport_phy_statistical_stats_desc = internal constant { [2 x %struct.counter_desc], [56 x i8] } { [2 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_pcs_symbol_err_phy\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"rx_corrected_bits_phy\00\00\00\00\00\00\00\00\00\00\00", i32 32 }], [56 x i8] zeroinitializer }, align 32
@pport_phy_statistical_err_lanes_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_err_lane_0_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"rx_err_lane_1_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"rx_err_lane_2_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"rx_err_lane_3_phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }], [48 x i8] zeroinitializer }, align 32
@pcie_perf_stats_desc = internal constant { [2 x %struct.counter_desc], [56 x i8] } { [2 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_pci_signal_integrity\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"tx_pci_signal_integrity\00\00\00\00\00\00\00\00\00", i32 20 }], [56 x i8] zeroinitializer }, align 32
@pcie_perf_stats_desc64 = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"outbound_pci_buffer_overflow\00\00\00\00", i32 48 }], [60 x i8] zeroinitializer }, align 32
@pcie_perf_stall_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"outbound_pci_stalled_rd\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"outbound_pci_stalled_wr\00\00\00\00\00\00\00\00\00", i32 60 }, %struct.counter_desc { [32 x i8] c"outbound_pci_stalled_rd_events\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"outbound_pci_stalled_wr_events\00\00", i32 68 }], [48 x i8] zeroinitializer }, align 32
@pport_per_prio_traffic_stats_desc = internal constant { [5 x %struct.counter_desc], [44 x i8] } { [5 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_prio%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"rx_prio%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"rx_prio%d_discards\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"tx_prio%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"tx_prio%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }], [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"prio%d\00", [25 x i8] zeroinitializer }, align 32
@pport_per_prio_pfc_stats_desc = internal constant { [5 x %struct.counter_desc], [44 x i8] } { [5 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_%s_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"rx_%s_pause_duration\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"tx_%s_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.counter_desc { [32 x i8] c"tx_%s_pause_duration\00\00\00\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"rx_%s_pause_transition\00\00\00\00\00\00\00\00\00\00", i32 120 }], [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"global\00", [25 x i8] zeroinitializer }, align 32
@pport_pfc_stall_stats_desc = internal constant { [2 x %struct.counter_desc], [56 x i8] } { [2 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"tx_pause_storm_warning_events\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"tx_pause_storm_error_events\00\00\00\00\00", i32 144 }], [56 x i8] zeroinitializer }, align 32
@mlx5e_pme_status_desc = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"module_unplug\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }], [60 x i8] zeroinitializer }, align 32
@mlx5e_pme_error_desc = internal constant { [3 x %struct.counter_desc], [52 x i8] } { [3 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"module_bus_stuck\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"module_high_temp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"module_bad_shorted\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }], [52 x i8] zeroinitializer }, align 32
@ch_stats_desc = internal constant { [6 x %struct.counter_desc], [40 x i8] } { [6 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"ch%d_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"ch%d_poll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"ch%d_arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"ch%d_aff_change\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"ch%d_force_irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"ch%d_eq_rearm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }], [40 x i8] zeroinitializer }, align 32
@rq_stats_desc = internal constant { [44 x %struct.counter_desc], [400 x i8] } { [44 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"rx%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"rx%d_csum_complete\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"rx%d_csum_complete_tail\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"rx%d_csum_complete_tail_slow\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"rx%d_csum_unnecessary\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"rx%d_csum_unnecessary_inner\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"rx%d_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_redirect\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 152 }, %struct.counter_desc { [32 x i8] c"rx%d_lro_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"rx%d_lro_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"rx%d_gro_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"rx%d_gro_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"rx%d_gro_skbs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"rx%d_gro_match_packets\00\00\00\00\00\00\00\00\00\00", i32 104 }, %struct.counter_desc { [32 x i8] c"rx%d_gro_large_hds\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"rx%d_ecn_mark\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"rx%d_removed_vlan_packets\00\00\00\00\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"rx%d_wqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"rx%d_mpwqe_filler_cqes\00\00\00\00\00\00\00\00\00\00", i32 168 }, %struct.counter_desc { [32 x i8] c"rx%d_mpwqe_filler_strides\00\00\00\00\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"rx%d_oversize_pkts_sw_drop\00\00\00\00\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"rx%d_buff_alloc_err\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"rx%d_cqe_compress_blks\00\00\00\00\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"rx%d_cqe_compress_pkts\00\00\00\00\00\00\00\00\00\00", i32 208 }, %struct.counter_desc { [32 x i8] c"rx%d_cache_reuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 216 }, %struct.counter_desc { [32 x i8] c"rx%d_cache_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 224 }, %struct.counter_desc { [32 x i8] c"rx%d_cache_empty\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 232 }, %struct.counter_desc { [32 x i8] c"rx%d_cache_busy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.counter_desc { [32 x i8] c"rx%d_cache_waive\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 248 }, %struct.counter_desc { [32 x i8] c"rx%d_congst_umr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.counter_desc { [32 x i8] c"rx%d_arfs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.counter_desc { [32 x i8] c"rx%d_recover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_decrypted_packets\00\00\00\00\00\00", i32 280 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_decrypted_bytes\00\00\00\00\00\00\00\00", i32 288 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_resync_req_pkt\00\00\00\00\00\00\00\00\00", i32 296 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_resync_req_start\00\00\00\00\00\00\00", i32 304 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_resync_req_end\00\00\00\00\00\00\00\00\00", i32 312 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_resync_req_skip\00\00\00\00\00\00\00\00", i32 320 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_resync_res_ok\00\00\00\00\00\00\00\00\00\00", i32 328 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_resync_res_retry\00\00\00\00\00\00\00", i32 336 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_resync_res_skip\00\00\00\00\00\00\00\00", i32 344 }, %struct.counter_desc { [32 x i8] c"rx%d_tls_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 352 }], [400 x i8] zeroinitializer }, align 32
@xskrq_stats_desc = internal constant { [19 x %struct.counter_desc], [180 x i8] } { [19 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx%d_xsk_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_csum_complete\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_csum_unnecessary\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_csum_unnecessary_inner\00", i32 48 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_ecn_mark\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_removed_vlan_packets\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_xdp_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_xdp_redirect\00\00\00\00\00\00\00\00\00\00\00", i32 152 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_wqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_mpwqe_filler_cqes\00\00\00\00\00\00", i32 168 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_mpwqe_filler_strides\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_oversize_pkts_sw_drop\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_buff_alloc_err\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_cqe_compress_blks\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_cqe_compress_pkts\00\00\00\00\00\00", i32 208 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_congst_umr\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.counter_desc { [32 x i8] c"rx%d_xsk_arfs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }], [180 x i8] zeroinitializer }, align 32
@rq_xdpsq_stats_desc = internal constant { [7 x %struct.counter_desc], [36 x i8] } { [7 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx%d_xdp_tx_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_tx_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_tx_inlnw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_tx_nops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_tx_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_tx_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"rx%d_xdp_tx_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }], [36 x i8] zeroinitializer }, align 32
@sq_stats_desc = internal constant { [29 x %struct.counter_desc], [268 x i8] } { [29 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"tx%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"tx%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"tx%d_tso_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"tx%d_tso_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"tx%d_tso_inner_packets\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"tx%d_tso_inner_bytes\00\00\00\00\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"tx%d_csum_partial\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"tx%d_csum_partial_inner\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"tx%d_added_vlan_packets\00\00\00\00\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"tx%d_nop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"tx%d_mpwqe_blks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"tx%d_mpwqe_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_encrypted_packets\00\00\00\00\00\00", i32 104 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_encrypted_bytes\00\00\00\00\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_ooo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_dump_packets\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_dump_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_resync_bytes\00\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_skip_no_sync_data\00\00\00\00\00\00", i32 152 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_drop_no_sync_data\00\00\00\00\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"tx%d_tls_drop_bypass_req\00\00\00\00\00\00\00\00", i32 168 }, %struct.counter_desc { [32 x i8] c"tx%d_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"tx%d_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"tx%d_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"tx%d_xmit_more\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"tx%d_recover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"tx%d_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.counter_desc { [32 x i8] c"tx%d_wake\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.counter_desc { [32 x i8] c"tx%d_cqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272 }], [268 x i8] zeroinitializer }, align 32
@xsksq_stats_desc = internal constant { [6 x %struct.counter_desc], [40 x i8] } { [6 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"tx%d_xsk_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"tx%d_xsk_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"tx%d_xsk_inlnw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"tx%d_xsk_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"tx%d_xsk_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"tx%d_xsk_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }], [40 x i8] zeroinitializer }, align 32
@xdpsq_stats_desc = internal constant { [7 x %struct.counter_desc], [36 x i8] } { [7 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"tx%d_xdp_xmit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"tx%d_xdp_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"tx%d_xdp_inlnw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"tx%d_xdp_nops\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"tx%d_xdp_full\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"tx%d_xdp_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"tx%d_xdp_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }], [36 x i8] zeroinitializer }, align 32
@pport_per_tc_prio_stats_desc = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_prio%d_buf_discard\00\00\00\00\00\00\00\00\00\00\00", i32 16 }], [60 x i8] zeroinitializer }, align 32
@pport_per_tc_congest_prio_stats_desc = internal constant { [2 x %struct.counter_desc], [56 x i8] } { [2 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_prio%d_cong_discard\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"rx_prio%d_marked\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }], [56 x i8] zeroinitializer }, align 32
@pport_eth_ext_stats_desc = internal constant { [1 x %struct.counter_desc], [60 x i8] } { [1 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"rx_buffer_passed_thres_phy\00\00\00\00\00\00", i32 48 }], [60 x i8] zeroinitializer }, align 32
@ptp_ch_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"ptp_ch_events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"ptp_ch_poll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"ptp_ch_arm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"ptp_ch_eq_rearm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 40 }], [48 x i8] zeroinitializer }, align 32
@ptp_sq_stats_desc = internal constant { [14 x %struct.counter_desc], [104 x i8] } { [14 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"ptp_tx%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_csum_partial\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_csum_partial_inner\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_added_vlan_packets\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_nop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_xmit_more\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_recover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_wake\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.counter_desc { [32 x i8] c"ptp_tx%d_cqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272 }], [104 x i8] zeroinitializer }, align 32
@ptp_cq_stats_desc = internal constant { [4 x %struct.counter_desc], [48 x i8] } { [4 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"ptp_cq%d_cqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"ptp_cq%d_err_cqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"ptp_cq%d_abort\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"ptp_cq%d_abort_abs_diff_ns\00\00\00\00\00\00", i32 24 }], [48 x i8] zeroinitializer }, align 32
@ptp_rq_stats_desc = internal constant { [29 x %struct.counter_desc], [268 x i8] } { [29 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"ptp_rq%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_csum_complete\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_csum_complete_tail\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_csum_complete_tail_slow", i32 32 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_csum_unnecessary\00\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_csum_unnecessary_inner\00", i32 48 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_xdp_drop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_xdp_redirect\00\00\00\00\00\00\00\00\00\00\00", i32 152 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_lro_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_lro_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_ecn_mark\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_removed_vlan_packets\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_wqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_mpwqe_filler_cqes\00\00\00\00\00\00", i32 168 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_mpwqe_filler_strides\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_oversize_pkts_sw_drop\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_buff_alloc_err\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_cqe_compress_blks\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_cqe_compress_pkts\00\00\00\00\00\00", i32 208 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_cache_reuse\00\00\00\00\00\00\00\00\00\00\00\00", i32 216 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_cache_full\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 224 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_cache_empty\00\00\00\00\00\00\00\00\00\00\00\00", i32 232 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_cache_busy\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 240 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_cache_waive\00\00\00\00\00\00\00\00\00\00\00\00", i32 248 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_congst_umr\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_arfs_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.counter_desc { [32 x i8] c"ptp_rq%d_recover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272 }], [268 x i8] zeroinitializer }, align 32
@qos_sq_stats_desc = internal constant { [29 x %struct.counter_desc], [268 x i8] } { [29 x %struct.counter_desc] [%struct.counter_desc { [32 x i8] c"qos_tx%d_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tso_packets\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tso_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 32 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tso_inner_packets\00\00\00\00\00\00", i32 40 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tso_inner_bytes\00\00\00\00\00\00\00\00", i32 48 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_csum_partial\00\00\00\00\00\00\00\00\00\00\00", i32 56 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_csum_partial_inner\00\00\00\00\00", i32 64 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_added_vlan_packets\00\00\00\00\00", i32 72 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_nop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 80 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_mpwqe_blks\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 88 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_mpwqe_pkts\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 96 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_encrypted_packets\00\00", i32 104 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_encrypted_bytes\00\00\00\00", i32 112 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_ooo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 120 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_dump_packets\00\00\00\00\00\00\00", i32 128 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_dump_bytes\00\00\00\00\00\00\00\00\00", i32 136 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_resync_bytes\00\00\00\00\00\00\00", i32 144 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_skip_no_sync_data\00\00", i32 152 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_drop_no_sync_data\00\00", i32 160 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_tls_drop_bypass_req\00\00\00\00", i32 168 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_csum_none\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 176 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 184 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 192 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_xmit_more\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_recover\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 200 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_cqes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 256 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_wake\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 264 }, %struct.counter_desc { [32 x i8] c"qos_tx%d_cqe_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 272 }], [268 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 9]
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"mlx5e_rmon_ranges\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1002, i32 45 }
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"mlx5e_stats_grp_sw\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2336, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"mlx5e_stats_grp_qcnt\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2337, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant [25 x i8] c"mlx5e_stats_grp_vnic_env\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2338, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"mlx5e_stats_grp_vport\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2339, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"mlx5e_stats_grp_802_3\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2340, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"mlx5e_stats_grp_2863\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2341, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"mlx5e_stats_grp_2819\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2342, i32 1 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"mlx5e_stats_grp_phy\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2343, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"mlx5e_stats_grp_pcie\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2344, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"mlx5e_stats_grp_per_prio\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2345, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"mlx5e_stats_grp_pme\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2346, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"mlx5e_stats_grp_channels\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2347, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant [38 x i8] c"mlx5e_stats_grp_per_port_buff_congest\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2348, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"mlx5e_stats_grp_eth_ext\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2349, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"mlx5e_stats_grp_tls\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2350, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"mlx5e_stats_grp_ptp\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2351, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"mlx5e_stats_grp_qos\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2352, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"mlx5e_nic_stats_grps\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2355, i32 19 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"sw_stats_desc\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 104, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"q_stats_desc\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 490, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"drop_rq_stats_desc\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 494, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"vnic_env_stats_steer_desc\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 571, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [28 x i8] c"vnic_env_stats_dev_oob_desc\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 576, i32 34 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"vport_stats_desc\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 636, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [23 x i8] c"pport_802_3_stats_desc\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 718, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"pport_2863_stats_desc\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 894, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"pport_2819_stats_desc\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 943, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1098, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant [33 x i8] c"pport_phy_statistical_stats_desc\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1058, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [43 x i8] c"pport_phy_statistical_err_lanes_stats_desc\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1064, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"pcie_perf_stats_desc\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1338, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"pcie_perf_stats_desc64\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1345, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"pcie_perf_stall_stats_desc\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1349, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [34 x i8] c"pport_per_prio_traffic_stats_desc\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1579, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1694, i32 45 }
@___asan_gen_.112 = private unnamed_addr constant [30 x i8] c"pport_per_prio_pfc_stats_desc\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1625, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1703, i32 46 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"pport_pfc_stall_stats_desc\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1634, i32 34 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"mlx5e_pme_status_desc\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1787, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"mlx5e_pme_error_desc\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1791, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"ch_stats_desc\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1989, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"rq_stats_desc\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1855, i32 34 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"xskrq_stats_desc\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1958, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"rq_xdpsq_stats_desc\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1938, i32 34 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"sq_stats_desc\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1904, i32 34 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"xsksq_stats_desc\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1980, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"xdpsq_stats_desc\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1948, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant [29 x i8] c"pport_per_tc_prio_stats_desc\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1441, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant [37 x i8] c"pport_per_tc_congest_prio_stats_desc\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1451, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant [25 x i8] c"pport_eth_ext_stats_desc\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1282, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"ptp_ch_stats_desc\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2015, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant [18 x i8] c"ptp_sq_stats_desc\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1998, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"ptp_cq_stats_desc\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2022, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"ptp_rq_stats_desc\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2029, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"qos_sq_stats_desc\00", align 1
@___asan_gen_.170 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2061, i32 34 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @mlx5e_rmon_ranges, ptr @mlx5e_stats_grp_sw, ptr @mlx5e_stats_grp_qcnt, ptr @mlx5e_stats_grp_vnic_env, ptr @mlx5e_stats_grp_vport, ptr @mlx5e_stats_grp_802_3, ptr @mlx5e_stats_grp_2863, ptr @mlx5e_stats_grp_2819, ptr @mlx5e_stats_grp_phy, ptr @mlx5e_stats_grp_pcie, ptr @mlx5e_stats_grp_per_prio, ptr @mlx5e_stats_grp_pme, ptr @mlx5e_stats_grp_channels, ptr @mlx5e_stats_grp_per_port_buff_congest, ptr @mlx5e_stats_grp_eth_ext, ptr @mlx5e_stats_grp_tls, ptr @mlx5e_stats_grp_ptp, ptr @mlx5e_stats_grp_qos, ptr @mlx5e_nic_stats_grps, ptr @sw_stats_desc, ptr @q_stats_desc, ptr @drop_rq_stats_desc, ptr @vnic_env_stats_steer_desc, ptr @vnic_env_stats_dev_oob_desc, ptr @vport_stats_desc, ptr @pport_802_3_stats_desc, ptr @pport_2863_stats_desc, ptr @pport_2819_stats_desc, ptr @.str, ptr @pport_phy_statistical_stats_desc, ptr @pport_phy_statistical_err_lanes_stats_desc, ptr @pcie_perf_stats_desc, ptr @pcie_perf_stats_desc64, ptr @pcie_perf_stall_stats_desc, ptr @pport_per_prio_traffic_stats_desc, ptr @.str.1, ptr @pport_per_prio_pfc_stats_desc, ptr @.str.2, ptr @pport_pfc_stall_stats_desc, ptr @mlx5e_pme_status_desc, ptr @mlx5e_pme_error_desc, ptr @ch_stats_desc, ptr @rq_stats_desc, ptr @xskrq_stats_desc, ptr @rq_xdpsq_stats_desc, ptr @sq_stats_desc, ptr @xsksq_stats_desc, ptr @xdpsq_stats_desc, ptr @pport_per_tc_prio_stats_desc, ptr @pport_per_tc_congest_prio_stats_desc, ptr @pport_eth_ext_stats_desc, ptr @ptp_ch_stats_desc, ptr @ptp_sq_stats_desc, ptr @ptp_cq_stats_desc, ptr @ptp_rq_stats_desc, ptr @qos_sq_stats_desc], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_rmon_ranges to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_sw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_qcnt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_vnic_env to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_vport to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_802_3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_2863 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_2819 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_phy to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_pcie to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_per_prio to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_pme to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_channels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_per_port_buff_congest to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_eth_ext to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_tls to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_ptp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_stats_grp_qos to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_nic_stats_grps to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_stats_desc to i32), i32 4248, i32 5312, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q_stats_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drop_rq_stats_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_env_stats_steer_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_env_stats_dev_oob_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vport_stats_desc to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_802_3_stats_desc to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_2863_stats_desc to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_2819_stats_desc to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_phy_statistical_stats_desc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_phy_statistical_err_lanes_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_perf_stats_desc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_perf_stats_desc64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcie_perf_stall_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_per_prio_traffic_stats_desc to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_per_prio_pfc_stats_desc to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_pfc_stall_stats_desc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_pme_status_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_pme_error_desc to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_stats_desc to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rq_stats_desc to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xskrq_stats_desc to i32), i32 684, i32 864, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rq_xdpsq_stats_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sq_stats_desc to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xsksq_stats_desc to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xdpsq_stats_desc to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_per_tc_prio_stats_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_per_tc_congest_prio_stats_desc to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pport_eth_ext_stats_desc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_ch_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_sq_stats_desc to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_cq_stats_desc to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptp_rq_stats_desc to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qos_sq_stats_desc to i32), i32 1044, i32 1312, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_stats_total_num(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 4
  %stats_grps1 = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stats_grps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_grps1, align 4
  %stats_grps_num.i = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats_grps_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_grps_num.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %stats_grps_num.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

stats_grps_num.exit:                              ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %priv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8.not = icmp eq i32 %call.i, 0
  br i1 %cmp8.not, label %stats_grps_num.exit.for.end_crit_edge, label %stats_grps_num.exit.for.body_crit_edge

stats_grps_num.exit.for.body_crit_edge:           ; preds = %stats_grps_num.exit
  br label %for.body

stats_grps_num.exit.for.end_crit_edge:            ; preds = %stats_grps_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %stats_grps_num.exit.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %stats_grps_num.exit.for.body_crit_edge ]
  %total.09 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %stats_grps_num.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.010
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %get_num_stats = getelementptr inbounds %struct.mlx5e_stats_grp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %get_num_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_num_stats, align 4
  %call2 = tail call i32 %9(ptr noundef %priv) #14
  %add = add i32 %call2, %total.09
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %stats_grps_num.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %total.0.lcssa = phi i32 [ 0, %stats_grps_num.exit.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  ret i32 %total.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_update_ndo_stats(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 4
  %stats_grps1 = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stats_grps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_grps1, align 4
  %stats_grps_num.i = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats_grps_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_grps_num.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %stats_grps_num.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

stats_grps_num.exit:                              ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %priv) #14
  %phi.bo = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phi.bo)
  %cmp15 = icmp sgt i32 %phi.bo, -1
  br i1 %cmp15, label %stats_grps_num.exit.for.body_crit_edge, label %stats_grps_num.exit.for.end_crit_edge

stats_grps_num.exit.for.end_crit_edge:            ; preds = %stats_grps_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

stats_grps_num.exit.for.body_crit_edge:           ; preds = %stats_grps_num.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %stats_grps_num.exit.for.body_crit_edge
  %i.016 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %phi.bo, %stats_grps_num.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.016
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %update_stats = getelementptr inbounds %struct.mlx5e_stats_grp, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_stats, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %7, align 4
  %12 = and i16 %11, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool3.not = icmp eq i16 %12, 0
  br i1 %tobool3.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %9(ptr noundef %priv) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.0 = add nsw i32 %i.016, -1
  %cmp = icmp sgt i32 %i.016, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %stats_grps_num.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_update(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 4
  %stats_grps1 = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stats_grps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_grps1, align 4
  %stats_grps_num.i = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats_grps_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_grps_num.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %stats_grps_num.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

stats_grps_num.exit:                              ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %priv) #14
  %phi.bo = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phi.bo)
  %cmp11 = icmp sgt i32 %phi.bo, -1
  br i1 %cmp11, label %stats_grps_num.exit.for.body_crit_edge, label %stats_grps_num.exit.for.end_crit_edge

stats_grps_num.exit.for.end_crit_edge:            ; preds = %stats_grps_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

stats_grps_num.exit.for.body_crit_edge:           ; preds = %stats_grps_num.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %stats_grps_num.exit.for.body_crit_edge
  %i.012 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %phi.bo, %stats_grps_num.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.012
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %update_stats = getelementptr inbounds %struct.mlx5e_stats_grp, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %update_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_stats, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %9(ptr noundef %priv) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %i.0 = add nsw i32 %i.012, -1
  %cmp = icmp sgt i32 %i.012, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %stats_grps_num.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_fill(ptr noundef %priv, ptr noundef %data, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 4
  %stats_grps1 = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stats_grps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_grps1, align 4
  %stats_grps_num.i = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats_grps_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_grps_num.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %stats_grps_num.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

stats_grps_num.exit:                              ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %priv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, 0
  br i1 %cmp7.not, label %stats_grps_num.exit.for.end_crit_edge, label %stats_grps_num.exit.for.body_crit_edge

stats_grps_num.exit.for.body_crit_edge:           ; preds = %stats_grps_num.exit
  br label %for.body

stats_grps_num.exit.for.end_crit_edge:            ; preds = %stats_grps_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %stats_grps_num.exit.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %stats_grps_num.exit.for.body_crit_edge ]
  %idx.addr.08 = phi i32 [ %call2, %for.body.for.body_crit_edge ], [ %idx, %stats_grps_num.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.09
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %fill_stats = getelementptr inbounds %struct.mlx5e_stats_grp, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %fill_stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fill_stats, align 4
  %call2 = tail call i32 %9(ptr noundef %priv, ptr noundef %data, i32 noundef %idx.addr.08) #14
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %stats_grps_num.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_fill_strings(ptr noundef %priv, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %0 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %profile, align 4
  %stats_grps1 = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stats_grps1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_grps1, align 4
  %stats_grps_num.i = getelementptr inbounds %struct.mlx5e_profile, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %stats_grps_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats_grps_num.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.for.end_crit_edge, label %stats_grps_num.exit

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

stats_grps_num.exit:                              ; preds = %entry
  %call.i = tail call i32 %5(ptr noundef %priv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, 0
  br i1 %cmp7.not, label %stats_grps_num.exit.for.end_crit_edge, label %stats_grps_num.exit.for.body_crit_edge

stats_grps_num.exit.for.body_crit_edge:           ; preds = %stats_grps_num.exit
  br label %for.body

stats_grps_num.exit.for.end_crit_edge:            ; preds = %stats_grps_num.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %stats_grps_num.exit.for.body_crit_edge
  %idx.09 = phi i32 [ %call2, %for.body.for.body_crit_edge ], [ 0, %stats_grps_num.exit.for.body_crit_edge ]
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %stats_grps_num.exit.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.08
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %fill_strings = getelementptr inbounds %struct.mlx5e_stats_grp, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fill_strings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fill_strings, align 4
  %call2 = tail call i32 %9(ptr noundef %priv, ptr noundef %data, i32 noundef %idx.09) #14
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %stats_grps_num.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_pause_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %pause_stats) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [64 x i32], align 4
  %ppcnt_ieee_802_3 = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  %0 = call ptr @memset(ptr %ppcnt_ieee_802_3, i32 255, i32 256)
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i) #14
  %3 = call ptr @memset(ptr %in.i, i32 0, i32 256)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.mlx5e_stats_get_ieee.exit_crit_edge, label %cond.true.i

entry.mlx5e_stats_get_ieee.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

cond.true.i:                                      ; preds = %entry
  %add.ptr3.i = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 1, i32 5
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %mlx5e_stats_get_ieee.exit.thread, label %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge

cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge:  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

mlx5e_stats_get_ieee.exit.thread:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  br label %cleanup

mlx5e_stats_get_ieee.exit:                        ; preds = %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge, %entry.mlx5e_stats_get_ieee.exit_crit_edge
  %12 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in.i, align 4
  %and10.i = and i32 %13, -16711744
  %or.i = or i32 %and10.i, 65536
  store i32 %or.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %2, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef nonnull %ppcnt_ieee_802_3, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mlx5e_stats_get_ieee.exit.cleanup_crit_edge

mlx5e_stats_get_ieee.exit.cleanup_crit_edge:      ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 152
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr, align 8
  %16 = ptrtoint ptr %pause_stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %pause_stats, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 144
  %17 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr4, align 8
  %rx_pause_frames = getelementptr inbounds %struct.ethtool_pause_stats, ptr %pause_stats, i32 0, i32 1
  %19 = ptrtoint ptr %rx_pause_frames to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %rx_pause_frames, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5e_stats_get_ieee.exit.cleanup_crit_edge, %mlx5e_stats_get_ieee.exit.thread
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_eth_phy_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %phy_stats) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [64 x i32], align 4
  %ppcnt_ieee_802_3 = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  %0 = call ptr @memset(ptr %ppcnt_ieee_802_3, i32 255, i32 256)
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i) #14
  %3 = call ptr @memset(ptr %in.i, i32 0, i32 256)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.mlx5e_stats_get_ieee.exit_crit_edge, label %cond.true.i

entry.mlx5e_stats_get_ieee.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

cond.true.i:                                      ; preds = %entry
  %add.ptr3.i = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 1, i32 5
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %mlx5e_stats_get_ieee.exit.thread, label %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge

cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge:  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

mlx5e_stats_get_ieee.exit.thread:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  br label %cleanup

mlx5e_stats_get_ieee.exit:                        ; preds = %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge, %entry.mlx5e_stats_get_ieee.exit_crit_edge
  %12 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in.i, align 4
  %and10.i = and i32 %13, -16711744
  %or.i = or i32 %and10.i, 65536
  store i32 %or.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %2, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef nonnull %ppcnt_ieee_802_3, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mlx5e_stats_get_ieee.exit.cleanup_crit_edge

mlx5e_stats_get_ieee.exit.cleanup_crit_edge:      ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 112
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr, align 8
  %16 = ptrtoint ptr %phy_stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %phy_stats, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5e_stats_get_ieee.exit.cleanup_crit_edge, %mlx5e_stats_get_ieee.exit.thread
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_eth_mac_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %mac_stats) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [64 x i32], align 4
  %ppcnt_ieee_802_3 = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  %0 = call ptr @memset(ptr %ppcnt_ieee_802_3, i32 255, i32 256)
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i) #14
  %3 = call ptr @memset(ptr %in.i, i32 0, i32 256)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.mlx5e_stats_get_ieee.exit_crit_edge, label %cond.true.i

entry.mlx5e_stats_get_ieee.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

cond.true.i:                                      ; preds = %entry
  %add.ptr3.i = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 1, i32 5
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %mlx5e_stats_get_ieee.exit.thread, label %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge

cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge:  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

mlx5e_stats_get_ieee.exit.thread:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  br label %cleanup

mlx5e_stats_get_ieee.exit:                        ; preds = %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge, %entry.mlx5e_stats_get_ieee.exit_crit_edge
  %12 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in.i, align 4
  %and10.i = and i32 %13, -16711744
  %or.i = or i32 %and10.i, 65536
  store i32 %or.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %2, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef nonnull %ppcnt_ieee_802_3, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mlx5e_stats_get_ieee.exit.cleanup_crit_edge

mlx5e_stats_get_ieee.exit.cleanup_crit_edge:      ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr, align 8
  %16 = ptrtoint ptr %mac_stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %mac_stats, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 16
  %17 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr4, align 8
  %FramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 3
  %19 = ptrtoint ptr %FramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %FramesReceivedOK, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 24
  %20 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr6, align 8
  %FrameCheckSequenceErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 4
  %22 = ptrtoint ptr %FrameCheckSequenceErrors to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %FrameCheckSequenceErrors, align 8
  %add.ptr8 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 40
  %23 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr8, align 8
  %OctetsTransmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 6
  %25 = ptrtoint ptr %OctetsTransmittedOK to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %OctetsTransmittedOK, align 8
  %add.ptr10 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 48
  %26 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr10, align 8
  %OctetsReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 12
  %28 = ptrtoint ptr %OctetsReceivedOK to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %OctetsReceivedOK, align 8
  %add.ptr12 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 56
  %29 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr12, align 8
  %MulticastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 14
  %31 = ptrtoint ptr %MulticastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %MulticastFramesXmittedOK, align 8
  %add.ptr14 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 64
  %32 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr14, align 8
  %BroadcastFramesXmittedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 15
  %34 = ptrtoint ptr %BroadcastFramesXmittedOK to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %BroadcastFramesXmittedOK, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 72
  %35 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr16, align 8
  %MulticastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 17
  %37 = ptrtoint ptr %MulticastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %MulticastFramesReceivedOK, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 80
  %38 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr18, align 8
  %BroadcastFramesReceivedOK = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 18
  %40 = ptrtoint ptr %BroadcastFramesReceivedOK to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %BroadcastFramesReceivedOK, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 88
  %41 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr20, align 8
  %InRangeLengthErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 19
  %43 = ptrtoint ptr %InRangeLengthErrors to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %InRangeLengthErrors, align 8
  %add.ptr22 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 96
  %44 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr22, align 8
  %OutOfRangeLengthField = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 20
  %46 = ptrtoint ptr %OutOfRangeLengthField to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %OutOfRangeLengthField, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 104
  %47 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr24, align 8
  %FrameTooLongErrors = getelementptr inbounds %struct.ethtool_eth_mac_stats, ptr %mac_stats, i32 0, i32 21
  %49 = ptrtoint ptr %FrameTooLongErrors to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %FrameTooLongErrors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5e_stats_get_ieee.exit.cleanup_crit_edge, %mlx5e_stats_get_ieee.exit.thread
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_eth_ctrl_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %ctrl_stats) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [64 x i32], align 4
  %ppcnt_ieee_802_3 = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  %0 = call ptr @memset(ptr %ppcnt_ieee_802_3, i32 255, i32 256)
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i) #14
  %3 = call ptr @memset(ptr %in.i, i32 0, i32 256)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.mlx5e_stats_get_ieee.exit_crit_edge, label %cond.true.i

entry.mlx5e_stats_get_ieee.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

cond.true.i:                                      ; preds = %entry
  %add.ptr3.i = getelementptr %struct.mlx5_core_dev, ptr %2, i32 0, i32 8, i32 1, i32 5
  %9 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr3.i, align 4
  %11 = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %mlx5e_stats_get_ieee.exit.thread, label %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge

cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge:  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_get_ieee.exit

mlx5e_stats_get_ieee.exit.thread:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  br label %cleanup

mlx5e_stats_get_ieee.exit:                        ; preds = %cond.true.i.mlx5e_stats_get_ieee.exit_crit_edge, %entry.mlx5e_stats_get_ieee.exit_crit_edge
  %12 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in.i, align 4
  %and10.i = and i32 %13, -16711744
  %or.i = or i32 %and10.i, 65536
  store i32 %or.i, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %2, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef nonnull %ppcnt_ieee_802_3, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mlx5e_stats_get_ieee.exit.cleanup_crit_edge

mlx5e_stats_get_ieee.exit.cleanup_crit_edge:      ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %mlx5e_stats_get_ieee.exit
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 120
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr, align 8
  %16 = ptrtoint ptr %ctrl_stats to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %ctrl_stats, align 8
  %add.ptr4 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 128
  %17 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %add.ptr4, align 8
  %MACControlFramesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %ctrl_stats, i32 0, i32 1
  %19 = ptrtoint ptr %MACControlFramesReceived to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %MACControlFramesReceived, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %ppcnt_ieee_802_3, i32 136
  %20 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr6, align 8
  %UnsupportedOpcodesReceived = getelementptr inbounds %struct.ethtool_eth_ctrl_stats, ptr %ctrl_stats, i32 0, i32 2
  %22 = ptrtoint ptr %UnsupportedOpcodesReceived to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %UnsupportedOpcodesReceived, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5e_stats_get_ieee.exit.cleanup_crit_edge, %mlx5e_stats_get_ieee.exit.thread
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_ieee_802_3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_rmon_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %rmon, ptr nocapture noundef writeonly %ranges) local_unnamed_addr #0 align 64 {
entry:
  %ppcnt_RFC_2819_counters = alloca [64 x i32], align 4
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_RFC_2819_counters) #14
  %0 = call ptr @memset(ptr %ppcnt_RFC_2819_counters, i32 255, i32 256)
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %3 = getelementptr inbounds i8, ptr %in, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 252)
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65538, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %2, ptr noundef nonnull %in, i32 noundef 256, ptr noundef nonnull %ppcnt_RFC_2819_counters, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr26 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 56
  %6 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr26, align 8
  %8 = ptrtoint ptr %rmon to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rmon, align 8
  %add.ptr28 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 72
  %9 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr28, align 8
  %fragments = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 2
  %11 = ptrtoint ptr %fragments to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %fragments, align 8
  %add.ptr30 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 80
  %12 = ptrtoint ptr %add.ptr30 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr30, align 8
  %jabbers = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 3
  %14 = ptrtoint ptr %jabbers to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %jabbers, align 8
  %add.ptr32 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 96
  %15 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr32, align 8
  %hist = getelementptr inbounds %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4
  %17 = ptrtoint ptr %hist to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %hist, align 8
  %add.ptr34 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 104
  %18 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr34, align 8
  %arrayidx36 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx36, align 8
  %add.ptr38 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 112
  %21 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr38, align 8
  %arrayidx40 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx40, align 8
  %add.ptr42 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 120
  %24 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr42, align 8
  %arrayidx44 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx44, align 8
  %add.ptr46 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 128
  %27 = ptrtoint ptr %add.ptr46 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr46, align 8
  %arrayidx48 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx48, align 8
  %add.ptr50 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 136
  %30 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr50, align 8
  %arrayidx52 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 5
  %32 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx52, align 8
  %add.ptr54 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 144
  %33 = ptrtoint ptr %add.ptr54 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr54, align 8
  %arrayidx56 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 6
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx56, align 8
  %add.ptr58 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 152
  %36 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr58, align 8
  %arrayidx60 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 7
  %38 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx60, align 8
  %add.ptr62 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 160
  %39 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr62, align 8
  %arrayidx64 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 8
  %41 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx64, align 8
  %add.ptr66 = getelementptr inbounds i8, ptr %ppcnt_RFC_2819_counters, i32 168
  %42 = ptrtoint ptr %add.ptr66 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr66, align 8
  %arrayidx68 = getelementptr %struct.ethtool_rmon_stats, ptr %rmon, i32 0, i32 4, i32 9
  %44 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx68, align 8
  %45 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mlx5e_rmon_ranges, ptr %ranges, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_RFC_2819_counters) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_stats_fec_get(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %fec_stats) local_unnamed_addr #0 align 64 {
entry:
  %out.i.i = alloca [16 x i32], align 4
  %in.i.i = alloca [16 x i32], align 4
  %fec_active_long.i.i = alloca i32, align 4
  %fec_active.i.i = alloca i32, align 4
  %out.i = alloca [64 x i32], align 4
  %in.i4 = alloca [64 x i32], align 4
  %ppcnt_phy_statistical.i = alloca [64 x i32], align 4
  %in.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %ppcnt_phy_statistical.i) #14
  %4 = call ptr @memset(ptr %ppcnt_phy_statistical.i, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i) #14
  %5 = getelementptr inbounds i8, ptr %in.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 252)
  %7 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65558, ptr %in.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef nonnull %ppcnt_phy_statistical.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.fec_set_corrected_bits_total.exit_crit_edge

if.end.fec_set_corrected_bits_total.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %fec_set_corrected_bits_total.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr26.i = getelementptr inbounds i8, ptr %ppcnt_phy_statistical.i, i32 32
  %8 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr26.i, align 8
  %corrected_bits.i = getelementptr inbounds %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 2
  %10 = ptrtoint ptr %corrected_bits.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %corrected_bits.i, align 8
  br label %fec_set_corrected_bits_total.exit

fec_set_corrected_bits_total.exit:                ; preds = %if.end.i, %if.end.fec_set_corrected_bits_total.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %ppcnt_phy_statistical.i) #14
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %out.i) #14
  %13 = call ptr @memset(ptr %out.i, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i4) #14
  %14 = call ptr @memset(ptr %in.i4, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_active_long.i.i) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_active.i.i) #14
  %15 = ptrtoint ptr %fec_active.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %fec_active.i.i, align 4, !annotation !123
  %call.i.i = call i32 @mlx5e_get_fec_mode(ptr noundef %12, ptr noundef nonnull %fec_active.i.i, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %fec_active_mode.exit.i, label %fec_active_mode.exit.thread.i

fec_active_mode.exit.thread.i:                    ; preds = %fec_set_corrected_bits_total.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_active.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_active_long.i.i) #14
  br label %fec_set_block_stats.exit

fec_active_mode.exit.i:                           ; preds = %fec_set_corrected_bits_total.exit
  %16 = ptrtoint ptr %fec_active.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fec_active.i.i, align 4
  %18 = ptrtoint ptr %fec_active_long.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fec_active_long.i.i, align 4
  %call1.i.i = call i32 @_find_first_bit_be(ptr noundef nonnull %fec_active_long.i.i, i32 noundef 32) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_active.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_active_long.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp.i, label %fec_active_mode.exit.i.fec_set_block_stats.exit_crit_edge, label %do.body.i

fec_active_mode.exit.i.fec_set_block_stats.exit_crit_edge: ; preds = %fec_active_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fec_set_block_stats.exit

do.body.i:                                        ; preds = %fec_active_mode.exit.i
  %19 = ptrtoint ptr %in.i4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in.i4, align 4
  %and.i = and i32 %20, -16711744
  %or18.i = or i32 %and.i, 65554
  store i32 %or18.i, ptr %in.i4, align 4
  %call25.i = call i32 @mlx5_core_access_reg(ptr noundef %12, ptr noundef nonnull %in.i4, i32 noundef 256, ptr noundef nonnull %out.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool.not.i6 = icmp eq i32 %call25.i, 0
  br i1 %tobool.not.i6, label %if.end27.i, label %do.body.i.fec_set_block_stats.exit_crit_edge

do.body.i.fec_set_block_stats.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fec_set_block_stats.exit

if.end27.i:                                       ; preds = %do.body.i
  %21 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i.i, label %if.end27.i.fec_set_block_stats.exit_crit_edge [
    i32 2, label %if.end27.i.sw.bb.i_crit_edge
    i32 7, label %if.end27.i.sw.bb.i_crit_edge7
    i32 9, label %if.end27.i.sw.bb.i_crit_edge8
    i32 1, label %sw.bb29.i
  ]

if.end27.i.sw.bb.i_crit_edge8:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end27.i.sw.bb.i_crit_edge7:                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end27.i.sw.bb.i_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb.i

if.end27.i.fec_set_block_stats.exit_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fec_set_block_stats.exit

sw.bb.i:                                          ; preds = %if.end27.i.sw.bb.i_crit_edge, %if.end27.i.sw.bb.i_crit_edge7, %if.end27.i.sw.bb.i_crit_edge8
  %add.ptr.i.i = getelementptr inbounds i8, ptr %out.i, i32 128
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.i.i, align 8
  %24 = ptrtoint ptr %fec_stats to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %fec_stats, align 8
  %add.ptr1.i.i = getelementptr inbounds i8, ptr %out.i, i32 136
  %25 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr1.i.i, align 8
  %uncorrectable_blocks.i.i = getelementptr inbounds %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 1
  %27 = ptrtoint ptr %uncorrectable_blocks.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %uncorrectable_blocks.i.i, align 8
  br label %fec_set_block_stats.exit

sw.bb29.i:                                        ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i.i) #14
  %28 = call ptr @memset(ptr %out.i.i, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %in.i.i) #14
  %29 = getelementptr inbounds i8, ptr %in.i.i, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 60)
  %31 = ptrtoint ptr %in.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65536, ptr %in.i.i, align 4
  %call.i41.i = call i32 @mlx5_core_access_reg(ptr noundef %12, ptr noundef nonnull %in.i.i, i32 noundef 64, ptr noundef nonnull %out.i.i, i32 noundef 64, i16 noundef zeroext 20482, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool.not.i42.i = icmp eq i32 %call.i41.i, 0
  br i1 %tobool.not.i42.i, label %fec_num_lanes.exit.i, label %if.end28.i.thread.i

if.end28.i.thread.i:                              ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i) #14
  br label %fec_set_block_stats.exit

fec_num_lanes.exit.i:                             ; preds = %sw.bb29.i
  %32 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %in.i.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i.i) #14
  %conv.i = trunc i32 %33 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv.i)
  %cmp.i.i = icmp ugt i8 %conv.i, 3
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.end.i46.i

if.end.thread.i.i:                                ; preds = %fec_num_lanes.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i45.i = getelementptr inbounds i8, ptr %out.i, i32 88
  %34 = ptrtoint ptr %add.ptr.i45.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i45.i, align 8
  %arrayidx.i.i = getelementptr %struct.ethtool_fec_stat, ptr %fec_stats, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx.i.i, align 8
  %add.ptr3.i.i = getelementptr inbounds i8, ptr %out.i, i32 120
  %37 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr3.i.i, align 8
  %arrayidx5.i.i = getelementptr %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 1, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx5.i.i, align 8
  %add.ptr6.i.i = getelementptr inbounds i8, ptr %out.i, i32 80
  %40 = ptrtoint ptr %add.ptr6.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr6.i.i, align 8
  %arrayidx9.i.i = getelementptr %struct.ethtool_fec_stat, ptr %fec_stats, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx9.i.i, align 8
  %add.ptr11.i.i = getelementptr inbounds i8, ptr %out.i, i32 112
  %43 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr11.i.i, align 8
  %arrayidx14.i.i = getelementptr %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx14.i.i, align 8
  br label %if.end28.thread.i.i

if.end.i46.i:                                     ; preds = %fec_num_lanes.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i)
  %cmp16.i.i = icmp ugt i8 %conv.i, 1
  br i1 %cmp16.i.i, label %if.end.i46.i.if.end28.thread.i.i_crit_edge, label %if.end28.i.i

if.end.i46.i.if.end28.thread.i.i_crit_edge:       ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28.thread.i.i

if.end28.thread.i.i:                              ; preds = %if.end.i46.i.if.end28.thread.i.i_crit_edge, %if.end.thread.i.i
  %add.ptr19.i.i = getelementptr inbounds i8, ptr %out.i, i32 72
  %46 = ptrtoint ptr %add.ptr19.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr19.i.i, align 8
  %arrayidx22.i.i = getelementptr %struct.ethtool_fec_stat, ptr %fec_stats, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx22.i.i, align 8
  %add.ptr24.i.i = getelementptr inbounds i8, ptr %out.i, i32 104
  %49 = ptrtoint ptr %add.ptr24.i.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr24.i.i, align 8
  %arrayidx27.i.i = getelementptr %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 1, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx27.i.i, align 8
  br label %if.then32.i.i

if.end28.i.i:                                     ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp30.not.i.i = icmp eq i8 %conv.i, 0
  br i1 %cmp30.not.i.i, label %if.end28.i.i.fec_set_block_stats.exit_crit_edge, label %if.end28.i.i.if.then32.i.i_crit_edge

if.end28.i.i.if.then32.i.i_crit_edge:             ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32.i.i

if.end28.i.i.fec_set_block_stats.exit_crit_edge:  ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %fec_set_block_stats.exit

if.then32.i.i:                                    ; preds = %if.end28.i.i.if.then32.i.i_crit_edge, %if.end28.thread.i.i
  %add.ptr33.i.i = getelementptr inbounds i8, ptr %out.i, i32 64
  %52 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr33.i.i, align 8
  %lanes35.i.i = getelementptr inbounds %struct.ethtool_fec_stat, ptr %fec_stats, i32 0, i32 1
  %54 = ptrtoint ptr %lanes35.i.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %lanes35.i.i, align 8
  %add.ptr38.i.i = getelementptr inbounds i8, ptr %out.i, i32 96
  %55 = ptrtoint ptr %add.ptr38.i.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr38.i.i, align 8
  %lanes40.i.i = getelementptr inbounds %struct.ethtool_fec_stats, ptr %fec_stats, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %lanes40.i.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %lanes40.i.i, align 8
  br label %fec_set_block_stats.exit

fec_set_block_stats.exit:                         ; preds = %if.then32.i.i, %if.end28.i.i.fec_set_block_stats.exit_crit_edge, %if.end28.i.thread.i, %sw.bb.i, %if.end27.i.fec_set_block_stats.exit_crit_edge, %do.body.i.fec_set_block_stats.exit_crit_edge, %fec_active_mode.exit.i.fec_set_block_stats.exit_crit_edge, %fec_active_mode.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i4) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %out.i) #14
  br label %return

return:                                           ; preds = %fec_set_block_stats.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_sw_num_stats(ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 118
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_sw_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc1, %for.body.for.body_crit_edge ]
  %idx.addr.05 = phi i32 [ %idx, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %inc = add i32 %idx.addr.05, 1
  %mul = shl i32 %idx.addr.05, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %arrayidx = getelementptr [118 x %struct.counter_desc], ptr @sw_stats_desc, i32 0, i32 %i.06
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef %arrayidx) #17
  %inc1 = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc1, 118
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 %inc
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_sw_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc2, %for.body.for.body_crit_edge ]
  %idx.addr.06 = phi i32 [ %idx, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset = getelementptr [118 x %struct.counter_desc], ptr @sw_stats_desc, i32 0, i32 %i.07, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %stats, i32 %1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  %inc = add i32 %idx.addr.06, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx.addr.06
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %arrayidx1, align 8
  %inc2 = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc2, 118
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  ret i32 %inc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_sw_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24
  %0 = call ptr @memset(ptr %stats, i32 0, i32 952)
  %stats_nch = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 29
  %1 = ptrtoint ptr %stats_nch to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %stats_nch, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp81.not = icmp eq i16 %2, 0
  br i1 %cmp81.not, label %entry.for.end11_crit_edge, label %for.body.lr.ph

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %channel_stats2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 25
  %rx_xdp_tx_xmit.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 30
  %rx_xdp_tx_mpwqe.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 31
  %rx_xdp_tx_inlnw.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 32
  %rx_xdp_tx_nops.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 33
  %rx_xdp_tx_full.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 34
  %rx_xdp_tx_err.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 35
  %rx_xdp_tx_cqe.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 36
  %ch_events.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 69
  %ch_poll.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 70
  %ch_arm.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 71
  %ch_aff_change.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 72
  %ch_force_irq.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 73
  %ch_eq_rearm.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 74
  %tx_xdp_xmit.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 47
  %tx_xdp_mpwqe.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 48
  %tx_xdp_inlnw.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 49
  %tx_xdp_nops.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 50
  %tx_xdp_full.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 51
  %tx_xdp_err.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 52
  %tx_xdp_cqes.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 53
  %rx_xsk_packets.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 94
  %rx_xsk_bytes.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 95
  %rx_xsk_csum_complete.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 96
  %rx_xsk_csum_unnecessary.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 97
  %rx_xsk_csum_unnecessary_inner.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 98
  %rx_xsk_csum_none.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 99
  %rx_xsk_ecn_mark.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 100
  %rx_xsk_removed_vlan_packets.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 101
  %rx_xsk_xdp_drop.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 102
  %rx_xsk_xdp_redirect.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 103
  %rx_xsk_wqe_err.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 104
  %rx_xsk_mpwqe_filler_cqes.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 105
  %rx_xsk_mpwqe_filler_strides.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 106
  %rx_xsk_oversize_pkts_sw_drop.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 107
  %rx_xsk_buff_alloc_err.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 108
  %rx_xsk_cqe_compress_blks.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 109
  %rx_xsk_cqe_compress_pkts.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 110
  %rx_xsk_congst_umr.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 111
  %rx_xsk_arfs_err.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 112
  %tx_xsk_xmit.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 113
  %tx_xsk_mpwqe.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 114
  %tx_xsk_inlnw.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 115
  %tx_xsk_full.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 116
  %tx_xsk_err.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 117
  %tx_xsk_cqes.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 118
  %max_opened_tc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.end.for.body_crit_edge ]
  %3 = ptrtoint ptr %channel_stats2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel_stats2, align 16
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.082
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %rq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 3
  tail call fastcc void @mlx5e_stats_grp_sw_update_stats_rq_stats(ptr noundef %stats, ptr noundef %rq)
  %rq_xdpsq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %rq_xdpsq to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rq_xdpsq, align 128
  %9 = ptrtoint ptr %rx_xdp_tx_xmit.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_xdp_tx_xmit.i, align 8
  %add.i = add i64 %10, %8
  store i64 %add.i, ptr %rx_xdp_tx_xmit.i, align 8
  %mpwqe.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %mpwqe.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %mpwqe.i, align 8
  %13 = ptrtoint ptr %rx_xdp_tx_mpwqe.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rx_xdp_tx_mpwqe.i, align 8
  %add1.i = add i64 %14, %12
  store i64 %add1.i, ptr %rx_xdp_tx_mpwqe.i, align 8
  %inlnw.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %inlnw.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %inlnw.i, align 16
  %17 = ptrtoint ptr %rx_xdp_tx_inlnw.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %rx_xdp_tx_inlnw.i, align 8
  %add2.i = add i64 %18, %16
  store i64 %add2.i, ptr %rx_xdp_tx_inlnw.i, align 8
  %nops.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %nops.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %nops.i, align 8
  %21 = ptrtoint ptr %rx_xdp_tx_nops.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_xdp_tx_nops.i, align 8
  %add3.i = add i64 %22, %20
  store i64 %add3.i, ptr %rx_xdp_tx_nops.i, align 8
  %full.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 6, i32 4
  %23 = ptrtoint ptr %full.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %full.i, align 32
  %25 = ptrtoint ptr %rx_xdp_tx_full.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rx_xdp_tx_full.i, align 8
  %add4.i = add i64 %26, %24
  store i64 %add4.i, ptr %rx_xdp_tx_full.i, align 8
  %err.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 6, i32 5
  %27 = ptrtoint ptr %err.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %err.i, align 8
  %29 = ptrtoint ptr %rx_xdp_tx_err.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_xdp_tx_err.i, align 8
  %add5.i = add i64 %30, %28
  store i64 %add5.i, ptr %rx_xdp_tx_err.i, align 8
  %cqes.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 6, i32 7
  %31 = ptrtoint ptr %cqes.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %cqes.i, align 128
  %33 = ptrtoint ptr %rx_xdp_tx_cqe.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %rx_xdp_tx_cqe.i, align 8
  %add6.i = add i64 %34, %32
  store i64 %add6.i, ptr %rx_xdp_tx_cqe.i, align 8
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %6, align 8
  %37 = ptrtoint ptr %ch_events.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %ch_events.i, align 8
  %add.i36 = add i64 %38, %36
  store i64 %add.i36, ptr %ch_events.i, align 8
  %poll.i = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %6, i32 0, i32 1
  %39 = ptrtoint ptr %poll.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %poll.i, align 8
  %41 = ptrtoint ptr %ch_poll.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ch_poll.i, align 8
  %add1.i37 = add i64 %42, %40
  store i64 %add1.i37, ptr %ch_poll.i, align 8
  %arm.i = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %6, i32 0, i32 2
  %43 = ptrtoint ptr %arm.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arm.i, align 8
  %45 = ptrtoint ptr %ch_arm.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %ch_arm.i, align 8
  %add2.i38 = add i64 %46, %44
  store i64 %add2.i38, ptr %ch_arm.i, align 8
  %aff_change.i = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %6, i32 0, i32 3
  %47 = ptrtoint ptr %aff_change.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %aff_change.i, align 8
  %49 = ptrtoint ptr %ch_aff_change.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %ch_aff_change.i, align 8
  %add3.i39 = add i64 %50, %48
  store i64 %add3.i39, ptr %ch_aff_change.i, align 8
  %force_irq.i = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %6, i32 0, i32 4
  %51 = ptrtoint ptr %force_irq.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %force_irq.i, align 8
  %53 = ptrtoint ptr %ch_force_irq.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %ch_force_irq.i, align 8
  %add4.i40 = add i64 %54, %52
  store i64 %add4.i40, ptr %ch_force_irq.i, align 8
  %eq_rearm.i = getelementptr inbounds %struct.mlx5e_ch_stats, ptr %6, i32 0, i32 5
  %55 = ptrtoint ptr %eq_rearm.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %eq_rearm.i, align 8
  %57 = ptrtoint ptr %ch_eq_rearm.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %ch_eq_rearm.i, align 8
  %add5.i41 = add i64 %58, %56
  store i64 %add5.i41, ptr %ch_eq_rearm.i, align 8
  %xdpsq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 7
  %59 = ptrtoint ptr %xdpsq to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %xdpsq, align 128
  %61 = ptrtoint ptr %tx_xdp_xmit.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %tx_xdp_xmit.i, align 8
  %add.i42 = add i64 %62, %60
  store i64 %add.i42, ptr %tx_xdp_xmit.i, align 8
  %mpwqe.i43 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %mpwqe.i43 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %mpwqe.i43, align 8
  %65 = ptrtoint ptr %tx_xdp_mpwqe.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tx_xdp_mpwqe.i, align 8
  %add1.i44 = add i64 %66, %64
  store i64 %add1.i44, ptr %tx_xdp_mpwqe.i, align 8
  %inlnw.i45 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 7, i32 2
  %67 = ptrtoint ptr %inlnw.i45 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %inlnw.i45, align 16
  %69 = ptrtoint ptr %tx_xdp_inlnw.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %tx_xdp_inlnw.i, align 8
  %add2.i46 = add i64 %70, %68
  store i64 %add2.i46, ptr %tx_xdp_inlnw.i, align 8
  %nops.i47 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 7, i32 3
  %71 = ptrtoint ptr %nops.i47 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %nops.i47, align 8
  %73 = ptrtoint ptr %tx_xdp_nops.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %tx_xdp_nops.i, align 8
  %add3.i48 = add i64 %74, %72
  store i64 %add3.i48, ptr %tx_xdp_nops.i, align 8
  %full.i49 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 7, i32 4
  %75 = ptrtoint ptr %full.i49 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %full.i49, align 32
  %77 = ptrtoint ptr %tx_xdp_full.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %tx_xdp_full.i, align 8
  %add4.i50 = add i64 %78, %76
  store i64 %add4.i50, ptr %tx_xdp_full.i, align 8
  %err.i51 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 7, i32 5
  %79 = ptrtoint ptr %err.i51 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %err.i51, align 8
  %81 = ptrtoint ptr %tx_xdp_err.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %tx_xdp_err.i, align 8
  %add5.i52 = add i64 %82, %80
  store i64 %add5.i52, ptr %tx_xdp_err.i, align 8
  %cqes.i53 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 7, i32 7
  %83 = ptrtoint ptr %cqes.i53 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %cqes.i53, align 128
  %85 = ptrtoint ptr %tx_xdp_cqes.i to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %tx_xdp_cqes.i, align 8
  %add6.i54 = add i64 %86, %84
  store i64 %add6.i54, ptr %tx_xdp_cqes.i, align 8
  %xskrq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4
  %87 = ptrtoint ptr %xskrq to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %xskrq, align 8
  %89 = ptrtoint ptr %rx_xsk_packets.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %rx_xsk_packets.i, align 8
  %add.i55 = add i64 %90, %88
  store i64 %add.i55, ptr %rx_xsk_packets.i, align 8
  %bytes.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %bytes.i, align 8
  %93 = ptrtoint ptr %rx_xsk_bytes.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %rx_xsk_bytes.i, align 8
  %add1.i56 = add i64 %94, %92
  store i64 %add1.i56, ptr %rx_xsk_bytes.i, align 8
  %csum_complete.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 2
  %95 = ptrtoint ptr %csum_complete.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %csum_complete.i, align 8
  %97 = ptrtoint ptr %rx_xsk_csum_complete.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %rx_xsk_csum_complete.i, align 8
  %add2.i57 = add i64 %98, %96
  store i64 %add2.i57, ptr %rx_xsk_csum_complete.i, align 8
  %csum_unnecessary.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 5
  %99 = ptrtoint ptr %csum_unnecessary.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %csum_unnecessary.i, align 8
  %101 = ptrtoint ptr %rx_xsk_csum_unnecessary.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %rx_xsk_csum_unnecessary.i, align 8
  %add3.i58 = add i64 %102, %100
  store i64 %add3.i58, ptr %rx_xsk_csum_unnecessary.i, align 8
  %csum_unnecessary_inner.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 6
  %103 = ptrtoint ptr %csum_unnecessary_inner.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %csum_unnecessary_inner.i, align 8
  %105 = ptrtoint ptr %rx_xsk_csum_unnecessary_inner.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %rx_xsk_csum_unnecessary_inner.i, align 8
  %add4.i59 = add i64 %106, %104
  store i64 %add4.i59, ptr %rx_xsk_csum_unnecessary_inner.i, align 8
  %csum_none.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 7
  %107 = ptrtoint ptr %csum_none.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %csum_none.i, align 8
  %109 = ptrtoint ptr %rx_xsk_csum_none.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %rx_xsk_csum_none.i, align 8
  %add5.i60 = add i64 %110, %108
  store i64 %add5.i60, ptr %rx_xsk_csum_none.i, align 8
  %ecn_mark.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 16
  %111 = ptrtoint ptr %ecn_mark.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %ecn_mark.i, align 8
  %113 = ptrtoint ptr %rx_xsk_ecn_mark.i to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %rx_xsk_ecn_mark.i, align 8
  %add6.i61 = add i64 %114, %112
  store i64 %add6.i61, ptr %rx_xsk_ecn_mark.i, align 8
  %removed_vlan_packets.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 17
  %115 = ptrtoint ptr %removed_vlan_packets.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %removed_vlan_packets.i, align 8
  %117 = ptrtoint ptr %rx_xsk_removed_vlan_packets.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %rx_xsk_removed_vlan_packets.i, align 8
  %add7.i = add i64 %118, %116
  store i64 %add7.i, ptr %rx_xsk_removed_vlan_packets.i, align 8
  %xdp_drop.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 18
  %119 = ptrtoint ptr %xdp_drop.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %xdp_drop.i, align 8
  %121 = ptrtoint ptr %rx_xsk_xdp_drop.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %rx_xsk_xdp_drop.i, align 8
  %add8.i = add i64 %122, %120
  store i64 %add8.i, ptr %rx_xsk_xdp_drop.i, align 8
  %xdp_redirect.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 19
  %123 = ptrtoint ptr %xdp_redirect.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %xdp_redirect.i, align 8
  %125 = ptrtoint ptr %rx_xsk_xdp_redirect.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %rx_xsk_xdp_redirect.i, align 8
  %add9.i = add i64 %126, %124
  store i64 %add9.i, ptr %rx_xsk_xdp_redirect.i, align 8
  %wqe_err.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 20
  %127 = ptrtoint ptr %wqe_err.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %wqe_err.i, align 8
  %129 = ptrtoint ptr %rx_xsk_wqe_err.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %rx_xsk_wqe_err.i, align 8
  %add10.i = add i64 %130, %128
  store i64 %add10.i, ptr %rx_xsk_wqe_err.i, align 8
  %mpwqe_filler_cqes.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 21
  %131 = ptrtoint ptr %mpwqe_filler_cqes.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %mpwqe_filler_cqes.i, align 8
  %133 = ptrtoint ptr %rx_xsk_mpwqe_filler_cqes.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %rx_xsk_mpwqe_filler_cqes.i, align 8
  %add11.i = add i64 %134, %132
  store i64 %add11.i, ptr %rx_xsk_mpwqe_filler_cqes.i, align 8
  %mpwqe_filler_strides.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 22
  %135 = ptrtoint ptr %mpwqe_filler_strides.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %mpwqe_filler_strides.i, align 8
  %137 = ptrtoint ptr %rx_xsk_mpwqe_filler_strides.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %rx_xsk_mpwqe_filler_strides.i, align 8
  %add12.i = add i64 %138, %136
  store i64 %add12.i, ptr %rx_xsk_mpwqe_filler_strides.i, align 8
  %oversize_pkts_sw_drop.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 23
  %139 = ptrtoint ptr %oversize_pkts_sw_drop.i to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %oversize_pkts_sw_drop.i, align 8
  %141 = ptrtoint ptr %rx_xsk_oversize_pkts_sw_drop.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %rx_xsk_oversize_pkts_sw_drop.i, align 8
  %add13.i = add i64 %142, %140
  store i64 %add13.i, ptr %rx_xsk_oversize_pkts_sw_drop.i, align 8
  %buff_alloc_err.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 24
  %143 = ptrtoint ptr %buff_alloc_err.i to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %buff_alloc_err.i, align 8
  %145 = ptrtoint ptr %rx_xsk_buff_alloc_err.i to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %rx_xsk_buff_alloc_err.i, align 8
  %add14.i = add i64 %146, %144
  store i64 %add14.i, ptr %rx_xsk_buff_alloc_err.i, align 8
  %cqe_compress_blks.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 25
  %147 = ptrtoint ptr %cqe_compress_blks.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %cqe_compress_blks.i, align 8
  %149 = ptrtoint ptr %rx_xsk_cqe_compress_blks.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %rx_xsk_cqe_compress_blks.i, align 8
  %add15.i = add i64 %150, %148
  store i64 %add15.i, ptr %rx_xsk_cqe_compress_blks.i, align 8
  %cqe_compress_pkts.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 26
  %151 = ptrtoint ptr %cqe_compress_pkts.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %cqe_compress_pkts.i, align 8
  %153 = ptrtoint ptr %rx_xsk_cqe_compress_pkts.i to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %rx_xsk_cqe_compress_pkts.i, align 8
  %add16.i = add i64 %154, %152
  store i64 %add16.i, ptr %rx_xsk_cqe_compress_pkts.i, align 8
  %congst_umr.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 32
  %155 = ptrtoint ptr %congst_umr.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %congst_umr.i, align 8
  %157 = ptrtoint ptr %rx_xsk_congst_umr.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %rx_xsk_congst_umr.i, align 8
  %add17.i = add i64 %158, %156
  store i64 %add17.i, ptr %rx_xsk_congst_umr.i, align 8
  %arfs_err.i = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 4, i32 33
  %159 = ptrtoint ptr %arfs_err.i to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arfs_err.i, align 8
  %161 = ptrtoint ptr %rx_xsk_arfs_err.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %rx_xsk_arfs_err.i, align 8
  %add18.i = add i64 %162, %160
  store i64 %add18.i, ptr %rx_xsk_arfs_err.i, align 8
  %xsksq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 8
  %163 = ptrtoint ptr %xsksq to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %xsksq, align 128
  %165 = ptrtoint ptr %tx_xsk_xmit.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %tx_xsk_xmit.i, align 8
  %add.i62 = add i64 %166, %164
  store i64 %add.i62, ptr %tx_xsk_xmit.i, align 8
  %mpwqe.i63 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 8, i32 1
  %167 = ptrtoint ptr %mpwqe.i63 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %mpwqe.i63, align 8
  %169 = ptrtoint ptr %tx_xsk_mpwqe.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %tx_xsk_mpwqe.i, align 8
  %add1.i64 = add i64 %170, %168
  store i64 %add1.i64, ptr %tx_xsk_mpwqe.i, align 8
  %inlnw.i65 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 8, i32 2
  %171 = ptrtoint ptr %inlnw.i65 to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %inlnw.i65, align 16
  %173 = ptrtoint ptr %tx_xsk_inlnw.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %tx_xsk_inlnw.i, align 8
  %add2.i66 = add i64 %174, %172
  store i64 %add2.i66, ptr %tx_xsk_inlnw.i, align 8
  %full.i67 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 8, i32 4
  %175 = ptrtoint ptr %full.i67 to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %full.i67, align 32
  %177 = ptrtoint ptr %tx_xsk_full.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %tx_xsk_full.i, align 8
  %add3.i68 = add i64 %178, %176
  store i64 %add3.i68, ptr %tx_xsk_full.i, align 8
  %err.i69 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 8, i32 5
  %179 = ptrtoint ptr %err.i69 to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %err.i69, align 8
  %181 = ptrtoint ptr %tx_xsk_err.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %tx_xsk_err.i, align 8
  %add4.i70 = add i64 %182, %180
  store i64 %add4.i70, ptr %tx_xsk_err.i, align 8
  %cqes.i71 = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 8, i32 7
  %183 = ptrtoint ptr %cqes.i71 to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %cqes.i71, align 128
  %185 = ptrtoint ptr %tx_xsk_cqes.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %tx_xsk_cqes.i, align 8
  %add5.i72 = add i64 %186, %184
  store i64 %add5.i72, ptr %tx_xsk_cqes.i, align 8
  %187 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %max_opened_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp578.not = icmp eq i8 %188, 0
  br i1 %cmp578.not, label %for.body.for.end_crit_edge, label %for.body.for.body7_crit_edge

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %j.079 = phi i32 [ %inc, %for.body7.for.body7_crit_edge ], [ 0, %for.body.for.body7_crit_edge ]
  %arrayidx8 = getelementptr %struct.mlx5e_channel_stats, ptr %6, i32 0, i32 2, i32 %j.079
  tail call fastcc void @mlx5e_stats_grp_sw_update_stats_sq(ptr noundef %stats, ptr noundef %arrayidx8)
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !124
  %inc = add nuw nsw i32 %j.079, 1
  %189 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %max_opened_tc, align 4
  %conv4 = zext i8 %190 to i32
  %cmp5 = icmp ult i32 %inc, %conv4
  br i1 %cmp5, label %for.body7.for.body7_crit_edge, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc10 = add nuw nsw i32 %i.082, 1
  %191 = ptrtoint ptr %stats_nch to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %stats_nch, align 128
  %conv = zext i16 %192 to i32
  %cmp = icmp ult i32 %inc10, %conv
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end11_crit_edge

for.end.for.end11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end11

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end11:                                        ; preds = %for.end.for.end11_crit_edge, %entry.for.end11_crit_edge
  %tx_ptp_opened.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 32
  %193 = ptrtoint ptr %tx_ptp_opened.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %tx_ptp_opened.i, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i = icmp eq i8 %194, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.end11.if.end.i_crit_edge

for.end11.if.end.i_crit_edge:                     ; preds = %for.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.end11
  %rx_ptp_opened.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %195 = ptrtoint ptr %rx_ptp_opened.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %rx_ptp_opened.i, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool1.not.i = icmp eq i8 %196, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.mlx5e_stats_grp_sw_update_stats_ptp.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i.mlx5e_stats_grp_sw_update_stats_ptp.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_grp_sw_update_stats_ptp.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.end11.if.end.i_crit_edge
  %ptp_stats.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28
  %197 = ptrtoint ptr %ptp_stats.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %ptp_stats.i, align 8
  %ch_events.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 69
  %199 = ptrtoint ptr %ch_events.i.i to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %ch_events.i.i, align 8
  %add.i.i = add i64 %200, %198
  store i64 %add.i.i, ptr %ch_events.i.i, align 8
  %poll.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 1
  %201 = ptrtoint ptr %poll.i.i to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %poll.i.i, align 8
  %ch_poll.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 70
  %203 = ptrtoint ptr %ch_poll.i.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %ch_poll.i.i, align 8
  %add1.i.i = add i64 %204, %202
  store i64 %add1.i.i, ptr %ch_poll.i.i, align 8
  %arm.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 2
  %205 = ptrtoint ptr %arm.i.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %arm.i.i, align 8
  %ch_arm.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 71
  %207 = ptrtoint ptr %ch_arm.i.i to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %ch_arm.i.i, align 8
  %add2.i.i = add i64 %208, %206
  store i64 %add2.i.i, ptr %ch_arm.i.i, align 8
  %aff_change.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 3
  %209 = ptrtoint ptr %aff_change.i.i to i32
  call void @__asan_load8_noabort(i32 %209)
  %210 = load i64, ptr %aff_change.i.i, align 8
  %ch_aff_change.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 72
  %211 = ptrtoint ptr %ch_aff_change.i.i to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %ch_aff_change.i.i, align 8
  %add3.i.i = add i64 %212, %210
  store i64 %add3.i.i, ptr %ch_aff_change.i.i, align 8
  %force_irq.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 4
  %213 = ptrtoint ptr %force_irq.i.i to i32
  call void @__asan_load8_noabort(i32 %213)
  %214 = load i64, ptr %force_irq.i.i, align 8
  %ch_force_irq.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 73
  %215 = ptrtoint ptr %ch_force_irq.i.i to i32
  call void @__asan_load8_noabort(i32 %215)
  %216 = load i64, ptr %ch_force_irq.i.i, align 8
  %add4.i.i = add i64 %216, %214
  store i64 %add4.i.i, ptr %ch_force_irq.i.i, align 8
  %eq_rearm.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 5
  %217 = ptrtoint ptr %eq_rearm.i.i to i32
  call void @__asan_load8_noabort(i32 %217)
  %218 = load i64, ptr %eq_rearm.i.i, align 8
  %ch_eq_rearm.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 0, i32 74
  %219 = ptrtoint ptr %ch_eq_rearm.i.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %ch_eq_rearm.i.i, align 8
  %add5.i.i = add i64 %220, %218
  store i64 %add5.i.i, ptr %ch_eq_rearm.i.i, align 8
  br i1 %tobool.not.i, label %if.end.i.if.end7.i_crit_edge, label %for.cond.preheader.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %max_opened_tc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  %221 = ptrtoint ptr %max_opened_tc.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %max_opened_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %cmp25.not.i = icmp eq i8 %222, 0
  br i1 %cmp25.not.i, label %for.cond.preheader.i.if.end7.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end7.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 2, i32 %i.026.i
  tail call fastcc void @mlx5e_stats_grp_sw_update_stats_sq(ptr noundef %stats, ptr noundef %arrayidx.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !126
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %223 = ptrtoint ptr %max_opened_tc.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %max_opened_tc.i, align 4
  %conv.i = zext i8 %224 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end7.i_crit_edge

for.body.i.if.end7.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end7.i:                                        ; preds = %for.body.i.if.end7.i_crit_edge, %for.cond.preheader.i.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %rx_ptp_opened8.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %225 = ptrtoint ptr %rx_ptp_opened8.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %rx_ptp_opened8.i, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %tobool9.not.i = icmp eq i8 %226, 0
  br i1 %tobool9.not.i, label %if.end7.i.mlx5e_stats_grp_sw_update_stats_ptp.exit_crit_edge, label %if.then10.i

if.end7.i.mlx5e_stats_grp_sw_update_stats_ptp.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_grp_sw_update_stats_ptp.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %rq.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 4
  tail call fastcc void @mlx5e_stats_grp_sw_update_stats_rq_stats(ptr noundef %stats, ptr noundef %rq.i) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !127
  br label %mlx5e_stats_grp_sw_update_stats_ptp.exit

mlx5e_stats_grp_sw_update_stats_ptp.exit:         ; preds = %if.then10.i, %if.end7.i.mlx5e_stats_grp_sw_update_stats_ptp.exit_crit_edge, %land.lhs.true.i.mlx5e_stats_grp_sw_update_stats_ptp.exit_crit_edge
  %max_qos_sqs1.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 3
  %227 = ptrtoint ptr %max_qos_sqs1.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load volatile i16, ptr %max_qos_sqs1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %qos_sq_stats.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 2
  %229 = ptrtoint ptr %qos_sq_stats.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile ptr, ptr %qos_sq_stats.i, align 32
  %conv.i73 = zext i16 %228 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %cmp19.not.i = icmp eq i16 %228, 0
  br i1 %cmp19.not.i, label %mlx5e_stats_grp_sw_update_stats_ptp.exit.mlx5e_stats_grp_sw_update_stats_qos.exit_crit_edge, label %mlx5e_stats_grp_sw_update_stats_ptp.exit.for.body.i76_crit_edge

mlx5e_stats_grp_sw_update_stats_ptp.exit.for.body.i76_crit_edge: ; preds = %mlx5e_stats_grp_sw_update_stats_ptp.exit
  br label %for.body.i76

mlx5e_stats_grp_sw_update_stats_ptp.exit.mlx5e_stats_grp_sw_update_stats_qos.exit_crit_edge: ; preds = %mlx5e_stats_grp_sw_update_stats_ptp.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_grp_sw_update_stats_qos.exit

for.body.i76:                                     ; preds = %for.body.i76.for.body.i76_crit_edge, %mlx5e_stats_grp_sw_update_stats_ptp.exit.for.body.i76_crit_edge
  %i.020.i = phi i32 [ %inc.i75, %for.body.i76.for.body.i76_crit_edge ], [ 0, %mlx5e_stats_grp_sw_update_stats_ptp.exit.for.body.i76_crit_edge ]
  %arrayidx.i74 = getelementptr ptr, ptr %230, i32 %i.020.i
  %231 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile ptr, ptr %arrayidx.i74, align 4
  tail call fastcc void @mlx5e_stats_grp_sw_update_stats_sq(ptr noundef %stats, ptr noundef %232) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !129
  %inc.i75 = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i75, %conv.i73
  br i1 %exitcond.not.i, label %for.body.i76.mlx5e_stats_grp_sw_update_stats_qos.exit_crit_edge, label %for.body.i76.for.body.i76_crit_edge

for.body.i76.for.body.i76_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i76

for.body.i76.mlx5e_stats_grp_sw_update_stats_qos.exit_crit_edge: ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_stats_grp_sw_update_stats_qos.exit

mlx5e_stats_grp_sw_update_stats_qos.exit:         ; preds = %for.body.i76.mlx5e_stats_grp_sw_update_stats_qos.exit_crit_edge, %mlx5e_stats_grp_sw_update_stats_ptp.exit.mlx5e_stats_grp_sw_update_stats_qos.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_qcnt_num_stats(ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 35
  %0 = ptrtoint ptr %q_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %q_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp ne i16 %1, 0
  %spec.select = zext i1 %tobool.not to i32
  %drop_rq_q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 36
  %2 = ptrtoint ptr %drop_rq_q_counter to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %drop_rq_q_counter, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  %add3 = select i1 %tobool.not, i32 2, i32 1
  %num_stats.1 = select i1 %tobool1.not, i32 %spec.select, i32 %add3
  ret i32 %num_stats.1
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_qcnt_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 35
  %0 = ptrtoint ptr %q_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %q_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %idx, 1
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @q_stats_desc) #17
  br label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %idx.addr.0.lcssa = phi i32 [ %inc, %for.body ], [ %idx, %entry.for.end_crit_edge ]
  %drop_rq_q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 36
  %2 = ptrtoint ptr %drop_rq_q_counter to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %drop_rq_q_counter, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  br i1 %tobool7.not, label %for.end.for.end19_crit_edge, label %for.body9

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end19

for.body9:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %inc10 = add i32 %idx.addr.0.lcssa, 1
  %mul11 = shl i32 %idx.addr.0.lcssa, 5
  %add.ptr12 = getelementptr i8, ptr %data, i32 %mul11
  %call16 = tail call ptr @strcpy(ptr noundef %add.ptr12, ptr noundef nonnull @drop_rq_stats_desc) #17
  br label %for.end19

for.end19:                                        ; preds = %for.body9, %for.end.for.end19_crit_edge
  %idx.addr.1.lcssa = phi i32 [ %inc10, %for.body9 ], [ %idx.addr.0.lcssa, %for.end.for.end19_crit_edge ]
  ret i32 %idx.addr.1.lcssa
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_qcnt_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 35
  %0 = ptrtoint ptr %q_counter to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %q_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %qcnt = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 1
  %2 = ptrtoint ptr %qcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qcnt, align 4
  %conv1 = zext i32 %3 to i64
  %inc = add i32 %idx, 1
  %arrayidx2 = getelementptr i64, ptr %data, i32 %idx
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv1, ptr %arrayidx2, align 8
  br label %for.end

for.end:                                          ; preds = %for.body, %entry.for.end_crit_edge
  %idx.addr.0.lcssa = phi i32 [ %inc, %for.body ], [ %idx, %entry.for.end_crit_edge ]
  %drop_rq_q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 36
  %5 = ptrtoint ptr %drop_rq_q_counter to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %drop_rq_q_counter, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool9.not = icmp eq i16 %6, 0
  br i1 %tobool9.not, label %for.end.for.end22_crit_edge, label %for.body11

for.end.for.end22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end22

for.body11:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr16 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 1, i32 1
  %7 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr16, align 4
  %conv17 = zext i32 %8 to i64
  %inc18 = add i32 %idx.addr.0.lcssa, 1
  %arrayidx19 = getelementptr i64, ptr %data, i32 %idx.addr.0.lcssa
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv17, ptr %arrayidx19, align 8
  br label %for.end22

for.end22:                                        ; preds = %for.body11, %for.end.for.end22_crit_edge
  %idx.addr.1.lcssa = phi i32 [ %inc18, %for.body11 ], [ %idx.addr.0.lcssa, %for.end.for.end22_crit_edge ]
  ret i32 %idx.addr.1.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_qcnt_update_stats(ptr nocapture noundef %priv) #0 align 64 {
entry:
  %out = alloca [64 x i32], align 4
  %in = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %qcnt1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 1
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %out) #14
  %0 = call ptr @memset(ptr %out, i32 0, i32 256)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #14
  %1 = getelementptr inbounds i8, ptr %in, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 28)
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 124977152, ptr %in, align 4
  %q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 35
  %4 = ptrtoint ptr %q_counter to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %q_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %do.body8

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

do.body8:                                         ; preds = %entry
  %add.ptr15 = getelementptr inbounds i32, ptr %in, i32 7
  %6 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr15, align 4
  %and16 = and i32 %7, -256
  %8 = and i16 %5, 255
  %and17 = zext i16 %8 to i32
  %or19 = or i32 %and16, %and17
  store i32 %or19, ptr %add.ptr15, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 64
  %call = call i32 @mlx5_cmd_exec(ptr noundef %10, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 256) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool26.not = icmp eq i32 %call, 0
  br i1 %tobool26.not, label %if.then27, label %do.body8.if.end31_crit_edge

do.body8.if.end31_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end31

if.then27:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr29 = getelementptr inbounds i32, ptr %out, i32 12
  %11 = ptrtoint ptr %add.ptr29 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr29, align 4
  %13 = ptrtoint ptr %qcnt1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %qcnt1, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %do.body8.if.end31_crit_edge, %entry.if.end31_crit_edge
  %drop_rq_q_counter = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 36
  %14 = ptrtoint ptr %drop_rq_q_counter to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %drop_rq_q_counter, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool32.not = icmp eq i16 %15, 0
  br i1 %tobool32.not, label %if.end31.if.end63_crit_edge, label %do.body34

if.end31.if.end63_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

do.body34:                                        ; preds = %if.end31
  %add.ptr42 = getelementptr inbounds i32, ptr %in, i32 7
  %16 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr42, align 4
  %and43 = and i32 %17, -256
  %18 = and i16 %15, 255
  %and44 = zext i16 %18 to i32
  %or46 = or i32 %and43, %and44
  store i32 %or46, ptr %add.ptr42, align 4
  %mdev52 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %19 = ptrtoint ptr %mdev52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev52, align 64
  %call55 = call i32 @mlx5_cmd_exec(ptr noundef %20, ptr noundef nonnull %in, i32 noundef 32, ptr noundef nonnull %out, i32 noundef 256) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then57, label %do.body34.if.end63_crit_edge

do.body34.if.end63_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end63

if.then57:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr59 = getelementptr inbounds i32, ptr %out, i32 12
  %21 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr59, align 4
  %rx_if_down_packets = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 1, i32 1
  %23 = ptrtoint ptr %rx_if_down_packets to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_if_down_packets, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then57, %do.body34.if.end63_crit_edge, %if.end31.if.end63_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %out) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_vnic_env_num_stats(ptr nocapture noundef readonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 26
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %.lobit = lshr i32 %5, 31
  %add.ptr7 = getelementptr i32, ptr %3, i32 11
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr7, align 4
  %8 = lshr i32 %7, 19
  %.lobit13 = and i32 %8, 1
  %add = add nuw nsw i32 %.lobit13, %.lobit
  ret i32 %add
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_vnic_env_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps39 = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps39 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps39, align 8
  %add.ptr40 = getelementptr i32, ptr %3, i32 26
  %4 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp42.not = icmp sgt i32 %5, -1
  br i1 %cmp42.not, label %entry.for.cond5.preheader_crit_edge, label %for.body.preheader

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond5.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %idx, 1
  %mul = shl i32 %idx, 5
  %add.ptr1 = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr1, ptr noundef nonnull @vnic_env_stats_steer_desc) #17
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body.preheader, %entry.for.cond5.preheader_crit_edge
  %idx.addr.0.lcssa = phi i32 [ %idx, %entry.for.cond5.preheader_crit_edge ], [ %inc, %for.body.preheader ]
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 64
  %caps745 = getelementptr inbounds %struct.mlx5_core_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %caps745 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps745, align 8
  %add.ptr1246 = getelementptr i32, ptr %9, i32 11
  %10 = ptrtoint ptr %add.ptr1246 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr1246, align 4
  %12 = and i32 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1748.not = icmp eq i32 %12, 0
  br i1 %cmp1748.not, label %for.cond5.preheader.for.end28_crit_edge, label %for.body18.preheader

for.cond5.preheader.for.end28_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end28

for.body18.preheader:                             ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %inc19 = add i32 %idx.addr.0.lcssa, 1
  %mul20 = shl i32 %idx.addr.0.lcssa, 5
  %add.ptr21 = getelementptr i8, ptr %data, i32 %mul20
  %call25 = tail call ptr @strcpy(ptr noundef %add.ptr21, ptr noundef nonnull @vnic_env_stats_dev_oob_desc) #17
  br label %for.end28

for.end28:                                        ; preds = %for.body18.preheader, %for.cond5.preheader.for.end28_crit_edge
  %idx.addr.1.lcssa = phi i32 [ %idx.addr.0.lcssa, %for.cond5.preheader.for.end28_crit_edge ], [ %inc19, %for.body18.preheader ]
  ret i32 %idx.addr.1.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_vnic_env_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps44 = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps44 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps44, align 8
  %add.ptr45 = getelementptr i32, ptr %3, i32 26
  %4 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp47.not = icmp sgt i32 %5, -1
  br i1 %cmp47.not, label %entry.for.cond6.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond6.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond6.preheader

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3, align 8
  %inc = add i32 %idx, 1
  %arrayidx4 = getelementptr i64, ptr %data, i32 %idx
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx4, align 8
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.body.lr.ph, %entry.for.cond6.preheader_crit_edge
  %idx.addr.0.lcssa = phi i32 [ %idx, %entry.for.cond6.preheader_crit_edge ], [ %inc, %for.body.lr.ph ]
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 64
  %caps850 = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps850 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps850, align 8
  %add.ptr1351 = getelementptr i32, ptr %12, i32 11
  %13 = ptrtoint ptr %add.ptr1351 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr1351, align 4
  %15 = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1853.not = icmp eq i32 %15, 0
  br i1 %cmp1853.not, label %for.cond6.preheader.for.end31_crit_edge, label %for.body19.lr.ph

for.cond6.preheader.for.end31_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end31

for.body19.lr.ph:                                 ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %vnic21 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 2
  %add.ptr26 = getelementptr i8, ptr %vnic21, i32 76
  %16 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr26, align 4
  %conv = zext i32 %17 to i64
  %inc27 = add i32 %idx.addr.0.lcssa, 1
  %arrayidx28 = getelementptr i64, ptr %data, i32 %idx.addr.0.lcssa
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv, ptr %arrayidx28, align 8
  br label %for.end31

for.end31:                                        ; preds = %for.body19.lr.ph, %for.cond6.preheader.for.end31_crit_edge
  %idx.addr.1.lcssa = phi i32 [ %idx.addr.0.lcssa, %for.cond6.preheader.for.end31_crit_edge ], [ %inc27, %for.body19.lr.ph ]
  ret i32 %idx.addr.1.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_vnic_env_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #14
  %0 = call ptr @memset(ptr %in, i32 0, i32 16)
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 26
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %vnic = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 2
  %7 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in, align 4
  %and7 = and i32 %8, 65535
  %or = or i32 %and7, 124715008
  store i32 %or, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %2, ptr noundef nonnull %in, i32 noundef 16, ptr noundef %vnic, i32 noundef 528) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_vport_num_stats(ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 20
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_vport_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @vport_stats_desc) #17
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 1)) #17
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 2)) #17
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 3)) #17
  %inc.3 = shl i32 %idx, 5
  %mul.4 = add i32 %inc.3, 128
  %add.ptr.4 = getelementptr i8, ptr %data, i32 %mul.4
  %call.4 = tail call ptr @strcpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 4)) #17
  %inc.4 = shl i32 %idx, 5
  %mul.5 = add i32 %inc.4, 160
  %add.ptr.5 = getelementptr i8, ptr %data, i32 %mul.5
  %call.5 = tail call ptr @strcpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 5)) #17
  %inc.5 = shl i32 %idx, 5
  %mul.6 = add i32 %inc.5, 192
  %add.ptr.6 = getelementptr i8, ptr %data, i32 %mul.6
  %call.6 = tail call ptr @strcpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 6)) #17
  %inc.6 = shl i32 %idx, 5
  %mul.7 = add i32 %inc.6, 224
  %add.ptr.7 = getelementptr i8, ptr %data, i32 %mul.7
  %call.7 = tail call ptr @strcpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 7)) #17
  %inc.7 = shl i32 %idx, 5
  %mul.8 = add i32 %inc.7, 256
  %add.ptr.8 = getelementptr i8, ptr %data, i32 %mul.8
  %call.8 = tail call ptr @strcpy(ptr noundef %add.ptr.8, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 8)) #17
  %inc.8 = shl i32 %idx, 5
  %mul.9 = add i32 %inc.8, 288
  %add.ptr.9 = getelementptr i8, ptr %data, i32 %mul.9
  %call.9 = tail call ptr @strcpy(ptr noundef %add.ptr.9, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 9)) #17
  %inc.9 = shl i32 %idx, 5
  %mul.10 = add i32 %inc.9, 320
  %add.ptr.10 = getelementptr i8, ptr %data, i32 %mul.10
  %call.10 = tail call ptr @strcpy(ptr noundef %add.ptr.10, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 10)) #17
  %inc.10 = shl i32 %idx, 5
  %mul.11 = add i32 %inc.10, 352
  %add.ptr.11 = getelementptr i8, ptr %data, i32 %mul.11
  %call.11 = tail call ptr @strcpy(ptr noundef %add.ptr.11, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 11)) #17
  %inc.11 = shl i32 %idx, 5
  %mul.12 = add i32 %inc.11, 384
  %add.ptr.12 = getelementptr i8, ptr %data, i32 %mul.12
  %call.12 = tail call ptr @strcpy(ptr noundef %add.ptr.12, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 12)) #17
  %inc.12 = shl i32 %idx, 5
  %mul.13 = add i32 %inc.12, 416
  %add.ptr.13 = getelementptr i8, ptr %data, i32 %mul.13
  %call.13 = tail call ptr @strcpy(ptr noundef %add.ptr.13, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 13)) #17
  %inc.13 = shl i32 %idx, 5
  %mul.14 = add i32 %inc.13, 448
  %add.ptr.14 = getelementptr i8, ptr %data, i32 %mul.14
  %call.14 = tail call ptr @strcpy(ptr noundef %add.ptr.14, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 14)) #17
  %inc.14 = shl i32 %idx, 5
  %mul.15 = add i32 %inc.14, 480
  %add.ptr.15 = getelementptr i8, ptr %data, i32 %mul.15
  %call.15 = tail call ptr @strcpy(ptr noundef %add.ptr.15, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 15)) #17
  %inc.15 = shl i32 %idx, 5
  %mul.16 = add i32 %inc.15, 512
  %add.ptr.16 = getelementptr i8, ptr %data, i32 %mul.16
  %call.16 = tail call ptr @strcpy(ptr noundef %add.ptr.16, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 16)) #17
  %inc.16 = shl i32 %idx, 5
  %mul.17 = add i32 %inc.16, 544
  %add.ptr.17 = getelementptr i8, ptr %data, i32 %mul.17
  %call.17 = tail call ptr @strcpy(ptr noundef %add.ptr.17, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 17)) #17
  %inc.17 = shl i32 %idx, 5
  %mul.18 = add i32 %inc.17, 576
  %add.ptr.18 = getelementptr i8, ptr %data, i32 %mul.18
  %call.18 = tail call ptr @strcpy(ptr noundef %add.ptr.18, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 18)) #17
  %inc.19 = add i32 %idx, 20
  %inc.18 = shl i32 %idx, 5
  %mul.19 = add i32 %inc.18, 608
  %add.ptr.19 = getelementptr i8, ptr %data, i32 %mul.19
  %call.19 = tail call ptr @strcpy(ptr noundef %add.ptr.19, ptr noundef getelementptr inbounds ([20 x %struct.counter_desc], ptr @vport_stats_desc, i32 0, i32 19)) #17
  ret i32 %inc.19
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_vport_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 18
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %inc = add i32 %idx, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %arrayidx1, align 8
  %add.ptr.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 19
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx1.1 = getelementptr i64, ptr %data, i32 %inc
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1, align 8
  %add.ptr.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 20
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx1.2 = getelementptr i64, ptr %data, i32 %inc.1
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2, align 8
  %add.ptr.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 21
  %9 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx, 4
  %arrayidx1.3 = getelementptr i64, ptr %data, i32 %inc.2
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx1.3, align 8
  %add.ptr.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 22
  %12 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4, align 8
  %inc.4 = add i32 %idx, 5
  %arrayidx1.4 = getelementptr i64, ptr %data, i32 %inc.3
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx1.4, align 8
  %add.ptr.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 23
  %15 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.5, align 8
  %inc.5 = add i32 %idx, 6
  %arrayidx1.5 = getelementptr i64, ptr %data, i32 %inc.4
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx1.5, align 8
  %add.ptr.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 24
  %18 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.6, align 8
  %inc.6 = add i32 %idx, 7
  %arrayidx1.6 = getelementptr i64, ptr %data, i32 %inc.5
  %20 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx1.6, align 8
  %add.ptr.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 25
  %21 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.7, align 8
  %inc.7 = add i32 %idx, 8
  %arrayidx1.7 = getelementptr i64, ptr %data, i32 %inc.6
  %23 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx1.7, align 8
  %add.ptr.8 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 14
  %24 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.8, align 8
  %inc.8 = add i32 %idx, 9
  %arrayidx1.8 = getelementptr i64, ptr %data, i32 %inc.7
  %26 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx1.8, align 8
  %add.ptr.9 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 15
  %27 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.9, align 8
  %inc.9 = add i32 %idx, 10
  %arrayidx1.9 = getelementptr i64, ptr %data, i32 %inc.8
  %29 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx1.9, align 8
  %add.ptr.10 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 16
  %30 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.10, align 8
  %inc.10 = add i32 %idx, 11
  %arrayidx1.10 = getelementptr i64, ptr %data, i32 %inc.9
  %32 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx1.10, align 8
  %add.ptr.11 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 17
  %33 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.11, align 8
  %inc.11 = add i32 %idx, 12
  %arrayidx1.11 = getelementptr i64, ptr %data, i32 %inc.10
  %35 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx1.11, align 8
  %add.ptr.12 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 6
  %36 = ptrtoint ptr %add.ptr.12 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr.12, align 8
  %inc.12 = add i32 %idx, 13
  %arrayidx1.12 = getelementptr i64, ptr %data, i32 %inc.11
  %38 = ptrtoint ptr %arrayidx1.12 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx1.12, align 8
  %add.ptr.13 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 7
  %39 = ptrtoint ptr %add.ptr.13 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.13, align 8
  %inc.13 = add i32 %idx, 14
  %arrayidx1.13 = getelementptr i64, ptr %data, i32 %inc.12
  %41 = ptrtoint ptr %arrayidx1.13 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx1.13, align 8
  %add.ptr.14 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 8
  %42 = ptrtoint ptr %add.ptr.14 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.14, align 8
  %inc.14 = add i32 %idx, 15
  %arrayidx1.14 = getelementptr i64, ptr %data, i32 %inc.13
  %44 = ptrtoint ptr %arrayidx1.14 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx1.14, align 8
  %add.ptr.15 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 9
  %45 = ptrtoint ptr %add.ptr.15 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.15, align 8
  %inc.15 = add i32 %idx, 16
  %arrayidx1.15 = getelementptr i64, ptr %data, i32 %inc.14
  %47 = ptrtoint ptr %arrayidx1.15 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx1.15, align 8
  %add.ptr.16 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 10
  %48 = ptrtoint ptr %add.ptr.16 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.16, align 8
  %inc.16 = add i32 %idx, 17
  %arrayidx1.16 = getelementptr i64, ptr %data, i32 %inc.15
  %50 = ptrtoint ptr %arrayidx1.16 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx1.16, align 8
  %add.ptr.17 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 11
  %51 = ptrtoint ptr %add.ptr.17 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.17, align 8
  %inc.17 = add i32 %idx, 18
  %arrayidx1.17 = getelementptr i64, ptr %data, i32 %inc.16
  %53 = ptrtoint ptr %arrayidx1.17 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx1.17, align 8
  %add.ptr.18 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 12
  %54 = ptrtoint ptr %add.ptr.18 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr.18, align 8
  %inc.18 = add i32 %idx, 19
  %arrayidx1.18 = getelementptr i64, ptr %data, i32 %inc.17
  %56 = ptrtoint ptr %arrayidx1.18 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx1.18, align 8
  %add.ptr.19 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3, i32 0, i32 13
  %57 = ptrtoint ptr %add.ptr.19 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr.19, align 8
  %inc.19 = add i32 %idx, 20
  %arrayidx1.19 = getelementptr i64, ptr %data, i32 %inc.18
  %59 = ptrtoint ptr %arrayidx1.19 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx1.19, align 8
  ret i32 %inc.19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_vport_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vport = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %in) #14
  %0 = getelementptr inbounds i8, ptr %in, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 28)
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 64
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 124780544, ptr %in, align 4
  %call = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in, i32 noundef 32, ptr noundef %vport, i32 noundef 528) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_802_3_num_stats(ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 18
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_802_3_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @pport_802_3_stats_desc) #17
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 1)) #17
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 2)) #17
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 3)) #17
  %inc.3 = shl i32 %idx, 5
  %mul.4 = add i32 %inc.3, 128
  %add.ptr.4 = getelementptr i8, ptr %data, i32 %mul.4
  %call.4 = tail call ptr @strcpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 4)) #17
  %inc.4 = shl i32 %idx, 5
  %mul.5 = add i32 %inc.4, 160
  %add.ptr.5 = getelementptr i8, ptr %data, i32 %mul.5
  %call.5 = tail call ptr @strcpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 5)) #17
  %inc.5 = shl i32 %idx, 5
  %mul.6 = add i32 %inc.5, 192
  %add.ptr.6 = getelementptr i8, ptr %data, i32 %mul.6
  %call.6 = tail call ptr @strcpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 6)) #17
  %inc.6 = shl i32 %idx, 5
  %mul.7 = add i32 %inc.6, 224
  %add.ptr.7 = getelementptr i8, ptr %data, i32 %mul.7
  %call.7 = tail call ptr @strcpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 7)) #17
  %inc.7 = shl i32 %idx, 5
  %mul.8 = add i32 %inc.7, 256
  %add.ptr.8 = getelementptr i8, ptr %data, i32 %mul.8
  %call.8 = tail call ptr @strcpy(ptr noundef %add.ptr.8, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 8)) #17
  %inc.8 = shl i32 %idx, 5
  %mul.9 = add i32 %inc.8, 288
  %add.ptr.9 = getelementptr i8, ptr %data, i32 %mul.9
  %call.9 = tail call ptr @strcpy(ptr noundef %add.ptr.9, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 9)) #17
  %inc.9 = shl i32 %idx, 5
  %mul.10 = add i32 %inc.9, 320
  %add.ptr.10 = getelementptr i8, ptr %data, i32 %mul.10
  %call.10 = tail call ptr @strcpy(ptr noundef %add.ptr.10, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 10)) #17
  %inc.10 = shl i32 %idx, 5
  %mul.11 = add i32 %inc.10, 352
  %add.ptr.11 = getelementptr i8, ptr %data, i32 %mul.11
  %call.11 = tail call ptr @strcpy(ptr noundef %add.ptr.11, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 11)) #17
  %inc.11 = shl i32 %idx, 5
  %mul.12 = add i32 %inc.11, 384
  %add.ptr.12 = getelementptr i8, ptr %data, i32 %mul.12
  %call.12 = tail call ptr @strcpy(ptr noundef %add.ptr.12, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 12)) #17
  %inc.12 = shl i32 %idx, 5
  %mul.13 = add i32 %inc.12, 416
  %add.ptr.13 = getelementptr i8, ptr %data, i32 %mul.13
  %call.13 = tail call ptr @strcpy(ptr noundef %add.ptr.13, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 13)) #17
  %inc.13 = shl i32 %idx, 5
  %mul.14 = add i32 %inc.13, 448
  %add.ptr.14 = getelementptr i8, ptr %data, i32 %mul.14
  %call.14 = tail call ptr @strcpy(ptr noundef %add.ptr.14, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 14)) #17
  %inc.14 = shl i32 %idx, 5
  %mul.15 = add i32 %inc.14, 480
  %add.ptr.15 = getelementptr i8, ptr %data, i32 %mul.15
  %call.15 = tail call ptr @strcpy(ptr noundef %add.ptr.15, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 15)) #17
  %inc.15 = shl i32 %idx, 5
  %mul.16 = add i32 %inc.15, 512
  %add.ptr.16 = getelementptr i8, ptr %data, i32 %mul.16
  %call.16 = tail call ptr @strcpy(ptr noundef %add.ptr.16, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 16)) #17
  %inc.17 = add i32 %idx, 18
  %inc.16 = shl i32 %idx, 5
  %mul.17 = add i32 %inc.16, 544
  %add.ptr.17 = getelementptr i8, ptr %data, i32 %mul.17
  %call.17 = tail call ptr @strcpy(ptr noundef %add.ptr.17, ptr noundef getelementptr inbounds ([18 x %struct.counter_desc], ptr @pport_802_3_stats_desc, i32 0, i32 17)) #17
  ret i32 %inc.17
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_802_3_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %inc = add i32 %idx, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %arrayidx1, align 8
  %add.ptr.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 2
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx1.1 = getelementptr i64, ptr %data, i32 %inc
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1, align 8
  %add.ptr.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 3
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx1.2 = getelementptr i64, ptr %data, i32 %inc.1
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2, align 8
  %add.ptr.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 5
  %9 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx, 4
  %arrayidx1.3 = getelementptr i64, ptr %data, i32 %inc.2
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx1.3, align 8
  %add.ptr.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 6
  %12 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4, align 8
  %inc.4 = add i32 %idx, 5
  %arrayidx1.4 = getelementptr i64, ptr %data, i32 %inc.3
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx1.4, align 8
  %add.ptr.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 7
  %15 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.5, align 8
  %inc.5 = add i32 %idx, 6
  %arrayidx1.5 = getelementptr i64, ptr %data, i32 %inc.4
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx1.5, align 8
  %add.ptr.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 8
  %18 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.6, align 8
  %inc.6 = add i32 %idx, 7
  %arrayidx1.6 = getelementptr i64, ptr %data, i32 %inc.5
  %20 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx1.6, align 8
  %add.ptr.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 9
  %21 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.7, align 8
  %inc.7 = add i32 %idx, 8
  %arrayidx1.7 = getelementptr i64, ptr %data, i32 %inc.6
  %23 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx1.7, align 8
  %add.ptr.8 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 10
  %24 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.8, align 8
  %inc.8 = add i32 %idx, 9
  %arrayidx1.8 = getelementptr i64, ptr %data, i32 %inc.7
  %26 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx1.8, align 8
  %add.ptr.9 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 11
  %27 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.9, align 8
  %inc.9 = add i32 %idx, 10
  %arrayidx1.9 = getelementptr i64, ptr %data, i32 %inc.8
  %29 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx1.9, align 8
  %add.ptr.10 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 12
  %30 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.10, align 8
  %inc.10 = add i32 %idx, 11
  %arrayidx1.10 = getelementptr i64, ptr %data, i32 %inc.9
  %32 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx1.10, align 8
  %add.ptr.11 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 13
  %33 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.11, align 8
  %inc.11 = add i32 %idx, 12
  %arrayidx1.11 = getelementptr i64, ptr %data, i32 %inc.10
  %35 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx1.11, align 8
  %add.ptr.12 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 14
  %36 = ptrtoint ptr %add.ptr.12 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr.12, align 8
  %inc.12 = add i32 %idx, 13
  %arrayidx1.12 = getelementptr i64, ptr %data, i32 %inc.11
  %38 = ptrtoint ptr %arrayidx1.12 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx1.12, align 8
  %add.ptr.13 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 15
  %39 = ptrtoint ptr %add.ptr.13 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.13, align 8
  %inc.13 = add i32 %idx, 14
  %arrayidx1.13 = getelementptr i64, ptr %data, i32 %inc.12
  %41 = ptrtoint ptr %arrayidx1.13 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx1.13, align 8
  %add.ptr.14 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 16
  %42 = ptrtoint ptr %add.ptr.14 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.14, align 8
  %inc.14 = add i32 %idx, 15
  %arrayidx1.14 = getelementptr i64, ptr %data, i32 %inc.13
  %44 = ptrtoint ptr %arrayidx1.14 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx1.14, align 8
  %add.ptr.15 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 17
  %45 = ptrtoint ptr %add.ptr.15 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.15, align 8
  %inc.15 = add i32 %idx, 16
  %arrayidx1.15 = getelementptr i64, ptr %data, i32 %inc.14
  %47 = ptrtoint ptr %arrayidx1.15 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx1.15, align 8
  %add.ptr.16 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 18
  %48 = ptrtoint ptr %add.ptr.16 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.16, align 8
  %inc.16 = add i32 %idx, 17
  %arrayidx1.16 = getelementptr i64, ptr %data, i32 %inc.15
  %50 = ptrtoint ptr %arrayidx1.16 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx1.16, align 8
  %add.ptr.17 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 0, i32 19
  %51 = ptrtoint ptr %add.ptr.17 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.17, align 8
  %inc.17 = add i32 %idx, 18
  %arrayidx1.17 = getelementptr i64, ptr %data, i32 %inc.16
  %53 = ptrtoint ptr %arrayidx1.17 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx1.17, align 8
  ret i32 %inc.17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_802_3_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %pport = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %2 = call ptr @memset(ptr %in, i32 0, i32 256)
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %cond.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

cond.true:                                        ; preds = %entry
  %add.ptr4 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr4, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body_crit_edge

cond.true.do.body_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %cond.true.do.body_crit_edge, %entry.do.body_crit_edge
  %11 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in, align 4
  %and11 = and i32 %12, -16711744
  %or = or i32 %and11, 65536
  store i32 %or, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %pport, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %cond.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_2863_num_stats(ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_2863_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @pport_2863_stats_desc) #17
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([3 x %struct.counter_desc], ptr @pport_2863_stats_desc, i32 0, i32 1)) #17
  %inc.2 = add i32 %idx, 3
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([3 x %struct.counter_desc], ptr @pport_2863_stats_desc, i32 0, i32 2)) #17
  ret i32 %inc.2
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_2863_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 1, i32 3
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %inc = add i32 %idx, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %arrayidx1, align 8
  %add.ptr.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 1, i32 8
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx1.1 = getelementptr i64, ptr %data, i32 %inc
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1, align 8
  %add.ptr.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 1, i32 9
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx1.2 = getelementptr i64, ptr %data, i32 %inc.1
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2, align 8
  ret i32 %inc.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_2863_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %2 = getelementptr inbounds i8, ptr %in, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 252)
  %RFC_2863_counters = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 1
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65537, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %RFC_2863_counters, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_2819_num_stats(ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 13
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_2819_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @pport_2819_stats_desc) #17
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 1)) #17
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 2)) #17
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 3)) #17
  %inc.3 = shl i32 %idx, 5
  %mul.4 = add i32 %inc.3, 128
  %add.ptr.4 = getelementptr i8, ptr %data, i32 %mul.4
  %call.4 = tail call ptr @strcpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 4)) #17
  %inc.4 = shl i32 %idx, 5
  %mul.5 = add i32 %inc.4, 160
  %add.ptr.5 = getelementptr i8, ptr %data, i32 %mul.5
  %call.5 = tail call ptr @strcpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 5)) #17
  %inc.5 = shl i32 %idx, 5
  %mul.6 = add i32 %inc.5, 192
  %add.ptr.6 = getelementptr i8, ptr %data, i32 %mul.6
  %call.6 = tail call ptr @strcpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 6)) #17
  %inc.6 = shl i32 %idx, 5
  %mul.7 = add i32 %inc.6, 224
  %add.ptr.7 = getelementptr i8, ptr %data, i32 %mul.7
  %call.7 = tail call ptr @strcpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 7)) #17
  %inc.7 = shl i32 %idx, 5
  %mul.8 = add i32 %inc.7, 256
  %add.ptr.8 = getelementptr i8, ptr %data, i32 %mul.8
  %call.8 = tail call ptr @strcpy(ptr noundef %add.ptr.8, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 8)) #17
  %inc.8 = shl i32 %idx, 5
  %mul.9 = add i32 %inc.8, 288
  %add.ptr.9 = getelementptr i8, ptr %data, i32 %mul.9
  %call.9 = tail call ptr @strcpy(ptr noundef %add.ptr.9, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 9)) #17
  %inc.9 = shl i32 %idx, 5
  %mul.10 = add i32 %inc.9, 320
  %add.ptr.10 = getelementptr i8, ptr %data, i32 %mul.10
  %call.10 = tail call ptr @strcpy(ptr noundef %add.ptr.10, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 10)) #17
  %inc.10 = shl i32 %idx, 5
  %mul.11 = add i32 %inc.10, 352
  %add.ptr.11 = getelementptr i8, ptr %data, i32 %mul.11
  %call.11 = tail call ptr @strcpy(ptr noundef %add.ptr.11, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 11)) #17
  %inc.12 = add i32 %idx, 13
  %inc.11 = shl i32 %idx, 5
  %mul.12 = add i32 %inc.11, 384
  %add.ptr.12 = getelementptr i8, ptr %data, i32 %mul.12
  %call.12 = tail call ptr @strcpy(ptr noundef %add.ptr.12, ptr noundef getelementptr inbounds ([13 x %struct.counter_desc], ptr @pport_2819_stats_desc, i32 0, i32 12)) #17
  ret i32 %inc.12
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_2819_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 7
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %inc = add i32 %idx, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %arrayidx1, align 8
  %add.ptr.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 9
  %3 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx1.1 = getelementptr i64, ptr %data, i32 %inc
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1.1, align 8
  %add.ptr.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 10
  %6 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx1.2 = getelementptr i64, ptr %data, i32 %inc.1
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx1.2, align 8
  %add.ptr.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 12
  %9 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx, 4
  %arrayidx1.3 = getelementptr i64, ptr %data, i32 %inc.2
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx1.3, align 8
  %add.ptr.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 13
  %12 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4, align 8
  %inc.4 = add i32 %idx, 5
  %arrayidx1.4 = getelementptr i64, ptr %data, i32 %inc.3
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx1.4, align 8
  %add.ptr.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 14
  %15 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.5, align 8
  %inc.5 = add i32 %idx, 6
  %arrayidx1.5 = getelementptr i64, ptr %data, i32 %inc.4
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx1.5, align 8
  %add.ptr.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 15
  %18 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.6, align 8
  %inc.6 = add i32 %idx, 7
  %arrayidx1.6 = getelementptr i64, ptr %data, i32 %inc.5
  %20 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx1.6, align 8
  %add.ptr.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 16
  %21 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.7, align 8
  %inc.7 = add i32 %idx, 8
  %arrayidx1.7 = getelementptr i64, ptr %data, i32 %inc.6
  %23 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx1.7, align 8
  %add.ptr.8 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 17
  %24 = ptrtoint ptr %add.ptr.8 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.8, align 8
  %inc.8 = add i32 %idx, 9
  %arrayidx1.8 = getelementptr i64, ptr %data, i32 %inc.7
  %26 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx1.8, align 8
  %add.ptr.9 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 18
  %27 = ptrtoint ptr %add.ptr.9 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.9, align 8
  %inc.9 = add i32 %idx, 10
  %arrayidx1.9 = getelementptr i64, ptr %data, i32 %inc.8
  %29 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx1.9, align 8
  %add.ptr.10 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 19
  %30 = ptrtoint ptr %add.ptr.10 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.10, align 8
  %inc.10 = add i32 %idx, 11
  %arrayidx1.10 = getelementptr i64, ptr %data, i32 %inc.9
  %32 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx1.10, align 8
  %add.ptr.11 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 20
  %33 = ptrtoint ptr %add.ptr.11 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.11, align 8
  %inc.11 = add i32 %idx, 12
  %arrayidx1.11 = getelementptr i64, ptr %data, i32 %inc.10
  %35 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx1.11, align 8
  %add.ptr.12 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2, i32 21
  %36 = ptrtoint ptr %add.ptr.12 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr.12, align 8
  %inc.12 = add i32 %idx, 13
  %arrayidx1.12 = getelementptr i64, ptr %data, i32 %inc.11
  %38 = ptrtoint ptr %arrayidx1.12 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx1.12, align 8
  ret i32 %inc.12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_2819_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %2 = call ptr @memset(ptr %in, i32 0, i32 256)
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %cond.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

cond.true:                                        ; preds = %entry
  %add.ptr4 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr4, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body_crit_edge

cond.true.do.body_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %cond.true.do.body_crit_edge, %entry.do.body_crit_edge
  %11 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in, align 4
  %and11 = and i32 %12, -16711744
  %RFC_2819_counters = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 2
  %or28 = or i32 %and11, 65538
  store i32 %or28, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %RFC_2819_counters, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %cond.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_phy_num_stats(ptr nocapture noundef readonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = shl i32 %3, 1
  %4 = and i32 %and, 2
  %5 = lshr i32 %3, 3
  %6 = and i32 %5, 4
  %add = or i32 %6, %4
  %add10 = or i32 %add, 1
  ret i32 %add10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_phy_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %inc = add i32 %idx, 1
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %2 = call ptr @memcpy(ptr %add.ptr, ptr @.str, i32 21)
  %add.ptr2 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %3 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr2, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %mul4 = shl i32 %inc, 5
  %add.ptr5 = getelementptr i8, ptr %data, i32 %mul4
  %call7 = tail call ptr @strcpy(ptr noundef %add.ptr5, ptr noundef nonnull @pport_phy_statistical_stats_desc) #17
  %inc3.1 = add i32 %idx, 3
  %inc3 = shl i32 %idx, 5
  %mul4.1 = add i32 %inc3, 64
  %add.ptr5.1 = getelementptr i8, ptr %data, i32 %mul4.1
  %call7.1 = tail call ptr @strcpy(ptr noundef %add.ptr5.1, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_phy_statistical_stats_desc, i32 0, i32 1)) #17
  %5 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr2, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  br i1 %tobool15.not, label %for.body.preheader.cleanup_crit_edge, label %for.body19.preheader

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body19.preheader:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %mul21 = shl i32 %inc3.1, 5
  %add.ptr22 = getelementptr i8, ptr %data, i32 %mul21
  %call26 = tail call ptr @strcpy(ptr noundef %add.ptr22, ptr noundef nonnull @pport_phy_statistical_err_lanes_stats_desc) #17
  %inc20 = shl i32 %idx, 5
  %mul21.1 = add i32 %inc20, 128
  %add.ptr22.1 = getelementptr i8, ptr %data, i32 %mul21.1
  %call26.1 = tail call ptr @strcpy(ptr noundef %add.ptr22.1, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @pport_phy_statistical_err_lanes_stats_desc, i32 0, i32 1)) #17
  %inc20.1 = shl i32 %idx, 5
  %mul21.2 = add i32 %inc20.1, 160
  %add.ptr22.2 = getelementptr i8, ptr %data, i32 %mul21.2
  %call26.2 = tail call ptr @strcpy(ptr noundef %add.ptr22.2, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @pport_phy_statistical_err_lanes_stats_desc, i32 0, i32 2)) #17
  %inc20.3 = add i32 %idx, 7
  %inc20.2 = shl i32 %idx, 5
  %mul21.3 = add i32 %inc20.2, 192
  %add.ptr22.3 = getelementptr i8, ptr %data, i32 %mul21.3
  %call26.3 = tail call ptr @strcpy(ptr noundef %add.ptr22.3, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @pport_phy_statistical_err_lanes_stats_desc, i32 0, i32 3)) #17
  br label %cleanup

cleanup:                                          ; preds = %for.body19.preheader, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc, %entry.cleanup_crit_edge ], [ %inc3.1, %for.body.preheader.cleanup_crit_edge ], [ %inc20.3, %for.body19.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_phy_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %add.ptr = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 4, i32 25
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %conv = zext i32 %3 to i64
  %inc = add i32 %idx, 1
  %arrayidx = getelementptr i64, ptr %data, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %arrayidx, align 8
  %add.ptr3 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %5 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr3, align 4
  %and5 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add.ptr10 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 5, i32 3
  %7 = ptrtoint ptr %add.ptr10 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr10, align 8
  %inc11 = add i32 %idx, 2
  %arrayidx12 = getelementptr i64, ptr %data, i32 %inc
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx12, align 8
  %add.ptr10.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 5, i32 4
  %10 = ptrtoint ptr %add.ptr10.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr10.1, align 8
  %inc11.1 = add i32 %idx, 3
  %arrayidx12.1 = getelementptr i64, ptr %data, i32 %inc11
  %12 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx12.1, align 8
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr3, align 4
  %15 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool20.not = icmp eq i32 %15, 0
  br i1 %tobool20.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond22.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond22.preheader:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr31 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 5, i32 5
  %16 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr31, align 8
  %inc32 = add i32 %idx, 4
  %arrayidx33 = getelementptr i64, ptr %data, i32 %inc11.1
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx33, align 8
  %add.ptr31.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 5, i32 6
  %19 = ptrtoint ptr %add.ptr31.1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr31.1, align 8
  %inc32.1 = add i32 %idx, 5
  %arrayidx33.1 = getelementptr i64, ptr %data, i32 %inc32
  %21 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx33.1, align 8
  %add.ptr31.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 5, i32 7
  %22 = ptrtoint ptr %add.ptr31.2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr31.2, align 8
  %inc32.2 = add i32 %idx, 6
  %arrayidx33.2 = getelementptr i64, ptr %data, i32 %inc32.1
  %24 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx33.2, align 8
  %add.ptr31.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 5, i32 8
  %25 = ptrtoint ptr %add.ptr31.3 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr31.3, align 8
  %inc32.3 = add i32 %idx, 7
  %arrayidx33.3 = getelementptr i64, ptr %data, i32 %inc32.2
  %27 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx33.3, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.cond22.preheader, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %inc, %entry.cleanup_crit_edge ], [ %inc11.1, %for.cond.preheader.cleanup_crit_edge ], [ %inc32.3, %for.cond22.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_phy_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %2 = getelementptr inbounds i8, ptr %in, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 252)
  %phy_counters = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 4
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65554, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %phy_counters, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %add.ptr26 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %5 = ptrtoint ptr %add.ptr26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr26, align 4
  %and27 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %phy_statistical_counters = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 5
  %7 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %in, align 4
  %and36 = and i32 %8, -64
  %or39 = or i32 %and36, 22
  store i32 %or39, ptr %in, align 4
  %call45 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %phy_statistical_counters, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_pcie_num_stats(ptr nocapture noundef readonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = shl i32 %3, 1
  %4 = and i32 %and, 2
  %5 = lshr i32 %3, 3
  %6 = and i32 %5, 1
  %7 = or i32 %6, %4
  %8 = lshr i32 %3, 2
  %9 = and i32 %8, 4
  %10 = or i32 %7, %9
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_pcie_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl i32 %idx, 5
  %add.ptr1 = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr1, ptr noundef nonnull @pcie_perf_stats_desc) #17
  %inc.1 = add i32 %idx, 2
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr1.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr1.1, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pcie_perf_stats_desc, i32 0, i32 1)) #17
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %entry.if.end_crit_edge ], [ %inc.1, %for.body.preheader ]
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 64
  %add.ptr8 = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 2, i32 0, i32 13
  %6 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr8, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %if.end.if.end26_crit_edge, label %for.body15

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end26

for.body15:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %inc16 = add i32 %idx.addr.1, 1
  %mul17 = shl i32 %idx.addr.1, 5
  %add.ptr18 = getelementptr i8, ptr %data, i32 %mul17
  %call22 = tail call ptr @strcpy(ptr noundef %add.ptr18, ptr noundef nonnull @pcie_perf_stats_desc64) #17
  br label %if.end26

if.end26:                                         ; preds = %for.body15, %if.end.if.end26_crit_edge
  %idx.addr.3 = phi i32 [ %idx.addr.1, %if.end.if.end26_crit_edge ], [ %inc16, %for.body15 ]
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 64
  %add.ptr31 = getelementptr %struct.mlx5_core_dev, ptr %10, i32 0, i32 8, i32 2, i32 0, i32 13
  %11 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr31, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool34.not = icmp eq i32 %13, 0
  br i1 %tobool34.not, label %if.end26.if.end49_crit_edge, label %for.body38.preheader

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

for.body38.preheader:                             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %mul40 = shl i32 %idx.addr.3, 5
  %add.ptr41 = getelementptr i8, ptr %data, i32 %mul40
  %call45 = tail call ptr @strcpy(ptr noundef %add.ptr41, ptr noundef nonnull @pcie_perf_stall_stats_desc) #17
  %inc39 = shl i32 %idx.addr.3, 5
  %mul40.1 = add i32 %inc39, 32
  %add.ptr41.1 = getelementptr i8, ptr %data, i32 %mul40.1
  %call45.1 = tail call ptr @strcpy(ptr noundef %add.ptr41.1, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @pcie_perf_stall_stats_desc, i32 0, i32 1)) #17
  %inc39.1 = shl i32 %idx.addr.3, 5
  %mul40.2 = add i32 %inc39.1, 64
  %add.ptr41.2 = getelementptr i8, ptr %data, i32 %mul40.2
  %call45.2 = tail call ptr @strcpy(ptr noundef %add.ptr41.2, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @pcie_perf_stall_stats_desc, i32 0, i32 2)) #17
  %inc39.3 = add i32 %idx.addr.3, 4
  %inc39.2 = shl i32 %idx.addr.3, 5
  %mul40.3 = add i32 %inc39.2, 96
  %add.ptr41.3 = getelementptr i8, ptr %data, i32 %mul40.3
  %call45.3 = tail call ptr @strcpy(ptr noundef %add.ptr41.3, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @pcie_perf_stall_stats_desc, i32 0, i32 3)) #17
  br label %if.end49

if.end49:                                         ; preds = %for.body38.preheader, %if.end26.if.end49_crit_edge
  %idx.addr.5 = phi i32 [ %idx.addr.3, %if.end26.if.end49_crit_edge ], [ %inc39.3, %for.body38.preheader ]
  ret i32 %idx.addr.5
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_pcie_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pcie = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 6
  %add.ptr1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 6, i32 0, i32 2
  %4 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr1, align 4
  %conv = zext i32 %5 to i64
  %inc = add i32 %idx, 1
  %arrayidx2 = getelementptr i64, ptr %data, i32 %idx
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %arrayidx2, align 8
  %add.ptr1.1 = getelementptr i8, ptr %pcie, i32 20
  %7 = ptrtoint ptr %add.ptr1.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr1.1, align 4
  %conv.1 = zext i32 %8 to i64
  %inc.1 = add i32 %idx, 2
  %arrayidx2.1 = getelementptr i64, ptr %data, i32 %inc
  %9 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.1, ptr %arrayidx2.1, align 8
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %entry.if.end_crit_edge ], [ %inc.1, %for.cond.preheader ]
  %10 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev, align 64
  %add.ptr8 = getelementptr %struct.mlx5_core_dev, ptr %11, i32 0, i32 8, i32 2, i32 0, i32 13
  %12 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr8, align 4
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not = icmp eq i32 %14, 0
  br i1 %tobool11.not, label %if.end.if.end28_crit_edge, label %for.cond13.preheader

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

for.cond13.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr22 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 6, i32 0, i32 6
  %15 = ptrtoint ptr %add.ptr22 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr22, align 8
  %inc23 = add i32 %idx.addr.1, 1
  %arrayidx24 = getelementptr i64, ptr %data, i32 %idx.addr.1
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx24, align 8
  br label %if.end28

if.end28:                                         ; preds = %for.cond13.preheader, %if.end.if.end28_crit_edge
  %idx.addr.3 = phi i32 [ %idx.addr.1, %if.end.if.end28_crit_edge ], [ %inc23, %for.cond13.preheader ]
  %18 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev, align 64
  %add.ptr33 = getelementptr %struct.mlx5_core_dev, ptr %19, i32 0, i32 8, i32 2, i32 0, i32 13
  %20 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr33, align 4
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  br i1 %tobool36.not, label %if.end28.if.end54_crit_edge, label %for.cond38.preheader

if.end28.if.end54_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

for.cond38.preheader:                             ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %pcie43 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 6
  %add.ptr47 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 6, i32 0, i32 7
  %23 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr47, align 4
  %conv48 = zext i32 %24 to i64
  %inc49 = add i32 %idx.addr.3, 1
  %arrayidx50 = getelementptr i64, ptr %data, i32 %idx.addr.3
  %25 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv48, ptr %arrayidx50, align 8
  %add.ptr47.1 = getelementptr i8, ptr %pcie43, i32 60
  %26 = ptrtoint ptr %add.ptr47.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr47.1, align 4
  %conv48.1 = zext i32 %27 to i64
  %inc49.1 = add i32 %idx.addr.3, 2
  %arrayidx50.1 = getelementptr i64, ptr %data, i32 %inc49
  %28 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv48.1, ptr %arrayidx50.1, align 8
  %add.ptr47.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 6, i32 0, i32 8
  %29 = ptrtoint ptr %add.ptr47.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr47.2, align 4
  %conv48.2 = zext i32 %30 to i64
  %inc49.2 = add i32 %idx.addr.3, 3
  %arrayidx50.2 = getelementptr i64, ptr %data, i32 %inc49.1
  %31 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %conv48.2, ptr %arrayidx50.2, align 8
  %add.ptr47.3 = getelementptr i8, ptr %pcie43, i32 68
  %32 = ptrtoint ptr %add.ptr47.3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr47.3, align 4
  %conv48.3 = zext i32 %33 to i64
  %inc49.3 = add i32 %idx.addr.3, 4
  %arrayidx50.3 = getelementptr i64, ptr %data, i32 %inc49.2
  %34 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv48.3, ptr %arrayidx50.3, align 8
  br label %if.end54

if.end54:                                         ; preds = %for.cond38.preheader, %if.end28.if.end54_crit_edge
  %idx.addr.5 = phi i32 [ %idx.addr.3, %if.end28.if.end54_crit_edge ], [ %inc49.3, %for.cond38.preheader ]
  ret i32 %idx.addr.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_pcie_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %2 = call ptr @memset(ptr %in, i32 0, i32 256)
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 2, i32 0, i32 13
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %pcie = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 6
  %5 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %in, align 4
  %and6 = and i32 %6, -64
  store i32 %and6, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %pcie, i32 noundef 256, i16 noundef zeroext -28591, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_per_prio_num_stats(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %pfc_en_tx.i.i = alloca i8, align 1
  %pfc_en_rx.i.i = alloca i8, align 1
  %rx_pause.i.i = alloca i32, align 4
  %tx_pause.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  %2 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rx_pause.i.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  %3 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tx_pause.i.i, align 4, !annotation !123
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = and i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 256
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.mlx5e_query_global_pause_combined.exit.i_crit_edge

entry.mlx5e_query_global_pause_combined.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_global_pause_combined.exit.i

if.end.i.i:                                       ; preds = %entry
  %call.i.i = call i32 @mlx5_query_port_pause(ptr noundef %1, ptr noundef nonnull %rx_pause.i.i, ptr noundef nonnull %tx_pause.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.i.i.mlx5e_query_global_pause_combined.exit.i_crit_edge

if.end.i.i.mlx5e_query_global_pause_combined.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_global_pause_combined.exit.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_pause.i.i, align 4
  %11 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_pause.i.i, align 4
  %or.i.i = or i32 %12, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %phi.cmp.i.i = icmp ne i32 %or.i.i, 0
  %phi.cast.i = zext i1 %phi.cmp.i.i to i32
  br label %mlx5e_query_global_pause_combined.exit.i

mlx5e_query_global_pause_combined.exit.i:         ; preds = %cond.false.i.i, %if.end.i.i.mlx5e_query_global_pause_combined.exit.i_crit_edge, %entry.mlx5e_query_global_pause_combined.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %entry.mlx5e_query_global_pause_combined.exit.i_crit_edge ], [ %phi.cast.i, %cond.false.i.i ], [ 0, %if.end.i.i.mlx5e_query_global_pause_combined.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  %13 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev1.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pfc_en_tx.i.i) #14
  %15 = ptrtoint ptr %pfc_en_tx.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %pfc_en_tx.i.i, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pfc_en_rx.i.i) #14
  %16 = ptrtoint ptr %pfc_en_rx.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %pfc_en_rx.i.i, align 1, !annotation !123
  %caps.i16.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %caps.i16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps.i16.i, align 8
  %add.ptr.i17.i = getelementptr i32, ptr %18, i32 13
  %19 = ptrtoint ptr %add.ptr.i17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i17.i, align 4
  %21 = and i32 %20, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %21)
  %cmp.not.i18.i = icmp eq i32 %21, 256
  br i1 %cmp.not.i18.i, label %if.end.i21.i, label %mlx5e_query_global_pause_combined.exit.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge

mlx5e_query_global_pause_combined.exit.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge: ; preds = %mlx5e_query_global_pause_combined.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_prio_pfc_get_num_stats.exit

if.end.i21.i:                                     ; preds = %mlx5e_query_global_pause_combined.exit.i
  %call.i19.i = call i32 @mlx5_query_port_pfc(ptr noundef %14, ptr noundef nonnull %pfc_en_tx.i.i, ptr noundef nonnull %pfc_en_rx.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool.not.i20.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool.not.i20.i, label %cond.false.i23.i, label %if.end.i21.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge

if.end.i21.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge: ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_prio_pfc_get_num_stats.exit

cond.false.i23.i:                                 ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %pfc_en_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pfc_en_tx.i.i, align 1
  %24 = ptrtoint ptr %pfc_en_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pfc_en_rx.i.i, align 1
  %or7.i.i = or i8 %25, %23
  %or.i22.i = zext i8 %or7.i.i to i32
  br label %mlx5e_grp_per_prio_pfc_get_num_stats.exit

mlx5e_grp_per_prio_pfc_get_num_stats.exit:        ; preds = %cond.false.i23.i, %if.end.i21.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge, %mlx5e_query_global_pause_combined.exit.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge
  %retval.0.i24.i = phi i32 [ 0, %mlx5e_query_global_pause_combined.exit.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge ], [ %or.i22.i, %cond.false.i23.i ], [ 0, %if.end.i21.i.mlx5e_grp_per_prio_pfc_get_num_stats.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pfc_en_rx.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pfc_en_tx.i.i) #14
  %call.i25.i = call i32 @__sw_hweight8(i32 noundef %retval.0.i24.i) #14
  %add.i = add i32 %call.i25.i, %retval.0.i.i
  %mul.i = mul i32 %add.i, 5
  %26 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev1.i.i, align 64
  %add.ptr.i = getelementptr %struct.mlx5_core_dev, ptr %27, i32 0, i32 8, i32 1, i32 13
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 4
  %30 = lshr i32 %29, 8
  %mul3.i = and i32 %30, 2
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %27, i32 0, i32 8, i32 0, i32 13
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr7.i = getelementptr i32, ptr %32, i32 1
  %33 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr7.i, align 4
  %shr8.i = lshr i32 %34, 29
  %and9.i = and i32 %shr8.i, 1
  %mul10.i = mul nuw nsw i32 %and9.i, %mul3.i
  %add11.i = add i32 %mul.i, 40
  %add = add i32 %add11.i, %mul10.i
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_per_prio_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #0 align 64 {
entry:
  %rx_pause.i.i = alloca i32, align 4
  %tx_pause.i.i = alloca i32, align 4
  %pfc_en_tx.i.i = alloca i8, align 1
  %pfc_en_rx.i.i = alloca i8, align 1
  %pfc_combined.i = alloca i32, align 4
  %pfc_string.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge, %entry
  %prio.04.i = phi i32 [ 0, %entry ], [ %inc6.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ]
  %idx.addr.03.i = phi i32 [ %idx, %entry ], [ %inc.4.i, %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge ]
  %mul.i = shl i32 %idx.addr.03.i, 5
  %add.ptr.i = getelementptr i8, ptr %data, i32 %mul.i
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @pport_per_prio_traffic_stats_desc, i32 noundef %prio.04.i) #14
  %mul.1.i = add i32 %mul.i, 32
  %add.ptr.1.i = getelementptr i8, ptr %data, i32 %mul.1.i
  %call.1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_traffic_stats_desc, i32 0, i32 1), i32 noundef %prio.04.i) #14
  %mul.2.i = add i32 %mul.i, 64
  %add.ptr.2.i = getelementptr i8, ptr %data, i32 %mul.2.i
  %call.2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_traffic_stats_desc, i32 0, i32 2), i32 noundef %prio.04.i) #14
  %mul.3.i = add i32 %mul.i, 96
  %add.ptr.3.i = getelementptr i8, ptr %data, i32 %mul.3.i
  %call.3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_traffic_stats_desc, i32 0, i32 3), i32 noundef %prio.04.i) #14
  %inc.4.i = add i32 %idx.addr.03.i, 5
  %mul.4.i = add i32 %mul.i, 128
  %add.ptr.4.i = getelementptr i8, ptr %data, i32 %mul.4.i
  %call.4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_traffic_stats_desc, i32 0, i32 4), i32 noundef %prio.04.i) #14
  %inc6.i = add nuw nsw i32 %prio.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, 8
  br i1 %exitcond.not.i, label %mlx5e_grp_per_prio_traffic_fill_strings.exit, label %for.cond1.preheader.i.for.cond1.preheader.i_crit_edge

for.cond1.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader.i

mlx5e_grp_per_prio_traffic_fill_strings.exit:     ; preds = %for.cond1.preheader.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfc_combined.i) #14
  %mdev1.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pfc_en_tx.i.i) #14
  %2 = ptrtoint ptr %pfc_en_tx.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %pfc_en_tx.i.i, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pfc_en_rx.i.i) #14
  %3 = ptrtoint ptr %pfc_en_rx.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %pfc_en_rx.i.i, align 1, !annotation !123
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = and i32 %7, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 256
  br i1 %cmp.not.i.i, label %if.end.i.i, label %mlx5e_grp_per_prio_traffic_fill_strings.exit.mlx5e_query_pfc_combined.exit.i_crit_edge

mlx5e_grp_per_prio_traffic_fill_strings.exit.mlx5e_query_pfc_combined.exit.i_crit_edge: ; preds = %mlx5e_grp_per_prio_traffic_fill_strings.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_pfc_combined.exit.i

if.end.i.i:                                       ; preds = %mlx5e_grp_per_prio_traffic_fill_strings.exit
  %call.i.i = call i32 @mlx5_query_port_pfc(ptr noundef %1, ptr noundef nonnull %pfc_en_tx.i.i, ptr noundef nonnull %pfc_en_rx.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge

if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_pfc_combined.exit.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %pfc_en_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pfc_en_tx.i.i, align 1
  %11 = ptrtoint ptr %pfc_en_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pfc_en_rx.i.i, align 1
  %or7.i.i = or i8 %12, %10
  %or.i.i = zext i8 %or7.i.i to i32
  br label %mlx5e_query_pfc_combined.exit.i

mlx5e_query_pfc_combined.exit.i:                  ; preds = %cond.false.i.i, %if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge, %mlx5e_grp_per_prio_traffic_fill_strings.exit.mlx5e_query_pfc_combined.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %mlx5e_grp_per_prio_traffic_fill_strings.exit.mlx5e_query_pfc_combined.exit.i_crit_edge ], [ %or.i.i, %cond.false.i.i ], [ 0, %if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pfc_en_rx.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pfc_en_tx.i.i) #14
  %13 = ptrtoint ptr %pfc_combined.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i, ptr %pfc_combined.i, align 4
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %pfc_combined.i, i32 noundef 8, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1.i)
  %cmp82.i = icmp slt i32 %call1.i, 8
  br i1 %cmp82.i, label %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge, label %mlx5e_query_pfc_combined.exit.i.for.end12.i_crit_edge

mlx5e_query_pfc_combined.exit.i.for.end12.i_crit_edge: ; preds = %mlx5e_query_pfc_combined.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end12.i

mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge: ; preds = %mlx5e_query_pfc_combined.exit.i
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge
  %prio.084.i = phi i32 [ %call11.i, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ], [ %call1.i, %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge ]
  %idx.addr.083.i = phi i32 [ %inc.i6.4, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ], [ %inc.4.i, %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pfc_string.i) #14
  %14 = call ptr @memset(ptr %pfc_string.i, i32 255, i32 32)
  %call5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfc_string.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %prio.084.i) #14
  %mul.i7 = shl i32 %idx.addr.083.i, 5
  %add.ptr.i8 = getelementptr i8, ptr %data, i32 %mul.i7
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i8, ptr noundef nonnull @pport_per_prio_pfc_stats_desc, ptr noundef nonnull %pfc_string.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pfc_string.i) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pfc_string.i) #14
  %15 = call ptr @memset(ptr %pfc_string.i, i32 255, i32 32)
  %call5.i.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfc_string.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %prio.084.i) #14
  %inc.i6 = shl i32 %idx.addr.083.i, 5
  %mul.i7.1 = add i32 %inc.i6, 32
  %add.ptr.i8.1 = getelementptr i8, ptr %data, i32 %mul.i7.1
  %call8.i.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i8.1, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 1), ptr noundef nonnull %pfc_string.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pfc_string.i) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pfc_string.i) #14
  %16 = call ptr @memset(ptr %pfc_string.i, i32 255, i32 32)
  %call5.i.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfc_string.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %prio.084.i) #14
  %inc.i6.1 = shl i32 %idx.addr.083.i, 5
  %mul.i7.2 = add i32 %inc.i6.1, 64
  %add.ptr.i8.2 = getelementptr i8, ptr %data, i32 %mul.i7.2
  %call8.i.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i8.2, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 2), ptr noundef nonnull %pfc_string.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pfc_string.i) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pfc_string.i) #14
  %17 = call ptr @memset(ptr %pfc_string.i, i32 255, i32 32)
  %call5.i.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfc_string.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %prio.084.i) #14
  %inc.i6.2 = shl i32 %idx.addr.083.i, 5
  %mul.i7.3 = add i32 %inc.i6.2, 96
  %add.ptr.i8.3 = getelementptr i8, ptr %data, i32 %mul.i7.3
  %call8.i.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i8.3, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 3), ptr noundef nonnull %pfc_string.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pfc_string.i) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pfc_string.i) #14
  %18 = call ptr @memset(ptr %pfc_string.i, i32 255, i32 32)
  %call5.i.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfc_string.i, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %prio.084.i) #14
  %inc.i6.4 = add i32 %idx.addr.083.i, 5
  %inc.i6.3 = shl i32 %idx.addr.083.i, 5
  %mul.i7.4 = add i32 %inc.i6.3, 128
  %add.ptr.i8.4 = getelementptr i8, ptr %data, i32 %mul.i7.4
  %call8.i.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i8.4, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 4), ptr noundef nonnull %pfc_string.i) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pfc_string.i) #14
  %add.i = add nsw i32 %prio.084.i, 1
  %call11.i = call i32 @_find_next_bit_be(ptr noundef nonnull %pfc_combined.i, i32 noundef 8, i32 noundef %add.i) #14
  %cmp.i = icmp slt i32 %call11.i, 8
  br i1 %cmp.i, label %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, label %for.cond2.preheader.i.for.end12.i_crit_edge

for.cond2.preheader.i.for.end12.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end12.i

for.cond2.preheader.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader.i

for.end12.i:                                      ; preds = %for.cond2.preheader.i.for.end12.i_crit_edge, %mlx5e_query_pfc_combined.exit.i.for.end12.i_crit_edge
  %idx.addr.0.lcssa.i = phi i32 [ %inc.4.i, %mlx5e_query_pfc_combined.exit.i.for.end12.i_crit_edge ], [ %inc.i6.4, %for.cond2.preheader.i.for.end12.i_crit_edge ]
  %19 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdev1.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  %21 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %rx_pause.i.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  %22 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %tx_pause.i.i, align 4, !annotation !123
  %caps.i70.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %caps.i70.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %caps.i70.i, align 8
  %add.ptr.i71.i = getelementptr i32, ptr %24, i32 13
  %25 = ptrtoint ptr %add.ptr.i71.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i71.i, align 4
  %27 = and i32 %26, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %27)
  %cmp.not.i72.i = icmp eq i32 %27, 256
  br i1 %cmp.not.i72.i, label %if.end.i75.i, label %for.end12.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge

for.end12.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge: ; preds = %for.end12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_global_pause_combined.exit.thread.i

if.end.i75.i:                                     ; preds = %for.end12.i
  %call.i73.i = call i32 @mlx5_query_port_pause(ptr noundef %20, ptr noundef nonnull %rx_pause.i.i, ptr noundef nonnull %tx_pause.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %tobool.not.i74.i = icmp eq i32 %call.i73.i, 0
  br i1 %tobool.not.i74.i, label %mlx5e_query_global_pause_combined.exit.i, label %if.end.i75.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge

if.end.i75.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge: ; preds = %if.end.i75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_global_pause_combined.exit.thread.i

mlx5e_query_global_pause_combined.exit.thread.i:  ; preds = %if.end.i75.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge, %for.end12.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  br label %if.end.i

mlx5e_query_global_pause_combined.exit.i:         ; preds = %if.end.i75.i
  %28 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_pause.i.i, align 4
  %30 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_pause.i.i, align 4
  %or.i76.i = or i32 %31, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i76.i)
  %phi.cmp.i.not.i = icmp eq i32 %or.i76.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  br i1 %phi.cmp.i.not.i, label %mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge, label %for.body16.preheader.i

mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge: ; preds = %mlx5e_query_global_pause_combined.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.body16.preheader.i:                           ; preds = %mlx5e_query_global_pause_combined.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %mul18.i = shl i32 %idx.addr.0.lcssa.i, 5
  %add.ptr19.i = getelementptr i8, ptr %data, i32 %mul18.i
  %call23.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr19.i, ptr noundef nonnull @pport_per_prio_pfc_stats_desc, ptr noundef nonnull @.str.2) #14
  %mul18.1.i = add i32 %mul18.i, 32
  %add.ptr19.1.i = getelementptr i8, ptr %data, i32 %mul18.1.i
  %call23.1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr19.1.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 1), ptr noundef nonnull @.str.2) #14
  %mul18.2.i = add i32 %mul18.i, 64
  %add.ptr19.2.i = getelementptr i8, ptr %data, i32 %mul18.2.i
  %call23.2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr19.2.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 2), ptr noundef nonnull @.str.2) #14
  %mul18.3.i = add i32 %mul18.i, 96
  %add.ptr19.3.i = getelementptr i8, ptr %data, i32 %mul18.3.i
  %call23.3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr19.3.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 3), ptr noundef nonnull @.str.2) #14
  %inc17.4.i = add i32 %idx.addr.0.lcssa.i, 5
  %mul18.4.i = add i32 %mul18.i, 128
  %add.ptr19.4.i = getelementptr i8, ptr %data, i32 %mul18.4.i
  %call23.4.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr19.4.i, ptr noundef getelementptr inbounds ([5 x %struct.counter_desc], ptr @pport_per_prio_pfc_stats_desc, i32 0, i32 4), ptr noundef nonnull @.str.2) #14
  br label %if.end.i

if.end.i:                                         ; preds = %for.body16.preheader.i, %mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge, %mlx5e_query_global_pause_combined.exit.thread.i
  %idx.addr.3.i = phi i32 [ %idx.addr.0.lcssa.i, %mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge ], [ %idx.addr.0.lcssa.i, %mlx5e_query_global_pause_combined.exit.thread.i ], [ %inc17.4.i, %for.body16.preheader.i ]
  %32 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev1.i.i, align 64
  %add.ptr2987.i = getelementptr %struct.mlx5_core_dev, ptr %33, i32 0, i32 8, i32 1, i32 13
  %34 = ptrtoint ptr %add.ptr2987.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr2987.i, align 4
  %36 = lshr i32 %35, 8
  %mul3088.i = and i32 %36, 2
  %arrayidx3389.i = getelementptr %struct.mlx5_core_dev, ptr %33, i32 0, i32 8, i32 0, i32 13
  %37 = ptrtoint ptr %arrayidx3389.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3389.i, align 4
  %add.ptr3590.i = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %add.ptr3590.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr3590.i, align 4
  %shr3691.i = lshr i32 %40, 29
  %and3792.i = and i32 %shr3691.i, 1
  %mul3893.i = mul nuw nsw i32 %and3792.i, %mul3088.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul3893.i)
  %cmp3994.not.i = icmp eq i32 %mul3893.i, 0
  br i1 %cmp3994.not.i, label %if.end.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge, label %for.body40.i

if.end.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_prio_pfc_fill_strings.exit

for.body40.i:                                     ; preds = %if.end.i
  %inc41.i = add i32 %idx.addr.3.i, 1
  %mul42.i = shl i32 %idx.addr.3.i, 5
  %add.ptr43.i = getelementptr i8, ptr %data, i32 %mul42.i
  %call47.i = call ptr @strcpy(ptr noundef %add.ptr43.i, ptr noundef nonnull @pport_pfc_stall_stats_desc) #18
  %41 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev1.i.i, align 64
  %add.ptr29.i = getelementptr %struct.mlx5_core_dev, ptr %42, i32 0, i32 8, i32 1, i32 13
  %43 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr29.i, align 4
  %45 = lshr i32 %44, 8
  %mul30.i = and i32 %45, 2
  %arrayidx33.i = getelementptr %struct.mlx5_core_dev, ptr %42, i32 0, i32 8, i32 0, i32 13
  %46 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx33.i, align 4
  %add.ptr35.i = getelementptr i32, ptr %47, i32 1
  %48 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr35.i, align 4
  %shr36.i = lshr i32 %49, 29
  %and37.i = and i32 %shr36.i, 1
  %mul38.i = mul nuw nsw i32 %and37.i, %mul30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul38.i)
  %cmp39.i = icmp eq i32 %mul38.i, 2
  br i1 %cmp39.i, label %for.body40.i.1, label %for.body40.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge

for.body40.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge: ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_prio_pfc_fill_strings.exit

for.body40.i.1:                                   ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #16
  %inc41.i.1 = add i32 %idx.addr.3.i, 2
  %mul42.i.1 = shl i32 %inc41.i, 5
  %add.ptr43.i.1 = getelementptr i8, ptr %data, i32 %mul42.i.1
  %call47.i.1 = call ptr @strcpy(ptr noundef %add.ptr43.i.1, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_pfc_stall_stats_desc, i32 0, i32 1)) #18
  br label %mlx5e_grp_per_prio_pfc_fill_strings.exit

mlx5e_grp_per_prio_pfc_fill_strings.exit:         ; preds = %for.body40.i.1, %for.body40.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge, %if.end.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge
  %idx.addr.4.lcssa.i = phi i32 [ %idx.addr.3.i, %if.end.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge ], [ %inc41.i, %for.body40.i.mlx5e_grp_per_prio_pfc_fill_strings.exit_crit_edge ], [ %inc41.i.1, %for.body40.i.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfc_combined.i) #14
  ret i32 %idx.addr.4.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_per_prio_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #0 align 64 {
entry:
  %rx_pause.i.i = alloca i32, align 4
  %tx_pause.i.i = alloca i32, align 4
  %pfc_en_tx.i.i = alloca i8, align 1
  %pfc_en_rx.i.i = alloca i8, align 1
  %pfc_combined.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 1
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr.i, align 8
  %inc.i = add i32 %idx, 1
  %arrayidx5.i = getelementptr i64, ptr %data, i32 %idx
  %2 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %arrayidx5.i, align 8
  %add.ptr.1.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 5
  %3 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr.1.i, align 8
  %inc.1.i = add i32 %idx, 2
  %arrayidx5.1.i = getelementptr i64, ptr %data, i32 %inc.i
  %5 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx5.1.i, align 8
  %add.ptr.2.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 16
  %6 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr.2.i, align 8
  %inc.2.i = add i32 %idx, 3
  %arrayidx5.2.i = getelementptr i64, ptr %data, i32 %inc.1.i
  %8 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx5.2.i, align 8
  %add.ptr.3.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 6
  %9 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr.3.i, align 8
  %inc.3.i = add i32 %idx, 4
  %arrayidx5.3.i = getelementptr i64, ptr %data, i32 %inc.2.i
  %11 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx5.3.i, align 8
  %add.ptr.4.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 10
  %12 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.4.i, align 8
  %inc.4.i = add i32 %idx, 5
  %arrayidx5.4.i = getelementptr i64, ptr %data, i32 %inc.3.i
  %14 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx5.4.i, align 8
  %add.ptr.i.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 1, i32 1
  %15 = ptrtoint ptr %add.ptr.i.1 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr.i.1, align 8
  %inc.i.1 = add i32 %idx, 6
  %arrayidx5.i.1 = getelementptr i64, ptr %data, i32 %inc.4.i
  %17 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx5.i.1, align 8
  %add.ptr.1.i.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 1, i32 5
  %18 = ptrtoint ptr %add.ptr.1.i.1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr.1.i.1, align 8
  %inc.1.i.1 = add i32 %idx, 7
  %arrayidx5.1.i.1 = getelementptr i64, ptr %data, i32 %inc.i.1
  %20 = ptrtoint ptr %arrayidx5.1.i.1 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx5.1.i.1, align 8
  %add.ptr.2.i.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 1, i32 16
  %21 = ptrtoint ptr %add.ptr.2.i.1 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.2.i.1, align 8
  %inc.2.i.1 = add i32 %idx, 8
  %arrayidx5.2.i.1 = getelementptr i64, ptr %data, i32 %inc.1.i.1
  %23 = ptrtoint ptr %arrayidx5.2.i.1 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx5.2.i.1, align 8
  %add.ptr.3.i.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 1, i32 6
  %24 = ptrtoint ptr %add.ptr.3.i.1 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.3.i.1, align 8
  %inc.3.i.1 = add i32 %idx, 9
  %arrayidx5.3.i.1 = getelementptr i64, ptr %data, i32 %inc.2.i.1
  %26 = ptrtoint ptr %arrayidx5.3.i.1 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx5.3.i.1, align 8
  %add.ptr.4.i.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 1, i32 10
  %27 = ptrtoint ptr %add.ptr.4.i.1 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.4.i.1, align 8
  %inc.4.i.1 = add i32 %idx, 10
  %arrayidx5.4.i.1 = getelementptr i64, ptr %data, i32 %inc.3.i.1
  %29 = ptrtoint ptr %arrayidx5.4.i.1 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx5.4.i.1, align 8
  %add.ptr.i.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 2, i32 1
  %30 = ptrtoint ptr %add.ptr.i.2 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr.i.2, align 8
  %inc.i.2 = add i32 %idx, 11
  %arrayidx5.i.2 = getelementptr i64, ptr %data, i32 %inc.4.i.1
  %32 = ptrtoint ptr %arrayidx5.i.2 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx5.i.2, align 8
  %add.ptr.1.i.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 2, i32 5
  %33 = ptrtoint ptr %add.ptr.1.i.2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.1.i.2, align 8
  %inc.1.i.2 = add i32 %idx, 12
  %arrayidx5.1.i.2 = getelementptr i64, ptr %data, i32 %inc.i.2
  %35 = ptrtoint ptr %arrayidx5.1.i.2 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx5.1.i.2, align 8
  %add.ptr.2.i.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 2, i32 16
  %36 = ptrtoint ptr %add.ptr.2.i.2 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %add.ptr.2.i.2, align 8
  %inc.2.i.2 = add i32 %idx, 13
  %arrayidx5.2.i.2 = getelementptr i64, ptr %data, i32 %inc.1.i.2
  %38 = ptrtoint ptr %arrayidx5.2.i.2 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx5.2.i.2, align 8
  %add.ptr.3.i.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 2, i32 6
  %39 = ptrtoint ptr %add.ptr.3.i.2 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.3.i.2, align 8
  %inc.3.i.2 = add i32 %idx, 14
  %arrayidx5.3.i.2 = getelementptr i64, ptr %data, i32 %inc.2.i.2
  %41 = ptrtoint ptr %arrayidx5.3.i.2 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx5.3.i.2, align 8
  %add.ptr.4.i.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 2, i32 10
  %42 = ptrtoint ptr %add.ptr.4.i.2 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.4.i.2, align 8
  %inc.4.i.2 = add i32 %idx, 15
  %arrayidx5.4.i.2 = getelementptr i64, ptr %data, i32 %inc.3.i.2
  %44 = ptrtoint ptr %arrayidx5.4.i.2 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %arrayidx5.4.i.2, align 8
  %add.ptr.i.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 3, i32 1
  %45 = ptrtoint ptr %add.ptr.i.3 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i.3, align 8
  %inc.i.3 = add i32 %idx, 16
  %arrayidx5.i.3 = getelementptr i64, ptr %data, i32 %inc.4.i.2
  %47 = ptrtoint ptr %arrayidx5.i.3 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %arrayidx5.i.3, align 8
  %add.ptr.1.i.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 3, i32 5
  %48 = ptrtoint ptr %add.ptr.1.i.3 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %add.ptr.1.i.3, align 8
  %inc.1.i.3 = add i32 %idx, 17
  %arrayidx5.1.i.3 = getelementptr i64, ptr %data, i32 %inc.i.3
  %50 = ptrtoint ptr %arrayidx5.1.i.3 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %arrayidx5.1.i.3, align 8
  %add.ptr.2.i.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 3, i32 16
  %51 = ptrtoint ptr %add.ptr.2.i.3 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %add.ptr.2.i.3, align 8
  %inc.2.i.3 = add i32 %idx, 18
  %arrayidx5.2.i.3 = getelementptr i64, ptr %data, i32 %inc.1.i.3
  %53 = ptrtoint ptr %arrayidx5.2.i.3 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx5.2.i.3, align 8
  %add.ptr.3.i.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 3, i32 6
  %54 = ptrtoint ptr %add.ptr.3.i.3 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr.3.i.3, align 8
  %inc.3.i.3 = add i32 %idx, 19
  %arrayidx5.3.i.3 = getelementptr i64, ptr %data, i32 %inc.2.i.3
  %56 = ptrtoint ptr %arrayidx5.3.i.3 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx5.3.i.3, align 8
  %add.ptr.4.i.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 3, i32 10
  %57 = ptrtoint ptr %add.ptr.4.i.3 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %add.ptr.4.i.3, align 8
  %inc.4.i.3 = add i32 %idx, 20
  %arrayidx5.4.i.3 = getelementptr i64, ptr %data, i32 %inc.3.i.3
  %59 = ptrtoint ptr %arrayidx5.4.i.3 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx5.4.i.3, align 8
  %add.ptr.i.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 4, i32 1
  %60 = ptrtoint ptr %add.ptr.i.4 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %add.ptr.i.4, align 8
  %inc.i.4 = add i32 %idx, 21
  %arrayidx5.i.4 = getelementptr i64, ptr %data, i32 %inc.4.i.3
  %62 = ptrtoint ptr %arrayidx5.i.4 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx5.i.4, align 8
  %add.ptr.1.i.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 4, i32 5
  %63 = ptrtoint ptr %add.ptr.1.i.4 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr.1.i.4, align 8
  %inc.1.i.4 = add i32 %idx, 22
  %arrayidx5.1.i.4 = getelementptr i64, ptr %data, i32 %inc.i.4
  %65 = ptrtoint ptr %arrayidx5.1.i.4 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx5.1.i.4, align 8
  %add.ptr.2.i.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 4, i32 16
  %66 = ptrtoint ptr %add.ptr.2.i.4 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %add.ptr.2.i.4, align 8
  %inc.2.i.4 = add i32 %idx, 23
  %arrayidx5.2.i.4 = getelementptr i64, ptr %data, i32 %inc.1.i.4
  %68 = ptrtoint ptr %arrayidx5.2.i.4 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %arrayidx5.2.i.4, align 8
  %add.ptr.3.i.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 4, i32 6
  %69 = ptrtoint ptr %add.ptr.3.i.4 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr.3.i.4, align 8
  %inc.3.i.4 = add i32 %idx, 24
  %arrayidx5.3.i.4 = getelementptr i64, ptr %data, i32 %inc.2.i.4
  %71 = ptrtoint ptr %arrayidx5.3.i.4 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx5.3.i.4, align 8
  %add.ptr.4.i.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 4, i32 10
  %72 = ptrtoint ptr %add.ptr.4.i.4 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr.4.i.4, align 8
  %inc.4.i.4 = add i32 %idx, 25
  %arrayidx5.4.i.4 = getelementptr i64, ptr %data, i32 %inc.3.i.4
  %74 = ptrtoint ptr %arrayidx5.4.i.4 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %arrayidx5.4.i.4, align 8
  %add.ptr.i.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 5, i32 1
  %75 = ptrtoint ptr %add.ptr.i.5 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr.i.5, align 8
  %inc.i.5 = add i32 %idx, 26
  %arrayidx5.i.5 = getelementptr i64, ptr %data, i32 %inc.4.i.4
  %77 = ptrtoint ptr %arrayidx5.i.5 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx5.i.5, align 8
  %add.ptr.1.i.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 5, i32 5
  %78 = ptrtoint ptr %add.ptr.1.i.5 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %add.ptr.1.i.5, align 8
  %inc.1.i.5 = add i32 %idx, 27
  %arrayidx5.1.i.5 = getelementptr i64, ptr %data, i32 %inc.i.5
  %80 = ptrtoint ptr %arrayidx5.1.i.5 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %arrayidx5.1.i.5, align 8
  %add.ptr.2.i.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 5, i32 16
  %81 = ptrtoint ptr %add.ptr.2.i.5 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %add.ptr.2.i.5, align 8
  %inc.2.i.5 = add i32 %idx, 28
  %arrayidx5.2.i.5 = getelementptr i64, ptr %data, i32 %inc.1.i.5
  %83 = ptrtoint ptr %arrayidx5.2.i.5 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx5.2.i.5, align 8
  %add.ptr.3.i.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 5, i32 6
  %84 = ptrtoint ptr %add.ptr.3.i.5 to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %add.ptr.3.i.5, align 8
  %inc.3.i.5 = add i32 %idx, 29
  %arrayidx5.3.i.5 = getelementptr i64, ptr %data, i32 %inc.2.i.5
  %86 = ptrtoint ptr %arrayidx5.3.i.5 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %85, ptr %arrayidx5.3.i.5, align 8
  %add.ptr.4.i.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 5, i32 10
  %87 = ptrtoint ptr %add.ptr.4.i.5 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %add.ptr.4.i.5, align 8
  %inc.4.i.5 = add i32 %idx, 30
  %arrayidx5.4.i.5 = getelementptr i64, ptr %data, i32 %inc.3.i.5
  %89 = ptrtoint ptr %arrayidx5.4.i.5 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx5.4.i.5, align 8
  %add.ptr.i.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 6, i32 1
  %90 = ptrtoint ptr %add.ptr.i.6 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %add.ptr.i.6, align 8
  %inc.i.6 = add i32 %idx, 31
  %arrayidx5.i.6 = getelementptr i64, ptr %data, i32 %inc.4.i.5
  %92 = ptrtoint ptr %arrayidx5.i.6 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %91, ptr %arrayidx5.i.6, align 8
  %add.ptr.1.i.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 6, i32 5
  %93 = ptrtoint ptr %add.ptr.1.i.6 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %add.ptr.1.i.6, align 8
  %inc.1.i.6 = add i32 %idx, 32
  %arrayidx5.1.i.6 = getelementptr i64, ptr %data, i32 %inc.i.6
  %95 = ptrtoint ptr %arrayidx5.1.i.6 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx5.1.i.6, align 8
  %add.ptr.2.i.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 6, i32 16
  %96 = ptrtoint ptr %add.ptr.2.i.6 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %add.ptr.2.i.6, align 8
  %inc.2.i.6 = add i32 %idx, 33
  %arrayidx5.2.i.6 = getelementptr i64, ptr %data, i32 %inc.1.i.6
  %98 = ptrtoint ptr %arrayidx5.2.i.6 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %97, ptr %arrayidx5.2.i.6, align 8
  %add.ptr.3.i.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 6, i32 6
  %99 = ptrtoint ptr %add.ptr.3.i.6 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %add.ptr.3.i.6, align 8
  %inc.3.i.6 = add i32 %idx, 34
  %arrayidx5.3.i.6 = getelementptr i64, ptr %data, i32 %inc.2.i.6
  %101 = ptrtoint ptr %arrayidx5.3.i.6 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %arrayidx5.3.i.6, align 8
  %add.ptr.4.i.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 6, i32 10
  %102 = ptrtoint ptr %add.ptr.4.i.6 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %add.ptr.4.i.6, align 8
  %inc.4.i.6 = add i32 %idx, 35
  %arrayidx5.4.i.6 = getelementptr i64, ptr %data, i32 %inc.3.i.6
  %104 = ptrtoint ptr %arrayidx5.4.i.6 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %arrayidx5.4.i.6, align 8
  %add.ptr.i.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 7, i32 1
  %105 = ptrtoint ptr %add.ptr.i.7 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %add.ptr.i.7, align 8
  %inc.i.7 = add i32 %idx, 36
  %arrayidx5.i.7 = getelementptr i64, ptr %data, i32 %inc.4.i.6
  %107 = ptrtoint ptr %arrayidx5.i.7 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %arrayidx5.i.7, align 8
  %add.ptr.1.i.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 7, i32 5
  %108 = ptrtoint ptr %add.ptr.1.i.7 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %add.ptr.1.i.7, align 8
  %inc.1.i.7 = add i32 %idx, 37
  %arrayidx5.1.i.7 = getelementptr i64, ptr %data, i32 %inc.i.7
  %110 = ptrtoint ptr %arrayidx5.1.i.7 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %arrayidx5.1.i.7, align 8
  %add.ptr.2.i.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 7, i32 16
  %111 = ptrtoint ptr %add.ptr.2.i.7 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %add.ptr.2.i.7, align 8
  %inc.2.i.7 = add i32 %idx, 38
  %arrayidx5.2.i.7 = getelementptr i64, ptr %data, i32 %inc.1.i.7
  %113 = ptrtoint ptr %arrayidx5.2.i.7 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %arrayidx5.2.i.7, align 8
  %add.ptr.3.i.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 7, i32 6
  %114 = ptrtoint ptr %add.ptr.3.i.7 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %add.ptr.3.i.7, align 8
  %inc.3.i.7 = add i32 %idx, 39
  %arrayidx5.3.i.7 = getelementptr i64, ptr %data, i32 %inc.2.i.7
  %116 = ptrtoint ptr %arrayidx5.3.i.7 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %arrayidx5.3.i.7, align 8
  %add.ptr.4.i.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 7, i32 10
  %117 = ptrtoint ptr %add.ptr.4.i.7 to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %add.ptr.4.i.7, align 8
  %inc.4.i.7 = add i32 %idx, 40
  %arrayidx5.4.i.7 = getelementptr i64, ptr %data, i32 %inc.3.i.7
  %119 = ptrtoint ptr %arrayidx5.4.i.7 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %arrayidx5.4.i.7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pfc_combined.i) #14
  %mdev1.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %120 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mdev1.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pfc_en_tx.i.i) #14
  %122 = ptrtoint ptr %pfc_en_tx.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %pfc_en_tx.i.i, align 1, !annotation !123
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pfc_en_rx.i.i) #14
  %123 = ptrtoint ptr %pfc_en_rx.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 -1, ptr %pfc_en_rx.i.i, align 1, !annotation !123
  %caps.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %121, i32 0, i32 8
  %124 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %caps.i.i, align 8
  %add.ptr.i.i = getelementptr i32, ptr %125, i32 13
  %126 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %add.ptr.i.i, align 4
  %128 = and i32 %127, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %128)
  %cmp.not.i.i = icmp eq i32 %128, 256
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.mlx5e_query_pfc_combined.exit.i_crit_edge

entry.mlx5e_query_pfc_combined.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_pfc_combined.exit.i

if.end.i.i:                                       ; preds = %entry
  %call.i.i = call i32 @mlx5_query_port_pfc(ptr noundef %121, ptr noundef nonnull %pfc_en_tx.i.i, ptr noundef nonnull %pfc_en_rx.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge

if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_pfc_combined.exit.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %129 = ptrtoint ptr %pfc_en_tx.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %pfc_en_tx.i.i, align 1
  %131 = ptrtoint ptr %pfc_en_rx.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pfc_en_rx.i.i, align 1
  %or7.i.i = or i8 %132, %130
  %or.i.i = zext i8 %or7.i.i to i32
  br label %mlx5e_query_pfc_combined.exit.i

mlx5e_query_pfc_combined.exit.i:                  ; preds = %cond.false.i.i, %if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge, %entry.mlx5e_query_pfc_combined.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %entry.mlx5e_query_pfc_combined.exit.i_crit_edge ], [ %or.i.i, %cond.false.i.i ], [ 0, %if.end.i.i.mlx5e_query_pfc_combined.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pfc_en_rx.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pfc_en_tx.i.i) #14
  %133 = ptrtoint ptr %pfc_combined.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %retval.0.i.i, ptr %pfc_combined.i, align 4
  %call1.i = call i32 @_find_next_bit_be(ptr noundef nonnull %pfc_combined.i, i32 noundef 8, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1.i)
  %cmp85.i = icmp slt i32 %call1.i, 8
  br i1 %cmp85.i, label %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge, label %mlx5e_query_pfc_combined.exit.i.for.end10.i_crit_edge

mlx5e_query_pfc_combined.exit.i.for.end10.i_crit_edge: ; preds = %mlx5e_query_pfc_combined.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end10.i

mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge: ; preds = %mlx5e_query_pfc_combined.exit.i
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge
  %prio.087.i = phi i32 [ %call9.i, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ], [ %call1.i, %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge ]
  %idx.addr.086.i = phi i32 [ %inc.4.i16, %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge ], [ %inc.4.i.7, %mlx5e_query_pfc_combined.exit.i.for.cond2.preheader.i_crit_edge ]
  %arrayidx.i6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 %prio.087.i
  %add.ptr.i7 = getelementptr i8, ptr %arrayidx.i6, i32 88
  %134 = ptrtoint ptr %add.ptr.i7 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %add.ptr.i7, align 8
  %inc.i8 = add i32 %idx.addr.086.i, 1
  %arrayidx6.i = getelementptr i64, ptr %data, i32 %idx.addr.086.i
  %136 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %arrayidx6.i, align 8
  %add.ptr.1.i9 = getelementptr i8, ptr %arrayidx.i6, i32 96
  %137 = ptrtoint ptr %add.ptr.1.i9 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %add.ptr.1.i9, align 8
  %inc.1.i10 = add i32 %idx.addr.086.i, 2
  %arrayidx6.1.i = getelementptr i64, ptr %data, i32 %inc.i8
  %139 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %arrayidx6.1.i, align 8
  %add.ptr.2.i11 = getelementptr i8, ptr %arrayidx.i6, i32 104
  %140 = ptrtoint ptr %add.ptr.2.i11 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %add.ptr.2.i11, align 8
  %inc.2.i12 = add i32 %idx.addr.086.i, 3
  %arrayidx6.2.i = getelementptr i64, ptr %data, i32 %inc.1.i10
  %142 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %arrayidx6.2.i, align 8
  %add.ptr.3.i13 = getelementptr i8, ptr %arrayidx.i6, i32 112
  %143 = ptrtoint ptr %add.ptr.3.i13 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %add.ptr.3.i13, align 8
  %inc.3.i14 = add i32 %idx.addr.086.i, 4
  %arrayidx6.3.i = getelementptr i64, ptr %data, i32 %inc.2.i12
  %145 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %arrayidx6.3.i, align 8
  %add.ptr.4.i15 = getelementptr i8, ptr %arrayidx.i6, i32 120
  %146 = ptrtoint ptr %add.ptr.4.i15 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %add.ptr.4.i15, align 8
  %inc.4.i16 = add i32 %idx.addr.086.i, 5
  %arrayidx6.4.i = getelementptr i64, ptr %data, i32 %inc.3.i14
  %148 = ptrtoint ptr %arrayidx6.4.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %arrayidx6.4.i, align 8
  %add.i = add nsw i32 %prio.087.i, 1
  %call9.i = call i32 @_find_next_bit_be(ptr noundef nonnull %pfc_combined.i, i32 noundef 8, i32 noundef %add.i) #14
  %cmp.i = icmp slt i32 %call9.i, 8
  br i1 %cmp.i, label %for.cond2.preheader.i.for.cond2.preheader.i_crit_edge, label %for.cond2.preheader.i.for.end10.i_crit_edge

for.cond2.preheader.i.for.end10.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end10.i

for.cond2.preheader.i.for.cond2.preheader.i_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader.i

for.end10.i:                                      ; preds = %for.cond2.preheader.i.for.end10.i_crit_edge, %mlx5e_query_pfc_combined.exit.i.for.end10.i_crit_edge
  %idx.addr.0.lcssa.i = phi i32 [ %inc.4.i.7, %mlx5e_query_pfc_combined.exit.i.for.end10.i_crit_edge ], [ %inc.4.i16, %for.cond2.preheader.i.for.end10.i_crit_edge ]
  %149 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mdev1.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  %151 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %rx_pause.i.i, align 4, !annotation !123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  %152 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %tx_pause.i.i, align 4, !annotation !123
  %caps.i73.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %150, i32 0, i32 8
  %153 = ptrtoint ptr %caps.i73.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %caps.i73.i, align 8
  %add.ptr.i74.i = getelementptr i32, ptr %154, i32 13
  %155 = ptrtoint ptr %add.ptr.i74.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %add.ptr.i74.i, align 4
  %157 = and i32 %156, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %157)
  %cmp.not.i75.i = icmp eq i32 %157, 256
  br i1 %cmp.not.i75.i, label %if.end.i78.i, label %for.end10.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge

for.end10.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge: ; preds = %for.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_global_pause_combined.exit.thread.i

if.end.i78.i:                                     ; preds = %for.end10.i
  %call.i76.i = call i32 @mlx5_query_port_pause(ptr noundef %150, ptr noundef nonnull %rx_pause.i.i, ptr noundef nonnull %tx_pause.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool.not.i77.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool.not.i77.i, label %mlx5e_query_global_pause_combined.exit.i, label %if.end.i78.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge

if.end.i78.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge: ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_query_global_pause_combined.exit.thread.i

mlx5e_query_global_pause_combined.exit.thread.i:  ; preds = %if.end.i78.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge, %for.end10.i.mlx5e_query_global_pause_combined.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  br label %if.end.i

mlx5e_query_global_pause_combined.exit.i:         ; preds = %if.end.i78.i
  %158 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rx_pause.i.i, align 4
  %160 = ptrtoint ptr %tx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tx_pause.i.i, align 4
  %or.i79.i = or i32 %161, %159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i79.i)
  %phi.cmp.i.not.i = icmp eq i32 %or.i79.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pause.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pause.i.i) #14
  br i1 %phi.cmp.i.not.i, label %mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge, label %for.cond12.preheader.i

mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge: ; preds = %mlx5e_query_global_pause_combined.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

for.cond12.preheader.i:                           ; preds = %mlx5e_query_global_pause_combined.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr21.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 11
  %162 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %add.ptr21.i, align 8
  %inc22.i = add i32 %idx.addr.0.lcssa.i, 1
  %arrayidx23.i = getelementptr i64, ptr %data, i32 %idx.addr.0.lcssa.i
  %164 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store8_noabort(i32 %164)
  store i64 %163, ptr %arrayidx23.i, align 8
  %add.ptr21.1.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 12
  %165 = ptrtoint ptr %add.ptr21.1.i to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %add.ptr21.1.i, align 8
  %inc22.1.i = add i32 %idx.addr.0.lcssa.i, 2
  %arrayidx23.1.i = getelementptr i64, ptr %data, i32 %inc22.i
  %167 = ptrtoint ptr %arrayidx23.1.i to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %166, ptr %arrayidx23.1.i, align 8
  %add.ptr21.2.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 13
  %168 = ptrtoint ptr %add.ptr21.2.i to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %add.ptr21.2.i, align 8
  %inc22.2.i = add i32 %idx.addr.0.lcssa.i, 3
  %arrayidx23.2.i = getelementptr i64, ptr %data, i32 %inc22.1.i
  %170 = ptrtoint ptr %arrayidx23.2.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %169, ptr %arrayidx23.2.i, align 8
  %add.ptr21.3.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 14
  %171 = ptrtoint ptr %add.ptr21.3.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %add.ptr21.3.i, align 8
  %inc22.3.i = add i32 %idx.addr.0.lcssa.i, 4
  %arrayidx23.3.i = getelementptr i64, ptr %data, i32 %inc22.2.i
  %173 = ptrtoint ptr %arrayidx23.3.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 %172, ptr %arrayidx23.3.i, align 8
  %add.ptr21.4.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 15
  %174 = ptrtoint ptr %add.ptr21.4.i to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %add.ptr21.4.i, align 8
  %inc22.4.i = add i32 %idx.addr.0.lcssa.i, 5
  %arrayidx23.4.i = getelementptr i64, ptr %data, i32 %inc22.3.i
  %176 = ptrtoint ptr %arrayidx23.4.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %175, ptr %arrayidx23.4.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %for.cond12.preheader.i, %mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge, %mlx5e_query_global_pause_combined.exit.thread.i
  %idx.addr.3.i = phi i32 [ %idx.addr.0.lcssa.i, %mlx5e_query_global_pause_combined.exit.i.if.end.i_crit_edge ], [ %idx.addr.0.lcssa.i, %mlx5e_query_global_pause_combined.exit.thread.i ], [ %inc22.4.i, %for.cond12.preheader.i ]
  %177 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mdev1.i.i, align 64
  %add.ptr2890.i = getelementptr %struct.mlx5_core_dev, ptr %178, i32 0, i32 8, i32 1, i32 13
  %179 = ptrtoint ptr %add.ptr2890.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %add.ptr2890.i, align 4
  %181 = lshr i32 %180, 8
  %mul91.i = and i32 %181, 2
  %arrayidx3192.i = getelementptr %struct.mlx5_core_dev, ptr %178, i32 0, i32 8, i32 0, i32 13
  %182 = ptrtoint ptr %arrayidx3192.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx3192.i, align 4
  %add.ptr3393.i = getelementptr i32, ptr %183, i32 1
  %184 = ptrtoint ptr %add.ptr3393.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr3393.i, align 4
  %shr3494.i = lshr i32 %185, 29
  %and3595.i = and i32 %shr3494.i, 1
  %mul3696.i = mul nuw nsw i32 %and3595.i, %mul91.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul3696.i)
  %cmp3797.not.i = icmp eq i32 %mul3696.i, 0
  br i1 %cmp3797.not.i, label %if.end.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge, label %for.body38.i

if.end.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_prio_pfc_fill_stats.exit

for.body38.i:                                     ; preds = %if.end.i
  %add.ptr45.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 17
  %186 = ptrtoint ptr %add.ptr45.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %add.ptr45.i, align 8
  %inc46.i = add i32 %idx.addr.3.i, 1
  %arrayidx47.i = getelementptr i64, ptr %data, i32 %idx.addr.3.i
  %188 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %187, ptr %arrayidx47.i, align 8
  %189 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mdev1.i.i, align 64
  %add.ptr28.i = getelementptr %struct.mlx5_core_dev, ptr %190, i32 0, i32 8, i32 1, i32 13
  %191 = ptrtoint ptr %add.ptr28.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %add.ptr28.i, align 4
  %193 = lshr i32 %192, 8
  %mul.i = and i32 %193, 2
  %arrayidx31.i = getelementptr %struct.mlx5_core_dev, ptr %190, i32 0, i32 8, i32 0, i32 13
  %194 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx31.i, align 4
  %add.ptr33.i = getelementptr i32, ptr %195, i32 1
  %196 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %add.ptr33.i, align 4
  %shr34.i = lshr i32 %197, 29
  %and35.i = and i32 %shr34.i, 1
  %mul36.i = mul nuw nsw i32 %and35.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul36.i)
  %cmp37.i = icmp eq i32 %mul36.i, 2
  br i1 %cmp37.i, label %for.body38.i.1, label %for.body38.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge

for.body38.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge: ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_prio_pfc_fill_stats.exit

for.body38.i.1:                                   ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr45.i.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0, i32 18
  %198 = ptrtoint ptr %add.ptr45.i.1 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %add.ptr45.i.1, align 8
  %inc46.i.1 = add i32 %idx.addr.3.i, 2
  %arrayidx47.i.1 = getelementptr i64, ptr %data, i32 %inc46.i
  %200 = ptrtoint ptr %arrayidx47.i.1 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %arrayidx47.i.1, align 8
  br label %mlx5e_grp_per_prio_pfc_fill_stats.exit

mlx5e_grp_per_prio_pfc_fill_stats.exit:           ; preds = %for.body38.i.1, %for.body38.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge, %if.end.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge
  %idx.addr.4.lcssa.i = phi i32 [ %idx.addr.3.i, %if.end.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge ], [ %inc46.i, %for.body38.i.mlx5e_grp_per_prio_pfc_fill_stats.exit_crit_edge ], [ %inc46.i.1, %for.body38.i.1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pfc_combined.i) #14
  ret i32 %idx.addr.4.lcssa.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_per_prio_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %2 = call ptr @memset(ptr %in, i32 0, i32 256)
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %cond.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

cond.true:                                        ; preds = %entry
  %add.ptr4 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr4, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body_crit_edge

cond.true.do.body_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %cond.true.do.body_crit_edge, %entry.do.body_crit_edge
  %11 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in, align 4
  %and11 = and i32 %12, -16711744
  %or27 = or i32 %and11, 65552
  store i32 %or27, ptr %in, align 4
  %add.ptr40 = getelementptr inbounds i32, ptr %in, i32 1
  %arrayidx32 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 0
  %13 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr40, align 4
  %and41 = and i32 %14, -8
  store i32 %and41, ptr %add.ptr40, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx32.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 1
  %15 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr40, align 4
  %and41.1 = and i32 %16, -8
  %or44.1 = or i32 %and41.1, 1
  store i32 %or44.1, ptr %add.ptr40, align 4
  %call.1 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32.1, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx32.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 2
  %17 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr40, align 4
  %and41.2 = and i32 %18, -8
  %or44.2 = or i32 %and41.2, 2
  store i32 %or44.2, ptr %add.ptr40, align 4
  %call.2 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32.2, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx32.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 3
  %19 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr40, align 4
  %and41.3 = and i32 %20, -8
  %or44.3 = or i32 %and41.3, 3
  store i32 %or44.3, ptr %add.ptr40, align 4
  %call.3 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32.3, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx32.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 4
  %21 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr40, align 4
  %and41.4 = and i32 %22, -8
  %or44.4 = or i32 %and41.4, 4
  store i32 %or44.4, ptr %add.ptr40, align 4
  %call.4 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32.4, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx32.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 5
  %23 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr40, align 4
  %and41.5 = and i32 %24, -8
  %or44.5 = or i32 %and41.5, 5
  store i32 %or44.5, ptr %add.ptr40, align 4
  %call.5 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32.5, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx32.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 6
  %25 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr40, align 4
  %and41.6 = and i32 %26, -8
  %or44.6 = or i32 %and41.6, 6
  store i32 %or44.6, ptr %add.ptr40, align 4
  %call.6 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32.6, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx32.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 3, i32 7
  %27 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr40, align 4
  %or44.7 = or i32 %28, 7
  store i32 %or44.7, ptr %add.ptr40, align 4
  %call.7 = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %arrayidx32.7, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %cond.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_pme_num_stats(ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_pme_fill_strings(ptr nocapture noundef readnone %priv, ptr noundef %data, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull @mlx5e_pme_status_desc) #17
  %inc = shl i32 %idx, 5
  %mul6 = add i32 %inc, 32
  %add.ptr7 = getelementptr i8, ptr %data, i32 %mul6
  %call11 = tail call ptr @strcpy(ptr noundef %add.ptr7, ptr noundef nonnull @mlx5e_pme_error_desc) #17
  %inc5 = shl i32 %idx, 5
  %mul6.1 = add i32 %inc5, 64
  %add.ptr7.1 = getelementptr i8, ptr %data, i32 %mul6.1
  %call11.1 = tail call ptr @strcpy(ptr noundef %add.ptr7.1, ptr noundef getelementptr inbounds ([3 x %struct.counter_desc], ptr @mlx5e_pme_error_desc, i32 0, i32 1)) #17
  %inc5.2 = add i32 %idx, 4
  %inc5.1 = shl i32 %idx, 5
  %mul6.2 = add i32 %inc5.1, 96
  %add.ptr7.2 = getelementptr i8, ptr %data, i32 %mul6.2
  %call11.2 = tail call ptr @strcpy(ptr noundef %add.ptr7.2, ptr noundef getelementptr inbounds ([3 x %struct.counter_desc], ptr @mlx5e_pme_error_desc, i32 0, i32 2)) #17
  ret i32 %inc5.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_pme_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #0 align 64 {
entry:
  %pme_stats = alloca %struct.mlx5_pme_stats, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %pme_stats) #14
  %0 = call ptr @memset(ptr %pme_stats, i32 255, i32 144)
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  call void @mlx5_get_pme_stats(ptr noundef %2, ptr noundef nonnull %pme_stats) #14
  %add.ptr = getelementptr inbounds i8, ptr %pme_stats, i32 16
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %add.ptr, align 8
  %inc = add i32 %idx, 1
  %arrayidx1 = getelementptr i64, ptr %data, i32 %idx
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx1, align 8
  %add.ptr9 = getelementptr inbounds %struct.mlx5_pme_stats, ptr %pme_stats, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr9, align 8
  %inc10 = add i32 %idx, 2
  %arrayidx11 = getelementptr i64, ptr %data, i32 %inc
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx11, align 8
  %add.ptr9.1 = getelementptr inbounds %struct.mlx5_pme_stats, ptr %pme_stats, i32 0, i32 1, i32 6
  %9 = ptrtoint ptr %add.ptr9.1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr9.1, align 8
  %inc10.1 = add i32 %idx, 3
  %arrayidx11.1 = getelementptr i64, ptr %data, i32 %inc10
  %11 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx11.1, align 8
  %add.ptr9.2 = getelementptr inbounds %struct.mlx5_pme_stats, ptr %pme_stats, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %add.ptr9.2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr9.2, align 8
  %inc10.2 = add i32 %idx, 4
  %arrayidx11.2 = getelementptr i64, ptr %data, i32 %inc10.1
  %14 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx11.2, align 8
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %pme_stats) #14
  ret i32 %inc10.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5e_stats_grp_pme_update_stats(ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_channels_num_stats(ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %stats_nch = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 29
  %0 = ptrtoint ptr %stats_nch to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %stats_nch, align 128
  %conv = zext i16 %1 to i32
  %max_opened_tc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  %2 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_opened_tc, align 4
  %conv3 = zext i8 %3 to i32
  %mul4 = mul nuw nsw i32 %conv3, 29
  %ever_used = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 48, i32 2
  %4 = ptrtoint ptr %ever_used to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ever_used, align 2, !range !125
  %narrow = mul nuw nsw i8 %5, 25
  %reass.mul34 = zext i8 %narrow to i32
  %reass.add32 = add nuw nsw i32 %mul4, 64
  %reass.add33 = add nuw nsw i32 %reass.add32, %reass.mul34
  %reass.mul = mul nuw nsw i32 %reass.add33, %conv
  ret i32 %reass.mul
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_channels_fill_strings(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ever_used = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 48, i32 2
  %0 = ptrtoint ptr %ever_used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ever_used, align 2, !range !125
  %stats_nch = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 29
  %2 = ptrtoint ptr %stats_nch to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stats_nch, align 128
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp189.not = icmp eq i16 %3, 0
  br i1 %cmp189.not, label %entry.for.cond62.preheader_crit_edge, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  br label %for.cond2.preheader

entry.for.cond62.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond62.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %i.0191 = phi i32 [ %inc8, %for.cond2.preheader.for.cond2.preheader_crit_edge ], [ 0, %entry.for.cond2.preheader_crit_edge ]
  %idx.addr.0190 = phi i32 [ %inc.5, %for.cond2.preheader.for.cond2.preheader_crit_edge ], [ %idx, %entry.for.cond2.preheader_crit_edge ]
  %mul = shl i32 %idx.addr.0190, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @ch_stats_desc, i32 noundef %i.0191)
  %inc = shl i32 %idx.addr.0190, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @ch_stats_desc, i32 0, i32 1), i32 noundef %i.0191)
  %inc.1 = shl i32 %idx.addr.0190, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @ch_stats_desc, i32 0, i32 2), i32 noundef %i.0191)
  %inc.2 = shl i32 %idx.addr.0190, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @ch_stats_desc, i32 0, i32 3), i32 noundef %i.0191)
  %inc.3 = shl i32 %idx.addr.0190, 5
  %mul.4 = add i32 %inc.3, 128
  %add.ptr.4 = getelementptr i8, ptr %data, i32 %mul.4
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @ch_stats_desc, i32 0, i32 4), i32 noundef %i.0191)
  %inc.5 = add i32 %idx.addr.0190, 6
  %inc.4 = shl i32 %idx.addr.0190, 5
  %mul.5 = add i32 %inc.4, 160
  %add.ptr.5 = getelementptr i8, ptr %data, i32 %mul.5
  %call.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @ch_stats_desc, i32 0, i32 5), i32 noundef %i.0191)
  %inc8 = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc8, %conv
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.cond2.preheader.for.cond2.preheader_crit_edge

for.cond2.preheader.for.cond2.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader

for.cond10.preheader:                             ; preds = %for.cond2.preheader
  br i1 %cmp189.not, label %for.cond10.preheader.for.cond62.preheader_crit_edge, label %for.cond14.preheader.lr.ph

for.cond10.preheader.for.cond62.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond62.preheader

for.cond14.preheader.lr.ph:                       ; preds = %for.cond10.preheader
  %narrow186 = mul nuw nsw i8 %1, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp32194.not = icmp eq i8 %1, 0
  %4 = call i8 @llvm.umax.i8(i8 %narrow186, i8 1)
  %umax = zext i8 %4 to i32
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond45.preheader.for.cond14.preheader_crit_edge, %for.cond14.preheader.lr.ph
  %i.1202 = phi i32 [ 0, %for.cond14.preheader.lr.ph ], [ %inc60, %for.cond45.preheader.for.cond14.preheader_crit_edge ]
  %idx.addr.2201 = phi i32 [ %inc.5, %for.cond14.preheader.lr.ph ], [ %inc49.6, %for.cond45.preheader.for.cond14.preheader_crit_edge ]
  br label %for.body17

for.cond62.preheader:                             ; preds = %for.cond45.preheader.for.cond62.preheader_crit_edge, %for.cond10.preheader.for.cond62.preheader_crit_edge, %entry.for.cond62.preheader_crit_edge
  %idx.addr.2.lcssa = phi i32 [ %inc.5, %for.cond10.preheader.for.cond62.preheader_crit_edge ], [ %idx, %entry.for.cond62.preheader_crit_edge ], [ %inc49.6, %for.cond45.preheader.for.cond62.preheader_crit_edge ]
  %max_opened_tc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  %5 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %max_opened_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp64212.not = icmp eq i8 %6, 0
  br i1 %cmp64212.not, label %for.cond62.preheader.for.cond92.preheader_crit_edge, label %for.cond62.preheader.for.cond67.preheader_crit_edge

for.cond62.preheader.for.cond67.preheader_crit_edge: ; preds = %for.cond62.preheader
  br label %for.cond67.preheader

for.cond62.preheader.for.cond92.preheader_crit_edge: ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond92.preheader

for.cond28.preheader:                             ; preds = %for.body17
  br i1 %cmp32194.not, label %for.cond28.preheader.for.cond45.preheader_crit_edge, label %for.cond28.preheader.for.body34_crit_edge

for.cond28.preheader.for.body34_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body34

for.cond28.preheader.for.cond45.preheader_crit_edge: ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond45.preheader

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond14.preheader
  %j.1193 = phi i32 [ 0, %for.cond14.preheader ], [ %inc26, %for.body17.for.body17_crit_edge ]
  %idx.addr.3192 = phi i32 [ %idx.addr.2201, %for.cond14.preheader ], [ %inc18, %for.body17.for.body17_crit_edge ]
  %inc18 = add i32 %idx.addr.3192, 1
  %mul19 = shl i32 %idx.addr.3192, 5
  %add.ptr20 = getelementptr i8, ptr %data, i32 %mul19
  %arrayidx21 = getelementptr [44 x %struct.counter_desc], ptr @rq_stats_desc, i32 0, i32 %j.1193
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr20, ptr noundef %arrayidx21, i32 noundef %i.1202)
  %inc26 = add nuw nsw i32 %j.1193, 1
  %exitcond228.not = icmp eq i32 %inc26, 44
  br i1 %exitcond228.not, label %for.cond28.preheader, label %for.body17.for.body17_crit_edge

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body17

for.cond45.preheader:                             ; preds = %for.body34.for.cond45.preheader_crit_edge, %for.cond28.preheader.for.cond45.preheader_crit_edge
  %idx.addr.4.lcssa = phi i32 [ %inc18, %for.cond28.preheader.for.cond45.preheader_crit_edge ], [ %inc35, %for.body34.for.cond45.preheader_crit_edge ]
  %mul50 = shl i32 %idx.addr.4.lcssa, 5
  %add.ptr51 = getelementptr i8, ptr %data, i32 %mul50
  %call55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51, ptr noundef nonnull @rq_xdpsq_stats_desc, i32 noundef %i.1202)
  %inc49 = shl i32 %idx.addr.4.lcssa, 5
  %mul50.1 = add i32 %inc49, 32
  %add.ptr51.1 = getelementptr i8, ptr %data, i32 %mul50.1
  %call55.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51.1, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @rq_xdpsq_stats_desc, i32 0, i32 1), i32 noundef %i.1202)
  %inc49.1 = shl i32 %idx.addr.4.lcssa, 5
  %mul50.2 = add i32 %inc49.1, 64
  %add.ptr51.2 = getelementptr i8, ptr %data, i32 %mul50.2
  %call55.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51.2, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @rq_xdpsq_stats_desc, i32 0, i32 2), i32 noundef %i.1202)
  %inc49.2 = shl i32 %idx.addr.4.lcssa, 5
  %mul50.3 = add i32 %inc49.2, 96
  %add.ptr51.3 = getelementptr i8, ptr %data, i32 %mul50.3
  %call55.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51.3, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @rq_xdpsq_stats_desc, i32 0, i32 3), i32 noundef %i.1202)
  %inc49.3 = shl i32 %idx.addr.4.lcssa, 5
  %mul50.4 = add i32 %inc49.3, 128
  %add.ptr51.4 = getelementptr i8, ptr %data, i32 %mul50.4
  %call55.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51.4, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @rq_xdpsq_stats_desc, i32 0, i32 4), i32 noundef %i.1202)
  %inc49.4 = shl i32 %idx.addr.4.lcssa, 5
  %mul50.5 = add i32 %inc49.4, 160
  %add.ptr51.5 = getelementptr i8, ptr %data, i32 %mul50.5
  %call55.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51.5, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @rq_xdpsq_stats_desc, i32 0, i32 5), i32 noundef %i.1202)
  %inc49.6 = add i32 %idx.addr.4.lcssa, 7
  %inc49.5 = shl i32 %idx.addr.4.lcssa, 5
  %mul50.6 = add i32 %inc49.5, 192
  %add.ptr51.6 = getelementptr i8, ptr %data, i32 %mul50.6
  %call55.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr51.6, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @rq_xdpsq_stats_desc, i32 0, i32 6), i32 noundef %i.1202)
  %inc60 = add nuw nsw i32 %i.1202, 1
  %exitcond231.not = icmp eq i32 %inc60, %conv
  br i1 %exitcond231.not, label %for.cond45.preheader.for.cond62.preheader_crit_edge, label %for.cond45.preheader.for.cond14.preheader_crit_edge

for.cond45.preheader.for.cond14.preheader_crit_edge: ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond14.preheader

for.cond45.preheader.for.cond62.preheader_crit_edge: ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond62.preheader

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.cond28.preheader.for.body34_crit_edge
  %j.2196 = phi i32 [ %inc43, %for.body34.for.body34_crit_edge ], [ 0, %for.cond28.preheader.for.body34_crit_edge ]
  %idx.addr.4195 = phi i32 [ %inc35, %for.body34.for.body34_crit_edge ], [ %inc18, %for.cond28.preheader.for.body34_crit_edge ]
  %inc35 = add i32 %idx.addr.4195, 1
  %mul36 = shl i32 %idx.addr.4195, 5
  %add.ptr37 = getelementptr i8, ptr %data, i32 %mul36
  %arrayidx38 = getelementptr [19 x %struct.counter_desc], ptr @xskrq_stats_desc, i32 0, i32 %j.2196
  %call41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr37, ptr noundef %arrayidx38, i32 noundef %i.1202)
  %inc43 = add nuw nsw i32 %j.2196, 1
  %exitcond229.not = icmp eq i32 %inc43, %umax
  br i1 %exitcond229.not, label %for.body34.for.cond45.preheader_crit_edge, label %for.body34.for.body34_crit_edge

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body34

for.body34.for.cond45.preheader_crit_edge:        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond45.preheader

for.cond67.preheader:                             ; preds = %for.inc89.for.cond67.preheader_crit_edge, %for.cond62.preheader.for.cond67.preheader_crit_edge
  %tc.0214 = phi i32 [ %inc90, %for.inc89.for.cond67.preheader_crit_edge ], [ 0, %for.cond62.preheader.for.cond67.preheader_crit_edge ]
  %idx.addr.6213 = phi i32 [ %idx.addr.7.lcssa, %for.inc89.for.cond67.preheader_crit_edge ], [ %idx.addr.2.lcssa, %for.cond62.preheader.for.cond67.preheader_crit_edge ]
  br i1 %cmp189.not, label %for.cond67.preheader.for.inc89_crit_edge, label %for.cond71.preheader.lr.ph

for.cond67.preheader.for.inc89_crit_edge:         ; preds = %for.cond67.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc89

for.cond71.preheader.lr.ph:                       ; preds = %for.cond67.preheader
  %mul81 = mul nuw nsw i32 %tc.0214, %conv
  br label %for.cond71.preheader

for.cond92.preheader:                             ; preds = %for.inc89.for.cond92.preheader_crit_edge, %for.cond62.preheader.for.cond92.preheader_crit_edge
  %idx.addr.6.lcssa = phi i32 [ %idx.addr.2.lcssa, %for.cond62.preheader.for.cond92.preheader_crit_edge ], [ %idx.addr.7.lcssa, %for.inc89.for.cond92.preheader_crit_edge ]
  br i1 %cmp189.not, label %for.cond92.preheader.for.end129_crit_edge, label %for.cond96.preheader.lr.ph

for.cond92.preheader.for.end129_crit_edge:        ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end129

for.cond96.preheader.lr.ph:                       ; preds = %for.cond92.preheader
  %narrow = mul nuw nsw i8 %1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp100217.not = icmp eq i8 %1, 0
  %7 = call i8 @llvm.umax.i8(i8 %narrow, i8 1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %exitcond235.not.1 = icmp eq i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %exitcond235.not.2 = icmp eq i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %exitcond235.not.3 = icmp eq i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %exitcond235.not.4 = icmp eq i8 %7, 5
  br label %for.cond96.preheader

for.cond71.preheader:                             ; preds = %for.inc86.for.cond71.preheader_crit_edge, %for.cond71.preheader.lr.ph
  %i.2209 = phi i32 [ 0, %for.cond71.preheader.lr.ph ], [ %inc87, %for.inc86.for.cond71.preheader_crit_edge ]
  %idx.addr.7208 = phi i32 [ %idx.addr.6213, %for.cond71.preheader.lr.ph ], [ %inc75, %for.inc86.for.cond71.preheader_crit_edge ]
  %add = add nuw nsw i32 %i.2209, %mul81
  br label %for.body74

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %for.cond71.preheader
  %j.4206 = phi i32 [ 0, %for.cond71.preheader ], [ %inc84, %for.body74.for.body74_crit_edge ]
  %idx.addr.8205 = phi i32 [ %idx.addr.7208, %for.cond71.preheader ], [ %inc75, %for.body74.for.body74_crit_edge ]
  %inc75 = add i32 %idx.addr.8205, 1
  %mul76 = shl i32 %idx.addr.8205, 5
  %add.ptr77 = getelementptr i8, ptr %data, i32 %mul76
  %arrayidx78 = getelementptr [29 x %struct.counter_desc], ptr @sq_stats_desc, i32 0, i32 %j.4206
  %call82 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr77, ptr noundef %arrayidx78, i32 noundef %add)
  %inc84 = add nuw nsw i32 %j.4206, 1
  %exitcond232.not = icmp eq i32 %inc84, 29
  br i1 %exitcond232.not, label %for.inc86, label %for.body74.for.body74_crit_edge

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body74

for.inc86:                                        ; preds = %for.body74
  %inc87 = add nuw nsw i32 %i.2209, 1
  %exitcond233.not = icmp eq i32 %inc87, %conv
  br i1 %exitcond233.not, label %for.inc86.for.inc89_crit_edge, label %for.inc86.for.cond71.preheader_crit_edge

for.inc86.for.cond71.preheader_crit_edge:         ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond71.preheader

for.inc86.for.inc89_crit_edge:                    ; preds = %for.inc86
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc89

for.inc89:                                        ; preds = %for.inc86.for.inc89_crit_edge, %for.cond67.preheader.for.inc89_crit_edge
  %idx.addr.7.lcssa = phi i32 [ %idx.addr.6213, %for.cond67.preheader.for.inc89_crit_edge ], [ %inc75, %for.inc86.for.inc89_crit_edge ]
  %inc90 = add nuw nsw i32 %tc.0214, 1
  %8 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_opened_tc, align 4
  %conv63 = zext i8 %9 to i32
  %cmp64 = icmp ult i32 %inc90, %conv63
  br i1 %cmp64, label %for.inc89.for.cond67.preheader_crit_edge, label %for.inc89.for.cond92.preheader_crit_edge

for.inc89.for.cond92.preheader_crit_edge:         ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond92.preheader

for.inc89.for.cond67.preheader_crit_edge:         ; preds = %for.inc89
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond67.preheader

for.cond96.preheader:                             ; preds = %for.cond113.preheader.for.cond96.preheader_crit_edge, %for.cond96.preheader.lr.ph
  %i.3225 = phi i32 [ 0, %for.cond96.preheader.lr.ph ], [ %inc128, %for.cond113.preheader.for.cond96.preheader_crit_edge ]
  %idx.addr.9224 = phi i32 [ %idx.addr.6.lcssa, %for.cond96.preheader.lr.ph ], [ %inc117.6, %for.cond113.preheader.for.cond96.preheader_crit_edge ]
  br i1 %cmp100217.not, label %for.cond96.preheader.for.cond113.preheader_crit_edge, label %for.body102

for.cond96.preheader.for.cond113.preheader_crit_edge: ; preds = %for.cond96.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond113.preheader

for.cond113.preheader:                            ; preds = %for.body102.5, %for.body102.4.for.cond113.preheader_crit_edge, %for.body102.3.for.cond113.preheader_crit_edge, %for.body102.2.for.cond113.preheader_crit_edge, %for.body102.for.cond113.preheader_crit_edge, %for.cond96.preheader.for.cond113.preheader_crit_edge
  %idx.addr.10.lcssa = phi i32 [ %idx.addr.9224, %for.cond96.preheader.for.cond113.preheader_crit_edge ], [ %inc103.1, %for.body102.for.cond113.preheader_crit_edge ], [ %inc103.2, %for.body102.2.for.cond113.preheader_crit_edge ], [ %inc103.3, %for.body102.3.for.cond113.preheader_crit_edge ], [ %inc103.4, %for.body102.4.for.cond113.preheader_crit_edge ], [ %inc103.5, %for.body102.5 ]
  %mul118 = shl i32 %idx.addr.10.lcssa, 5
  %add.ptr119 = getelementptr i8, ptr %data, i32 %mul118
  %call123 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr119, ptr noundef nonnull @xdpsq_stats_desc, i32 noundef %i.3225)
  %inc117 = shl i32 %idx.addr.10.lcssa, 5
  %mul118.1 = add i32 %inc117, 32
  %add.ptr119.1 = getelementptr i8, ptr %data, i32 %mul118.1
  %call123.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr119.1, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @xdpsq_stats_desc, i32 0, i32 1), i32 noundef %i.3225)
  %inc117.1 = shl i32 %idx.addr.10.lcssa, 5
  %mul118.2 = add i32 %inc117.1, 64
  %add.ptr119.2 = getelementptr i8, ptr %data, i32 %mul118.2
  %call123.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr119.2, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @xdpsq_stats_desc, i32 0, i32 2), i32 noundef %i.3225)
  %inc117.2 = shl i32 %idx.addr.10.lcssa, 5
  %mul118.3 = add i32 %inc117.2, 96
  %add.ptr119.3 = getelementptr i8, ptr %data, i32 %mul118.3
  %call123.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr119.3, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @xdpsq_stats_desc, i32 0, i32 3), i32 noundef %i.3225)
  %inc117.3 = shl i32 %idx.addr.10.lcssa, 5
  %mul118.4 = add i32 %inc117.3, 128
  %add.ptr119.4 = getelementptr i8, ptr %data, i32 %mul118.4
  %call123.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr119.4, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @xdpsq_stats_desc, i32 0, i32 4), i32 noundef %i.3225)
  %inc117.4 = shl i32 %idx.addr.10.lcssa, 5
  %mul118.5 = add i32 %inc117.4, 160
  %add.ptr119.5 = getelementptr i8, ptr %data, i32 %mul118.5
  %call123.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr119.5, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @xdpsq_stats_desc, i32 0, i32 5), i32 noundef %i.3225)
  %inc117.6 = add i32 %idx.addr.10.lcssa, 7
  %inc117.5 = shl i32 %idx.addr.10.lcssa, 5
  %mul118.6 = add i32 %inc117.5, 192
  %add.ptr119.6 = getelementptr i8, ptr %data, i32 %mul118.6
  %call123.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr119.6, ptr noundef getelementptr inbounds ([7 x %struct.counter_desc], ptr @xdpsq_stats_desc, i32 0, i32 6), i32 noundef %i.3225)
  %inc128 = add nuw nsw i32 %i.3225, 1
  %exitcond237.not = icmp eq i32 %inc128, %conv
  br i1 %exitcond237.not, label %for.cond113.preheader.for.end129_crit_edge, label %for.cond113.preheader.for.cond96.preheader_crit_edge

for.cond113.preheader.for.cond96.preheader_crit_edge: ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond96.preheader

for.cond113.preheader.for.end129_crit_edge:       ; preds = %for.cond113.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end129

for.body102:                                      ; preds = %for.cond96.preheader
  %inc103 = add i32 %idx.addr.9224, 1
  %mul104 = shl i32 %idx.addr.9224, 5
  %add.ptr105 = getelementptr i8, ptr %data, i32 %mul104
  %call109 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr105, ptr noundef nonnull @xsksq_stats_desc, i32 noundef %i.3225)
  %inc103.1 = add i32 %idx.addr.9224, 2
  %mul104.1 = shl i32 %inc103, 5
  %add.ptr105.1 = getelementptr i8, ptr %data, i32 %mul104.1
  %call109.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr105.1, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @xsksq_stats_desc, i32 0, i32 1), i32 noundef %i.3225)
  br i1 %exitcond235.not.1, label %for.body102.for.cond113.preheader_crit_edge, label %for.body102.2

for.body102.for.cond113.preheader_crit_edge:      ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond113.preheader

for.body102.2:                                    ; preds = %for.body102
  %inc103.2 = add i32 %idx.addr.9224, 3
  %mul104.2 = shl i32 %inc103.1, 5
  %add.ptr105.2 = getelementptr i8, ptr %data, i32 %mul104.2
  %call109.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr105.2, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @xsksq_stats_desc, i32 0, i32 2), i32 noundef %i.3225)
  br i1 %exitcond235.not.2, label %for.body102.2.for.cond113.preheader_crit_edge, label %for.body102.3

for.body102.2.for.cond113.preheader_crit_edge:    ; preds = %for.body102.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond113.preheader

for.body102.3:                                    ; preds = %for.body102.2
  %inc103.3 = add i32 %idx.addr.9224, 4
  %mul104.3 = shl i32 %inc103.2, 5
  %add.ptr105.3 = getelementptr i8, ptr %data, i32 %mul104.3
  %call109.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr105.3, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @xsksq_stats_desc, i32 0, i32 3), i32 noundef %i.3225)
  br i1 %exitcond235.not.3, label %for.body102.3.for.cond113.preheader_crit_edge, label %for.body102.4

for.body102.3.for.cond113.preheader_crit_edge:    ; preds = %for.body102.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond113.preheader

for.body102.4:                                    ; preds = %for.body102.3
  %inc103.4 = add i32 %idx.addr.9224, 5
  %mul104.4 = shl i32 %inc103.3, 5
  %add.ptr105.4 = getelementptr i8, ptr %data, i32 %mul104.4
  %call109.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr105.4, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @xsksq_stats_desc, i32 0, i32 4), i32 noundef %i.3225)
  br i1 %exitcond235.not.4, label %for.body102.4.for.cond113.preheader_crit_edge, label %for.body102.5

for.body102.4.for.cond113.preheader_crit_edge:    ; preds = %for.body102.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond113.preheader

for.body102.5:                                    ; preds = %for.body102.4
  call void @__sanitizer_cov_trace_pc() #16
  %inc103.5 = add i32 %idx.addr.9224, 6
  %mul104.5 = shl i32 %inc103.4, 5
  %add.ptr105.5 = getelementptr i8, ptr %data, i32 %mul104.5
  %call109.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr105.5, ptr noundef getelementptr inbounds ([6 x %struct.counter_desc], ptr @xsksq_stats_desc, i32 0, i32 5), i32 noundef %i.3225)
  br label %for.cond113.preheader

for.end129:                                       ; preds = %for.cond113.preheader.for.end129_crit_edge, %for.cond92.preheader.for.end129_crit_edge
  %idx.addr.9.lcssa = phi i32 [ %idx.addr.6.lcssa, %for.cond92.preheader.for.end129_crit_edge ], [ %inc117.6, %for.cond113.preheader.for.end129_crit_edge ]
  ret i32 %idx.addr.9.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_channels_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ever_used = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 48, i32 2
  %0 = ptrtoint ptr %ever_used to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ever_used, align 2, !range !125
  %stats_nch = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 29
  %2 = ptrtoint ptr %stats_nch to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %stats_nch, align 128
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp196.not = icmp eq i16 %3, 0
  br i1 %cmp196.not, label %entry.for.cond63.preheader_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.cond63.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond63.preheader

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %channel_stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 25
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %i.0198 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc10, %for.cond2.preheader.for.cond2.preheader_crit_edge ]
  %idx.addr.0197 = phi i32 [ %idx, %for.cond2.preheader.lr.ph ], [ %inc.5, %for.cond2.preheader.for.cond2.preheader_crit_edge ]
  %4 = ptrtoint ptr %channel_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_stats, align 16
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.0198
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %7, align 8
  %inc = add i32 %idx.addr.0197, 1
  %arrayidx7 = getelementptr i64, ptr %data, i32 %idx.addr.0197
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx7, align 8
  %11 = load ptr, ptr %channel_stats, align 16
  %arrayidx.1 = getelementptr ptr, ptr %11, i32 %i.0198
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %add.ptr.1 = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx.addr.0197, 2
  %arrayidx7.1 = getelementptr i64, ptr %data, i32 %inc
  %16 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %arrayidx7.1, align 8
  %17 = load ptr, ptr %channel_stats, align 16
  %arrayidx.2 = getelementptr ptr, ptr %17, i32 %i.0198
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.2, align 4
  %add.ptr.2 = getelementptr i8, ptr %19, i32 16
  %20 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx.addr.0197, 3
  %arrayidx7.2 = getelementptr i64, ptr %data, i32 %inc.1
  %22 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx7.2, align 8
  %23 = load ptr, ptr %channel_stats, align 16
  %arrayidx.3 = getelementptr ptr, ptr %23, i32 %i.0198
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  %add.ptr.3 = getelementptr i8, ptr %25, i32 24
  %26 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx.addr.0197, 4
  %arrayidx7.3 = getelementptr i64, ptr %data, i32 %inc.2
  %28 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx7.3, align 8
  %29 = load ptr, ptr %channel_stats, align 16
  %arrayidx.4 = getelementptr ptr, ptr %29, i32 %i.0198
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.4, align 4
  %add.ptr.4 = getelementptr i8, ptr %31, i32 32
  %32 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr.4, align 8
  %inc.4 = add i32 %idx.addr.0197, 5
  %arrayidx7.4 = getelementptr i64, ptr %data, i32 %inc.3
  %34 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx7.4, align 8
  %35 = load ptr, ptr %channel_stats, align 16
  %arrayidx.5 = getelementptr ptr, ptr %35, i32 %i.0198
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.5, align 4
  %add.ptr.5 = getelementptr i8, ptr %37, i32 40
  %38 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr.5, align 8
  %inc.5 = add i32 %idx.addr.0197, 6
  %arrayidx7.5 = getelementptr i64, ptr %data, i32 %inc.4
  %40 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx7.5, align 8
  %inc10 = add nuw nsw i32 %i.0198, 1
  %exitcond.not = icmp eq i32 %inc10, %conv
  br i1 %exitcond.not, label %for.cond12.preheader, label %for.cond2.preheader.for.cond2.preheader_crit_edge

for.cond2.preheader.for.cond2.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond2.preheader

for.cond12.preheader:                             ; preds = %for.cond2.preheader
  br i1 %cmp196.not, label %for.cond12.preheader.for.cond63.preheader_crit_edge, label %for.cond16.preheader.lr.ph

for.cond12.preheader.for.cond63.preheader_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond63.preheader

for.cond16.preheader.lr.ph:                       ; preds = %for.cond12.preheader
  %channel_stats20 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 25
  %narrow193 = mul nuw nsw i8 %1, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp33201.not = icmp eq i8 %1, 0
  %41 = call i8 @llvm.umax.i8(i8 %narrow193, i8 1)
  %umax = zext i8 %41 to i32
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond46.preheader.for.cond16.preheader_crit_edge, %for.cond16.preheader.lr.ph
  %i.1209 = phi i32 [ 0, %for.cond16.preheader.lr.ph ], [ %inc61, %for.cond46.preheader.for.cond16.preheader_crit_edge ]
  %idx.addr.2208 = phi i32 [ %inc.5, %for.cond16.preheader.lr.ph ], [ %inc55.6, %for.cond46.preheader.for.cond16.preheader_crit_edge ]
  br label %for.body19

for.cond63.preheader:                             ; preds = %for.cond46.preheader.for.cond63.preheader_crit_edge, %for.cond12.preheader.for.cond63.preheader_crit_edge, %entry.for.cond63.preheader_crit_edge
  %idx.addr.2.lcssa = phi i32 [ %inc.5, %for.cond12.preheader.for.cond63.preheader_crit_edge ], [ %idx, %entry.for.cond63.preheader_crit_edge ], [ %inc55.6, %for.cond46.preheader.for.cond63.preheader_crit_edge ]
  %max_opened_tc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  %42 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_opened_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp65219.not = icmp eq i8 %43, 0
  br i1 %cmp65219.not, label %for.cond63.preheader.for.cond93.preheader_crit_edge, label %for.cond68.preheader.lr.ph

for.cond63.preheader.for.cond93.preheader_crit_edge: ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond93.preheader

for.cond68.preheader.lr.ph:                       ; preds = %for.cond63.preheader
  %channel_stats76 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 25
  br label %for.cond68.preheader

for.cond30.preheader:                             ; preds = %for.body19
  br i1 %cmp33201.not, label %for.cond30.preheader.for.cond46.preheader_crit_edge, label %for.cond30.preheader.for.body35_crit_edge

for.cond30.preheader.for.body35_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body35

for.cond30.preheader.for.cond46.preheader_crit_edge: ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond46.preheader

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond16.preheader
  %j.1200 = phi i32 [ 0, %for.cond16.preheader ], [ %inc28, %for.body19.for.body19_crit_edge ]
  %idx.addr.3199 = phi i32 [ %idx.addr.2208, %for.cond16.preheader ], [ %inc25, %for.body19.for.body19_crit_edge ]
  %44 = ptrtoint ptr %channel_stats20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %channel_stats20, align 16
  %arrayidx21 = getelementptr ptr, ptr %45, i32 %i.1209
  %46 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx21, align 4
  %rq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %47, i32 0, i32 3
  %offset23 = getelementptr [44 x %struct.counter_desc], ptr @rq_stats_desc, i32 0, i32 %j.1200, i32 1
  %48 = ptrtoint ptr %offset23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset23, align 4
  %add.ptr24 = getelementptr i8, ptr %rq, i32 %49
  %50 = ptrtoint ptr %add.ptr24 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr24, align 8
  %inc25 = add i32 %idx.addr.3199, 1
  %arrayidx26 = getelementptr i64, ptr %data, i32 %idx.addr.3199
  %52 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx26, align 8
  %inc28 = add nuw nsw i32 %j.1200, 1
  %exitcond235.not = icmp eq i32 %inc28, 44
  br i1 %exitcond235.not, label %for.cond30.preheader, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

for.cond46.preheader:                             ; preds = %for.body35.for.cond46.preheader_crit_edge, %for.cond30.preheader.for.cond46.preheader_crit_edge
  %idx.addr.4.lcssa = phi i32 [ %inc25, %for.cond30.preheader.for.cond46.preheader_crit_edge ], [ %inc41, %for.body35.for.cond46.preheader_crit_edge ]
  %53 = ptrtoint ptr %channel_stats20 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %channel_stats20, align 16
  %arrayidx51 = getelementptr ptr, ptr %54, i32 %i.1209
  %55 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx51, align 4
  %rq_xdpsq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %rq_xdpsq to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rq_xdpsq, align 8
  %inc55 = add i32 %idx.addr.4.lcssa, 1
  %arrayidx56 = getelementptr i64, ptr %data, i32 %idx.addr.4.lcssa
  %59 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %arrayidx56, align 8
  %60 = load ptr, ptr %channel_stats20, align 16
  %arrayidx51.1 = getelementptr ptr, ptr %60, i32 %i.1209
  %61 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx51.1, align 4
  %add.ptr54.1 = getelementptr %struct.mlx5e_channel_stats, ptr %62, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %add.ptr54.1 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %add.ptr54.1, align 8
  %inc55.1 = add i32 %idx.addr.4.lcssa, 2
  %arrayidx56.1 = getelementptr i64, ptr %data, i32 %inc55
  %65 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %arrayidx56.1, align 8
  %66 = load ptr, ptr %channel_stats20, align 16
  %arrayidx51.2 = getelementptr ptr, ptr %66, i32 %i.1209
  %67 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx51.2, align 4
  %add.ptr54.2 = getelementptr %struct.mlx5e_channel_stats, ptr %68, i32 0, i32 6, i32 2
  %69 = ptrtoint ptr %add.ptr54.2 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %add.ptr54.2, align 8
  %inc55.2 = add i32 %idx.addr.4.lcssa, 3
  %arrayidx56.2 = getelementptr i64, ptr %data, i32 %inc55.1
  %71 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %arrayidx56.2, align 8
  %72 = load ptr, ptr %channel_stats20, align 16
  %arrayidx51.3 = getelementptr ptr, ptr %72, i32 %i.1209
  %73 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx51.3, align 4
  %add.ptr54.3 = getelementptr %struct.mlx5e_channel_stats, ptr %74, i32 0, i32 6, i32 3
  %75 = ptrtoint ptr %add.ptr54.3 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %add.ptr54.3, align 8
  %inc55.3 = add i32 %idx.addr.4.lcssa, 4
  %arrayidx56.3 = getelementptr i64, ptr %data, i32 %inc55.2
  %77 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %76, ptr %arrayidx56.3, align 8
  %78 = load ptr, ptr %channel_stats20, align 16
  %arrayidx51.4 = getelementptr ptr, ptr %78, i32 %i.1209
  %79 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx51.4, align 4
  %add.ptr54.4 = getelementptr %struct.mlx5e_channel_stats, ptr %80, i32 0, i32 6, i32 4
  %81 = ptrtoint ptr %add.ptr54.4 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %add.ptr54.4, align 8
  %inc55.4 = add i32 %idx.addr.4.lcssa, 5
  %arrayidx56.4 = getelementptr i64, ptr %data, i32 %inc55.3
  %83 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx56.4, align 8
  %84 = load ptr, ptr %channel_stats20, align 16
  %arrayidx51.5 = getelementptr ptr, ptr %84, i32 %i.1209
  %85 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx51.5, align 4
  %add.ptr54.5 = getelementptr %struct.mlx5e_channel_stats, ptr %86, i32 0, i32 6, i32 5
  %87 = ptrtoint ptr %add.ptr54.5 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %add.ptr54.5, align 8
  %inc55.5 = add i32 %idx.addr.4.lcssa, 6
  %arrayidx56.5 = getelementptr i64, ptr %data, i32 %inc55.4
  %89 = ptrtoint ptr %arrayidx56.5 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %88, ptr %arrayidx56.5, align 8
  %90 = load ptr, ptr %channel_stats20, align 16
  %arrayidx51.6 = getelementptr ptr, ptr %90, i32 %i.1209
  %91 = ptrtoint ptr %arrayidx51.6 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx51.6, align 4
  %add.ptr54.6 = getelementptr %struct.mlx5e_channel_stats, ptr %92, i32 0, i32 6, i32 7
  %93 = ptrtoint ptr %add.ptr54.6 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %add.ptr54.6, align 8
  %inc55.6 = add i32 %idx.addr.4.lcssa, 7
  %arrayidx56.6 = getelementptr i64, ptr %data, i32 %inc55.5
  %95 = ptrtoint ptr %arrayidx56.6 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %94, ptr %arrayidx56.6, align 8
  %inc61 = add nuw nsw i32 %i.1209, 1
  %exitcond238.not = icmp eq i32 %inc61, %conv
  br i1 %exitcond238.not, label %for.cond46.preheader.for.cond63.preheader_crit_edge, label %for.cond46.preheader.for.cond16.preheader_crit_edge

for.cond46.preheader.for.cond16.preheader_crit_edge: ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond16.preheader

for.cond46.preheader.for.cond63.preheader_crit_edge: ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond63.preheader

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond30.preheader.for.body35_crit_edge
  %j.2203 = phi i32 [ %inc44, %for.body35.for.body35_crit_edge ], [ 0, %for.cond30.preheader.for.body35_crit_edge ]
  %idx.addr.4202 = phi i32 [ %inc41, %for.body35.for.body35_crit_edge ], [ %inc25, %for.cond30.preheader.for.body35_crit_edge ]
  %96 = ptrtoint ptr %channel_stats20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %channel_stats20, align 16
  %arrayidx37 = getelementptr ptr, ptr %97, i32 %i.1209
  %98 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx37, align 4
  %xskrq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %99, i32 0, i32 4
  %offset39 = getelementptr [19 x %struct.counter_desc], ptr @xskrq_stats_desc, i32 0, i32 %j.2203, i32 1
  %100 = ptrtoint ptr %offset39 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %offset39, align 4
  %add.ptr40 = getelementptr i8, ptr %xskrq, i32 %101
  %102 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %add.ptr40, align 8
  %inc41 = add i32 %idx.addr.4202, 1
  %arrayidx42 = getelementptr i64, ptr %data, i32 %idx.addr.4202
  %104 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %arrayidx42, align 8
  %inc44 = add nuw nsw i32 %j.2203, 1
  %exitcond236.not = icmp eq i32 %inc44, %umax
  br i1 %exitcond236.not, label %for.body35.for.cond46.preheader_crit_edge, label %for.body35.for.body35_crit_edge

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body35

for.body35.for.cond46.preheader_crit_edge:        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond46.preheader

for.cond68.preheader:                             ; preds = %for.inc90.for.cond68.preheader_crit_edge, %for.cond68.preheader.lr.ph
  %tc.0221 = phi i32 [ 0, %for.cond68.preheader.lr.ph ], [ %inc91, %for.inc90.for.cond68.preheader_crit_edge ]
  %idx.addr.6220 = phi i32 [ %idx.addr.2.lcssa, %for.cond68.preheader.lr.ph ], [ %idx.addr.7.lcssa, %for.inc90.for.cond68.preheader_crit_edge ]
  br i1 %cmp196.not, label %for.cond68.preheader.for.inc90_crit_edge, label %for.cond68.preheader.for.cond72.preheader_crit_edge

for.cond68.preheader.for.cond72.preheader_crit_edge: ; preds = %for.cond68.preheader
  br label %for.cond72.preheader

for.cond68.preheader.for.inc90_crit_edge:         ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc90

for.cond93.preheader:                             ; preds = %for.inc90.for.cond93.preheader_crit_edge, %for.cond63.preheader.for.cond93.preheader_crit_edge
  %idx.addr.6.lcssa = phi i32 [ %idx.addr.2.lcssa, %for.cond63.preheader.for.cond93.preheader_crit_edge ], [ %idx.addr.7.lcssa, %for.inc90.for.cond93.preheader_crit_edge ]
  br i1 %cmp196.not, label %for.cond93.preheader.for.end130_crit_edge, label %for.cond97.preheader.lr.ph

for.cond93.preheader.for.end130_crit_edge:        ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end130

for.cond97.preheader.lr.ph:                       ; preds = %for.cond93.preheader
  %narrow = mul nuw nsw i8 %1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp101224.not = icmp eq i8 %1, 0
  %channel_stats104 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 25
  %105 = call i8 @llvm.umax.i8(i8 %narrow, i8 1)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %105)
  %exitcond242.not.1 = icmp eq i8 %105, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %105)
  %exitcond242.not.2 = icmp eq i8 %105, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %105)
  %exitcond242.not.3 = icmp eq i8 %105, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %105)
  %exitcond242.not.4 = icmp eq i8 %105, 5
  br label %for.cond97.preheader

for.cond72.preheader:                             ; preds = %for.inc87.for.cond72.preheader_crit_edge, %for.cond68.preheader.for.cond72.preheader_crit_edge
  %i.2216 = phi i32 [ %inc88, %for.inc87.for.cond72.preheader_crit_edge ], [ 0, %for.cond68.preheader.for.cond72.preheader_crit_edge ]
  %idx.addr.7215 = phi i32 [ %inc82, %for.inc87.for.cond72.preheader_crit_edge ], [ %idx.addr.6220, %for.cond68.preheader.for.cond72.preheader_crit_edge ]
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.cond72.preheader
  %j.4213 = phi i32 [ 0, %for.cond72.preheader ], [ %inc85, %for.body75.for.body75_crit_edge ]
  %idx.addr.8212 = phi i32 [ %idx.addr.7215, %for.cond72.preheader ], [ %inc82, %for.body75.for.body75_crit_edge ]
  %106 = ptrtoint ptr %channel_stats76 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %channel_stats76, align 16
  %arrayidx77 = getelementptr ptr, ptr %107, i32 %i.2216
  %108 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr %struct.mlx5e_channel_stats, ptr %109, i32 0, i32 2, i32 %tc.0221
  %offset80 = getelementptr [29 x %struct.counter_desc], ptr @sq_stats_desc, i32 0, i32 %j.4213, i32 1
  %110 = ptrtoint ptr %offset80 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %offset80, align 4
  %add.ptr81 = getelementptr i8, ptr %arrayidx78, i32 %111
  %112 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %add.ptr81, align 8
  %inc82 = add i32 %idx.addr.8212, 1
  %arrayidx83 = getelementptr i64, ptr %data, i32 %idx.addr.8212
  %114 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %arrayidx83, align 8
  %inc85 = add nuw nsw i32 %j.4213, 1
  %exitcond239.not = icmp eq i32 %inc85, 29
  br i1 %exitcond239.not, label %for.inc87, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body75

for.inc87:                                        ; preds = %for.body75
  %inc88 = add nuw nsw i32 %i.2216, 1
  %exitcond240.not = icmp eq i32 %inc88, %conv
  br i1 %exitcond240.not, label %for.inc87.for.inc90_crit_edge, label %for.inc87.for.cond72.preheader_crit_edge

for.inc87.for.cond72.preheader_crit_edge:         ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond72.preheader

for.inc87.for.inc90_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc90

for.inc90:                                        ; preds = %for.inc87.for.inc90_crit_edge, %for.cond68.preheader.for.inc90_crit_edge
  %idx.addr.7.lcssa = phi i32 [ %idx.addr.6220, %for.cond68.preheader.for.inc90_crit_edge ], [ %inc82, %for.inc87.for.inc90_crit_edge ]
  %inc91 = add nuw nsw i32 %tc.0221, 1
  %115 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %max_opened_tc, align 4
  %conv64 = zext i8 %116 to i32
  %cmp65 = icmp ult i32 %inc91, %conv64
  br i1 %cmp65, label %for.inc90.for.cond68.preheader_crit_edge, label %for.inc90.for.cond93.preheader_crit_edge

for.inc90.for.cond93.preheader_crit_edge:         ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond93.preheader

for.inc90.for.cond68.preheader_crit_edge:         ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond68.preheader

for.cond97.preheader:                             ; preds = %for.cond114.preheader.for.cond97.preheader_crit_edge, %for.cond97.preheader.lr.ph
  %i.3232 = phi i32 [ 0, %for.cond97.preheader.lr.ph ], [ %inc129, %for.cond114.preheader.for.cond97.preheader_crit_edge ]
  %idx.addr.9231 = phi i32 [ %idx.addr.6.lcssa, %for.cond97.preheader.lr.ph ], [ %inc123.6, %for.cond114.preheader.for.cond97.preheader_crit_edge ]
  br i1 %cmp101224.not, label %for.cond97.preheader.for.cond114.preheader_crit_edge, label %for.body103

for.cond97.preheader.for.cond114.preheader_crit_edge: ; preds = %for.cond97.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond114.preheader

for.cond114.preheader:                            ; preds = %for.body103.5, %for.body103.4.for.cond114.preheader_crit_edge, %for.body103.3.for.cond114.preheader_crit_edge, %for.body103.2.for.cond114.preheader_crit_edge, %for.body103.for.cond114.preheader_crit_edge, %for.cond97.preheader.for.cond114.preheader_crit_edge
  %idx.addr.10.lcssa = phi i32 [ %idx.addr.9231, %for.cond97.preheader.for.cond114.preheader_crit_edge ], [ %inc109.1, %for.body103.for.cond114.preheader_crit_edge ], [ %inc109.2, %for.body103.2.for.cond114.preheader_crit_edge ], [ %inc109.3, %for.body103.3.for.cond114.preheader_crit_edge ], [ %inc109.4, %for.body103.4.for.cond114.preheader_crit_edge ], [ %inc109.5, %for.body103.5 ]
  %117 = ptrtoint ptr %channel_stats104 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %channel_stats104, align 16
  %arrayidx119 = getelementptr ptr, ptr %118, i32 %i.3232
  %119 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx119, align 4
  %xdpsq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %120, i32 0, i32 7
  %121 = ptrtoint ptr %xdpsq to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %xdpsq, align 8
  %inc123 = add i32 %idx.addr.10.lcssa, 1
  %arrayidx124 = getelementptr i64, ptr %data, i32 %idx.addr.10.lcssa
  %123 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %arrayidx124, align 8
  %124 = load ptr, ptr %channel_stats104, align 16
  %arrayidx119.1 = getelementptr ptr, ptr %124, i32 %i.3232
  %125 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx119.1, align 4
  %add.ptr122.1 = getelementptr %struct.mlx5e_channel_stats, ptr %126, i32 0, i32 7, i32 1
  %127 = ptrtoint ptr %add.ptr122.1 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %add.ptr122.1, align 8
  %inc123.1 = add i32 %idx.addr.10.lcssa, 2
  %arrayidx124.1 = getelementptr i64, ptr %data, i32 %inc123
  %129 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %arrayidx124.1, align 8
  %130 = load ptr, ptr %channel_stats104, align 16
  %arrayidx119.2 = getelementptr ptr, ptr %130, i32 %i.3232
  %131 = ptrtoint ptr %arrayidx119.2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx119.2, align 4
  %add.ptr122.2 = getelementptr %struct.mlx5e_channel_stats, ptr %132, i32 0, i32 7, i32 2
  %133 = ptrtoint ptr %add.ptr122.2 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %add.ptr122.2, align 8
  %inc123.2 = add i32 %idx.addr.10.lcssa, 3
  %arrayidx124.2 = getelementptr i64, ptr %data, i32 %inc123.1
  %135 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %arrayidx124.2, align 8
  %136 = load ptr, ptr %channel_stats104, align 16
  %arrayidx119.3 = getelementptr ptr, ptr %136, i32 %i.3232
  %137 = ptrtoint ptr %arrayidx119.3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx119.3, align 4
  %add.ptr122.3 = getelementptr %struct.mlx5e_channel_stats, ptr %138, i32 0, i32 7, i32 3
  %139 = ptrtoint ptr %add.ptr122.3 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %add.ptr122.3, align 8
  %inc123.3 = add i32 %idx.addr.10.lcssa, 4
  %arrayidx124.3 = getelementptr i64, ptr %data, i32 %inc123.2
  %141 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %arrayidx124.3, align 8
  %142 = load ptr, ptr %channel_stats104, align 16
  %arrayidx119.4 = getelementptr ptr, ptr %142, i32 %i.3232
  %143 = ptrtoint ptr %arrayidx119.4 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx119.4, align 4
  %add.ptr122.4 = getelementptr %struct.mlx5e_channel_stats, ptr %144, i32 0, i32 7, i32 4
  %145 = ptrtoint ptr %add.ptr122.4 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %add.ptr122.4, align 8
  %inc123.4 = add i32 %idx.addr.10.lcssa, 5
  %arrayidx124.4 = getelementptr i64, ptr %data, i32 %inc123.3
  %147 = ptrtoint ptr %arrayidx124.4 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %arrayidx124.4, align 8
  %148 = load ptr, ptr %channel_stats104, align 16
  %arrayidx119.5 = getelementptr ptr, ptr %148, i32 %i.3232
  %149 = ptrtoint ptr %arrayidx119.5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx119.5, align 4
  %add.ptr122.5 = getelementptr %struct.mlx5e_channel_stats, ptr %150, i32 0, i32 7, i32 5
  %151 = ptrtoint ptr %add.ptr122.5 to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %add.ptr122.5, align 8
  %inc123.5 = add i32 %idx.addr.10.lcssa, 6
  %arrayidx124.5 = getelementptr i64, ptr %data, i32 %inc123.4
  %153 = ptrtoint ptr %arrayidx124.5 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %152, ptr %arrayidx124.5, align 8
  %154 = load ptr, ptr %channel_stats104, align 16
  %arrayidx119.6 = getelementptr ptr, ptr %154, i32 %i.3232
  %155 = ptrtoint ptr %arrayidx119.6 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx119.6, align 4
  %add.ptr122.6 = getelementptr %struct.mlx5e_channel_stats, ptr %156, i32 0, i32 7, i32 7
  %157 = ptrtoint ptr %add.ptr122.6 to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %add.ptr122.6, align 8
  %inc123.6 = add i32 %idx.addr.10.lcssa, 7
  %arrayidx124.6 = getelementptr i64, ptr %data, i32 %inc123.5
  %159 = ptrtoint ptr %arrayidx124.6 to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %arrayidx124.6, align 8
  %inc129 = add nuw nsw i32 %i.3232, 1
  %exitcond244.not = icmp eq i32 %inc129, %conv
  br i1 %exitcond244.not, label %for.cond114.preheader.for.end130_crit_edge, label %for.cond114.preheader.for.cond97.preheader_crit_edge

for.cond114.preheader.for.cond97.preheader_crit_edge: ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond97.preheader

for.cond114.preheader.for.end130_crit_edge:       ; preds = %for.cond114.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end130

for.body103:                                      ; preds = %for.cond97.preheader
  %160 = ptrtoint ptr %channel_stats104 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %channel_stats104, align 16
  %arrayidx105 = getelementptr ptr, ptr %161, i32 %i.3232
  %162 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx105, align 4
  %xsksq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %163, i32 0, i32 8
  %164 = ptrtoint ptr %xsksq to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %xsksq, align 8
  %inc109 = add i32 %idx.addr.9231, 1
  %arrayidx110 = getelementptr i64, ptr %data, i32 %idx.addr.9231
  %166 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store8_noabort(i32 %166)
  store i64 %165, ptr %arrayidx110, align 8
  %167 = load ptr, ptr %channel_stats104, align 16
  %arrayidx105.1 = getelementptr ptr, ptr %167, i32 %i.3232
  %168 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx105.1, align 4
  %add.ptr108.1 = getelementptr %struct.mlx5e_channel_stats, ptr %169, i32 0, i32 8, i32 1
  %170 = ptrtoint ptr %add.ptr108.1 to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %add.ptr108.1, align 8
  %inc109.1 = add i32 %idx.addr.9231, 2
  %arrayidx110.1 = getelementptr i64, ptr %data, i32 %inc109
  %172 = ptrtoint ptr %arrayidx110.1 to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %171, ptr %arrayidx110.1, align 8
  br i1 %exitcond242.not.1, label %for.body103.for.cond114.preheader_crit_edge, label %for.body103.2

for.body103.for.cond114.preheader_crit_edge:      ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond114.preheader

for.body103.2:                                    ; preds = %for.body103
  %173 = ptrtoint ptr %channel_stats104 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %channel_stats104, align 16
  %arrayidx105.2 = getelementptr ptr, ptr %174, i32 %i.3232
  %175 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx105.2, align 4
  %add.ptr108.2 = getelementptr %struct.mlx5e_channel_stats, ptr %176, i32 0, i32 8, i32 2
  %177 = ptrtoint ptr %add.ptr108.2 to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %add.ptr108.2, align 8
  %inc109.2 = add i32 %idx.addr.9231, 3
  %arrayidx110.2 = getelementptr i64, ptr %data, i32 %inc109.1
  %179 = ptrtoint ptr %arrayidx110.2 to i32
  call void @__asan_store8_noabort(i32 %179)
  store i64 %178, ptr %arrayidx110.2, align 8
  br i1 %exitcond242.not.2, label %for.body103.2.for.cond114.preheader_crit_edge, label %for.body103.3

for.body103.2.for.cond114.preheader_crit_edge:    ; preds = %for.body103.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond114.preheader

for.body103.3:                                    ; preds = %for.body103.2
  %180 = ptrtoint ptr %channel_stats104 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %channel_stats104, align 16
  %arrayidx105.3 = getelementptr ptr, ptr %181, i32 %i.3232
  %182 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx105.3, align 4
  %add.ptr108.3 = getelementptr %struct.mlx5e_channel_stats, ptr %183, i32 0, i32 8, i32 4
  %184 = ptrtoint ptr %add.ptr108.3 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %add.ptr108.3, align 8
  %inc109.3 = add i32 %idx.addr.9231, 4
  %arrayidx110.3 = getelementptr i64, ptr %data, i32 %inc109.2
  %186 = ptrtoint ptr %arrayidx110.3 to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %185, ptr %arrayidx110.3, align 8
  br i1 %exitcond242.not.3, label %for.body103.3.for.cond114.preheader_crit_edge, label %for.body103.4

for.body103.3.for.cond114.preheader_crit_edge:    ; preds = %for.body103.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond114.preheader

for.body103.4:                                    ; preds = %for.body103.3
  %187 = ptrtoint ptr %channel_stats104 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %channel_stats104, align 16
  %arrayidx105.4 = getelementptr ptr, ptr %188, i32 %i.3232
  %189 = ptrtoint ptr %arrayidx105.4 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx105.4, align 4
  %add.ptr108.4 = getelementptr %struct.mlx5e_channel_stats, ptr %190, i32 0, i32 8, i32 5
  %191 = ptrtoint ptr %add.ptr108.4 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %add.ptr108.4, align 8
  %inc109.4 = add i32 %idx.addr.9231, 5
  %arrayidx110.4 = getelementptr i64, ptr %data, i32 %inc109.3
  %193 = ptrtoint ptr %arrayidx110.4 to i32
  call void @__asan_store8_noabort(i32 %193)
  store i64 %192, ptr %arrayidx110.4, align 8
  br i1 %exitcond242.not.4, label %for.body103.4.for.cond114.preheader_crit_edge, label %for.body103.5

for.body103.4.for.cond114.preheader_crit_edge:    ; preds = %for.body103.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond114.preheader

for.body103.5:                                    ; preds = %for.body103.4
  call void @__sanitizer_cov_trace_pc() #16
  %194 = ptrtoint ptr %channel_stats104 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %channel_stats104, align 16
  %arrayidx105.5 = getelementptr ptr, ptr %195, i32 %i.3232
  %196 = ptrtoint ptr %arrayidx105.5 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx105.5, align 4
  %add.ptr108.5 = getelementptr %struct.mlx5e_channel_stats, ptr %197, i32 0, i32 8, i32 7
  %198 = ptrtoint ptr %add.ptr108.5 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %add.ptr108.5, align 8
  %inc109.5 = add i32 %idx.addr.9231, 6
  %arrayidx110.5 = getelementptr i64, ptr %data, i32 %inc109.4
  %200 = ptrtoint ptr %arrayidx110.5 to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %arrayidx110.5, align 8
  br label %for.cond114.preheader

for.end130:                                       ; preds = %for.cond114.preheader.for.end130_crit_edge, %for.cond93.preheader.for.end130_crit_edge
  %idx.addr.9.lcssa = phi i32 [ %idx.addr.6.lcssa, %for.cond93.preheader.for.end130_crit_edge ], [ %inc123.6, %for.cond114.preheader.for.end130_crit_edge ]
  ret i32 %idx.addr.9.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5e_stats_grp_channels_update_stats(ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_per_port_buff_congest_num_stats(ptr nocapture noundef readonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 11
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = lshr i32 %5, 15
  %7 = and i32 %6, 8
  %8 = lshr i32 %5, 14
  %9 = and i32 %8, 16
  %add = or i32 %7, %9
  ret i32 %add
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_per_port_buff_congest_fill_strings(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond2.preheader.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond2.preheader.preheader:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mul = shl i32 %idx, 5
  %add.ptr5 = getelementptr i8, ptr %data, i32 %mul
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 0)
  %inc = shl i32 %idx, 5
  %mul13 = add i32 %inc, 32
  %add.ptr14 = getelementptr i8, ptr %data, i32 %mul13
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 0)
  %inc12 = shl i32 %idx, 5
  %mul13.1 = add i32 %inc12, 64
  %add.ptr14.1 = getelementptr i8, ptr %data, i32 %mul13.1
  %call18.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 0)
  %inc12.1 = shl i32 %idx, 5
  %mul.1 = add i32 %inc12.1, 96
  %add.ptr5.1 = getelementptr i8, ptr %data, i32 %mul.1
  %call.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.1, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 1)
  %inc.1 = shl i32 %idx, 5
  %mul13.145 = add i32 %inc.1, 128
  %add.ptr14.146 = getelementptr i8, ptr %data, i32 %mul13.145
  %call18.147 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.146, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 1)
  %inc12.144 = shl i32 %idx, 5
  %mul13.1.1 = add i32 %inc12.144, 160
  %add.ptr14.1.1 = getelementptr i8, ptr %data, i32 %mul13.1.1
  %call18.1.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1.1, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 1)
  %inc12.1.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc12.1.1, 192
  %add.ptr5.2 = getelementptr i8, ptr %data, i32 %mul.2
  %call.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.2, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 2)
  %inc.2 = shl i32 %idx, 5
  %mul13.2 = add i32 %inc.2, 224
  %add.ptr14.2 = getelementptr i8, ptr %data, i32 %mul13.2
  %call18.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.2, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 2)
  %inc12.2 = shl i32 %idx, 5
  %mul13.1.2 = add i32 %inc12.2, 256
  %add.ptr14.1.2 = getelementptr i8, ptr %data, i32 %mul13.1.2
  %call18.1.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1.2, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 2)
  %inc12.1.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc12.1.2, 288
  %add.ptr5.3 = getelementptr i8, ptr %data, i32 %mul.3
  %call.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.3, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 3)
  %inc.3 = shl i32 %idx, 5
  %mul13.3 = add i32 %inc.3, 320
  %add.ptr14.3 = getelementptr i8, ptr %data, i32 %mul13.3
  %call18.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.3, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 3)
  %inc12.3 = shl i32 %idx, 5
  %mul13.1.3 = add i32 %inc12.3, 352
  %add.ptr14.1.3 = getelementptr i8, ptr %data, i32 %mul13.1.3
  %call18.1.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1.3, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 3)
  %inc12.1.3 = shl i32 %idx, 5
  %mul.4 = add i32 %inc12.1.3, 384
  %add.ptr5.4 = getelementptr i8, ptr %data, i32 %mul.4
  %call.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.4, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 4)
  %inc.4 = shl i32 %idx, 5
  %mul13.4 = add i32 %inc.4, 416
  %add.ptr14.4 = getelementptr i8, ptr %data, i32 %mul13.4
  %call18.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.4, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 4)
  %inc12.4 = shl i32 %idx, 5
  %mul13.1.4 = add i32 %inc12.4, 448
  %add.ptr14.1.4 = getelementptr i8, ptr %data, i32 %mul13.1.4
  %call18.1.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1.4, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 4)
  %inc12.1.4 = shl i32 %idx, 5
  %mul.5 = add i32 %inc12.1.4, 480
  %add.ptr5.5 = getelementptr i8, ptr %data, i32 %mul.5
  %call.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.5, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 5)
  %inc.5 = shl i32 %idx, 5
  %mul13.5 = add i32 %inc.5, 512
  %add.ptr14.5 = getelementptr i8, ptr %data, i32 %mul13.5
  %call18.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.5, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 5)
  %inc12.5 = shl i32 %idx, 5
  %mul13.1.5 = add i32 %inc12.5, 544
  %add.ptr14.1.5 = getelementptr i8, ptr %data, i32 %mul13.1.5
  %call18.1.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1.5, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 5)
  %inc12.1.5 = shl i32 %idx, 5
  %mul.6 = add i32 %inc12.1.5, 576
  %add.ptr5.6 = getelementptr i8, ptr %data, i32 %mul.6
  %call.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.6, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 6)
  %inc.6 = shl i32 %idx, 5
  %mul13.6 = add i32 %inc.6, 608
  %add.ptr14.6 = getelementptr i8, ptr %data, i32 %mul13.6
  %call18.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.6, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 6)
  %inc12.6 = shl i32 %idx, 5
  %mul13.1.6 = add i32 %inc12.6, 640
  %add.ptr14.1.6 = getelementptr i8, ptr %data, i32 %mul13.1.6
  %call18.1.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1.6, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 6)
  %inc12.1.6 = shl i32 %idx, 5
  %mul.7 = add i32 %inc12.1.6, 672
  %add.ptr5.7 = getelementptr i8, ptr %data, i32 %mul.7
  %call.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5.7, ptr noundef nonnull @pport_per_tc_prio_stats_desc, i32 noundef 7)
  %inc.7 = shl i32 %idx, 5
  %mul13.7 = add i32 %inc.7, 704
  %add.ptr14.7 = getelementptr i8, ptr %data, i32 %mul13.7
  %call18.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.7, ptr noundef nonnull @pport_per_tc_congest_prio_stats_desc, i32 noundef 7)
  %inc12.1.7 = add i32 %idx, 24
  %inc12.7 = shl i32 %idx, 5
  %mul13.1.7 = add i32 %inc12.7, 736
  %add.ptr14.1.7 = getelementptr i8, ptr %data, i32 %mul13.1.7
  %call18.1.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr14.1.7, ptr noundef getelementptr inbounds ([2 x %struct.counter_desc], ptr @pport_per_tc_congest_prio_stats_desc, i32 0, i32 1), i32 noundef 7)
  br label %cleanup

cleanup:                                          ; preds = %for.cond2.preheader.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %idx, %entry.cleanup_crit_edge ], [ %inc12.1.7, %for.cond2.preheader.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_per_port_buff_congest_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev2 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev2, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond3.preheader.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond3.preheader.preheader:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr8 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 0, i32 2
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr8, align 8
  %inc = add i32 %idx, 1
  %arrayidx9 = getelementptr i64, ptr %data, i32 %idx
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx9, align 8
  %add.ptr17 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 0, i32 1
  %10 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr17, align 8
  %inc18 = add i32 %idx, 2
  %arrayidx19 = getelementptr i64, ptr %data, i32 %inc
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx19, align 8
  %add.ptr17.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 0, i32 2
  %13 = ptrtoint ptr %add.ptr17.1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr17.1, align 8
  %inc18.1 = add i32 %idx, 3
  %arrayidx19.1 = getelementptr i64, ptr %data, i32 %inc18
  %15 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx19.1, align 8
  %add.ptr8.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 1, i32 2
  %16 = ptrtoint ptr %add.ptr8.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr8.1, align 8
  %inc.1 = add i32 %idx, 4
  %arrayidx9.1 = getelementptr i64, ptr %data, i32 %inc18.1
  %18 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx9.1, align 8
  %add.ptr17.148 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 1, i32 1
  %19 = ptrtoint ptr %add.ptr17.148 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr17.148, align 8
  %inc18.149 = add i32 %idx, 5
  %arrayidx19.150 = getelementptr i64, ptr %data, i32 %inc.1
  %21 = ptrtoint ptr %arrayidx19.150 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx19.150, align 8
  %add.ptr17.1.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 1, i32 2
  %22 = ptrtoint ptr %add.ptr17.1.1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr17.1.1, align 8
  %inc18.1.1 = add i32 %idx, 6
  %arrayidx19.1.1 = getelementptr i64, ptr %data, i32 %inc18.149
  %24 = ptrtoint ptr %arrayidx19.1.1 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx19.1.1, align 8
  %add.ptr8.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 2, i32 2
  %25 = ptrtoint ptr %add.ptr8.2 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr8.2, align 8
  %inc.2 = add i32 %idx, 7
  %arrayidx9.2 = getelementptr i64, ptr %data, i32 %inc18.1.1
  %27 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx9.2, align 8
  %add.ptr17.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 2, i32 1
  %28 = ptrtoint ptr %add.ptr17.2 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr17.2, align 8
  %inc18.2 = add i32 %idx, 8
  %arrayidx19.2 = getelementptr i64, ptr %data, i32 %inc.2
  %30 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx19.2, align 8
  %add.ptr17.1.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 2, i32 2
  %31 = ptrtoint ptr %add.ptr17.1.2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr17.1.2, align 8
  %inc18.1.2 = add i32 %idx, 9
  %arrayidx19.1.2 = getelementptr i64, ptr %data, i32 %inc18.2
  %33 = ptrtoint ptr %arrayidx19.1.2 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx19.1.2, align 8
  %add.ptr8.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 3, i32 2
  %34 = ptrtoint ptr %add.ptr8.3 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr8.3, align 8
  %inc.3 = add i32 %idx, 10
  %arrayidx9.3 = getelementptr i64, ptr %data, i32 %inc18.1.2
  %36 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx9.3, align 8
  %add.ptr17.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 3, i32 1
  %37 = ptrtoint ptr %add.ptr17.3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr17.3, align 8
  %inc18.3 = add i32 %idx, 11
  %arrayidx19.3 = getelementptr i64, ptr %data, i32 %inc.3
  %39 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx19.3, align 8
  %add.ptr17.1.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 3, i32 2
  %40 = ptrtoint ptr %add.ptr17.1.3 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr17.1.3, align 8
  %inc18.1.3 = add i32 %idx, 12
  %arrayidx19.1.3 = getelementptr i64, ptr %data, i32 %inc18.3
  %42 = ptrtoint ptr %arrayidx19.1.3 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx19.1.3, align 8
  %add.ptr8.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 4, i32 2
  %43 = ptrtoint ptr %add.ptr8.4 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr8.4, align 8
  %inc.4 = add i32 %idx, 13
  %arrayidx9.4 = getelementptr i64, ptr %data, i32 %inc18.1.3
  %45 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx9.4, align 8
  %add.ptr17.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 4, i32 1
  %46 = ptrtoint ptr %add.ptr17.4 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr17.4, align 8
  %inc18.4 = add i32 %idx, 14
  %arrayidx19.4 = getelementptr i64, ptr %data, i32 %inc.4
  %48 = ptrtoint ptr %arrayidx19.4 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx19.4, align 8
  %add.ptr17.1.4 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 4, i32 2
  %49 = ptrtoint ptr %add.ptr17.1.4 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr17.1.4, align 8
  %inc18.1.4 = add i32 %idx, 15
  %arrayidx19.1.4 = getelementptr i64, ptr %data, i32 %inc18.4
  %51 = ptrtoint ptr %arrayidx19.1.4 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx19.1.4, align 8
  %add.ptr8.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 5, i32 2
  %52 = ptrtoint ptr %add.ptr8.5 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr8.5, align 8
  %inc.5 = add i32 %idx, 16
  %arrayidx9.5 = getelementptr i64, ptr %data, i32 %inc18.1.4
  %54 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %53, ptr %arrayidx9.5, align 8
  %add.ptr17.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 5, i32 1
  %55 = ptrtoint ptr %add.ptr17.5 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %add.ptr17.5, align 8
  %inc18.5 = add i32 %idx, 17
  %arrayidx19.5 = getelementptr i64, ptr %data, i32 %inc.5
  %57 = ptrtoint ptr %arrayidx19.5 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx19.5, align 8
  %add.ptr17.1.5 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 5, i32 2
  %58 = ptrtoint ptr %add.ptr17.1.5 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %add.ptr17.1.5, align 8
  %inc18.1.5 = add i32 %idx, 18
  %arrayidx19.1.5 = getelementptr i64, ptr %data, i32 %inc18.5
  %60 = ptrtoint ptr %arrayidx19.1.5 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %arrayidx19.1.5, align 8
  %add.ptr8.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 6, i32 2
  %61 = ptrtoint ptr %add.ptr8.6 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %add.ptr8.6, align 8
  %inc.6 = add i32 %idx, 19
  %arrayidx9.6 = getelementptr i64, ptr %data, i32 %inc18.1.5
  %63 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %arrayidx9.6, align 8
  %add.ptr17.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 6, i32 1
  %64 = ptrtoint ptr %add.ptr17.6 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %add.ptr17.6, align 8
  %inc18.6 = add i32 %idx, 20
  %arrayidx19.6 = getelementptr i64, ptr %data, i32 %inc.6
  %66 = ptrtoint ptr %arrayidx19.6 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %arrayidx19.6, align 8
  %add.ptr17.1.6 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 6, i32 2
  %67 = ptrtoint ptr %add.ptr17.1.6 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr17.1.6, align 8
  %inc18.1.6 = add i32 %idx, 21
  %arrayidx19.1.6 = getelementptr i64, ptr %data, i32 %inc18.6
  %69 = ptrtoint ptr %arrayidx19.1.6 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %arrayidx19.1.6, align 8
  %add.ptr8.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 7, i32 2
  %70 = ptrtoint ptr %add.ptr8.7 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr8.7, align 8
  %inc.7 = add i32 %idx, 22
  %arrayidx9.7 = getelementptr i64, ptr %data, i32 %inc18.1.6
  %72 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx9.7, align 8
  %add.ptr17.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 7, i32 1
  %73 = ptrtoint ptr %add.ptr17.7 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %add.ptr17.7, align 8
  %inc18.7 = add i32 %idx, 23
  %arrayidx19.7 = getelementptr i64, ptr %data, i32 %inc.7
  %75 = ptrtoint ptr %arrayidx19.7 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %arrayidx19.7, align 8
  %add.ptr17.1.7 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 7, i32 2
  %76 = ptrtoint ptr %add.ptr17.1.7 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %add.ptr17.1.7, align 8
  %inc18.1.7 = add i32 %idx, 24
  %arrayidx19.1.7 = getelementptr i64, ptr %data, i32 %inc18.7
  %78 = ptrtoint ptr %arrayidx19.1.7 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %arrayidx19.1.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.cond3.preheader.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %idx, %entry.cleanup_crit_edge ], [ %inc18.1.7, %for.cond3.preheader.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_per_port_buff_congest_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in.i2 = alloca [64 x i32], align 4
  %in.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i) #14
  %2 = call ptr @memset(ptr %in.i, i32 0, i32 256)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 11
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.mlx5e_grp_per_tc_prio_update_stats.exit_crit_edge, label %do.body.i

entry.mlx5e_grp_per_tc_prio_update_stats.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_tc_prio_update_stats.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in.i, align 4
  %and5.i = and i32 %9, -49216
  %or21.i = or i32 %and5.i, 32785
  store i32 %or21.i, ptr %in.i, align 4
  %add.ptr34.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %arrayidx26.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 0
  %10 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr34.i, align 4
  %and35.i = and i32 %11, -8
  store i32 %and35.i, ptr %add.ptr34.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.1.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 1
  %12 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr34.i, align 4
  %and35.1.i = and i32 %13, -8
  %or38.1.i = or i32 %and35.1.i, 1
  store i32 %or38.1.i, ptr %add.ptr34.i, align 4
  %call.1.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.1.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.2.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 2
  %14 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr34.i, align 4
  %and35.2.i = and i32 %15, -8
  %or38.2.i = or i32 %and35.2.i, 2
  store i32 %or38.2.i, ptr %add.ptr34.i, align 4
  %call.2.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.2.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.3.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 3
  %16 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr34.i, align 4
  %and35.3.i = and i32 %17, -8
  %or38.3.i = or i32 %and35.3.i, 3
  store i32 %or38.3.i, ptr %add.ptr34.i, align 4
  %call.3.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.3.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.4.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 4
  %18 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr34.i, align 4
  %and35.4.i = and i32 %19, -8
  %or38.4.i = or i32 %and35.4.i, 4
  store i32 %or38.4.i, ptr %add.ptr34.i, align 4
  %call.4.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.4.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.5.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 5
  %20 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr34.i, align 4
  %and35.5.i = and i32 %21, -8
  %or38.5.i = or i32 %and35.5.i, 5
  store i32 %or38.5.i, ptr %add.ptr34.i, align 4
  %call.5.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.5.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.6.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 6
  %22 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr34.i, align 4
  %and35.6.i = and i32 %23, -8
  %or38.6.i = or i32 %and35.6.i, 6
  store i32 %or38.6.i, ptr %add.ptr34.i, align 4
  %call.6.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.6.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.7.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 7, i32 7
  %24 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr34.i, align 4
  %or38.7.i = or i32 %25, 7
  store i32 %or38.7.i, ptr %add.ptr34.i, align 4
  %call.7.i = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef %arrayidx26.7.i, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  br label %mlx5e_grp_per_tc_prio_update_stats.exit

mlx5e_grp_per_tc_prio_update_stats.exit:          ; preds = %do.body.i, %entry.mlx5e_grp_per_tc_prio_update_stats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #14
  %26 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdev1.i, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i2) #14
  %28 = call ptr @memset(ptr %in.i2, i32 0, i32 256)
  %caps.i4 = getelementptr inbounds %struct.mlx5_core_dev, ptr %27, i32 0, i32 8
  %29 = ptrtoint ptr %caps.i4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %caps.i4, align 8
  %add.ptr.i5 = getelementptr i32, ptr %30, i32 11
  %31 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i5, align 4
  %33 = and i32 %32, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i6 = icmp eq i32 %33, 0
  br i1 %tobool.not.i6, label %mlx5e_grp_per_tc_prio_update_stats.exit.mlx5e_grp_per_tc_congest_prio_update_stats.exit_crit_edge, label %do.body.i40

mlx5e_grp_per_tc_prio_update_stats.exit.mlx5e_grp_per_tc_congest_prio_update_stats.exit_crit_edge: ; preds = %mlx5e_grp_per_tc_prio_update_stats.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mlx5e_grp_per_tc_congest_prio_update_stats.exit

do.body.i40:                                      ; preds = %mlx5e_grp_per_tc_prio_update_stats.exit
  call void @__sanitizer_cov_trace_pc() #16
  %34 = ptrtoint ptr %in.i2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %in.i2, align 4
  %and5.i7 = and i32 %35, -49216
  %or21.i8 = or i32 %and5.i7, 32787
  store i32 %or21.i8, ptr %in.i2, align 4
  %add.ptr34.i9 = getelementptr inbounds i32, ptr %in.i2, i32 1
  %arrayidx26.i10 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 0
  %36 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr34.i9, align 4
  %and35.i11 = and i32 %37, -8
  store i32 %and35.i11, ptr %add.ptr34.i9, align 4
  %call.i12 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.i10, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.1.i13 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 1
  %38 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr34.i9, align 4
  %and35.1.i14 = and i32 %39, -8
  %or38.1.i15 = or i32 %and35.1.i14, 1
  store i32 %or38.1.i15, ptr %add.ptr34.i9, align 4
  %call.1.i16 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.1.i13, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.2.i17 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 2
  %40 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr34.i9, align 4
  %and35.2.i18 = and i32 %41, -8
  %or38.2.i19 = or i32 %and35.2.i18, 2
  store i32 %or38.2.i19, ptr %add.ptr34.i9, align 4
  %call.2.i20 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.2.i17, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.3.i21 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 3
  %42 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr34.i9, align 4
  %and35.3.i22 = and i32 %43, -8
  %or38.3.i23 = or i32 %and35.3.i22, 3
  store i32 %or38.3.i23, ptr %add.ptr34.i9, align 4
  %call.3.i24 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.3.i21, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.4.i25 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 4
  %44 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr34.i9, align 4
  %and35.4.i26 = and i32 %45, -8
  %or38.4.i27 = or i32 %and35.4.i26, 4
  store i32 %or38.4.i27, ptr %add.ptr34.i9, align 4
  %call.4.i28 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.4.i25, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.5.i29 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 5
  %46 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr34.i9, align 4
  %and35.5.i30 = and i32 %47, -8
  %or38.5.i31 = or i32 %and35.5.i30, 5
  store i32 %or38.5.i31, ptr %add.ptr34.i9, align 4
  %call.5.i32 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.5.i29, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.6.i33 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 6
  %48 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr34.i9, align 4
  %and35.6.i34 = and i32 %49, -8
  %or38.6.i35 = or i32 %and35.6.i34, 6
  store i32 %or38.6.i35, ptr %add.ptr34.i9, align 4
  %call.6.i36 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.6.i33, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  %arrayidx26.7.i37 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 8, i32 7
  %50 = ptrtoint ptr %add.ptr34.i9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr34.i9, align 4
  %or38.7.i38 = or i32 %51, 7
  store i32 %or38.7.i38, ptr %add.ptr34.i9, align 4
  %call.7.i39 = call i32 @mlx5_core_access_reg(ptr noundef %27, ptr noundef nonnull %in.i2, i32 noundef 256, ptr noundef %arrayidx26.7.i37, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  br label %mlx5e_grp_per_tc_congest_prio_update_stats.exit

mlx5e_grp_per_tc_congest_prio_update_stats.exit:  ; preds = %do.body.i40, %mlx5e_grp_per_tc_prio_update_stats.exit.mlx5e_grp_per_tc_congest_prio_update_stats.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i2) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_eth_ext_num_stats(ptr nocapture noundef readonly %priv) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = lshr i32 %3, 4
  %.lobit = and i32 %4, 1
  ret i32 %.lobit
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_eth_ext_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %inc = add i32 %idx, 1
  %mul = shl i32 %idx, 5
  %add.ptr1 = getelementptr i8, ptr %data, i32 %mul
  %call = tail call ptr @strcpy(ptr noundef %add.ptr1, ptr noundef nonnull @pport_eth_ext_stats_desc) #17
  br label %if.end

if.end:                                           ; preds = %for.body, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %entry.if.end_crit_edge ], [ %inc, %for.body ]
  ret i32 %idx.addr.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_eth_ext_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 6, i32 6
  %5 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %add.ptr1, align 8
  %inc = add i32 %idx, 1
  %arrayidx2 = getelementptr i64, ptr %data, i32 %idx
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %entry.if.end_crit_edge
  %idx.addr.1 = phi i32 [ %idx, %entry.if.end_crit_edge ], [ %inc, %for.cond.preheader ]
  ret i32 %idx.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_stats_grp_eth_ext_update_stats(ptr noundef %priv) #0 align 64 {
entry:
  %in = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in) #14
  %2 = call ptr @memset(ptr %in, i32 0, i32 256)
  %add.ptr = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr, align 4
  %5 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in, align 4
  %and5 = and i32 %7, -16711744
  %eth_ext_counters = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 24, i32 4, i32 6
  %or22 = or i32 %and5, 65541
  store i32 %or22, ptr %in, align 4
  %call = call i32 @mlx5_core_access_reg(ptr noundef %1, ptr noundef nonnull %in, i32 noundef 256, ptr noundef %eth_ext_counters, i32 noundef 256, i16 noundef zeroext 20488, i32 noundef 0, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_nic_stats_grps_num(ptr nocapture noundef readnone %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_get_fec_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mlx5e_stats_grp_sw_update_stats_rq_stats(ptr noundef %s, ptr noundef readonly %rq_stats) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq_stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rq_stats, align 8
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %s, align 8
  %add = add i64 %3, %1
  store i64 %add, ptr %s, align 8
  %bytes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 1
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes, align 8
  %rx_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 1
  %6 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_bytes, align 8
  %add1 = add i64 %7, %5
  store i64 %add1, ptr %rx_bytes, align 8
  %lro_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 8
  %8 = ptrtoint ptr %lro_packets to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %lro_packets, align 8
  %rx_lro_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 12
  %10 = ptrtoint ptr %rx_lro_packets to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_lro_packets, align 8
  %add2 = add i64 %11, %9
  store i64 %add2, ptr %rx_lro_packets, align 8
  %lro_bytes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 9
  %12 = ptrtoint ptr %lro_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %lro_bytes, align 8
  %rx_lro_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 13
  %14 = ptrtoint ptr %rx_lro_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rx_lro_bytes, align 8
  %add3 = add i64 %15, %13
  store i64 %add3, ptr %rx_lro_bytes, align 8
  %gro_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 10
  %16 = ptrtoint ptr %gro_packets to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %gro_packets, align 8
  %rx_gro_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 14
  %18 = ptrtoint ptr %rx_gro_packets to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_gro_packets, align 8
  %add4 = add i64 %19, %17
  store i64 %add4, ptr %rx_gro_packets, align 8
  %gro_bytes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 11
  %20 = ptrtoint ptr %gro_bytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %gro_bytes, align 8
  %rx_gro_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 15
  %22 = ptrtoint ptr %rx_gro_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rx_gro_bytes, align 8
  %add5 = add i64 %23, %21
  store i64 %add5, ptr %rx_gro_bytes, align 8
  %gro_skbs = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 12
  %24 = ptrtoint ptr %gro_skbs to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %gro_skbs, align 8
  %rx_gro_skbs = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 16
  %26 = ptrtoint ptr %rx_gro_skbs to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rx_gro_skbs, align 8
  %add6 = add i64 %27, %25
  store i64 %add6, ptr %rx_gro_skbs, align 8
  %gro_match_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 13
  %28 = ptrtoint ptr %gro_match_packets to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %gro_match_packets, align 8
  %rx_gro_match_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 17
  %30 = ptrtoint ptr %rx_gro_match_packets to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rx_gro_match_packets, align 8
  %add7 = add i64 %31, %29
  store i64 %add7, ptr %rx_gro_match_packets, align 8
  %gro_large_hds = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 14
  %32 = ptrtoint ptr %gro_large_hds to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %gro_large_hds, align 8
  %rx_gro_large_hds = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 18
  %34 = ptrtoint ptr %rx_gro_large_hds to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %rx_gro_large_hds, align 8
  %add8 = add i64 %35, %33
  store i64 %add8, ptr %rx_gro_large_hds, align 8
  %ecn_mark = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 16
  %36 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ecn_mark, align 8
  %rx_ecn_mark = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 20
  %38 = ptrtoint ptr %rx_ecn_mark to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_ecn_mark, align 8
  %add9 = add i64 %39, %37
  store i64 %add9, ptr %rx_ecn_mark, align 8
  %removed_vlan_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 17
  %40 = ptrtoint ptr %removed_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %removed_vlan_packets, align 8
  %rx_removed_vlan_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 21
  %42 = ptrtoint ptr %rx_removed_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %rx_removed_vlan_packets, align 8
  %add10 = add i64 %43, %41
  store i64 %add10, ptr %rx_removed_vlan_packets, align 8
  %csum_none = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 7
  %44 = ptrtoint ptr %csum_none to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %csum_none, align 8
  %rx_csum_none = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 23
  %46 = ptrtoint ptr %rx_csum_none to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_csum_none, align 8
  %add11 = add i64 %47, %45
  store i64 %add11, ptr %rx_csum_none, align 8
  %csum_complete = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 2
  %48 = ptrtoint ptr %csum_complete to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %csum_complete, align 8
  %rx_csum_complete = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 24
  %50 = ptrtoint ptr %rx_csum_complete to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rx_csum_complete, align 8
  %add12 = add i64 %51, %49
  store i64 %add12, ptr %rx_csum_complete, align 8
  %csum_complete_tail = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 3
  %52 = ptrtoint ptr %csum_complete_tail to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %csum_complete_tail, align 8
  %rx_csum_complete_tail = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 25
  %54 = ptrtoint ptr %rx_csum_complete_tail to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_csum_complete_tail, align 8
  %add13 = add i64 %55, %53
  store i64 %add13, ptr %rx_csum_complete_tail, align 8
  %csum_complete_tail_slow = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 4
  %56 = ptrtoint ptr %csum_complete_tail_slow to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %csum_complete_tail_slow, align 8
  %rx_csum_complete_tail_slow = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 26
  %58 = ptrtoint ptr %rx_csum_complete_tail_slow to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rx_csum_complete_tail_slow, align 8
  %add14 = add i64 %59, %57
  store i64 %add14, ptr %rx_csum_complete_tail_slow, align 8
  %csum_unnecessary = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 5
  %60 = ptrtoint ptr %csum_unnecessary to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %csum_unnecessary, align 8
  %rx_csum_unnecessary = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 22
  %62 = ptrtoint ptr %rx_csum_unnecessary to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %rx_csum_unnecessary, align 8
  %add15 = add i64 %63, %61
  store i64 %add15, ptr %rx_csum_unnecessary, align 8
  %csum_unnecessary_inner = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 6
  %64 = ptrtoint ptr %csum_unnecessary_inner to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %csum_unnecessary_inner, align 8
  %rx_csum_unnecessary_inner = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 27
  %66 = ptrtoint ptr %rx_csum_unnecessary_inner to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %rx_csum_unnecessary_inner, align 8
  %add16 = add i64 %67, %65
  store i64 %add16, ptr %rx_csum_unnecessary_inner, align 8
  %xdp_drop = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 18
  %68 = ptrtoint ptr %xdp_drop to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %xdp_drop, align 8
  %rx_xdp_drop = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 28
  %70 = ptrtoint ptr %rx_xdp_drop to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rx_xdp_drop, align 8
  %add17 = add i64 %71, %69
  store i64 %add17, ptr %rx_xdp_drop, align 8
  %xdp_redirect = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 19
  %72 = ptrtoint ptr %xdp_redirect to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %xdp_redirect, align 8
  %rx_xdp_redirect = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 29
  %74 = ptrtoint ptr %rx_xdp_redirect to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %rx_xdp_redirect, align 8
  %add18 = add i64 %75, %73
  store i64 %add18, ptr %rx_xdp_redirect, align 8
  %wqe_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 20
  %76 = ptrtoint ptr %wqe_err to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %wqe_err, align 8
  %rx_wqe_err = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 54
  %78 = ptrtoint ptr %rx_wqe_err to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rx_wqe_err, align 8
  %add19 = add i64 %79, %77
  store i64 %add19, ptr %rx_wqe_err, align 8
  %mpwqe_filler_cqes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 21
  %80 = ptrtoint ptr %mpwqe_filler_cqes to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %mpwqe_filler_cqes, align 8
  %rx_mpwqe_filler_cqes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 55
  %82 = ptrtoint ptr %rx_mpwqe_filler_cqes to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %rx_mpwqe_filler_cqes, align 8
  %add20 = add i64 %83, %81
  store i64 %add20, ptr %rx_mpwqe_filler_cqes, align 8
  %mpwqe_filler_strides = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 22
  %84 = ptrtoint ptr %mpwqe_filler_strides to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %mpwqe_filler_strides, align 8
  %rx_mpwqe_filler_strides = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 56
  %86 = ptrtoint ptr %rx_mpwqe_filler_strides to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %rx_mpwqe_filler_strides, align 8
  %add21 = add i64 %87, %85
  store i64 %add21, ptr %rx_mpwqe_filler_strides, align 8
  %oversize_pkts_sw_drop = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 23
  %88 = ptrtoint ptr %oversize_pkts_sw_drop to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %oversize_pkts_sw_drop, align 8
  %rx_oversize_pkts_sw_drop = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 57
  %90 = ptrtoint ptr %rx_oversize_pkts_sw_drop to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %rx_oversize_pkts_sw_drop, align 8
  %add22 = add i64 %91, %89
  store i64 %add22, ptr %rx_oversize_pkts_sw_drop, align 8
  %buff_alloc_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 24
  %92 = ptrtoint ptr %buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %buff_alloc_err, align 8
  %rx_buff_alloc_err = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 58
  %94 = ptrtoint ptr %rx_buff_alloc_err to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %rx_buff_alloc_err, align 8
  %add23 = add i64 %95, %93
  store i64 %add23, ptr %rx_buff_alloc_err, align 8
  %cqe_compress_blks = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 25
  %96 = ptrtoint ptr %cqe_compress_blks to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %cqe_compress_blks, align 8
  %rx_cqe_compress_blks = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 59
  %98 = ptrtoint ptr %rx_cqe_compress_blks to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %rx_cqe_compress_blks, align 8
  %add24 = add i64 %99, %97
  store i64 %add24, ptr %rx_cqe_compress_blks, align 8
  %cqe_compress_pkts = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 26
  %100 = ptrtoint ptr %cqe_compress_pkts to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %cqe_compress_pkts, align 8
  %rx_cqe_compress_pkts = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 60
  %102 = ptrtoint ptr %rx_cqe_compress_pkts to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %rx_cqe_compress_pkts, align 8
  %add25 = add i64 %103, %101
  store i64 %add25, ptr %rx_cqe_compress_pkts, align 8
  %cache_reuse = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 27
  %104 = ptrtoint ptr %cache_reuse to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %cache_reuse, align 8
  %rx_cache_reuse = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 61
  %106 = ptrtoint ptr %rx_cache_reuse to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %rx_cache_reuse, align 8
  %add26 = add i64 %107, %105
  store i64 %add26, ptr %rx_cache_reuse, align 8
  %cache_full = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 28
  %108 = ptrtoint ptr %cache_full to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %cache_full, align 8
  %rx_cache_full = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 62
  %110 = ptrtoint ptr %rx_cache_full to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rx_cache_full, align 8
  %add27 = add i64 %111, %109
  store i64 %add27, ptr %rx_cache_full, align 8
  %cache_empty = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 29
  %112 = ptrtoint ptr %cache_empty to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %cache_empty, align 8
  %rx_cache_empty = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 63
  %114 = ptrtoint ptr %rx_cache_empty to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %rx_cache_empty, align 8
  %add28 = add i64 %115, %113
  store i64 %add28, ptr %rx_cache_empty, align 8
  %cache_busy = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 30
  %116 = ptrtoint ptr %cache_busy to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %cache_busy, align 8
  %rx_cache_busy = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 64
  %118 = ptrtoint ptr %rx_cache_busy to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %rx_cache_busy, align 8
  %add29 = add i64 %119, %117
  store i64 %add29, ptr %rx_cache_busy, align 8
  %cache_waive = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 31
  %120 = ptrtoint ptr %cache_waive to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %cache_waive, align 8
  %rx_cache_waive = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 65
  %122 = ptrtoint ptr %rx_cache_waive to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %rx_cache_waive, align 8
  %add30 = add i64 %123, %121
  store i64 %add30, ptr %rx_cache_waive, align 8
  %congst_umr = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 32
  %124 = ptrtoint ptr %congst_umr to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %congst_umr, align 8
  %rx_congst_umr = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 66
  %126 = ptrtoint ptr %rx_congst_umr to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %rx_congst_umr, align 8
  %add31 = add i64 %127, %125
  store i64 %add31, ptr %rx_congst_umr, align 8
  %arfs_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 33
  %128 = ptrtoint ptr %arfs_err to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arfs_err, align 8
  %rx_arfs_err = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 67
  %130 = ptrtoint ptr %rx_arfs_err to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %rx_arfs_err, align 8
  %add32 = add i64 %131, %129
  store i64 %add32, ptr %rx_arfs_err, align 8
  %recover = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 34
  %132 = ptrtoint ptr %recover to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %recover, align 8
  %rx_recover = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 68
  %134 = ptrtoint ptr %rx_recover to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %rx_recover, align 8
  %add33 = add i64 %135, %133
  store i64 %add33, ptr %rx_recover, align 8
  %tls_decrypted_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 35
  %136 = ptrtoint ptr %tls_decrypted_packets to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %tls_decrypted_packets, align 8
  %rx_tls_decrypted_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 84
  %138 = ptrtoint ptr %rx_tls_decrypted_packets to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %rx_tls_decrypted_packets, align 8
  %add34 = add i64 %139, %137
  store i64 %add34, ptr %rx_tls_decrypted_packets, align 8
  %tls_decrypted_bytes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 36
  %140 = ptrtoint ptr %tls_decrypted_bytes to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %tls_decrypted_bytes, align 8
  %rx_tls_decrypted_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 85
  %142 = ptrtoint ptr %rx_tls_decrypted_bytes to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %rx_tls_decrypted_bytes, align 8
  %add35 = add i64 %143, %141
  store i64 %add35, ptr %rx_tls_decrypted_bytes, align 8
  %tls_resync_req_pkt = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 37
  %144 = ptrtoint ptr %tls_resync_req_pkt to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %tls_resync_req_pkt, align 8
  %rx_tls_resync_req_pkt = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 86
  %146 = ptrtoint ptr %rx_tls_resync_req_pkt to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %rx_tls_resync_req_pkt, align 8
  %add36 = add i64 %147, %145
  store i64 %add36, ptr %rx_tls_resync_req_pkt, align 8
  %tls_resync_req_start = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 38
  %148 = ptrtoint ptr %tls_resync_req_start to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %tls_resync_req_start, align 8
  %rx_tls_resync_req_start = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 87
  %150 = ptrtoint ptr %rx_tls_resync_req_start to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %rx_tls_resync_req_start, align 8
  %add37 = add i64 %151, %149
  store i64 %add37, ptr %rx_tls_resync_req_start, align 8
  %tls_resync_req_end = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 39
  %152 = ptrtoint ptr %tls_resync_req_end to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %tls_resync_req_end, align 8
  %rx_tls_resync_req_end = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 88
  %154 = ptrtoint ptr %rx_tls_resync_req_end to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %rx_tls_resync_req_end, align 8
  %add38 = add i64 %155, %153
  store i64 %add38, ptr %rx_tls_resync_req_end, align 8
  %tls_resync_req_skip = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 40
  %156 = ptrtoint ptr %tls_resync_req_skip to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %tls_resync_req_skip, align 8
  %rx_tls_resync_req_skip = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 89
  %158 = ptrtoint ptr %rx_tls_resync_req_skip to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %rx_tls_resync_req_skip, align 8
  %add39 = add i64 %159, %157
  store i64 %add39, ptr %rx_tls_resync_req_skip, align 8
  %tls_resync_res_ok = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 41
  %160 = ptrtoint ptr %tls_resync_res_ok to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %tls_resync_res_ok, align 8
  %rx_tls_resync_res_ok = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 90
  %162 = ptrtoint ptr %rx_tls_resync_res_ok to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rx_tls_resync_res_ok, align 8
  %add40 = add i64 %163, %161
  store i64 %add40, ptr %rx_tls_resync_res_ok, align 8
  %tls_resync_res_retry = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 42
  %164 = ptrtoint ptr %tls_resync_res_retry to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %tls_resync_res_retry, align 8
  %rx_tls_resync_res_retry = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 91
  %166 = ptrtoint ptr %rx_tls_resync_res_retry to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %rx_tls_resync_res_retry, align 8
  %add41 = add i64 %167, %165
  store i64 %add41, ptr %rx_tls_resync_res_retry, align 8
  %tls_resync_res_skip = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 43
  %168 = ptrtoint ptr %tls_resync_res_skip to i32
  call void @__asan_load8_noabort(i32 %168)
  %169 = load i64, ptr %tls_resync_res_skip, align 8
  %rx_tls_resync_res_skip = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 92
  %170 = ptrtoint ptr %rx_tls_resync_res_skip to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %rx_tls_resync_res_skip, align 8
  %add42 = add i64 %171, %169
  store i64 %add42, ptr %rx_tls_resync_res_skip, align 8
  %tls_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %rq_stats, i32 0, i32 44
  %172 = ptrtoint ptr %tls_err to i32
  call void @__asan_load8_noabort(i32 %172)
  %173 = load i64, ptr %tls_err, align 8
  %rx_tls_err = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 93
  %174 = ptrtoint ptr %rx_tls_err to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %rx_tls_err, align 8
  %add43 = add i64 %175, %173
  store i64 %add43, ptr %rx_tls_err, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mlx5e_stats_grp_sw_update_stats_sq(ptr noundef %s, ptr noundef readonly %sq_stats) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sq_stats to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sq_stats, align 128
  %tx_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tx_packets, align 8
  %add = add i64 %3, %1
  store i64 %add, ptr %tx_packets, align 8
  %bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 1
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %bytes, align 8
  %tx_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tx_bytes, align 8
  %add1 = add i64 %7, %5
  store i64 %add1, ptr %tx_bytes, align 8
  %tso_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 3
  %8 = ptrtoint ptr %tso_packets to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tso_packets, align 8
  %tx_tso_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 4
  %10 = ptrtoint ptr %tx_tso_packets to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tx_tso_packets, align 8
  %add2 = add i64 %11, %9
  store i64 %add2, ptr %tx_tso_packets, align 8
  %tso_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 4
  %12 = ptrtoint ptr %tso_bytes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %tso_bytes, align 32
  %tx_tso_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 5
  %14 = ptrtoint ptr %tx_tso_bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %tx_tso_bytes, align 8
  %add3 = add i64 %15, %13
  store i64 %add3, ptr %tx_tso_bytes, align 8
  %tso_inner_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 5
  %16 = ptrtoint ptr %tso_inner_packets to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %tso_inner_packets, align 8
  %tx_tso_inner_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 6
  %18 = ptrtoint ptr %tx_tso_inner_packets to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tx_tso_inner_packets, align 8
  %add4 = add i64 %19, %17
  store i64 %add4, ptr %tx_tso_inner_packets, align 8
  %tso_inner_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 6
  %20 = ptrtoint ptr %tso_inner_bytes to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tso_inner_bytes, align 16
  %tx_tso_inner_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 7
  %22 = ptrtoint ptr %tx_tso_inner_bytes to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %tx_tso_inner_bytes, align 8
  %add5 = add i64 %23, %21
  store i64 %add5, ptr %tx_tso_inner_bytes, align 8
  %added_vlan_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 9
  %24 = ptrtoint ptr %added_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %added_vlan_packets, align 8
  %tx_added_vlan_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 8
  %26 = ptrtoint ptr %tx_added_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_added_vlan_packets, align 8
  %add6 = add i64 %27, %25
  store i64 %add6, ptr %tx_added_vlan_packets, align 8
  %nop = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 10
  %28 = ptrtoint ptr %nop to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %nop, align 16
  %tx_nop = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 9
  %30 = ptrtoint ptr %tx_nop to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %tx_nop, align 8
  %add7 = add i64 %31, %29
  store i64 %add7, ptr %tx_nop, align 8
  %mpwqe_blks = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 11
  %32 = ptrtoint ptr %mpwqe_blks to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %mpwqe_blks, align 8
  %tx_mpwqe_blks = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 10
  %34 = ptrtoint ptr %tx_mpwqe_blks to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tx_mpwqe_blks, align 8
  %add8 = add i64 %35, %33
  store i64 %add8, ptr %tx_mpwqe_blks, align 8
  %mpwqe_pkts = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 12
  %36 = ptrtoint ptr %mpwqe_pkts to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %mpwqe_pkts, align 32
  %tx_mpwqe_pkts = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 11
  %38 = ptrtoint ptr %tx_mpwqe_pkts to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %tx_mpwqe_pkts, align 8
  %add9 = add i64 %39, %37
  store i64 %add9, ptr %tx_mpwqe_pkts, align 8
  %stopped = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 23
  %40 = ptrtoint ptr %stopped to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %stopped, align 8
  %tx_queue_stopped = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 40
  %42 = ptrtoint ptr %tx_queue_stopped to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %tx_queue_stopped, align 8
  %add10 = add i64 %43, %41
  store i64 %add10, ptr %tx_queue_stopped, align 8
  %wake = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 28
  %44 = ptrtoint ptr %wake to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %wake, align 8
  %tx_queue_wake = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 45
  %46 = ptrtoint ptr %tx_queue_wake to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tx_queue_wake, align 8
  %add11 = add i64 %47, %45
  store i64 %add11, ptr %tx_queue_wake, align 8
  %dropped = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 24
  %48 = ptrtoint ptr %dropped to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %dropped, align 64
  %tx_queue_dropped = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 41
  %50 = ptrtoint ptr %tx_queue_dropped to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tx_queue_dropped, align 8
  %add12 = add i64 %51, %49
  store i64 %add12, ptr %tx_queue_dropped, align 8
  %cqe_err = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 29
  %52 = ptrtoint ptr %cqe_err to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %cqe_err, align 16
  %tx_cqe_err = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 46
  %54 = ptrtoint ptr %tx_cqe_err to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %tx_cqe_err, align 8
  %add13 = add i64 %55, %53
  store i64 %add13, ptr %tx_cqe_err, align 8
  %recover = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 25
  %56 = ptrtoint ptr %recover to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %recover, align 8
  %tx_recover = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 43
  %58 = ptrtoint ptr %tx_recover to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tx_recover, align 8
  %add14 = add i64 %59, %57
  store i64 %add14, ptr %tx_recover, align 8
  %xmit_more = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 2
  %60 = ptrtoint ptr %xmit_more to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %xmit_more, align 16
  %tx_xmit_more = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 42
  %62 = ptrtoint ptr %tx_xmit_more to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %tx_xmit_more, align 8
  %add15 = add i64 %63, %61
  store i64 %add15, ptr %tx_xmit_more, align 8
  %csum_partial_inner = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 8
  %64 = ptrtoint ptr %csum_partial_inner to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %csum_partial_inner, align 64
  %tx_csum_partial_inner = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 39
  %66 = ptrtoint ptr %tx_csum_partial_inner to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %tx_csum_partial_inner, align 8
  %add16 = add i64 %67, %65
  store i64 %add16, ptr %tx_csum_partial_inner, align 8
  %csum_none = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 22
  %68 = ptrtoint ptr %csum_none to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %csum_none, align 16
  %tx_csum_none = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 37
  %70 = ptrtoint ptr %tx_csum_none to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %tx_csum_none, align 8
  %add17 = add i64 %71, %69
  store i64 %add17, ptr %tx_csum_none, align 8
  %csum_partial = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 7
  %72 = ptrtoint ptr %csum_partial to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %csum_partial, align 8
  %tx_csum_partial = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 38
  %74 = ptrtoint ptr %tx_csum_partial to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %tx_csum_partial, align 8
  %add18 = add i64 %75, %73
  store i64 %add18, ptr %tx_csum_partial, align 8
  %tls_encrypted_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 13
  %76 = ptrtoint ptr %tls_encrypted_packets to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %tls_encrypted_packets, align 8
  %tx_tls_encrypted_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 75
  %78 = ptrtoint ptr %tx_tls_encrypted_packets to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %tx_tls_encrypted_packets, align 8
  %add19 = add i64 %79, %77
  store i64 %add19, ptr %tx_tls_encrypted_packets, align 8
  %tls_encrypted_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 14
  %80 = ptrtoint ptr %tls_encrypted_bytes to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %tls_encrypted_bytes, align 16
  %tx_tls_encrypted_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 76
  %82 = ptrtoint ptr %tx_tls_encrypted_bytes to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %tx_tls_encrypted_bytes, align 8
  %add20 = add i64 %83, %81
  store i64 %add20, ptr %tx_tls_encrypted_bytes, align 8
  %tls_ooo = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 15
  %84 = ptrtoint ptr %tls_ooo to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %tls_ooo, align 8
  %tx_tls_ooo = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 77
  %86 = ptrtoint ptr %tx_tls_ooo to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %tx_tls_ooo, align 8
  %add21 = add i64 %87, %85
  store i64 %add21, ptr %tx_tls_ooo, align 8
  %tls_dump_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 17
  %88 = ptrtoint ptr %tls_dump_bytes to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %tls_dump_bytes, align 8
  %tx_tls_dump_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 79
  %90 = ptrtoint ptr %tx_tls_dump_bytes to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tx_tls_dump_bytes, align 8
  %add22 = add i64 %91, %89
  store i64 %add22, ptr %tx_tls_dump_bytes, align 8
  %tls_dump_packets = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 16
  %92 = ptrtoint ptr %tls_dump_packets to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %tls_dump_packets, align 128
  %tx_tls_dump_packets = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 78
  %94 = ptrtoint ptr %tx_tls_dump_packets to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %tx_tls_dump_packets, align 8
  %add23 = add i64 %95, %93
  store i64 %add23, ptr %tx_tls_dump_packets, align 8
  %tls_resync_bytes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 18
  %96 = ptrtoint ptr %tls_resync_bytes to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %tls_resync_bytes, align 16
  %tx_tls_resync_bytes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 80
  %98 = ptrtoint ptr %tx_tls_resync_bytes to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %tx_tls_resync_bytes, align 8
  %add24 = add i64 %99, %97
  store i64 %add24, ptr %tx_tls_resync_bytes, align 8
  %tls_skip_no_sync_data = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 19
  %100 = ptrtoint ptr %tls_skip_no_sync_data to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %tls_skip_no_sync_data, align 8
  %tx_tls_skip_no_sync_data = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 81
  %102 = ptrtoint ptr %tx_tls_skip_no_sync_data to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %tx_tls_skip_no_sync_data, align 8
  %add25 = add i64 %103, %101
  store i64 %add25, ptr %tx_tls_skip_no_sync_data, align 8
  %tls_drop_no_sync_data = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 20
  %104 = ptrtoint ptr %tls_drop_no_sync_data to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %tls_drop_no_sync_data, align 32
  %tx_tls_drop_no_sync_data = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 82
  %106 = ptrtoint ptr %tx_tls_drop_no_sync_data to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %tx_tls_drop_no_sync_data, align 8
  %add26 = add i64 %107, %105
  store i64 %add26, ptr %tx_tls_drop_no_sync_data, align 8
  %tls_drop_bypass_req = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 21
  %108 = ptrtoint ptr %tls_drop_bypass_req to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %tls_drop_bypass_req, align 8
  %tx_tls_drop_bypass_req = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 83
  %110 = ptrtoint ptr %tx_tls_drop_bypass_req to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %tx_tls_drop_bypass_req, align 8
  %add27 = add i64 %111, %109
  store i64 %add27, ptr %tx_tls_drop_bypass_req, align 8
  %cqes = getelementptr inbounds %struct.mlx5e_sq_stats, ptr %sq_stats, i32 0, i32 27
  %112 = ptrtoint ptr %cqes to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %cqes, align 128
  %tx_cqes = getelementptr inbounds %struct.mlx5e_sw_stats, ptr %s, i32 0, i32 44
  %114 = ptrtoint ptr %tx_cqes to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %tx_cqes, align 8
  %add28 = add i64 %115, %113
  store i64 %add28, ptr %tx_cqes, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_pfc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_get_pme_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_tls_num_stats(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlx5e_tls_get_count(ptr noundef %priv) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_tls_fill_strings(ptr noundef %priv, ptr noundef %data, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %call = tail call i32 @mlx5e_tls_get_strings(ptr noundef %priv, ptr noundef %add.ptr) #14
  %add = add i32 %call, %idx
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_tls_fill_stats(ptr noundef %priv, ptr noundef %data, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i64, ptr %data, i32 %idx
  %call = tail call i32 @mlx5e_tls_get_stats(ptr noundef %priv, ptr noundef %add.ptr) #14
  %add = add i32 %call, %idx
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5e_stats_grp_tls_update_stats(ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tls_get_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tls_get_strings(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_tls_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_stats_grp_ptp_num_stats(ptr nocapture noundef readonly %priv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ptp_opened = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 32
  %0 = ptrtoint ptr %tx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_ptp_opened, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then4

land.lhs.true:                                    ; preds = %entry
  %rx_ptp_opened = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %2 = ptrtoint ptr %rx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_ptp_opened, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %max_opened_tc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  %4 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_opened_tc, align 4
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 18
  %add = add nuw nsw i32 %mul, 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true.if.end5_crit_edge
  %num.0 = phi i32 [ %add, %if.then4 ], [ 4, %land.lhs.true.if.end5_crit_edge ]
  %rx_ptp_opened6 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %6 = ptrtoint ptr %rx_ptp_opened6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rx_ptp_opened6, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  %add9 = add nuw nsw i32 %num.0, 29
  %spec.select = select i1 %tobool7.not, i32 %num.0, i32 %add9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end5 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_ptp_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data, i32 noundef %idx) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ptp_opened = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 32
  %0 = ptrtoint ptr %tx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_ptp_opened, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rx_ptp_opened = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %2 = ptrtoint ptr %rx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_ptp_opened, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mul = shl i32 %idx, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %strcpy = tail call ptr @strcpy(ptr %add.ptr, ptr nonnull @ptp_ch_stats_desc) #17
  %inc = shl i32 %idx, 5
  %mul.1 = add i32 %inc, 32
  %add.ptr.1 = getelementptr i8, ptr %data, i32 %mul.1
  %strcpy.1 = tail call ptr @strcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([4 x %struct.counter_desc], ptr @ptp_ch_stats_desc, i32 0, i32 1)) #17
  %inc.1 = shl i32 %idx, 5
  %mul.2 = add i32 %inc.1, 64
  %add.ptr.2 = getelementptr i8, ptr %data, i32 %mul.2
  %strcpy.2 = tail call ptr @strcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([4 x %struct.counter_desc], ptr @ptp_ch_stats_desc, i32 0, i32 2)) #17
  %inc.3 = add i32 %idx, 4
  %inc.2 = shl i32 %idx, 5
  %mul.3 = add i32 %inc.2, 96
  %add.ptr.3 = getelementptr i8, ptr %data, i32 %mul.3
  %strcpy.3 = tail call ptr @strcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([4 x %struct.counter_desc], ptr @ptp_ch_stats_desc, i32 0, i32 3)) #17
  %4 = ptrtoint ptr %tx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_ptp_opened, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end.if.end50_crit_edge, label %for.cond6.preheader

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

for.cond6.preheader:                              ; preds = %if.end
  %max_opened_tc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  %6 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_opened_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp7104.not = icmp eq i8 %7, 0
  br i1 %cmp7104.not, label %for.cond6.preheader.if.end50_crit_edge, label %for.cond6.preheader.for.cond10.preheader_crit_edge

for.cond6.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond6.preheader
  br label %for.cond10.preheader

for.cond6.preheader.if.end50_crit_edge:           ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

for.cond10.preheader:                             ; preds = %for.cond10.preheader.for.cond10.preheader_crit_edge, %for.cond6.preheader.for.cond10.preheader_crit_edge
  %tc.0106 = phi i32 [ %inc25, %for.cond10.preheader.for.cond10.preheader_crit_edge ], [ 0, %for.cond6.preheader.for.cond10.preheader_crit_edge ]
  %idx.addr.1105 = phi i32 [ %inc14.13, %for.cond10.preheader.for.cond10.preheader_crit_edge ], [ %inc.3, %for.cond6.preheader.for.cond10.preheader_crit_edge ]
  %mul15 = shl i32 %idx.addr.1105, 5
  %add.ptr16 = getelementptr i8, ptr %data, i32 %mul15
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16, ptr noundef nonnull @ptp_sq_stats_desc, i32 noundef %tc.0106)
  %inc14 = shl i32 %idx.addr.1105, 5
  %mul15.1 = add i32 %inc14, 32
  %add.ptr16.1 = getelementptr i8, ptr %data, i32 %mul15.1
  %call20.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.1, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 1), i32 noundef %tc.0106)
  %inc14.1 = shl i32 %idx.addr.1105, 5
  %mul15.2 = add i32 %inc14.1, 64
  %add.ptr16.2 = getelementptr i8, ptr %data, i32 %mul15.2
  %call20.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.2, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 2), i32 noundef %tc.0106)
  %inc14.2 = shl i32 %idx.addr.1105, 5
  %mul15.3 = add i32 %inc14.2, 96
  %add.ptr16.3 = getelementptr i8, ptr %data, i32 %mul15.3
  %call20.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.3, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 3), i32 noundef %tc.0106)
  %inc14.3 = shl i32 %idx.addr.1105, 5
  %mul15.4 = add i32 %inc14.3, 128
  %add.ptr16.4 = getelementptr i8, ptr %data, i32 %mul15.4
  %call20.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.4, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 4), i32 noundef %tc.0106)
  %inc14.4 = shl i32 %idx.addr.1105, 5
  %mul15.5 = add i32 %inc14.4, 160
  %add.ptr16.5 = getelementptr i8, ptr %data, i32 %mul15.5
  %call20.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.5, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 5), i32 noundef %tc.0106)
  %inc14.5 = shl i32 %idx.addr.1105, 5
  %mul15.6 = add i32 %inc14.5, 192
  %add.ptr16.6 = getelementptr i8, ptr %data, i32 %mul15.6
  %call20.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.6, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 6), i32 noundef %tc.0106)
  %inc14.6 = shl i32 %idx.addr.1105, 5
  %mul15.7 = add i32 %inc14.6, 224
  %add.ptr16.7 = getelementptr i8, ptr %data, i32 %mul15.7
  %call20.7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.7, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 7), i32 noundef %tc.0106)
  %inc14.7 = shl i32 %idx.addr.1105, 5
  %mul15.8 = add i32 %inc14.7, 256
  %add.ptr16.8 = getelementptr i8, ptr %data, i32 %mul15.8
  %call20.8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.8, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 8), i32 noundef %tc.0106)
  %inc14.8 = shl i32 %idx.addr.1105, 5
  %mul15.9 = add i32 %inc14.8, 288
  %add.ptr16.9 = getelementptr i8, ptr %data, i32 %mul15.9
  %call20.9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.9, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 9), i32 noundef %tc.0106)
  %inc14.9 = shl i32 %idx.addr.1105, 5
  %mul15.10 = add i32 %inc14.9, 320
  %add.ptr16.10 = getelementptr i8, ptr %data, i32 %mul15.10
  %call20.10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.10, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 10), i32 noundef %tc.0106)
  %inc14.10 = shl i32 %idx.addr.1105, 5
  %mul15.11 = add i32 %inc14.10, 352
  %add.ptr16.11 = getelementptr i8, ptr %data, i32 %mul15.11
  %call20.11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.11, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 11), i32 noundef %tc.0106)
  %inc14.11 = shl i32 %idx.addr.1105, 5
  %mul15.12 = add i32 %inc14.11, 384
  %add.ptr16.12 = getelementptr i8, ptr %data, i32 %mul15.12
  %call20.12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.12, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 12), i32 noundef %tc.0106)
  %inc14.13 = add i32 %idx.addr.1105, 14
  %inc14.12 = shl i32 %idx.addr.1105, 5
  %mul15.13 = add i32 %inc14.12, 416
  %add.ptr16.13 = getelementptr i8, ptr %data, i32 %mul15.13
  %call20.13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr16.13, ptr noundef getelementptr inbounds ([14 x %struct.counter_desc], ptr @ptp_sq_stats_desc, i32 0, i32 13), i32 noundef %tc.0106)
  %inc25 = add nuw nsw i32 %tc.0106, 1
  %8 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_opened_tc, align 4
  %conv = zext i8 %9 to i32
  %cmp7 = icmp ult i32 %inc25, %conv
  br i1 %cmp7, label %for.cond10.preheader.for.cond10.preheader_crit_edge, label %for.cond27.preheader

for.cond10.preheader.for.cond10.preheader_crit_edge: ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond10.preheader

for.cond27.preheader:                             ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp30111.not = icmp eq i8 %9, 0
  br i1 %cmp30111.not, label %for.cond27.preheader.if.end50_crit_edge, label %for.cond27.preheader.for.cond33.preheader_crit_edge

for.cond27.preheader.for.cond33.preheader_crit_edge: ; preds = %for.cond27.preheader
  br label %for.cond33.preheader

for.cond27.preheader.if.end50_crit_edge:          ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

for.cond33.preheader:                             ; preds = %for.cond33.preheader.for.cond33.preheader_crit_edge, %for.cond27.preheader.for.cond33.preheader_crit_edge
  %tc.1113 = phi i32 [ %inc48, %for.cond33.preheader.for.cond33.preheader_crit_edge ], [ 0, %for.cond27.preheader.for.cond33.preheader_crit_edge ]
  %idx.addr.3112 = phi i32 [ %inc37.3, %for.cond33.preheader.for.cond33.preheader_crit_edge ], [ %inc14.13, %for.cond27.preheader.for.cond33.preheader_crit_edge ]
  %mul38 = shl i32 %idx.addr.3112, 5
  %add.ptr39 = getelementptr i8, ptr %data, i32 %mul38
  %call43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr39, ptr noundef nonnull @ptp_cq_stats_desc, i32 noundef %tc.1113)
  %inc37 = shl i32 %idx.addr.3112, 5
  %mul38.1 = add i32 %inc37, 32
  %add.ptr39.1 = getelementptr i8, ptr %data, i32 %mul38.1
  %call43.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr39.1, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @ptp_cq_stats_desc, i32 0, i32 1), i32 noundef %tc.1113)
  %inc37.1 = shl i32 %idx.addr.3112, 5
  %mul38.2 = add i32 %inc37.1, 64
  %add.ptr39.2 = getelementptr i8, ptr %data, i32 %mul38.2
  %call43.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr39.2, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @ptp_cq_stats_desc, i32 0, i32 2), i32 noundef %tc.1113)
  %inc37.3 = add i32 %idx.addr.3112, 4
  %inc37.2 = shl i32 %idx.addr.3112, 5
  %mul38.3 = add i32 %inc37.2, 96
  %add.ptr39.3 = getelementptr i8, ptr %data, i32 %mul38.3
  %call43.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr39.3, ptr noundef getelementptr inbounds ([4 x %struct.counter_desc], ptr @ptp_cq_stats_desc, i32 0, i32 3), i32 noundef %tc.1113)
  %inc48 = add nuw nsw i32 %tc.1113, 1
  %10 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %max_opened_tc, align 4
  %conv29 = zext i8 %11 to i32
  %cmp30 = icmp ult i32 %inc48, %conv29
  br i1 %cmp30, label %for.cond33.preheader.for.cond33.preheader_crit_edge, label %for.cond33.preheader.if.end50_crit_edge

for.cond33.preheader.if.end50_crit_edge:          ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end50

for.cond33.preheader.for.cond33.preheader_crit_edge: ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond33.preheader

if.end50:                                         ; preds = %for.cond33.preheader.if.end50_crit_edge, %for.cond27.preheader.if.end50_crit_edge, %for.cond6.preheader.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %idx.addr.5 = phi i32 [ %inc.3, %if.end.if.end50_crit_edge ], [ %inc14.13, %for.cond27.preheader.if.end50_crit_edge ], [ %inc.3, %for.cond6.preheader.if.end50_crit_edge ], [ %inc37.3, %for.cond33.preheader.if.end50_crit_edge ]
  %rx_ptp_opened51 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %12 = ptrtoint ptr %rx_ptp_opened51 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rx_ptp_opened51, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool52.not = icmp eq i8 %13, 0
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %if.end50.for.body57_crit_edge

if.end50.for.body57_crit_edge:                    ; preds = %if.end50
  br label %for.body57

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %if.end50.for.body57_crit_edge
  %i.3116 = phi i32 [ %inc66, %for.body57.for.body57_crit_edge ], [ 0, %if.end50.for.body57_crit_edge ]
  %idx.addr.6115 = phi i32 [ %inc58, %for.body57.for.body57_crit_edge ], [ %idx.addr.5, %if.end50.for.body57_crit_edge ]
  %inc58 = add i32 %idx.addr.6115, 1
  %mul59 = shl i32 %idx.addr.6115, 5
  %add.ptr60 = getelementptr i8, ptr %data, i32 %mul59
  %arrayidx61 = getelementptr [29 x %struct.counter_desc], ptr @ptp_rq_stats_desc, i32 0, i32 %i.3116
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr60, ptr noundef %arrayidx61, i32 noundef 0)
  %inc66 = add nuw nsw i32 %i.3116, 1
  %exitcond.not = icmp eq i32 %inc66, 29
  br i1 %exitcond.not, label %for.body57.cleanup_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body57

for.body57.cleanup_crit_edge:                     ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body57.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %idx, %land.lhs.true.cleanup_crit_edge ], [ %idx.addr.5, %if.end50.cleanup_crit_edge ], [ %inc58, %for.body57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_ptp_fill_stats(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ptp_opened = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 32
  %0 = ptrtoint ptr %tx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_ptp_opened, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %rx_ptp_opened = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %2 = ptrtoint ptr %rx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_ptp_opened, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ptp_stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28
  %4 = ptrtoint ptr %ptp_stats to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ptp_stats, align 8
  %inc = add i32 %idx, 1
  %arrayidx2 = getelementptr i64, ptr %data, i32 %idx
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx2, align 8
  %add.ptr.1 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 1
  %7 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.1, align 8
  %inc.1 = add i32 %idx, 2
  %arrayidx2.1 = getelementptr i64, ptr %data, i32 %inc
  %9 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx2.1, align 8
  %add.ptr.2 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 2
  %10 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.2, align 8
  %inc.2 = add i32 %idx, 3
  %arrayidx2.2 = getelementptr i64, ptr %data, i32 %inc.1
  %12 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx2.2, align 8
  %add.ptr.3 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 0, i32 5
  %13 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr.3, align 8
  %inc.3 = add i32 %idx, 4
  %arrayidx2.3 = getelementptr i64, ptr %data, i32 %inc.2
  %15 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx2.3, align 8
  %16 = ptrtoint ptr %tx_ptp_opened to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_ptp_opened, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %if.end.if.end51_crit_edge, label %for.cond7.preheader

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.cond7.preheader:                              ; preds = %if.end
  %max_opened_tc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 31
  %18 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %max_opened_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp8108.not = icmp eq i8 %19, 0
  br i1 %cmp8108.not, label %for.cond7.preheader.if.end51_crit_edge, label %for.cond7.preheader.for.cond11.preheader_crit_edge

for.cond7.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond7.preheader
  br label %for.cond11.preheader

for.cond7.preheader.if.end51_crit_edge:           ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.cond11.preheader:                             ; preds = %for.cond11.preheader.for.cond11.preheader_crit_edge, %for.cond7.preheader.for.cond11.preheader_crit_edge
  %tc.0110 = phi i32 [ %inc26, %for.cond11.preheader.for.cond11.preheader_crit_edge ], [ 0, %for.cond7.preheader.for.cond11.preheader_crit_edge ]
  %idx.addr.1109 = phi i32 [ %inc20.13, %for.cond11.preheader.for.cond11.preheader_crit_edge ], [ %inc.3, %for.cond7.preheader.for.cond11.preheader_crit_edge ]
  %arrayidx16 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 2, i32 %tc.0110
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx16, align 8
  %inc20 = add i32 %idx.addr.1109, 1
  %arrayidx21 = getelementptr i64, ptr %data, i32 %idx.addr.1109
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx21, align 8
  %add.ptr19.1 = getelementptr i8, ptr %arrayidx16, i32 8
  %23 = ptrtoint ptr %add.ptr19.1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %add.ptr19.1, align 8
  %inc20.1 = add i32 %idx.addr.1109, 2
  %arrayidx21.1 = getelementptr i64, ptr %data, i32 %inc20
  %25 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx21.1, align 8
  %add.ptr19.2 = getelementptr i8, ptr %arrayidx16, i32 56
  %26 = ptrtoint ptr %add.ptr19.2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr19.2, align 8
  %inc20.2 = add i32 %idx.addr.1109, 3
  %arrayidx21.2 = getelementptr i64, ptr %data, i32 %inc20.1
  %28 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx21.2, align 8
  %add.ptr19.3 = getelementptr i8, ptr %arrayidx16, i32 64
  %29 = ptrtoint ptr %add.ptr19.3 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr19.3, align 8
  %inc20.3 = add i32 %idx.addr.1109, 4
  %arrayidx21.3 = getelementptr i64, ptr %data, i32 %inc20.2
  %31 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx21.3, align 8
  %add.ptr19.4 = getelementptr i8, ptr %arrayidx16, i32 72
  %32 = ptrtoint ptr %add.ptr19.4 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %add.ptr19.4, align 8
  %inc20.4 = add i32 %idx.addr.1109, 5
  %arrayidx21.4 = getelementptr i64, ptr %data, i32 %inc20.3
  %34 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx21.4, align 8
  %add.ptr19.5 = getelementptr i8, ptr %arrayidx16, i32 80
  %35 = ptrtoint ptr %add.ptr19.5 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr19.5, align 8
  %inc20.5 = add i32 %idx.addr.1109, 6
  %arrayidx21.5 = getelementptr i64, ptr %data, i32 %inc20.4
  %37 = ptrtoint ptr %arrayidx21.5 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx21.5, align 8
  %add.ptr19.6 = getelementptr i8, ptr %arrayidx16, i32 176
  %38 = ptrtoint ptr %add.ptr19.6 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %add.ptr19.6, align 8
  %inc20.6 = add i32 %idx.addr.1109, 7
  %arrayidx21.6 = getelementptr i64, ptr %data, i32 %inc20.5
  %40 = ptrtoint ptr %arrayidx21.6 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx21.6, align 8
  %add.ptr19.7 = getelementptr i8, ptr %arrayidx16, i32 184
  %41 = ptrtoint ptr %add.ptr19.7 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %add.ptr19.7, align 8
  %inc20.7 = add i32 %idx.addr.1109, 8
  %arrayidx21.7 = getelementptr i64, ptr %data, i32 %inc20.6
  %43 = ptrtoint ptr %arrayidx21.7 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %arrayidx21.7, align 8
  %add.ptr19.8 = getelementptr i8, ptr %arrayidx16, i32 192
  %44 = ptrtoint ptr %add.ptr19.8 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr19.8, align 8
  %inc20.8 = add i32 %idx.addr.1109, 9
  %arrayidx21.8 = getelementptr i64, ptr %data, i32 %inc20.7
  %46 = ptrtoint ptr %arrayidx21.8 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %arrayidx21.8, align 8
  %add.ptr19.9 = getelementptr i8, ptr %arrayidx16, i32 16
  %47 = ptrtoint ptr %add.ptr19.9 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %add.ptr19.9, align 8
  %inc20.9 = add i32 %idx.addr.1109, 10
  %arrayidx21.9 = getelementptr i64, ptr %data, i32 %inc20.8
  %49 = ptrtoint ptr %arrayidx21.9 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %arrayidx21.9, align 8
  %add.ptr19.10 = getelementptr i8, ptr %arrayidx16, i32 200
  %50 = ptrtoint ptr %add.ptr19.10 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %add.ptr19.10, align 8
  %inc20.10 = add i32 %idx.addr.1109, 11
  %arrayidx21.10 = getelementptr i64, ptr %data, i32 %inc20.9
  %52 = ptrtoint ptr %arrayidx21.10 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %arrayidx21.10, align 8
  %add.ptr19.11 = getelementptr i8, ptr %arrayidx16, i32 256
  %53 = ptrtoint ptr %add.ptr19.11 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr19.11, align 8
  %inc20.11 = add i32 %idx.addr.1109, 12
  %arrayidx21.11 = getelementptr i64, ptr %data, i32 %inc20.10
  %55 = ptrtoint ptr %arrayidx21.11 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx21.11, align 8
  %add.ptr19.12 = getelementptr i8, ptr %arrayidx16, i32 264
  %56 = ptrtoint ptr %add.ptr19.12 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %add.ptr19.12, align 8
  %inc20.12 = add i32 %idx.addr.1109, 13
  %arrayidx21.12 = getelementptr i64, ptr %data, i32 %inc20.11
  %58 = ptrtoint ptr %arrayidx21.12 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %arrayidx21.12, align 8
  %add.ptr19.13 = getelementptr i8, ptr %arrayidx16, i32 272
  %59 = ptrtoint ptr %add.ptr19.13 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr19.13, align 8
  %inc20.13 = add i32 %idx.addr.1109, 14
  %arrayidx21.13 = getelementptr i64, ptr %data, i32 %inc20.12
  %61 = ptrtoint ptr %arrayidx21.13 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx21.13, align 8
  %inc26 = add nuw nsw i32 %tc.0110, 1
  %62 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %max_opened_tc, align 4
  %conv = zext i8 %63 to i32
  %cmp8 = icmp ult i32 %inc26, %conv
  br i1 %cmp8, label %for.cond11.preheader.for.cond11.preheader_crit_edge, label %for.cond28.preheader

for.cond11.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond11.preheader

for.cond28.preheader:                             ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp31115.not = icmp eq i8 %63, 0
  br i1 %cmp31115.not, label %for.cond28.preheader.if.end51_crit_edge, label %for.cond28.preheader.for.cond34.preheader_crit_edge

for.cond28.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond28.preheader
  br label %for.cond34.preheader

for.cond28.preheader.if.end51_crit_edge:          ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.cond34.preheader:                             ; preds = %for.cond34.preheader.for.cond34.preheader_crit_edge, %for.cond28.preheader.for.cond34.preheader_crit_edge
  %tc.1117 = phi i32 [ %inc49, %for.cond34.preheader.for.cond34.preheader_crit_edge ], [ 0, %for.cond28.preheader.for.cond34.preheader_crit_edge ]
  %idx.addr.3116 = phi i32 [ %inc43.3, %for.cond34.preheader.for.cond34.preheader_crit_edge ], [ %inc20.13, %for.cond28.preheader.for.cond34.preheader_crit_edge ]
  %arrayidx39 = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 3, i32 %tc.1117
  %64 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx39, align 8
  %inc43 = add i32 %idx.addr.3116, 1
  %arrayidx44 = getelementptr i64, ptr %data, i32 %idx.addr.3116
  %66 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %65, ptr %arrayidx44, align 8
  %add.ptr42.1 = getelementptr i8, ptr %arrayidx39, i32 8
  %67 = ptrtoint ptr %add.ptr42.1 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %add.ptr42.1, align 8
  %inc43.1 = add i32 %idx.addr.3116, 2
  %arrayidx44.1 = getelementptr i64, ptr %data, i32 %inc43
  %69 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %68, ptr %arrayidx44.1, align 8
  %add.ptr42.2 = getelementptr i8, ptr %arrayidx39, i32 16
  %70 = ptrtoint ptr %add.ptr42.2 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %add.ptr42.2, align 8
  %inc43.2 = add i32 %idx.addr.3116, 3
  %arrayidx44.2 = getelementptr i64, ptr %data, i32 %inc43.1
  %72 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %arrayidx44.2, align 8
  %add.ptr42.3 = getelementptr i8, ptr %arrayidx39, i32 24
  %73 = ptrtoint ptr %add.ptr42.3 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %add.ptr42.3, align 8
  %inc43.3 = add i32 %idx.addr.3116, 4
  %arrayidx44.3 = getelementptr i64, ptr %data, i32 %inc43.2
  %75 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %74, ptr %arrayidx44.3, align 8
  %inc49 = add nuw nsw i32 %tc.1117, 1
  %76 = ptrtoint ptr %max_opened_tc to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %max_opened_tc, align 4
  %conv30 = zext i8 %77 to i32
  %cmp31 = icmp ult i32 %inc49, %conv30
  br i1 %cmp31, label %for.cond34.preheader.for.cond34.preheader_crit_edge, label %for.cond34.preheader.if.end51_crit_edge

for.cond34.preheader.if.end51_crit_edge:          ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

for.cond34.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond34.preheader

if.end51:                                         ; preds = %for.cond34.preheader.if.end51_crit_edge, %for.cond28.preheader.if.end51_crit_edge, %for.cond7.preheader.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %idx.addr.5 = phi i32 [ %inc.3, %if.end.if.end51_crit_edge ], [ %inc20.13, %for.cond28.preheader.if.end51_crit_edge ], [ %inc.3, %for.cond7.preheader.if.end51_crit_edge ], [ %inc43.3, %for.cond34.preheader.if.end51_crit_edge ]
  %rx_ptp_opened52 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 33
  %78 = ptrtoint ptr %rx_ptp_opened52 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %rx_ptp_opened52, align 2, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool53.not = icmp eq i8 %79, 0
  br i1 %tobool53.not, label %if.end51.cleanup_crit_edge, label %for.cond55.preheader

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond55.preheader:                             ; preds = %if.end51
  %rq = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 28, i32 4
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.cond55.preheader
  %i.3120 = phi i32 [ 0, %for.cond55.preheader ], [ %inc66, %for.body58.for.body58_crit_edge ]
  %idx.addr.6119 = phi i32 [ %idx.addr.5, %for.cond55.preheader ], [ %inc63, %for.body58.for.body58_crit_edge ]
  %offset61 = getelementptr [29 x %struct.counter_desc], ptr @ptp_rq_stats_desc, i32 0, i32 %i.3120, i32 1
  %80 = ptrtoint ptr %offset61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset61, align 4
  %add.ptr62 = getelementptr i8, ptr %rq, i32 %81
  %82 = ptrtoint ptr %add.ptr62 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %add.ptr62, align 8
  %inc63 = add i32 %idx.addr.6119, 1
  %arrayidx64 = getelementptr i64, ptr %data, i32 %idx.addr.6119
  %84 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %83, ptr %arrayidx64, align 8
  %inc66 = add nuw nsw i32 %i.3120, 1
  %exitcond.not = icmp eq i32 %inc66, 29
  br i1 %exitcond.not, label %for.body58.cleanup_crit_edge, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body58

for.body58.cleanup_crit_edge:                     ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body58.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %idx, %land.lhs.true.cleanup_crit_edge ], [ %idx.addr.5, %if.end51.cleanup_crit_edge ], [ %inc63, %for.body58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5e_stats_grp_ptp_update_stats(ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_qos_num_stats(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_qos_sqs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 3
  %0 = ptrtoint ptr %max_qos_sqs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load volatile i16, ptr %max_qos_sqs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !130
  %conv = zext i16 %1 to i32
  %mul = mul nuw nsw i32 %conv, 29
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_qos_fill_strings(ptr noundef %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_qos_sqs1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 3
  %0 = ptrtoint ptr %max_qos_sqs1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load volatile i16, ptr %max_qos_sqs1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !131
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp22.not = icmp eq i16 %1, 0
  br i1 %cmp22.not, label %entry.for.end14_crit_edge, label %entry.for.cond7.preheader_crit_edge

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  br label %for.cond7.preheader

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end14

for.cond7.preheader:                              ; preds = %for.inc12.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  %qid.024 = phi i32 [ %inc13, %for.inc12.for.cond7.preheader_crit_edge ], [ 0, %entry.for.cond7.preheader_crit_edge ]
  %idx.addr.023 = phi i32 [ %inc, %for.inc12.for.cond7.preheader_crit_edge ], [ %idx, %entry.for.cond7.preheader_crit_edge ]
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond7.preheader
  %i.021 = phi i32 [ 0, %for.cond7.preheader ], [ %inc11, %for.body10.for.body10_crit_edge ]
  %idx.addr.120 = phi i32 [ %idx.addr.023, %for.cond7.preheader ], [ %inc, %for.body10.for.body10_crit_edge ]
  %inc = add i32 %idx.addr.120, 1
  %mul = shl i32 %idx.addr.120, 5
  %add.ptr = getelementptr i8, ptr %data, i32 %mul
  %arrayidx = getelementptr [29 x %struct.counter_desc], ptr @qos_sq_stats_desc, i32 0, i32 %i.021
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef %arrayidx, i32 noundef %qid.024)
  %inc11 = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc11, 29
  br i1 %exitcond.not, label %for.inc12, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10

for.inc12:                                        ; preds = %for.body10
  %inc13 = add nuw nsw i32 %qid.024, 1
  %exitcond25.not = icmp eq i32 %inc13, %conv
  br i1 %exitcond25.not, label %for.inc12.for.end14_crit_edge, label %for.inc12.for.cond7.preheader_crit_edge

for.inc12.for.cond7.preheader_crit_edge:          ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond7.preheader

for.inc12.for.end14_crit_edge:                    ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end14

for.end14:                                        ; preds = %for.inc12.for.end14_crit_edge, %entry.for.end14_crit_edge
  %idx.addr.0.lcssa = phi i32 [ %idx, %entry.for.end14_crit_edge ], [ %inc, %for.inc12.for.end14_crit_edge ]
  ret i32 %idx.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_stats_grp_qos_fill_stats(ptr noundef %priv, ptr nocapture noundef writeonly %data, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %max_qos_sqs1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 3
  %0 = ptrtoint ptr %max_qos_sqs1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load volatile i16, ptr %max_qos_sqs1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !132
  %qos_sq_stats = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 2
  %2 = ptrtoint ptr %qos_sq_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %qos_sq_stats, align 32
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp34.not = icmp eq i16 %1, 0
  br i1 %cmp34.not, label %entry.for.end25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end25

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %idx.addr.036 = phi i32 [ %inc, %for.end.for.body_crit_edge ], [ %idx, %entry.for.body_crit_edge ]
  %qid.035 = phi i32 [ %inc24, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %qid.035
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body
  %idx.addr.133 = phi i32 [ %idx.addr.036, %for.body ], [ %inc, %for.body19.for.body19_crit_edge ]
  %i.032 = phi i32 [ 0, %for.body ], [ %inc22, %for.body19.for.body19_crit_edge ]
  %offset = getelementptr [29 x %struct.counter_desc], ptr @qos_sq_stats_desc, i32 0, i32 %i.032, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr, align 8
  %inc = add i32 %idx.addr.133, 1
  %arrayidx21 = getelementptr i64, ptr %data, i32 %idx.addr.133
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %arrayidx21, align 8
  %inc22 = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc22, 29
  br i1 %exitcond.not, label %for.end, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

for.end:                                          ; preds = %for.body19
  %inc24 = add nuw nsw i32 %qid.035, 1
  %exitcond37.not = icmp eq i32 %inc24, %conv
  br i1 %exitcond37.not, label %for.end.for.end25_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end25

for.end25:                                        ; preds = %for.end.for.end25_crit_edge, %entry.for.end25_crit_edge
  %idx.addr.0.lcssa = phi i32 [ %idx, %entry.for.end25_crit_edge ], [ %inc, %for.end.for.end25_crit_edge ]
  ret i32 %idx.addr.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5e_stats_grp_qos_update_stats(ptr nocapture noundef %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @mlx5e_stats_grp_sw, !1, !"mlx5e_stats_grp_sw", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2336, i32 1}
!2 = !{ptr @mlx5e_stats_grp_qcnt, !3, !"mlx5e_stats_grp_qcnt", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2337, i32 1}
!4 = !{ptr @mlx5e_stats_grp_vnic_env, !5, !"mlx5e_stats_grp_vnic_env", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2338, i32 1}
!6 = !{ptr @mlx5e_stats_grp_vport, !7, !"mlx5e_stats_grp_vport", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2339, i32 1}
!8 = !{ptr @mlx5e_stats_grp_802_3, !9, !"mlx5e_stats_grp_802_3", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2340, i32 1}
!10 = !{ptr @mlx5e_stats_grp_2863, !11, !"mlx5e_stats_grp_2863", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2341, i32 1}
!12 = !{ptr @mlx5e_stats_grp_2819, !13, !"mlx5e_stats_grp_2819", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2342, i32 1}
!14 = !{ptr @mlx5e_stats_grp_phy, !15, !"mlx5e_stats_grp_phy", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2343, i32 1}
!16 = !{ptr @mlx5e_stats_grp_pcie, !17, !"mlx5e_stats_grp_pcie", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2344, i32 1}
!18 = !{ptr @mlx5e_stats_grp_per_prio, !19, !"mlx5e_stats_grp_per_prio", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2345, i32 1}
!20 = !{ptr @mlx5e_stats_grp_pme, !21, !"mlx5e_stats_grp_pme", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2346, i32 1}
!22 = !{ptr @mlx5e_stats_grp_channels, !23, !"mlx5e_stats_grp_channels", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2347, i32 1}
!24 = !{ptr @mlx5e_stats_grp_per_port_buff_congest, !25, !"mlx5e_stats_grp_per_port_buff_congest", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2348, i32 1}
!26 = !{ptr @mlx5e_stats_grp_eth_ext, !27, !"mlx5e_stats_grp_eth_ext", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2349, i32 1}
!28 = !{ptr @mlx5e_nic_stats_grps, !29, !"mlx5e_nic_stats_grps", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2355, i32 19}
!30 = !{ptr @mlx5e_rmon_ranges, !31, !"mlx5e_rmon_ranges", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1002, i32 45}
!32 = !{ptr @sw_stats_desc, !33, !"sw_stats_desc", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 104, i32 34}
!34 = !{ptr @q_stats_desc, !35, !"q_stats_desc", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 490, i32 34}
!36 = !{ptr @drop_rq_stats_desc, !37, !"drop_rq_stats_desc", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 494, i32 34}
!38 = !{ptr @vnic_env_stats_steer_desc, !39, !"vnic_env_stats_steer_desc", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 571, i32 34}
!40 = !{ptr @vnic_env_stats_dev_oob_desc, !41, !"vnic_env_stats_dev_oob_desc", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 576, i32 34}
!42 = !{ptr @vport_stats_desc, !43, !"vport_stats_desc", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 636, i32 34}
!44 = !{ptr @pport_802_3_stats_desc, !45, !"pport_802_3_stats_desc", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 718, i32 34}
!46 = !{ptr @pport_2863_stats_desc, !47, !"pport_2863_stats_desc", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 894, i32 34}
!48 = !{ptr @pport_2819_stats_desc, !49, !"pport_2819_stats_desc", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 943, i32 34}
!50 = !{ptr @.str, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1098, i32 43}
!52 = !{ptr @pport_phy_statistical_stats_desc, !53, !"pport_phy_statistical_stats_desc", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1058, i32 34}
!54 = !{ptr @pport_phy_statistical_err_lanes_stats_desc, !55, !"pport_phy_statistical_err_lanes_stats_desc", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1064, i32 1}
!56 = !{ptr @pcie_perf_stats_desc, !57, !"pcie_perf_stats_desc", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1338, i32 34}
!58 = !{ptr @pcie_perf_stats_desc64, !59, !"pcie_perf_stats_desc64", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1345, i32 34}
!60 = !{ptr @pcie_perf_stall_stats_desc, !61, !"pcie_perf_stall_stats_desc", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1349, i32 34}
!62 = !{ptr @pport_per_prio_traffic_stats_desc, !63, !"pport_per_prio_traffic_stats_desc", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1579, i32 34}
!64 = !{ptr @.str.1, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1694, i32 45}
!66 = !{ptr @.str.2, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1703, i32 46}
!68 = !{ptr @pport_per_prio_pfc_stats_desc, !69, !"pport_per_prio_pfc_stats_desc", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1625, i32 34}
!70 = !{ptr @pport_pfc_stall_stats_desc, !71, !"pport_pfc_stall_stats_desc", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1634, i32 34}
!72 = !{ptr @mlx5e_pme_status_desc, !73, !"mlx5e_pme_status_desc", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1787, i32 34}
!74 = !{ptr @mlx5e_pme_error_desc, !75, !"mlx5e_pme_error_desc", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1791, i32 34}
!76 = !{ptr @ch_stats_desc, !77, !"ch_stats_desc", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1989, i32 34}
!78 = !{ptr @rq_stats_desc, !79, !"rq_stats_desc", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1855, i32 34}
!80 = !{ptr @xskrq_stats_desc, !81, !"xskrq_stats_desc", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1958, i32 34}
!82 = !{ptr @rq_xdpsq_stats_desc, !83, !"rq_xdpsq_stats_desc", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1938, i32 34}
!84 = !{ptr @sq_stats_desc, !85, !"sq_stats_desc", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1904, i32 34}
!86 = !{ptr @xsksq_stats_desc, !87, !"xsksq_stats_desc", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1980, i32 34}
!88 = !{ptr @xdpsq_stats_desc, !89, !"xdpsq_stats_desc", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1948, i32 34}
!90 = !{ptr @pport_per_tc_prio_stats_desc, !91, !"pport_per_tc_prio_stats_desc", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1441, i32 34}
!92 = !{ptr @pport_per_tc_congest_prio_stats_desc, !93, !"pport_per_tc_congest_prio_stats_desc", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1451, i32 34}
!94 = !{ptr @pport_eth_ext_stats_desc, !95, !"pport_eth_ext_stats_desc", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1282, i32 34}
!96 = !{ptr @mlx5e_stats_grp_tls, !97, !"mlx5e_stats_grp_tls", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2350, i32 8}
!98 = !{ptr @mlx5e_stats_grp_ptp, !99, !"mlx5e_stats_grp_ptp", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2351, i32 8}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2174, i32 4}
!102 = !{ptr @ptp_ch_stats_desc, !103, !"ptp_ch_stats_desc", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2015, i32 34}
!104 = !{ptr @ptp_sq_stats_desc, !105, !"ptp_sq_stats_desc", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 1998, i32 34}
!106 = !{ptr @ptp_cq_stats_desc, !107, !"ptp_cq_stats_desc", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2022, i32 34}
!108 = !{ptr @ptp_rq_stats_desc, !109, !"ptp_rq_stats_desc", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2029, i32 34}
!110 = !{ptr @mlx5e_stats_grp_qos, !111, !"mlx5e_stats_grp_qos", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2352, i32 8}
!112 = !{ptr @qos_sq_stats_desc, !113, !"qos_sq_stats_desc", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_stats.c", i32 2061, i32 34}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"auto-init"}
!124 = !{i64 2161406258}
!125 = !{i8 0, i8 2}
!126 = !{i64 2161393956}
!127 = !{i64 2161393994}
!128 = !{i64 2161400174}
!129 = !{i64 2161406064}
!130 = !{i64 2161927197}
!131 = !{i64 2161933600}
!132 = !{i64 2161940462}
