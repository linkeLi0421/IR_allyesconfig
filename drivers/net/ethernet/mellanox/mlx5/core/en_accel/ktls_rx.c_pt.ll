; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_rx.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.104 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.104 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.mlx5e_ktls_resync_resp = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5e_icosq_wqe_info = type { i8, i8, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr }
%struct.mlx5e_ktls_rx_resync_buf = type { %union.anon.258, i32, ptr, [120 x i8] }
%union.anon.258 = type { %struct.mlx5_wqe_tls_progress_params_seg, [112 x i8] }
%struct.mlx5_wqe_tls_progress_params_seg = type { i32, [12 x i8] }
%struct.mlx5e_ktls_offload_context_rx = type { %struct.tls12_crypto_info_aes_gcm_128, %struct.accel_rule, ptr, ptr, ptr, %struct.completion, %struct.mlx5e_tir, i32, i32, [1 x i32], %struct.spinlock, %struct.mlx5e_ktls_rx_resync_ctx, %struct.list_head }
%struct.tls12_crypto_info_aes_gcm_128 = type { %struct.tls_crypto_info, [8 x i8], [16 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.accel_rule = type { %struct.work_struct, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mlx5e_tir = type { ptr, i32, %struct.list_head }
%struct.mlx5e_ktls_rx_resync_ctx = type { %struct.tls_offload_resync_async, %struct.work_struct, ptr, %struct.refcount_struct, i64, i32 }
%struct.tls_offload_resync_async = type { %struct.atomic64_t, i16, i16, [13 x i32] }
%struct.atomic64_t = type { i64 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5e_rq = type { %union.anon.4, %struct.anon.219, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.4 = type { %struct.anon.211 }
%struct.anon.211 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.214 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.212 }
%union.anon.212 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.213, i64, i32, [28 x i8] }
%union.anon.213 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.214 = type { %struct.anon.215 }
%struct.anon.215 = type { %struct.anon.216, [0 x %struct.mlx5_mtt] }
%struct.anon.216 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.219 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.233, i32, %struct.list_head, ptr, i16 }
%struct.anon.233 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.207, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.210, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.207 = type { %struct.anon.208 }
%struct.anon.208 = type { i8, i8, i16, i32 }
%union.anon.210 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.235, i32 }
%union.anon.235 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.234, i32, i32 }
%union.anon.234 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.254, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.254 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.255 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.255 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.256 }
%struct.anon.256 = type { i8, i8 }
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
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.221, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.223, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.221 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.222] }
%struct.anon.222 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.190 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.190 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.223 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.220, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.220 = type { ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.274, %struct.anon.275, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.35, %union.anon.37, %union.anon.38, i16, i8, i8, i32, %union.anon.40, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.106, [0 x i32], %union.anon.107, i16, i16, %union.anon.108, %struct.refcount_struct, [0 x i32], %union.anon.109 }
%union.anon.35 = type { i64 }
%union.anon.37 = type { i32 }
%union.anon.38 = type { i32 }
%union.anon.40 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.105 }
%union.anon.105 = type { [4 x i32] }
%union.anon.106 = type { i32 }
%union.anon.107 = type { %struct.hlist_node }
%union.anon.108 = type { i32 }
%union.anon.109 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.101, i32, %struct.spinlock }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.114 }
%union.anon.114 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.274 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.275 = type { i32, i32, i32, i32 }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%union.tls_crypto_context = type { %union.anon.201 }
%union.anon.201 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_offload_context_rx = type { %struct.tls_sw_context_rx, i32, i8, %union.anon.267, [0 x i8] }
%struct.tls_sw_context_rx = type { ptr, %struct.crypto_wait, %struct.strparser, %struct.sk_buff_head, ptr, ptr, i8, i8, %struct.atomic_t, %struct.spinlock, i8 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.strparser = type { ptr, i8, ptr, ptr, i32, %struct.delayed_work, %struct.work_struct, %struct.strp_stats, %struct.strp_callbacks }
%struct.strp_stats = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.strp_callbacks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.267 = type { %struct.anon.268 }
%struct.anon.268 = type { %struct.atomic64_t }
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.253, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.253 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.251, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.251 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.238, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.238 = type { ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.181, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.206, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.181 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.206 = type { ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.mlx5e_tls = type { %struct.mlx5e_tls_sw_stats, ptr }
%struct.mlx5e_tls_sw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.mlx5_buf_list = type { ptr, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.180, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.180 = type { %struct.atomic_t }
%struct.mlx5e_get_tls_progress_params_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_seg_get_psv }
%struct.mlx5_seg_get_psv = type { [19 x i8], i8, i32, i64, [4 x i32] }

@mlx5e_ktls_rx_resync_create_resp_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&resp_list->lock\00", [47 x i8] zeroinitializer }, align 32
@mlx5e_ktls_add_rx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv_rx->lock\00", [17 x i8] zeroinitializer }, align 32
@tcp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@accel_rule_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&rule->work)\00", [33 x i8] zeroinitializer }, align 32
@resync_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&resync->work)\00", [63 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 98, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 606, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 598, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 87, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 125, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private constant [62 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_rx.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 355, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 326, i32 6 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @mlx5e_ktls_rx_resync_create_resp_list.__key, ptr @.str, ptr @mlx5e_ktls_add_rx.__key, ptr @.str.1, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3, ptr @accel_rule_init.__key, ptr @.str.4, ptr @resync_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ktls_rx_resync_create_resp_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ktls_add_rx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel_rule_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resync_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_rx_resync_destroy_resp_list(ptr noundef %resp_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kvfree(ptr noundef %resp_list) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_ktls_rx_resync_create_resp_list() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 52, i32 noundef 3520, i32 noundef -1) #11
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %list = getelementptr inbounds %struct.mlx5e_ktls_resync_resp, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_ktls_resync_resp, ptr %call.i.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5e_ktls_rx_resync_create_resp_list.__key, i16 noundef signext 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_handle_get_psv_completion(ptr nocapture noundef readonly %wi, ptr nocapture noundef readnone %sq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5e_icosq_wqe_info, ptr %wi, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %priv_rx2 = getelementptr inbounds %struct.mlx5e_ktls_rx_resync_buf, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %priv_rx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv_rx2, align 4
  %priv = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %4, i32 0, i32 11, i32 2
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %6, i32 0, i32 21
  %7 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev, align 64
  %pdev.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  %flags = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %4, i32 0, i32 9
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !33

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %dma_addr = getelementptr inbounds %struct.mlx5e_ktls_rx_resync_buf, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr, align 128
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev1.i, i32 noundef %14, i32 noundef 64, i32 noundef 2) #8
  %add.ptr = getelementptr %struct.mlx5_wqe_tls_progress_params_seg, ptr %2, i32 0, i32 1, i32 8
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  %17 = and i32 %16, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %17)
  %18 = icmp eq i32 %17, 1073741824
  br i1 %18, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rq_stats = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %4, i32 0, i32 3
  %19 = ptrtoint ptr %rq_stats to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rq_stats, align 8
  %tls_resync_req_skip = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %20, i32 0, i32 40
  br label %out.sink.split

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr20 = getelementptr %struct.mlx5_wqe_tls_progress_params_seg, ptr %2, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %add.ptr20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr20, align 4
  %sk = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk, align 4
  %icsk_ulp_data.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %24, i32 0, i32 13
  %25 = ptrtoint ptr %icsk_ulp_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %icsk_ulp_data.i.i, align 8
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  %29 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %28, i32 0, i32 3
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %conv.i = zext i32 %22 to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %or.i = or i64 %shl.i, 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %31, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %31, i64 noundef %or.i) #8
  %rq_stats23 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %4, i32 0, i32 3
  %32 = ptrtoint ptr %rq_stats23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rq_stats23, align 8
  %tls_resync_req_end = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %33, i32 0, i32 39
  br label %out.sink.split

out.sink.split:                                   ; preds = %if.end19, %if.then18
  %tls_resync_req_end.sink39 = phi ptr [ %tls_resync_req_end, %if.end19 ], [ %tls_resync_req_skip, %if.then18 ]
  %34 = ptrtoint ptr %tls_resync_req_end.sink39 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tls_resync_req_end.sink39, align 8
  %inc24 = add i64 %35, 1
  store i64 %inc24, ptr %tls_resync_req_end.sink39, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %entry.out_crit_edge
  %refcnt.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %4, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlx5e_ktls_priv_rx_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !33

if.end5.i.i.i.i.mlx5e_ktls_priv_rx_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_ktls_priv_rx_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #8
  br label %mlx5e_ktls_priv_rx_put.exit

if.end.i:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @kfree(ptr noundef %4) #8
  br label %mlx5e_ktls_priv_rx_put.exit

mlx5e_ktls_priv_rx_put.exit:                      ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlx5e_ktls_priv_rx_put.exit_crit_edge
  %dma_addr26 = getelementptr inbounds %struct.mlx5e_ktls_rx_resync_buf, ptr %2, i32 0, i32 1
  %37 = ptrtoint ptr %dma_addr26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr26, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i, i32 noundef %38, i32 noundef 64, i32 noundef 2, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_ktls_priv_rx_put(ptr noundef %priv_rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %priv_rx, i32 0, i32 11, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !33

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @kfree(ptr noundef %priv_rx) #8
  br label %return

return:                                           ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_rx_resync(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %sk, i32 noundef %seq, ptr nocapture noundef readonly %rcd_sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %driver_state2.i.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %driver_state2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_state2.i.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !37

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %rcd_sn to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rcd_sn, align 8
  %sw_rcd_sn_be = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 11, i32 4
  %8 = ptrtoint ptr %sw_rcd_sn_be to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %sw_rcd_sn_be, align 8
  %seq6 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 11, i32 5
  %9 = ptrtoint ptr %seq6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %seq, ptr %seq6, align 8
  %channels = getelementptr i8, ptr %netdev, i32 6016
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 128
  %rxq = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 8
  %12 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxq, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %async_icosq.i = getelementptr inbounds %struct.mlx5e_channel, ptr %15, i32 0, i32 17
  %ktls_resync1.i = getelementptr inbounds %struct.mlx5e_channel, ptr %15, i32 0, i32 17, i32 11
  %16 = ptrtoint ptr %ktls_resync1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ktls_resync1.i, align 16
  tail call void @_raw_spin_lock_bh(ptr noundef %17) #8
  %lock2.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 10
  tail call void @_raw_spin_lock_bh(ptr noundef %lock2.i) #8
  %rec_seq.i = getelementptr inbounds %struct.tls12_crypto_info_aes_gcm_128, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %sw_rcd_sn_be to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sw_rcd_sn_be, align 8
  %20 = ptrtoint ptr %rec_seq.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %rec_seq.i, align 2
  %list.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 12
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %list.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then10.critedge.i

if.then.i:                                        ; preds = %if.end
  %list4.i = getelementptr inbounds %struct.mlx5e_ktls_resync_resp, ptr %17, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.mlx5e_ktls_resync_resp, ptr %17, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %24, ptr noundef %list4.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_add_tail.exit.i_crit_edge

if.then.i.list_add_tail.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %list.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list4.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %list.i, ptr %24, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_add_tail.exit.i_crit_edge
  %state.i = getelementptr inbounds %struct.mlx5e_channel, ptr %15, i32 0, i32 17, i32 10
  %call5.i = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock2.i) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %17) #8
  br i1 %tobool6.not.i, label %if.end11.i, label %list_add_tail.exit.i.cleanup_crit_edge

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.critedge.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock2.i) #8
  br label %cleanup.sink.split.i

if.end11.i:                                       ; preds = %list_add_tail.exit.i
  %state.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %15, i32 0, i32 6, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %__cmpxchg.exit.i.i.do.body.i.i_crit_edge, %if.end11.i
  %29 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i.i, align 8
  %and.i.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.i.cleanup_crit_edge

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %do.body.i.i
  %and2.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then13.i, label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %or.i.i = or i32 %30, 2
  %call.i.i31.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  tail call void @llvm.prefetch.p0(ptr %state.i.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end5.i.i
  %31 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %state.i.i, i32 %30, i32 %or.i.i) #8, !srcloc !39
  %asmresult.i.i.i = extractvalue { i32, i32 } %31, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %asmresult1.i.i.i = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %cmp.not.i.i = icmp eq i32 %asmresult1.i.i.i, %30
  br i1 %cmp.not.i.i, label %__cmpxchg.exit.i.i.cleanup_crit_edge, label %__cmpxchg.exit.i.i.do.body.i.i_crit_edge

__cmpxchg.exit.i.i.do.body.i.i_crit_edge:         ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

__cmpxchg.exit.i.i.cleanup_crit_edge:             ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %async_icosq_lock.i = getelementptr inbounds %struct.mlx5e_channel, ptr %15, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %async_icosq_lock.i) #8
  tail call void @mlx5e_trigger_irq(ptr noundef %async_icosq.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then13.i, %if.then10.critedge.i
  %async_icosq_lock.sink.i = phi ptr [ %async_icosq_lock.i, %if.then13.i ], [ %17, %if.then10.critedge.i ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_icosq_lock.sink.i) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %__cmpxchg.exit.i.i.cleanup_crit_edge, %do.body.i.i.cleanup_crit_edge, %list_add_tail.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_handle_rx_skb(ptr nocapture noundef readonly %rq, ptr noundef %skb, ptr nocapture noundef readonly %cqe, ptr nocapture noundef readonly %cqe_bcnt) local_unnamed_addr #0 align 64 {
entry:
  %vhdr.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 4
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %2 = ptrtoint ptr %cqe to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cqe, align 4
  %4 = lshr i8 %3, 3
  %trunc = trunc i8 %4 to i2
  %5 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %sw.default [
    i2 1, label %sw.bb
    i2 -2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %decrypted = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %6 = ptrtoint ptr %decrypted to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %bf.load = load i32, ptr %decrypted, align 2
  %bf.set = or i32 %bf.load, 8192
  store i32 %bf.set, ptr %decrypted, align 2
  %tls_decrypted_packets = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %tls_decrypted_packets to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tls_decrypted_packets, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %tls_decrypted_packets, align 8
  %9 = ptrtoint ptr %cqe_bcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cqe_bcnt, align 4
  %conv2 = zext i32 %10 to i64
  %tls_decrypted_bytes = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %1, i32 0, i32 36
  %11 = ptrtoint ptr %tls_decrypted_bytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tls_decrypted_bytes, align 8
  %add = add i64 %12, %conv2
  store i64 %add, ptr %tls_decrypted_bytes, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %tls_resync_req_pkt = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %1, i32 0, i32 37
  %13 = ptrtoint ptr %tls_resync_req_pkt to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tls_resync_req_pkt, align 8
  %inc4 = add i64 %14, 1
  store i64 %inc4, ptr %tls_resync_req_pkt, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %netdev1.i = getelementptr inbounds %struct.mlx5e_rq, ptr %rq, i32 0, i32 3
  %17 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev1.i, align 8
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %h_proto.i, align 1
  %mac_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %21 = ptrtoint ptr %mac_len.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mac_len.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %23 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %20, label %sw.bb3.__vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %sw.bb3.if.then.i.i_crit_edge
    i16 -32512, label %sw.bb3.if.then.i.i_crit_edge12
  ]

sw.bb3.if.then.i.i_crit_edge12:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

sw.bb3.if.then.i.i_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

sw.bb3.__vlan_get_protocol.exit.i_crit_edge:      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %__vlan_get_protocol.exit.i

if.then.i.i:                                      ; preds = %sw.bb3.if.then.i.i_crit_edge, %sw.bb3.if.then.i.i_crit_edge12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end26.i.i_crit_edge, label %if.then1.i.i

if.then.i.i.if.end26.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %22)
  %cmp.i.i = icmp ult i16 %22, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !37

do.end.i.i:                                       ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %__vlan_get_protocol.exit.i

if.end25.i.i:                                     ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add nsw i32 %conv.i.i, -4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.end25.i.i, %if.then.i.i.if.end26.i.i_crit_edge
  %vlan_depth.0.i.i = phi i32 [ %sub.i.i, %if.end25.i.i ], [ 14, %if.then.i.i.if.end26.i.i_crit_edge ]
  %24 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i, i32 0, i32 1
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i

do.body27.i.i:                                    ; preds = %do.body27.i.i.backedge, %if.end26.i.i
  %vlan_depth.1.i.i = phi i32 [ %vlan_depth.0.i.i, %if.end26.i.i ], [ %add.i.i, %do.body27.i.i.backedge ]
  %parse_depth.0.i.i = phi i32 [ 8, %if.end26.i.i ], [ %dec.i.i, %do.body27.i.i.backedge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i) #8
  %25 = ptrtoint ptr %vhdr.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %vhdr.i.i, align 2, !annotation !41
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %24, align 2, !annotation !41
  %27 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i.i.i, align 4
  %29 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i.i, align 8
  %31 = add i32 %vlan_depth.1.i.i, %30
  %sub.i1.i.i.i = sub i32 %28, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i, 3
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i, !prof !33

if.then.i.i.i.i:                                  ; preds = %do.body27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %33, i32 %vlan_depth.1.i.i
  br label %skb_header_pointer.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body27.i.i
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i, ptr noundef nonnull %vhdr.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %cmp3.i.i.i.i, ptr null, ptr %vhdr.i.i, !prof !37
  br label %skb_header_pointer.exit.i.i

skb_header_pointer.exit.i.i:                      ; preds = %lor.lhs.false.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then.i.i.i.i ], [ %spec.select.i.i.i.i, %lor.lhs.false.i.i.i.i ]
  %tobool29.not.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  %dec.i.i = add nsw i32 %parse_depth.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool30.not.i.i = icmp eq i32 %dec.i.i, 0
  %34 = select i1 %tobool29.not.i.i, i1 true, i1 %tobool30.not.i.i, !prof !37
  br i1 %34, label %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, label %do.cond42.i.i, !prof !37

skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i

cleanup.thread.i.i:                               ; preds = %skb_header_pointer.exit.i.i.cleanup.thread.i.i_crit_edge, %if.end.i.i.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #8
  br label %__vlan_get_protocol.exit.i

do.cond42.i.i:                                    ; preds = %skb_header_pointer.exit.i.i
  %h_vlan_encapsulated_proto.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %h_vlan_encapsulated_proto.i.i, align 2
  %add.i.i = add nsw i32 %vlan_depth.1.i.i, 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i) #8
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %36, label %do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.do.body27.i.i.backedge_crit_edge
    i16 -32512, label %do.cond42.i.i.do.body27.i.i.backedge_crit_edge13
  ]

do.cond42.i.i.do.body27.i.i.backedge_crit_edge13: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.i.i.backedge

do.cond42.i.i.do.body27.i.i.backedge_crit_edge:   ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.i.i.backedge

do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge: ; preds = %do.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__vlan_get_protocol.exit.i

do.body27.i.i.backedge:                           ; preds = %do.cond42.i.i.do.body27.i.i.backedge_crit_edge, %do.cond42.i.i.do.body27.i.i.backedge_crit_edge13
  br label %do.body27.i.i

__vlan_get_protocol.exit.i:                       ; preds = %do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge, %cleanup.thread.i.i, %do.end.i.i, %sw.bb3.__vlan_get_protocol.exit.i_crit_edge
  %depth.0.i = phi i32 [ 0, %cleanup.thread.i.i ], [ 0, %do.end.i.i ], [ %conv.i.i, %sw.bb3.__vlan_get_protocol.exit.i_crit_edge ], [ %add.i.i, %do.cond42.i.i.__vlan_get_protocol.exit.i_crit_edge ]
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 %depth.0.i
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %add.ptr.i, align 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp.i = icmp eq i8 %bf.lshr.mask.i, 64
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %__vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 20
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %41 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %nd_net.i.i, align 4
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 8
  %43 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %saddr.i, align 4
  %45 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr4.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 9
  %47 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %daddr.i, align 4
  %dest.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr4.i, i32 0, i32 1
  %49 = ptrtoint ptr %dest.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dest.i, align 2
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 17
  %51 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ifindex.i, align 4
  %call.i.i = call ptr @__inet_lookup_established(ptr noundef %42, ptr noundef nonnull @tcp_hashinfo, i32 noundef %44, i16 noundef zeroext %46, i32 noundef %48, i16 noundef zeroext %50, i32 noundef %52, i32 noundef 0) #8
  br label %if.end.i

if.else.i:                                        ; preds = %__vlan_get_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 40
  %nd_net.i74.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %53 = ptrtoint ptr %nd_net.i74.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %nd_net.i74.i, align 4
  %saddr10.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 5
  %55 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr8.i, align 4
  %daddr12.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i, i32 0, i32 6
  %dest13.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr8.i, i32 0, i32 1
  %57 = ptrtoint ptr %dest13.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %dest13.i, align 2
  %ifindex14.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 17
  %59 = ptrtoint ptr %ifindex14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ifindex14.i, align 4
  %call15.i = call ptr @__inet6_lookup_established(ptr noundef %54, ptr noundef nonnull @tcp_hashinfo, ptr noundef %saddr10.i, i16 noundef zeroext %56, ptr noundef %daddr12.i, i16 noundef zeroext %58, i32 noundef %60, i32 noundef 0) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.pn.i = phi i32 [ -20, %if.then.i ], [ -40, %if.else.i ]
  %sk.0.i = phi ptr [ %call.i.i, %if.then.i ], [ %call15.i, %if.else.i ]
  %61 = phi i32 [ 20, %if.then.i ], [ 40, %if.else.i ]
  %tobool.not.i = icmp eq ptr %sk.0.i, null
  br i1 %tobool.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end21.i, !prof !37

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end21.i:                                       ; preds = %if.end.i
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk.0.i, i32 0, i32 4
  %62 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %63)
  %cmp23.i = icmp eq i8 %63, 6
  br i1 %cmp23.i, label %if.end21.i.unref.i_crit_edge, label %if.end32.i, !prof !37

if.end21.i.unref.i_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unref.i

if.end32.i:                                       ; preds = %if.end21.i
  %icsk_ulp_data.i.i.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk.0.i, i32 0, i32 13
  %64 = ptrtoint ptr %icsk_ulp_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %icsk_ulp_data.i.i.i, align 8
  %priv_ctx_rx.i.i.i.i.i = getelementptr inbounds %struct.tls_context, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %priv_ctx_rx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv_ctx_rx.i.i.i.i.i, align 4
  %driver_state2.i.i.i.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %driver_state2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_state2.i.i.i.i, align 4
  %tobool.not.i75.i = icmp eq ptr %69, null
  br i1 %tobool.not.i75.i, label %if.end32.i.unref.i_crit_edge, label %if.end.i.i, !prof !37

if.end32.i.unref.i_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unref.i

if.end.i.i:                                       ; preds = %if.end32.i
  %flags.i.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %69, i32 0, i32 9
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end14.i.i, label %if.end.i.i.unref.i_crit_edge, !prof !33

if.end.i.i.unref.i_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unref.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %69, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #8
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #8, !srcloc !42
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !37

if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end14.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %73 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %.not.i.i.i.i.i.i = icmp sgt i32 %73, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.mlx5e_ktls_priv_rx_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !33

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.mlx5e_ktls_priv_rx_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_ktls_priv_rx_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end14.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %mlx5e_ktls_priv_rx_get.exit.i.i

mlx5e_ktls_priv_rx_get.exit.i.i:                  ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.mlx5e_ktls_priv_rx_get.exit.i.i_crit_edge
  %priv.i.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %69, i32 0, i32 11, i32 2
  %74 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv.i.i, align 4
  %tls.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %75, i32 0, i32 45
  %76 = ptrtoint ptr %tls.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tls.i.i, align 8
  %rx_wq.i.i = getelementptr inbounds %struct.mlx5e_tls, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %rx_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_wq.i.i, align 8
  %work.i.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %69, i32 0, i32 11, i32 1
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %79, ptr noundef %work.i.i) #8
  br i1 %call.i.i.i, label %mlx5e_ktls_priv_rx_get.exit.i.i.if.end43.i_crit_edge, label %if.then25.i.i, !prof !33

mlx5e_ktls_priv_rx_get.exit.i.i.if.end43.i_crit_edge: ; preds = %mlx5e_ktls_priv_rx_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then25.i.i:                                    ; preds = %mlx5e_ktls_priv_rx_get.exit.i.i
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #8
  %80 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i.i79.i = extractvalue { i32, i32, i32 } %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i79.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i79.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i80.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i79.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i79.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end43.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !33

if.end5.i.i.i.i.i.if.end43.i_crit_edge:           ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #8
  br label %if.end43.i

if.end.i80.i:                                     ; preds = %if.then25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  call void @kfree(ptr noundef nonnull %69) #8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end.i80.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end43.i_crit_edge, %mlx5e_ktls_priv_rx_get.exit.i.i.if.end43.i_crit_edge
  %81 = getelementptr i8, ptr %add.ptr.i, i32 %61
  %seq44.i = getelementptr inbounds %struct.tcphdr, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %seq44.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %seq44.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %84 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len.i, align 4
  %depth.1.neg85.i = sub i32 65516, %depth.0.i
  %add16.neg.i = add i32 %depth.1.neg85.i, %.pn.i
  %sub.i = add i32 %add16.neg.i, %85
  %86 = ptrtoint ptr %icsk_ulp_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %icsk_ulp_data.i.i.i, align 8
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %90 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %89, i32 0, i32 3
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  %conv.i77.i = zext i32 %83 to i64
  %shl.i.i = shl nuw i64 %conv.i77.i, 32
  %93 = shl i32 %sub.i, 16
  %shl3.i.i = zext i32 %93 to i64
  %or.i.i = or i64 %shl.i.i, %shl3.i.i
  %or5.i.i = or i64 %or.i.i, 3
  %call.i.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %92, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef %92, i64 noundef %or5.i.i) #8
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %90, align 8
  %loglen.i.i = getelementptr inbounds %struct.tls_offload_resync_async, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %loglen.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %loglen.i.i, align 8
  %97 = load ptr, ptr %90, align 8
  %rcd_delta.i.i = getelementptr inbounds %struct.tls_offload_resync_async, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %rcd_delta.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %rcd_delta.i.i, align 2
  %99 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %stats1, align 4
  %tls_resync_req_start.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %100, i32 0, i32 38
  %101 = ptrtoint ptr %tls_resync_req_start.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %tls_resync_req_start.i, align 8
  %inc.i = add i64 %102, 1
  store i64 %inc.i, ptr %tls_resync_req_start.i, align 8
  br label %unref.i

unref.i:                                          ; preds = %if.end43.i, %if.end.i.i.unref.i_crit_edge, %if.end32.i.unref.i_crit_edge, %if.end21.i.unref.i_crit_edge
  call void @sock_gen_put(ptr noundef nonnull %sk.0.i) #8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tls_err = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %1, i32 0, i32 44
  %103 = ptrtoint ptr %tls_err to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %tls_err, align 8
  %inc5 = add i64 %104, 1
  store i64 %inc5, ptr %tls_err, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %unref.i, %if.end.i.sw.epilog_crit_edge, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_handle_ctx_completion(ptr nocapture noundef readonly %wi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.mlx5e_icosq_wqe_info, ptr %wi, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %flags = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add_ctx = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %2, i32 0, i32 5
  tail call void @complete(ptr noundef %add_ctx) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rule2 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %2, i32 0, i32 1
  %priv = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %2, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %tls = getelementptr inbounds %struct.mlx5e_priv, ptr %6, i32 0, i32 45
  %7 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tls, align 8
  %rx_wq = getelementptr inbounds %struct.mlx5e_tls, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %rx_wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_wq, align 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %rule2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ktls_add_rx(ptr noundef %netdev, ptr noundef %sk, ptr noundef %crypto_info, i32 noundef %start_offload_tcp_sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mdev2 = getelementptr i8, ptr %netdev, i32 11328
  %2 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev2, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 376) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !37

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %key_id = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 7
  %call7 = tail call i32 @mlx5_ktls_create_key(ptr noundef %3, ptr noundef %crypto_info, ptr noundef %key_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_create_key_crit_edge

if.end.err_create_key_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_create_key

if.end10:                                         ; preds = %if.end
  %list = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 12
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlx5e_ktls_add_rx.__key, i16 noundef signext 3) #8
  %7 = call ptr @memcpy(ptr %call7.i.i, ptr %crypto_info, i32 40)
  %tobool.not.i.i = icmp eq ptr %sk, null
  br i1 %tobool.not.i.i, label %if.end10.if.then.i_crit_edge, label %if.then.i.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i.i:                                      ; preds = %if.end10
  %skc_rx_queue_mapping.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 17
  %8 = ptrtoint ptr %skc_rx_queue_mapping.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load volatile i16, ptr %skc_rx_queue_mapping.i.i, align 2
  %conv.i.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp.not.i.i = icmp eq i16 %9, -1
  br i1 %cmp.not.i.i, label %if.then.i.i.if.then.i_crit_edge, label %if.then.i.i.mlx5e_ktls_sk_get_rxq.exit_crit_edge

if.then.i.i.mlx5e_ktls_sk_get_rxq.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_ktls_sk_get_rxq.exit

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.i.i.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge
  br label %mlx5e_ktls_sk_get_rxq.exit

mlx5e_ktls_sk_get_rxq.exit:                       ; preds = %if.then.i, %if.then.i.i.mlx5e_ktls_sk_get_rxq.exit_crit_edge
  %rxq.0.i = phi i32 [ 0, %if.then.i ], [ %conv.i.i, %if.then.i.i.mlx5e_ktls_sk_get_rxq.exit_crit_edge ]
  %rxq14 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 8
  %10 = ptrtoint ptr %rxq14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rxq.0.i, ptr %rxq14, align 4
  %sk15 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %sk15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sk, ptr %sk15, align 4
  %channel_stats = getelementptr i8, ptr %netdev, i32 21488
  %12 = ptrtoint ptr %channel_stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channel_stats, align 16
  %arrayidx = getelementptr ptr, ptr %13, i32 %rxq.0.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %rq = getelementptr inbounds %struct.mlx5e_channel_stats, ptr %15, i32 0, i32 3
  %rq_stats = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %rq_stats to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rq, ptr %rq_stats, align 8
  %tls = getelementptr i8, ptr %netdev, i32 30248
  %17 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tls, align 8
  %sw_stats16 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %sw_stats16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %sw_stats16, align 4
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %driver_state2.i.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %driver_state2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %driver_state2.i.i, align 4
  %rx_res = getelementptr i8, ptr %netdev, i32 6236
  %23 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_res, align 4
  %tir = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 6
  %call17 = tail call i32 @mlx5e_rx_res_tls_tir_create(ptr noundef %24, i32 noundef %rxq.0.i, ptr noundef %tir) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %mlx5e_ktls_sk_get_rxq.exit.err_create_tir_crit_edge

mlx5e_ktls_sk_get_rxq.exit.err_create_tir_crit_edge: ; preds = %mlx5e_ktls_sk_get_rxq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_create_tir

if.end20:                                         ; preds = %mlx5e_ktls_sk_get_rxq.exit
  %add_ctx = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %add_ctx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %add_ctx, align 8
  %wait.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %rule = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %rule, i32 noundef 0) #8
  %26 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -64, ptr %rule, align 8
  %lockdep_map.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @accel_rule_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %entry4.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %entry4.i, ptr %entry4.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %entry4.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @accel_rule_handle_work, ptr %func.i, align 4
  %priv6.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %priv6.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %priv6.i, align 4
  %resync21 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11
  %work.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11, i32 1
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #8
  %31 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i74 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i74, ptr noundef nonnull @.str.5, ptr noundef nonnull @resync_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry4.i75 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %32 = ptrtoint ptr %entry4.i75 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %entry4.i75, ptr %entry4.i75, align 4
  %prev.i.i76 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i76 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %entry4.i75, ptr %prev.i.i76, align 8
  %func.i77 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 2
  %34 = ptrtoint ptr %func.i77 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @resync_handle_work, ptr %func.i77, align 4
  %priv6.i78 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11, i32 2
  %35 = ptrtoint ptr %priv6.i78 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i, ptr %priv6.i78, align 4
  %refcnt.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 11, i32 3
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  %36 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 1, ptr %refcnt.i, align 8
  %37 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %39 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %38, i32 0, i32 3
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resync21, ptr %39, align 8
  %41 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %icsk_ulp_data.i, align 8
  %priv_ctx_rx.i.i = getelementptr inbounds %struct.tls_context, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %priv_ctx_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv_ctx_rx.i.i, align 4
  %resync_type.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %resync_type.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %resync_type.i, align 8
  %channels = getelementptr i8, ptr %netdev, i32 6016
  %46 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %channels, align 128
  %arrayidx23 = getelementptr ptr, ptr %47, i32 %rxq.0.i
  %48 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx23, align 4
  %async_icosq.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17
  %async_icosq_lock.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %async_icosq_lock.i) #8
  %call.i = tail call fastcc ptr @post_static_params(ptr noundef %async_icosq.i, ptr noundef nonnull %call7.i.i) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end20.post_rx_param_wqes.exit_crit_edge, label %if.end.i

if.end20.post_rx_param_wqes.exit_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %post_rx_param_wqes.exit

if.end.i:                                         ; preds = %if.end20
  %reserved_room.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 9
  %50 = ptrtoint ptr %reserved_room.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %reserved_room.i.i.i, align 8
  %add.i.i.i = add i16 %51, 1
  %52 = ptrtoint ptr %async_icosq.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %async_icosq.i, align 128
  %pc.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 1
  %54 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %pc.i.i.i, align 2
  %sub.i7.i.i.i = sub i16 %53, %55
  %sz_m1.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 6, i32 0, i32 1
  %56 = ptrtoint ptr %sz_m1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sz_m1.i.i.i.i.i, align 4
  %58 = trunc i32 %57 to i16
  %conv1.i.i.i.i.i = and i16 %sub.i7.i.i.i, %58
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i.i.i.i.i, i16 %add.i.i.i)
  %cmp.not.i.i.i.i = icmp uge i16 %conv1.i.i.i.i.i, %add.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %53, i16 %55)
  %cmp8.i.i.i.i = icmp eq i16 %53, %55
  %spec.select.i.i.i.i = or i1 %cmp8.i.i.i.i, %cmp.not.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end.i.i, label %if.end.i.post_rx_param_wqes.exit_crit_edge, !prof !33

if.end.i.post_rx_param_wqes.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %post_rx_param_wqes.exit

if.end.i.i:                                       ; preds = %if.end.i
  %wq1.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 6
  %conv1.i.i.i.i = and i16 %55, %58
  %conv.i.i.i.i = zext i16 %conv1.i.i.i.i to i32
  %strides_offset.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 6, i32 0, i32 3
  %59 = ptrtoint ptr %strides_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %strides_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %60 to i32
  %add.i.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i.i, %conv.i.i.i.i
  %frag_sz_m1.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 6, i32 0, i32 2
  %61 = ptrtoint ptr %frag_sz_m1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %frag_sz_m1.i.i.i.i.i, align 4
  %conv1.i.i.i30.i.i = zext i16 %62 to i32
  %log_frag_strides.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 6, i32 0, i32 6
  %63 = ptrtoint ptr %log_frag_strides.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %log_frag_strides.i.i.i.i.i, align 2
  %conv1.i.i.i35.i.i = zext i8 %64 to i32
  %shr.i.i.i.i.i = lshr i32 %add.i.i.i.i.i, %conv1.i.i.i35.i.i
  %65 = ptrtoint ptr %wq1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wq1.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %66, i32 %shr.i.i.i.i.i
  %67 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %add.i.i.i.i.i, %conv1.i.i.i30.i.i
  %log_stride.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 6, i32 0, i32 5
  %69 = ptrtoint ptr %log_stride.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %log_stride.i.i.i.i.i, align 1
  %conv3.i.i.i.i.i = zext i8 %70 to i32
  %shl.i.i.i.i.i = shl i32 %and.i.i.i.i.i, %conv3.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %68, i32 %shl.i.i.i.i.i
  %71 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 32)
  %72 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %pc.i.i.i, align 2
  %sqn.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 8
  %74 = ptrtoint ptr %sqn.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sqn.i.i, align 4
  %tirn.i.i.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %call7.i.i, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %tirn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tirn.i.i.i, align 4
  tail call void @mlx5e_ktls_build_progress_params(ptr noundef %add.ptr.i.i.i.i.i, i16 noundef zeroext %73, i32 noundef %75, i32 noundef %77, i1 noundef zeroext false, i32 noundef %start_offload_tcp_sn, i32 noundef 0) #8
  %db.i37.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 5
  %78 = ptrtoint ptr %db.i37.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %db.i37.i.i, align 128
  %arrayidx.i38.i.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %79, i32 %conv.i.i.i.i
  %80 = ptrtoint ptr %call7.i.i to i32
  %81 = ptrtoint ptr %arrayidx.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 67239935, ptr %arrayidx.i38.i.i, align 4
  %arrayidx.i38.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i38.i.i, i32 4
  %82 = ptrtoint ptr %arrayidx.i38.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %80, ptr %arrayidx.i38.sroa_idx.i.i, align 4
  %83 = ptrtoint ptr %pc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %pc.i.i.i, align 2
  %add.i.i = add i16 %84, 1
  store i16 %add.i.i, ptr %pc.i.i.i, align 2
  %cmp.i20.i = icmp ugt ptr %add.ptr.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.end.i.i.post_rx_param_wqes.exit_crit_edge, label %post_rx_param_wqes.exit.thread

if.end.i.i.post_rx_param_wqes.exit_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %post_rx_param_wqes.exit

post_rx_param_wqes.exit.thread:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %uar_map.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 7
  %85 = ptrtoint ptr %uar_map.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %uar_map.i, align 32
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i.i, i32 0, i32 4
  %87 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fm_ce_se.i.i, align 1
  %89 = or i8 %88, 8
  store i8 %89, ptr %fm_ce_se.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %conv2.i.i = zext i16 %add.i.i to i32
  %db.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %49, i32 0, i32 17, i32 6, i32 1
  %90 = ptrtoint ptr %db.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %db.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv2.i.i, ptr %91, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %93 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %add.ptr.i.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %94) #8, !srcloc !45
  %arrayidx1.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i.i, i32 1
  %95 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx1.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %86, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %96) #8, !srcloc !45
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_icosq_lock.i) #8
  br label %if.end27

post_rx_param_wqes.exit:                          ; preds = %if.end.i.i.post_rx_param_wqes.exit_crit_edge, %if.end.i.post_rx_param_wqes.exit_crit_edge, %if.end20.post_rx_param_wqes.exit_crit_edge
  %cseg.0.i = phi ptr [ %call.i, %if.end20.post_rx_param_wqes.exit_crit_edge ], [ %add.ptr.i.i.i.i.i, %if.end.i.i.post_rx_param_wqes.exit_crit_edge ], [ inttoptr (i32 -28 to ptr), %if.end.i.post_rx_param_wqes.exit_crit_edge ]
  %97 = ptrtoint ptr %rq_stats to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rq_stats, align 8
  %tls_resync_req_skip.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %98, i32 0, i32 40
  %99 = ptrtoint ptr %tls_resync_req_skip.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %tls_resync_req_skip.i, align 8
  %inc.i = add i64 %100, 1
  store i64 %inc.i, ptr %tls_resync_req_skip.i, align 8
  tail call void @complete(ptr noundef %add_ctx) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_icosq_lock.i) #8
  %tobool25.not = icmp eq ptr %cseg.0.i, null
  br i1 %tobool25.not, label %post_rx_param_wqes.exit.if.end27_crit_edge, label %err_post_wqes

post_rx_param_wqes.exit.if.end27_crit_edge:       ; preds = %post_rx_param_wqes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %post_rx_param_wqes.exit.if.end27_crit_edge, %post_rx_param_wqes.exit.thread
  %101 = ptrtoint ptr %sw_stats16 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sw_stats16, align 4
  %rx_tls_ctx = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %102, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_tls_ctx, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_tls_ctx) #8
  br label %cleanup

err_post_wqes:                                    ; preds = %post_rx_param_wqes.exit
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %cseg.0.i to i32
  tail call void @mlx5e_tir_destroy(ptr noundef %tir) #8
  br label %err_create_tir

err_create_tir:                                   ; preds = %err_post_wqes, %mlx5e_ktls_sk_get_rxq.exit.err_create_tir_crit_edge
  %err.0 = phi i32 [ %call17, %mlx5e_ktls_sk_get_rxq.exit.err_create_tir_crit_edge ], [ %103, %err_post_wqes ]
  %104 = ptrtoint ptr %key_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %key_id, align 8
  tail call void @mlx5_ktls_destroy_key(ptr noundef %3, i32 noundef %105) #8
  br label %err_create_key

err_create_key:                                   ; preds = %err_create_tir, %if.end.err_create_key_crit_edge
  %err.1 = phi i32 [ %call7, %if.end.err_create_key_crit_edge ], [ %err.0, %err_create_tir ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_create_key, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_create_key ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ktls_create_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_tls_tir_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_tir_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ktls_destroy_key(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ktls_del_rx(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %tls_ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %priv_ctx_rx.i.i.i = getelementptr inbounds %struct.tls_context, ptr %tls_ctx, i32 0, i32 5
  %2 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %driver_state2.i.i = getelementptr inbounds %struct.tls_offload_context_rx, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %driver_state2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_state2.i.i, align 4
  %flags = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  %6 = ptrtoint ptr %priv_ctx_rx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_ctx_rx.i.i.i, align 4
  %driver_state2.i.i29 = getelementptr inbounds %struct.tls_offload_context_rx, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %driver_state2.i.i29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %driver_state2.i.i29, align 4
  tail call void @synchronize_net() #8
  %rule = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 1
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %rule) #8
  br i1 %call3, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add_ctx = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %add_ctx) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %work5 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 11, i32 1
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work5) #8
  br i1 %call6, label %if.then7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %refcnt.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end9_crit_edge, label %if.then10.i.i.i.i, !prof !33

if.end5.i.i.i.i.if.end9_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #8
  br label %if.end9

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @kfree(ptr noundef %5) #8
  br label %if.end9

if.end9:                                          ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %sw_stats = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %sw_stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sw_stats, align 4
  %rx_tls_del = getelementptr inbounds %struct.mlx5e_tls_sw_stats, ptr %11, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_tls_del, i32 noundef 8) #8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rx_tls_del) #8
  %rule11 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %rule11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rule11, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mlx5e_accel_fs_del_sk(ptr noundef nonnull %13) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %tir = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 6
  tail call void @mlx5e_tir_destroy(ptr noundef %tir) #8
  %key_id = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 7
  %14 = ptrtoint ptr %key_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_id, align 8
  tail call void @mlx5_ktls_destroy_key(ptr noundef %1, i32 noundef %15) #8
  %refcnt.i30 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %5, i32 0, i32 11, i32 3
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i30, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcnt.i30, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i30, ptr %refcnt.i30, i32 1, ptr elementtype(i32) %refcnt.i30) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i33, label %if.end.i37, label %if.end5.i.i.i.i35

if.end5.i.i.i.i35:                                ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i34, label %if.end5.i.i.i.i35.mlx5e_ktls_priv_rx_put.exit38_crit_edge, label %if.then10.i.i.i.i36, !prof !33

if.end5.i.i.i.i35.mlx5e_ktls_priv_rx_put.exit38_crit_edge: ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_ktls_priv_rx_put.exit38

if.then10.i.i.i.i36:                              ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i30, i32 noundef 3) #8
  br label %mlx5e_ktls_priv_rx_put.exit38

if.end.i37:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @kfree(ptr noundef %5) #8
  br label %mlx5e_ktls_priv_rx_put.exit38

mlx5e_ktls_priv_rx_put.exit38:                    ; preds = %if.end.i37, %if.then10.i.i.i.i36, %if.end5.i.i.i.i35.mlx5e_ktls_priv_rx_put.exit38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_accel_fs_del_sk(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5e_ktls_rx_handle_resync_list(ptr noundef %c, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %local_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %local_list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %local_list, i32 0, i32 1
  %1 = ptrtoint ptr %local_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %local_list, ptr %local_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %local_list, ptr %0, align 4
  %async_icosq = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 17
  %state = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 17, i32 10
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup66_crit_edge, label %if.end, !prof !37

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end:                                           ; preds = %entry
  %ktls_resync4 = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 17, i32 11
  %5 = ptrtoint ptr %ktls_resync4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ktls_resync4, align 16
  call void @_raw_spin_lock(ptr noundef %6) #8
  %list = getelementptr inbounds %struct.mlx5e_ktls_resync_resp, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  br label %for.cond

for.cond:                                         ; preds = %list_move.exit.for.cond_crit_edge, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %list_move.exit.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %8, %if.end ], [ %.pn, %list_move.exit.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 8
  %cmp.not = icmp eq ptr %.pn.in, %list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %16 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %local_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in, ptr noundef nonnull %local_list, ptr noundef %17) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn.in, ptr %prev1.i.i2.i, align 4
  %19 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %.pn.in, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %local_list, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %local_list to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %.pn.in, ptr %local_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %inc = add i32 %i.0, 1
  %cmp17 = icmp eq i32 %inc, %budget
  br i1 %cmp17, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.cond_crit_edge

list_move.exit.for.cond_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.in.lcssa = phi ptr [ %.pn.in, %list_move.exit.for.end_crit_edge ], [ %list, %for.cond.for.end_crit_edge ]
  %i.1 = phi i32 [ %budget, %list_move.exit.for.end_crit_edge ], [ %i.0, %for.cond.for.end_crit_edge ]
  %22 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %23, %list
  br i1 %cmp.i.not, label %if.then28, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @_clear_bit(i32 noundef 7, ptr noundef %state) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.end.if.end30_crit_edge
  call void @_raw_spin_unlock(ptr noundef %6) #8
  %async_icosq_lock = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 18
  call void @_raw_spin_lock(ptr noundef %async_icosq_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1)
  %cmp33125 = icmp sgt i32 %i.1, 0
  br i1 %cmp33125, label %for.body34.preheader, label %if.end30.if.end52_crit_edge

if.end30.if.end52_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

for.body34.preheader:                             ; preds = %if.end30
  %24 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %local_list, align 4
  %add.ptr38149 = getelementptr i8, ptr %25, i32 -368
  %lock39150 = getelementptr i8, ptr %25, i32 -180
  call void @_raw_spin_lock(ptr noundef %lock39150) #8
  %call40151 = call fastcc ptr @post_static_params(ptr noundef %async_icosq, ptr noundef %add.ptr38149)
  %cmp.i108152 = icmp ugt ptr %call40151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108152, label %for.body34.preheader.cleanup_crit_edge, label %for.body34.preheader.if.end44_crit_edge

for.body34.preheader.if.end44_crit_edge:          ; preds = %for.body34.preheader
  br label %if.end44

for.body34.preheader.cleanup_crit_edge:           ; preds = %for.body34.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body34:                                       ; preds = %for.inc47
  %26 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %local_list, align 4
  %add.ptr38 = getelementptr i8, ptr %27, i32 -368
  %lock39 = getelementptr i8, ptr %27, i32 -180
  call void @_raw_spin_lock(ptr noundef %lock39) #8
  %call40 = call fastcc ptr @post_static_params(ptr noundef %async_icosq, ptr noundef %add.ptr38)
  %cmp.i108 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %for.body34.cleanup_crit_edge, label %for.body34.if.end44_crit_edge

for.body34.if.end44_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

for.body34.cleanup_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44:                                         ; preds = %for.body34.if.end44_crit_edge, %for.body34.preheader.if.end44_crit_edge
  %call40155 = phi ptr [ %call40, %for.body34.if.end44_crit_edge ], [ %call40151, %for.body34.preheader.if.end44_crit_edge ]
  %lock39154 = phi ptr [ %lock39, %for.body34.if.end44_crit_edge ], [ %lock39150, %for.body34.preheader.if.end44_crit_edge ]
  %28 = phi ptr [ %27, %for.body34.if.end44_crit_edge ], [ %25, %for.body34.preheader.if.end44_crit_edge ]
  %j.0126153 = phi i32 [ %inc48, %for.body34.if.end44_crit_edge ], [ 0, %for.body34.preheader.if.end44_crit_edge ]
  %call.i.i109 = call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #8
  br i1 %call.i.i109, label %if.end.i.i112, label %if.end44.for.inc47_crit_edge

if.end44.for.inc47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc47

if.end.i.i112:                                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i110 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i110 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i110, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i111 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i111, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %for.inc47

cleanup:                                          ; preds = %for.body34.cleanup_crit_edge, %for.body34.preheader.cleanup_crit_edge
  %db_cseg.0127.lcssa = phi ptr [ null, %for.body34.preheader.cleanup_crit_edge ], [ %call40155, %for.body34.cleanup_crit_edge ]
  %j.0126.lcssa = phi i32 [ 0, %for.body34.preheader.cleanup_crit_edge ], [ %inc48, %for.body34.cleanup_crit_edge ]
  %.lcssa = phi ptr [ %25, %for.body34.preheader.cleanup_crit_edge ], [ %27, %for.body34.cleanup_crit_edge ]
  %lock39.lcssa = phi ptr [ %lock39150, %for.body34.preheader.cleanup_crit_edge ], [ %lock39, %for.body34.cleanup_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock39.lcssa) #8
  br label %for.end49

for.inc47:                                        ; preds = %if.end.i.i112, %if.end44.for.inc47_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %28, ptr %28, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock39154) #8
  %inc48 = add nuw nsw i32 %j.0126153, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc48, i32 %i.1)
  %exitcond.not = icmp eq i32 %inc48, %i.1
  br i1 %exitcond.not, label %for.inc47.for.end49_crit_edge, label %for.body34

for.inc47.for.end49_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end49

for.end49:                                        ; preds = %for.inc47.for.end49_crit_edge, %cleanup
  %37 = phi ptr [ %.lcssa, %cleanup ], [ %28, %for.inc47.for.end49_crit_edge ]
  %j.0124 = phi i32 [ %j.0126.lcssa, %cleanup ], [ %i.1, %for.inc47.for.end49_crit_edge ]
  %db_cseg.0122 = phi ptr [ %db_cseg.0127.lcssa, %cleanup ], [ %call40155, %for.inc47.for.end49_crit_edge ]
  %tobool50.not = icmp eq ptr %db_cseg.0122, null
  br i1 %tobool50.not, label %for.end49.if.end52_crit_edge, label %if.then51

for.end49.if.end52_crit_edge:                     ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then51:                                        ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #10
  %pc = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 17, i32 1
  %38 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pc, align 2
  %uar_map = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 17, i32 7
  %40 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %uar_map, align 32
  %fm_ce_se.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %db_cseg.0122, i32 0, i32 4
  %42 = ptrtoint ptr %fm_ce_se.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %fm_ce_se.i, align 1
  %44 = or i8 %43, 8
  store i8 %44, ptr %fm_ce_se.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %conv2.i = zext i16 %39 to i32
  %db.i = getelementptr inbounds %struct.mlx5e_channel, ptr %c, i32 0, i32 17, i32 6, i32 1
  %45 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %db.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv2.i, ptr %46, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  call void @arm_heavy_mb() #8
  %48 = ptrtoint ptr %db_cseg.0122 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %db_cseg.0122, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %49) #8, !srcloc !45
  %arrayidx1.i.i = getelementptr i32, ptr %db_cseg.0122, i32 1
  %50 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %51) #8, !srcloc !45
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %for.end49.if.end52_crit_edge, %if.end30.if.end52_crit_edge
  %52 = phi ptr [ %37, %if.then51 ], [ %37, %for.end49.if.end52_crit_edge ], [ %.pn.in.lcssa, %if.end30.if.end52_crit_edge ]
  %j.0124138 = phi i32 [ %j.0124, %if.then51 ], [ %j.0124, %for.end49.if.end52_crit_edge ], [ 0, %if.end30.if.end52_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %async_icosq_lock) #8
  %conv = zext i32 %j.0124138 to i64
  %rq_stats = getelementptr i8, ptr %52, i32 -272
  %53 = ptrtoint ptr %rq_stats to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rq_stats, align 8
  %tls_resync_res_ok = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %54, i32 0, i32 41
  %55 = ptrtoint ptr %tls_resync_res_ok to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %tls_resync_res_ok, align 8
  %add = add i64 %56, %conv
  store i64 %add, ptr %tls_resync_res_ok, align 8
  %57 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %local_list, align 4
  %cmp.i114.not = icmp eq ptr %58, %local_list
  br i1 %cmp.i114.not, label %if.end52.if.end63_crit_edge, label %if.then56

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then56:                                        ; preds = %if.end52
  call void @_raw_spin_lock(ptr noundef %6) #8
  %59 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %local_list, align 4
  %cmp.i.not.i = icmp eq ptr %60, %local_list
  br i1 %cmp.i.not.i, label %if.then56.list_splice.exit_crit_edge, label %if.then.i

if.then56.list_splice.exit_crit_edge:             ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice.exit

if.then.i:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %list, align 4
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %60, ptr %list, align 4
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %62, ptr %64, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %if.then56.list_splice.exit_crit_edge
  call void @_set_bit(i32 noundef 7, ptr noundef %state) #8
  call void @_raw_spin_unlock(ptr noundef %6) #8
  %68 = ptrtoint ptr %rq_stats to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rq_stats, align 8
  %tls_resync_res_retry = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %69, i32 0, i32 42
  %70 = ptrtoint ptr %tls_resync_res_retry to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %tls_resync_res_retry, align 8
  %inc62 = add i64 %71, 1
  store i64 %inc62, ptr %tls_resync_res_retry, align 8
  br label %if.end63

if.end63:                                         ; preds = %list_splice.exit, %if.end52.if.end63_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %budget)
  %cmp64 = icmp eq i32 %i.1, %budget
  br label %cleanup66

cleanup66:                                        ; preds = %if.end63, %entry.cleanup66_crit_edge
  %retval.0 = phi i1 [ %cmp64, %if.end63 ], [ false, %entry.cleanup66_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %local_list) #8
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @post_static_params(ptr nocapture noundef %sq, ptr noundef %priv_rx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reserved_room.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 9
  %0 = ptrtoint ptr %reserved_room.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reserved_room.i, align 8
  %add.i = add i16 %1, 5
  %2 = ptrtoint ptr %sq to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sq, align 128
  %pc.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 1
  %4 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %pc.i, align 2
  %sub.i7.i = sub i16 %3, %5
  %sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 1
  %6 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sz_m1.i.i.i, align 4
  %8 = trunc i32 %7 to i16
  %conv1.i.i.i = and i16 %sub.i7.i, %8
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i.i.i, i16 %add.i)
  %cmp.not.i.i = icmp uge i16 %conv1.i.i.i, %add.i
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp8.i.i = icmp eq i16 %3, %5
  %spec.select.i.i = or i1 %cmp8.i.i, %cmp.not.i.i
  br i1 %spec.select.i.i, label %if.end, label %entry.cleanup_crit_edge, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %wq1.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6
  %conv1.i.i = and i16 %5, %8
  %conv.i.i = zext i16 %conv1.i.i to i32
  %strides_offset.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 3
  %9 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %10 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, %conv.i.i
  %frag_sz_m1.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 2
  %11 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv1.i.i.i33 = zext i16 %12 to i32
  %or.i.i.i = or i32 %add.i.i.i, %conv1.i.i.i33
  %sub.i.i.i = sub nsw i32 %or.i.i.i, %conv.i.i.i
  %13 = tail call i32 @llvm.umin.i32(i32 %sub.i.i.i, i32 %7) #8
  %14 = trunc i32 %13 to i16
  %15 = sub i16 1, %conv1.i.i
  %conv2.i.i = add i16 %15, %14
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %conv2.i.i)
  %cmp.i = icmp ult i16 %conv2.i.i, 3
  br i1 %cmp.i, label %if.then.i, label %if.end.mlx5e_icosq_get_next_pi.exit_crit_edge, !prof !37

if.end.mlx5e_icosq_get_next_pi.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_icosq_get_next_pi.exit

if.then.i:                                        ; preds = %if.end
  %conv.i = zext i16 %conv2.i.i to i32
  %db.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 5
  %16 = ptrtoint ptr %db.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %db.i, align 128
  %arrayidx.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %17, i32 %conv.i.i
  %add.ptr.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %arrayidx.i, i32 %conv.i
  %cmp729.i = icmp ult ptr %arrayidx.i, %add.ptr.i
  br i1 %cmp729.i, label %for.body.lr.ph.i, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %sqn.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %wi.030.i = phi ptr [ %arrayidx.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %wi.030.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %wi.030.i, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %wi.030.i, i32 1
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds i8, ptr %wi.030.i, i32 4
  %20 = ptrtoint ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 0, ptr %.compoundliteral.sroa.3.sroa.1.0..compoundliteral.sroa.3.0..sroa_idx.sroa_idx.i, align 2
  %21 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sqn.i, align 4
  tail call fastcc void @mlx5e_post_nop(ptr noundef %wq1.i, i32 noundef %22, ptr noundef %pc.i) #8
  %incdec.ptr.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %wi.030.i, i32 1
  %cmp7.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.i.for.end.i_crit_edge
  %23 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pc.i, align 2
  %25 = ptrtoint ptr %sz_m1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sz_m1.i.i.i, align 4
  %27 = trunc i32 %26 to i16
  %conv1.i28.i = and i16 %24, %27
  %.pre = zext i16 %conv1.i28.i to i32
  br label %mlx5e_icosq_get_next_pi.exit

mlx5e_icosq_get_next_pi.exit:                     ; preds = %for.end.i, %if.end.mlx5e_icosq_get_next_pi.exit_crit_edge
  %conv.i.i34.pre-phi = phi i32 [ %conv.i.i, %if.end.mlx5e_icosq_get_next_pi.exit_crit_edge ], [ %.pre, %for.end.i ]
  %28 = ptrtoint ptr %strides_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %strides_offset.i.i.i, align 2
  %conv.i.i.i36 = zext i16 %29 to i32
  %add.i.i.i37 = add nuw nsw i32 %conv.i.i34.pre-phi, %conv.i.i.i36
  %log_frag_strides.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 6
  %30 = ptrtoint ptr %log_frag_strides.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %log_frag_strides.i.i.i, align 2
  %conv1.i.i.i38 = zext i8 %31 to i32
  %shr.i.i.i = lshr i32 %add.i.i.i37, %conv1.i.i.i38
  %32 = ptrtoint ptr %wq1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wq1.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %33, i32 %shr.i.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i.i.i, align 4
  %36 = ptrtoint ptr %frag_sz_m1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %frag_sz_m1.i.i.i, align 4
  %conv2.i.i.i = zext i16 %37 to i32
  %and.i.i.i = and i32 %add.i.i.i37, %conv2.i.i.i
  %log_stride.i.i.i = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 6, i32 0, i32 5
  %38 = ptrtoint ptr %log_stride.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %log_stride.i.i.i, align 1
  %conv3.i.i.i = zext i8 %39 to i32
  %shl.i.i.i = shl i32 %and.i.i.i, %conv3.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %35, i32 %shl.i.i.i
  %40 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 192)
  %41 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pc.i, align 2
  %sqn = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 8
  %43 = ptrtoint ptr %sqn to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sqn, align 4
  %tirn.i = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %priv_rx, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tirn.i, align 4
  %key_id = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %priv_rx, i32 0, i32 7
  %47 = ptrtoint ptr %key_id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %key_id, align 8
  %seq = getelementptr inbounds %struct.mlx5e_ktls_offload_context_rx, ptr %priv_rx, i32 0, i32 11, i32 5
  %49 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %seq, align 8
  tail call void @mlx5e_ktls_build_static_params(ptr noundef %add.ptr.i.i.i, i16 noundef zeroext %42, i32 noundef %44, ptr noundef %priv_rx, i32 noundef %46, i32 noundef %48, i32 noundef %50, i1 noundef zeroext false, i32 noundef 0) #8
  %db.i40 = getelementptr inbounds %struct.mlx5e_icosq, ptr %sq, i32 0, i32 5
  %51 = ptrtoint ptr %db.i40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %db.i40, align 128
  %arrayidx.i41 = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %52, i32 %conv.i.i34.pre-phi
  %53 = ptrtoint ptr %priv_rx to i32
  %54 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 50593791, ptr %arrayidx.i41, align 4
  %arrayidx.i41.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i41, i32 4
  %55 = ptrtoint ptr %arrayidx.i41.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %53, ptr %arrayidx.i41.sroa_idx, align 4
  %56 = ptrtoint ptr %pc.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pc.i, align 2
  %add = add i16 %57, 3
  store i16 %add, ptr %pc.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_icosq_get_next_pi.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr.i.i.i, %mlx5e_icosq_get_next_pi.exit ], [ inttoptr (i32 -28 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_trigger_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet6_lookup_established(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_gen_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__inet_lookup_established(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @accel_rule_handle_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 144
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge, !prof !33

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.accel_rule, ptr %work, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %sk = getelementptr i8, ptr %work, i32 52
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 4
  %tirn.i = getelementptr i8, ptr %work, i32 124
  %6 = ptrtoint ptr %tirn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tirn.i, align 4
  %call7 = tail call ptr @mlx5e_accel_fs_add_sk(ptr noundef %3, ptr noundef %5, i32 noundef %7, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call7, null
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.end.out_crit_edge, label %if.then9

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rule10 = getelementptr inbounds %struct.accel_rule, ptr %work, i32 0, i32 2
  %8 = ptrtoint ptr %rule10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %rule10, align 4
  br label %out

out:                                              ; preds = %if.then9, %if.end.out_crit_edge, %entry.out_crit_edge
  %add_ctx = getelementptr i8, ptr %work, i32 64
  tail call void @complete(ptr noundef %add_ctx) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_accel_fs_add_sk(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @resync_handle_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -296
  %flags = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mlx5e_ktls_priv_rx_put(ptr noundef %add.ptr3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %channels = getelementptr inbounds %struct.mlx5e_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 128
  %rxq = getelementptr i8, ptr %work, i32 -116
  %6 = ptrtoint ptr %rxq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxq, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %async_icosq = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 256) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then10_crit_edge, label %if.end.i, !prof !37

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.end.i:                                         ; preds = %if.end
  %channel.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 13
  %11 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel.i, align 8
  %priv.i = getelementptr inbounds %struct.mlx5e_channel, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i, align 4
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdev.i, align 64
  %pdev.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !33

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev1.i.i) #8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44, i32 3
  %19 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %22, %if.end.i.i.i ], [ %20, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %dma_addr106.i = getelementptr inbounds %struct.mlx5e_ktls_rx_resync_buf, ptr %call7.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %dma_addr106.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %dma_addr106.i, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i, i32 noundef -1) #8
  br label %err_free.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  tail call void @debug_dma_map_single(ptr noundef %dev1.i.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 64) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %call7.i.i.i to i32
  %sub.i.i = add i32 %25, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %24, i32 %shr.i.i
  %and.i.i = and i32 %25, 4088
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev1.i.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef 64, i32 noundef 2, i32 noundef 0) #8
  %dma_addr.i = getelementptr inbounds %struct.mlx5e_ktls_rx_resync_buf, ptr %call7.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call41.i.i, ptr %dma_addr.i, align 128
  tail call void @debug_dma_mapping_error(ptr noundef %dev1.i.i, i32 noundef %call41.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.err_free.i_crit_edge, label %if.end16.i

dma_map_single_attrs.exit.i.err_free.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free.i

if.end16.i:                                       ; preds = %dma_map_single_attrs.exit.i
  %priv_rx17.i = getelementptr inbounds %struct.mlx5e_ktls_rx_resync_buf, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %priv_rx17.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr3, ptr %priv_rx17.i, align 4
  %28 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel.i, align 8
  %async_icosq_lock.i = getelementptr inbounds %struct.mlx5e_channel, ptr %29, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %async_icosq_lock.i) #8
  %reserved_room.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 9
  %30 = ptrtoint ptr %reserved_room.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %reserved_room.i.i, align 8
  %add.i.i = add i16 %31, 1
  %32 = ptrtoint ptr %async_icosq to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %async_icosq, align 128
  %pc.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 1
  %34 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %pc.i.i, align 2
  %sub.i7.i.i = sub i16 %33, %35
  %sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 6, i32 0, i32 1
  %36 = ptrtoint ptr %sz_m1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sz_m1.i.i.i.i, align 4
  %38 = trunc i32 %37 to i16
  %conv1.i.i.i.i = and i16 %sub.i7.i.i, %38
  call void @__sanitizer_cov_trace_cmp2(i16 %conv1.i.i.i.i, i16 %add.i.i)
  %cmp.not.i.i.i = icmp uge i16 %conv1.i.i.i.i, %add.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %33, i16 %35)
  %cmp8.i.i.i = icmp eq i16 %33, %35
  %spec.select.i.i.i = or i1 %cmp8.i.i.i, %cmp.not.i.i.i
  br i1 %spec.select.i.i.i, label %if.end31.i, label %if.then28.i, !prof !33

if.then28.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %channel.i, align 8
  %async_icosq_lock30.i = getelementptr inbounds %struct.mlx5e_channel, ptr %40, i32 0, i32 18
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_icosq_lock30.i) #8
  %41 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_addr.i, align 128
  tail call void @dma_unmap_page_attrs(ptr noundef %dev1.i.i, i32 noundef %42, i32 noundef 64, i32 noundef 2, i32 noundef 0) #8
  br label %err_free.i

if.end31.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %wq1.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 6
  %conv1.i.i.i = and i16 %35, %38
  %conv.i.i.i = zext i16 %conv1.i.i.i to i32
  %strides_offset.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 6, i32 0, i32 3
  %43 = ptrtoint ptr %strides_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %strides_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %44 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i.i, %conv.i.i.i
  %frag_sz_m1.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 6, i32 0, i32 2
  %45 = ptrtoint ptr %frag_sz_m1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %frag_sz_m1.i.i.i.i, align 4
  %conv1.i.i.i92.i = zext i16 %46 to i32
  %log_frag_strides.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 6, i32 0, i32 6
  %47 = ptrtoint ptr %log_frag_strides.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %log_frag_strides.i.i.i.i, align 2
  %conv1.i.i.i100.i = zext i8 %48 to i32
  %shr.i.i.i.i = lshr i32 %add.i.i.i.i, %conv1.i.i.i100.i
  %49 = ptrtoint ptr %wq1.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wq1.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.mlx5_buf_list, ptr %50, i32 %shr.i.i.i.i
  %51 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %add.i.i.i.i, %conv1.i.i.i92.i
  %log_stride.i.i.i.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 6, i32 0, i32 5
  %53 = ptrtoint ptr %log_stride.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %log_stride.i.i.i.i, align 1
  %conv3.i.i.i.i = zext i8 %54 to i32
  %shl.i.i.i.i = shl i32 %and.i.i.i.i, %conv3.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %52, i32 %shl.i.i.i.i
  %55 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 64)
  %56 = ptrtoint ptr %pc.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pc.i.i, align 2
  %conv.i = zext i16 %57 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %or34.i = or i32 %shl.i, 33554465
  %58 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or34.i, ptr %add.ptr.i.i.i.i, align 4
  %sqn.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 8
  %59 = ptrtoint ptr %sqn.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sqn.i, align 4
  %shl35.i = shl i32 %60, 8
  %or36.i = or i32 %shl35.i, 4
  %qpn_ds.i = getelementptr %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or36.i, ptr %qpn_ds.i, align 4
  %num_psv.i = getelementptr inbounds %struct.mlx5e_get_tls_progress_params_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %num_psv.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 16, ptr %num_psv.i, align 1
  %63 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %channel.i, align 8
  %mkey_be.i = getelementptr inbounds %struct.mlx5e_channel, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %mkey_be.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mkey_be.i, align 16
  %l_key.i = getelementptr inbounds %struct.mlx5e_get_tls_progress_params_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %l_key.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %l_key.i, align 4
  %tirn.i.i = getelementptr i8, ptr %work, i32 -132
  %68 = ptrtoint ptr %tirn.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tirn.i.i, align 4
  %psv_index.i = getelementptr inbounds %struct.mlx5e_get_tls_progress_params_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 4
  %70 = ptrtoint ptr %psv_index.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %psv_index.i, align 8
  %71 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_addr.i, align 128
  %conv41.i = zext i32 %72 to i64
  %va.i = getelementptr inbounds %struct.mlx5e_get_tls_progress_params_wqe, ptr %add.ptr.i.i.i.i, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %va.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv41.i, ptr %va.i, align 8
  %db.i102.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 5
  %74 = ptrtoint ptr %db.i102.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %db.i102.i, align 128
  %arrayidx.i103.i = getelementptr %struct.mlx5e_icosq_wqe_info, ptr %75, i32 %conv.i.i.i
  %76 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 84017151, ptr %arrayidx.i103.i, align 4
  %arrayidx.i103.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i103.i, i32 4
  %77 = ptrtoint ptr %arrayidx.i103.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %25, ptr %arrayidx.i103.sroa_idx.i, align 4
  %78 = load i16, ptr %pc.i.i, align 2
  %inc.i = add i16 %78, 1
  store i16 %inc.i, ptr %pc.i.i, align 2
  %uar_map.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 7
  %79 = ptrtoint ptr %uar_map.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %uar_map.i, align 32
  %fm_ce_se.i.i = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %fm_ce_se.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fm_ce_se.i.i, align 1
  %83 = or i8 %82, 8
  store i8 %83, ptr %fm_ce_se.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %conv2.i.i = zext i16 %inc.i to i32
  %db.i104.i = getelementptr inbounds %struct.mlx5e_channel, ptr %9, i32 0, i32 17, i32 6, i32 1
  %84 = ptrtoint ptr %db.i104.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %db.i104.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv2.i.i, ptr %85, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  tail call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %add.ptr.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %88) #8, !srcloc !45
  %89 = ptrtoint ptr %qpn_ds.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %qpn_ds.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %80, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %90) #8, !srcloc !45
  %91 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %channel.i, align 8
  %async_icosq_lock47.i = getelementptr inbounds %struct.mlx5e_channel, ptr %92, i32 0, i32 18
  tail call void @_raw_spin_unlock_bh(ptr noundef %async_icosq_lock47.i) #8
  br label %cleanup

err_free.i:                                       ; preds = %if.then28.i, %dma_map_single_attrs.exit.i.err_free.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.then10

if.then10:                                        ; preds = %err_free.i, %if.end.if.then10_crit_edge
  %rq_stats.i = getelementptr i8, ptr %work, i32 -200
  %93 = ptrtoint ptr %rq_stats.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rq_stats.i, align 8
  %tls_resync_req_skip.i = getelementptr inbounds %struct.mlx5e_rq_stats, ptr %94, i32 0, i32 40
  %95 = ptrtoint ptr %tls_resync_req_skip.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %tls_resync_req_skip.i, align 8
  %inc49.i = add i64 %96, 1
  store i64 %inc49.i, ptr %tls_resync_req_skip.i, align 8
  %refcnt.i = getelementptr i8, ptr %work, i32 48
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %97 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !35
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i21, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !33

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #8
  br label %cleanup

if.end.i21:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  tail call void @kfree(ptr noundef %add.ptr3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i21, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end31.i, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mlx5e_post_nop(ptr nocapture noundef readonly %wq, i32 noundef %sqn, ptr nocapture noundef %pc) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pc, align 2
  %sz_m1.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 1
  %2 = ptrtoint ptr %sz_m1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sz_m1.i, align 4
  %4 = trunc i32 %3 to i16
  %conv1.i = and i16 %1, %4
  %conv.i = zext i16 %conv1.i to i32
  %strides_offset.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 3
  %5 = ptrtoint ptr %strides_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %strides_offset.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %add.i.i = add nuw nsw i32 %conv.i, %conv.i.i
  %log_frag_strides.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 6
  %7 = ptrtoint ptr %log_frag_strides.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %log_frag_strides.i.i, align 2
  %conv1.i.i = zext i8 %8 to i32
  %shr.i.i = lshr i32 %add.i.i, %conv1.i.i
  %9 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wq, align 4
  %arrayidx.i.i = getelementptr %struct.mlx5_buf_list, ptr %10, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %frag_sz_m1.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 2
  %13 = ptrtoint ptr %frag_sz_m1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %frag_sz_m1.i.i, align 4
  %conv2.i.i = zext i16 %14 to i32
  %and.i.i = and i32 %add.i.i, %conv2.i.i
  %log_stride.i.i = getelementptr inbounds %struct.mlx5_frag_buf_ctrl, ptr %wq, i32 0, i32 5
  %15 = ptrtoint ptr %log_stride.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %log_stride.i.i, align 1
  %conv3.i.i = zext i8 %16 to i32
  %shl.i.i = shl i32 %and.i.i, %conv3.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %shl.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 16)
  %18 = load i16, ptr %pc, align 2
  %conv = zext i16 %18 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl, ptr %add.ptr.i.i, align 4
  %shl2 = shl i32 %sqn, 8
  %or3 = or i32 %shl2, 1
  %qpn_ds = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, ptr %add.ptr.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %qpn_ds to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or3, ptr %qpn_ds, align 4
  %21 = load i16, ptr %pc, align 2
  %inc = add i16 %21, 1
  store i16 %inc, ptr %pc, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_build_progress_params(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ktls_build_static_params(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !14, !16, !17, !19, !20, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @mlx5e_ktls_rx_resync_create_resp_list.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_rx.c", i32 98, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mlx5e_ktls_add_rx.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_rx.c", i32 606, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!8 = !{ptr @init_completion.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../include/linux/completion.h", i32 87, i32 2}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @accel_rule_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_rx.c", i32 125, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @resync_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ktls_rx.c", i32 355, i32 2}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/txrx.h", i32 450, i32 3}
!23 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148540342}
!35 = !{i64 2148454806, i64 2148454838, i64 2148454867, i64 2148454901, i64 2148454932, i64 2148454955}
!36 = !{i64 2150590604}
!37 = !{!"branch_weights", i32 1, i32 2000}
!38 = !{i64 2155733809}
!39 = !{i64 960303, i64 960324, i64 960347, i64 960366, i64 960385}
!40 = !{i64 2155734214}
!41 = !{!"auto-init"}
!42 = !{i64 2148452341, i64 2148452373, i64 2148452402, i64 2148452436, i64 2148452467, i64 2148452490}
!43 = !{i64 2160162928}
!44 = !{i64 2160163122}
!45 = !{i64 6094644}
