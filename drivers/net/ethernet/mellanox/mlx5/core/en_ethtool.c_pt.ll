; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ptys2ethtool_config = type { [3 x i32], [3 x i32] }
%struct.pflag_desc = type { [32 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_link_ext_state_opcode_mapping = type { i32, i32, i8 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.177, %struct.anon.191, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.177 = type { %struct.anon.184 }
%struct.anon.184 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
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
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.174, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.174 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.180, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.183, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i8, i8, i16, i32 }
%union.anon.183 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.192, i32 }
%union.anon.192 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.175, i32, i32 }
%union.anon.175 = type { ptr }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.162, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.164, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.162 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_init_seg = type { i32, i32, [2 x i32], i32, i32, i32, [120 x i32], i32, %struct.health_buffer, [878 x i32], i32, i32, i32, i32, [2 x i32], i32, [11 x i32], i32, i32, [1006 x i32], i64, i32, i32 }
%struct.health_buffer = type { [6 x i32], [2 x i32], i32, i32, [1 x i32], i32, i32, i32, i8, [3 x i8], i8, i8, i16 }
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
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_ethtool_coalesce = type { i8, i8 }
%struct.mlx5e_channel = type { %struct.mlx5e_rq, %struct.mlx5e_xdpsq, [8 x %struct.mlx5e_txqsq], %struct.mlx5e_icosq, ptr, i8, %struct.napi_struct, ptr, ptr, i32, i16, i8, i8, [8 x i8], %struct.mlx5e_xdpsq, %struct.mlx5e_rq, %struct.mlx5e_xdpsq, %struct.mlx5e_icosq, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, [1 x i32], i32, i32, %struct.mutex, [88 x i8] }
%struct.mlx5e_txqsq = type { i16, i16, i32, %struct.dim, [120 x i8], i16, i16, i32, %struct.mlx5e_tx_mpwqe, [108 x i8], %struct.mlx5e_cq, %struct.mlx5_wq_cyc, i32, ptr, %struct.anon.176, ptr, ptr, i32, i16, i8, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, i32, i32, i32, %struct.work_struct, ptr, ptr, [44 x i8] }
%struct.mlx5e_tx_mpwqe = type { ptr, i32, i8, i8, i8 }
%struct.mlx5_wq_cyc = type { %struct.mlx5_frag_buf_ctrl, ptr, i16, i16, i16 }
%struct.anon.176 = type { ptr, %struct.mlx5e_skb_fifo, ptr }
%struct.mlx5e_skb_fifo = type { ptr, ptr, ptr, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.mlx5e_xdpsq = type { i32, i16, [122 x i8], i32, i16, ptr, %struct.mlx5e_tx_mpwqe, [104 x i8], %struct.mlx5e_cq, ptr, %struct.mlx5_wq_cyc, ptr, ptr, ptr, %struct.anon.205, ptr, i32, ptr, i32, i8, i32, i32, %struct.mlx5_wq_ctrl, ptr, [124 x i8] }
%struct.anon.205 = type { ptr, %struct.mlx5e_xdp_info_fifo }
%struct.mlx5e_xdp_info_fifo = type { ptr, ptr, ptr, i32 }
%struct.mlx5e_icosq = type { i16, i16, ptr, [120 x i8], %struct.mlx5e_cq, %struct.anon.195, %struct.mlx5_wq_cyc, ptr, i32, i16, i32, ptr, %struct.mlx5_wq_ctrl, ptr, %struct.work_struct, [120 x i8] }
%struct.anon.195 = type { ptr }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.159, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.159 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.mlx5e_port_eth_proto = type { i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.ethtool_flash = type { i32, i32, [128 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5e_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.158, [0 x i32] }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%union.anon.158 = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_link_ext_state_info = type { i32, %union.anon.157 }
%union.anon.157 = type { i32 }
%struct.ethtool_modinfo = type { i32, i32, i32, [8 x i32] }
%struct.ethtool_eeprom = type { i32, i32, i32, i32, [0 x i8] }
%struct.ethtool_tunable = type { i32, i32, i32, i32, [0 x ptr] }
%struct.ethtool_fecparam = type { i32, i32, i32, i32 }
%struct.mlx5_module_eeprom_query_params = type { i16, i16, i16, i32, i32, i32 }
%struct.ethtool_module_eeprom = type { i32, i32, i8, i8, i8, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%d.%d.%04d (%.16s)\00", [45 x i8] zeroinitializer }, align 32
@ptys2legacy_ethtool_table = internal global { [32 x %struct.ptys2ethtool_config], [192 x i8] } zeroinitializer, align 32
@ptys2ext_ethtool_table = internal global { [17 x %struct.ptys2ethtool_config], [104 x i8] } zeroinitializer, align 32
@mlx5e_priv_flags = internal constant { [8 x %struct.pflag_desc], [64 x i8] } { [8 x %struct.pflag_desc] [%struct.pflag_desc { [32 x i8] c"rx_cqe_moder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_rx_cqe_based_moder }, %struct.pflag_desc { [32 x i8] c"tx_cqe_moder\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_tx_cqe_based_moder }, %struct.pflag_desc { [32 x i8] c"rx_cqe_compress\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_rx_cqe_compress }, %struct.pflag_desc { [32 x i8] c"rx_striding_rq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_rx_striding_rq }, %struct.pflag_desc { [32 x i8] c"rx_no_csum_complete\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_rx_no_csum_complete }, %struct.pflag_desc { [32 x i8] c"xdp_tx_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_xdp_tx_mpwqe }, %struct.pflag_desc { [32 x i8] c"skb_tx_mpwqe\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_skb_tx_mpwqe }, %struct.pflag_desc { [32 x i8] c"tx_port_ts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @set_pflag_tx_port_ts }], [64 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: rx_jumbo_pending not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_set_ringparam = private unnamed_addr constant [28 x i8] c"mlx5e_ethtool_set_ringparam\00", align 1
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: rx_mini_pending not supported\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: rx_pending (%d) < min (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: tx_pending (%d) < min (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: combined_count=0 not supported\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_set_channels = private unnamed_addr constant [27 x i8] c"mlx5e_ethtool_set_channels\00", align 1
@.str.45 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: AF_XDP is active, cannot change the number of channels\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: HTB offload is active, cannot change the number of channels\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s: Non-default RSS contexts exist (%d), cannot change the number of channels\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: MQPRIO mode channel offload is active, cannot change the number of channels\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: mlx5e_arfs_enable failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: maximum coalesce time supported is %lu usecs\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_set_coalesce = private unnamed_addr constant [27 x i8] c"mlx5e_ethtool_set_coalesce\00", align 1
@.str.51 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: maximum coalesced frames supported is %lu\0A\00", [49 x i8] zeroinitializer }, align 32
@mlx5e_ethtool_set_coalesce.__msg = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"mlx5_core: cqe_mode_rx/tx is not supported on this device\00", [38 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: query port ptys failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_get_link_ksettings = private unnamed_addr constant [33 x i8] c"mlx5e_ethtool_get_link_ksettings\00", align 1
@mlx5e_ethtool_get_link_ksettings.__UNIQUE_ID_ddebug640 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.mlx5e_ethtool_get_link_ksettings, ptr @.str.53, ptr @.str.54, i8 1, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: FEC caps query failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: query port eth proto failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_set_link_ksettings = private unnamed_addr constant [33 x i8] c"mlx5e_ethtool_set_link_ksettings\00", align 1
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Not supported link mode(s) requested\00", [55 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: mlx5_query_port_pause failed:0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_get_pauseparam = private unnamed_addr constant [29 x i8] c"mlx5e_ethtool_get_pauseparam\00", align 1
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: mlx5_set_port_pause failed:0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_set_pauseparam = private unnamed_addr constant [29 x i8] c"mlx5e_ethtool_set_pauseparam\00", align 1
@.str.59 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"Profile doesn't support enabling of CQE compression while hardware time-stamping is enabled.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Can't set CQE compression with HW-GRO, disable it first.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MLX5E: RxCqeCmprss was turned %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@mlx5e_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 12584499, i32 0, ptr @mlx5e_get_drvinfo, ptr null, ptr null, ptr @mlx5e_get_wol, ptr @mlx5e_set_wol, ptr @mlx5e_get_msglevel, ptr @mlx5e_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr @mlx5e_get_link_ext_state, ptr null, ptr null, ptr null, ptr @mlx5e_get_coalesce, ptr @mlx5e_set_coalesce, ptr @mlx5e_get_ringparam, ptr @mlx5e_set_ringparam, ptr @mlx5e_get_pause_stats, ptr @mlx5e_get_pauseparam, ptr @mlx5e_set_pauseparam, ptr @mlx5e_self_test, ptr @mlx5e_get_strings, ptr @mlx5e_set_phys_id, ptr @mlx5e_get_ethtool_stats, ptr null, ptr null, ptr @mlx5e_get_priv_flags, ptr @mlx5e_set_priv_flags, ptr @mlx5e_get_sset_count, ptr @mlx5e_get_rxnfc, ptr @mlx5e_set_rxnfc, ptr @mlx5e_flash_device, ptr null, ptr @mlx5e_get_rxfh_key_size, ptr @mlx5e_get_rxfh_indir_size, ptr @mlx5e_get_rxfh, ptr @mlx5e_set_rxfh, ptr @mlx5e_get_rxfh_context, ptr @mlx5e_set_rxfh_context, ptr @mlx5e_get_channels, ptr @mlx5e_set_channels, ptr null, ptr null, ptr null, ptr @mlx5e_get_ts_info, ptr @mlx5e_get_module_info, ptr @mlx5e_get_module_eeprom, ptr null, ptr null, ptr @mlx5e_get_tunable, ptr @mlx5e_set_tunable, ptr null, ptr null, ptr @mlx5e_get_link_ksettings, ptr @mlx5e_set_link_ksettings, ptr @mlx5e_get_fec_stats, ptr @mlx5e_get_fecparam, ptr @mlx5e_set_fecparam, ptr null, ptr null, ptr null, ptr @mlx5e_get_module_eeprom_by_page, ptr @mlx5e_get_eth_phy_stats, ptr @mlx5e_get_eth_mac_stats, ptr @mlx5e_get_eth_ctrl_stats, ptr @mlx5e_get_rmon_stats, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ptys2connector_type = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 255, i32 239, i32 0, i32 1, i32 4, i32 2, i32 3, i32 5, i32 255], [60 x i8] zeroinitializer }, align 32
@pplm_fec_2_ethtool_linkmodes = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 49, i32 51, i32 50, i32 0, i32 0, i32 0, i32 0, i32 50, i32 0, i32 74], [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: 56G link speed requires autoneg enabled\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.mlx5e_speed_validate = private unnamed_addr constant [21 x i8] c"mlx5e_speed_validate\00", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Can't set legacy RQ with HW-GRO/LRO, disable them first\0A\00", [39 x i8] zeroinitializer }, align 32
@elfcorehdr_addr = external dso_local local_unnamed_addr global i64, align 8
@.str.66 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: HTB offload is active, cannot change the PTP state\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.set_pflag_tx_port_ts = private unnamed_addr constant [21 x i8] c"set_pflag_tx_port_ts\00", align 1
@.str.67 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s: MQPRIO mode channel offload is active, cannot set the TX-port-TS\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx5e_link_ext_state_opcode_map = internal constant { [30 x %struct.mlx5e_ethtool_link_ext_state_opcode_mapping], [88 x i8] } { [30 x %struct.mlx5e_ethtool_link_ext_state_opcode_mapping] [%struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 2, i32 0, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 3, i32 0, i8 2 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 4, i32 0, i8 3 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 36, i32 0, i8 4 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 38, i32 0, i8 5 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 39, i32 0, i8 6 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 5, i32 1, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 6, i32 1, i8 2 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 7, i32 1, i8 3 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 8, i32 1, i8 0 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 14, i32 1, i8 4 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 9, i32 2, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 10, i32 2, i8 2 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 11, i32 2, i8 3 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 12, i32 2, i8 4 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 13, i32 2, i8 5 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 15, i32 3, i8 0 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 17, i32 3, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 42, i32 3, i8 2 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 1024, i32 4, i8 0 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 16, i32 5, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 20, i32 5, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 29, i32 5, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 1025, i32 5, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 1029, i32 5, i8 1 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 1031, i32 5, i8 0 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 1027, i32 6, i8 0 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 23, i32 7, i8 0 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 1032, i32 8, i8 0 }, %struct.mlx5e_ethtool_link_ext_state_opcode_mapping { i32 1030, i32 9, i8 0 }], [88 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s private flag '%s' failed err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: cable type not recognized:0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.mlx5e_get_module_info = private unnamed_addr constant [22 x i8] c"mlx5e_get_module_info\00", align 1
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: mlx5_query_eeprom failed:0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.mlx5e_get_module_eeprom = private unnamed_addr constant [24 x i8] c"mlx5e_get_module_eeprom\00", align 1
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: pfc prevention tout not in range (%d-%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.mlx5e_set_pfc_prevention_tout = private unnamed_addr constant [30 x i8] c"mlx5e_set_pfc_prevention_tout\00", align 1
@pplm_fec_2_ethtool = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 4, i32 16, i32 8, i32 0, i32 0, i32 0, i32 0, i32 8, i32 0, i32 32], [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: mlx5_query_module_eeprom_by_page failed:0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.mlx5e_get_module_eeprom_by_page = private unnamed_addr constant [32 x i8] c"mlx5e_get_module_eeprom_by_page\00", align 1
@switch.table.mlx5e_ethtool_get_link_ksettings = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 128, i32 256, i32 2048, i32 512, i32 1024, i32 65536], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 12, i64 13, i64 17]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 45, i32 27 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 47, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [26 x i8] c"ptys2legacy_ethtool_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 68, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant [23 x i8] c"ptys2ext_ethtool_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 70, i32 28 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"mlx5e_priv_flags\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2102, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 335, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 340, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 346, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 353, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 430, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 445, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 456, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 467, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 477, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 499, i32 29 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 618, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 625, i32 29 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 632, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1010, i32 28 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1070, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1193, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1206, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1429, i32 28 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1458, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1934, i32 7 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1939, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1956, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"mlx5e_ethtool_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2393, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"ptys2connector_type\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 937, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [29 x i8] c"pplm_fec_2_ethtool_linkmodes\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 768, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1100, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1996, i32 23 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2071, i32 28 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2084, i32 7 }
@___asan_gen_.193 = private unnamed_addr constant [32 x i8] c"mlx5e_link_ext_state_opcode_map\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2222, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2127, i32 22 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2128, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 2128, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1761, i32 28 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1793, i32 29 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1361, i32 23 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"pplm_fec_2_ethtool\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 738, i32 18 }
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 1836, i32 29 }
@___asan_gen_.220 = private unnamed_addr constant [46 x i8] c"switch.table.mlx5e_ethtool_get_link_ksettings\00", align 1
@llvm.compiler.used = appending global [47 x ptr] [ptr @.str, ptr @.str.1, ptr @ptys2legacy_ethtool_table, ptr @ptys2ext_ethtool_table, ptr @mlx5e_priv_flags, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @mlx5e_ethtool_set_coalesce.__msg, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @mlx5e_ethtool_ops, ptr @ptys2connector_type, ptr @pplm_fec_2_ethtool_linkmodes, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @mlx5e_link_ext_state_opcode_map, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @pplm_fec_2_ethtool, ptr @.str.74, ptr @switch.table.mlx5e_ethtool_get_link_ksettings], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptys2legacy_ethtool_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptys2ext_ethtool_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_priv_flags to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ethtool_set_coalesce.__msg to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptys2connector_type to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pplm_fec_2_ethtool_linkmodes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_link_ext_state_opcode_map to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pplm_fec_2_ethtool to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5e_ethtool_get_link_ksettings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ethtool_get_drvinfo(ptr nocapture noundef readonly %priv, ptr noundef %drvinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #16
  %fw_version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 3
  %iseg.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iseg.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #16, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !127
  %conv = and i32 %4, 65535
  %5 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iseg.i, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #16, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !128
  %shr.i = lshr i32 %7, 16
  %8 = ptrtoint ptr %iseg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iseg.i, align 4
  %cmdif_rev_fw_sub.i = getelementptr inbounds %struct.mlx5_init_seg, ptr %9, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmdif_rev_fw_sub.i) #16, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #16, !srcloc !129
  %conv7 = and i32 %10, 65535
  %board_id = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 6
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version, i32 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %shr.i, i32 noundef %conv7, ptr noundef %board_id)
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %16, %if.end.i ], [ %14, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call12 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_build_ptys2ethtool_map() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 9, i32 0, i32 0), i32 0, i32 408)
  %1 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 2, i32 0, i32 0), i32 0, i32 360)
  %2 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 0, i32 0, i32 1), i32 0, i32 20)
  store i32 131072, ptr @ptys2legacy_ethtool_table, align 4
  store i32 131072, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 0, i32 1, i32 0), align 4
  %3 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 1, i32 0, i32 1), i32 0, i32 20)
  store i32 131072, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 1, i32 0, i32 0), align 4
  store i32 131072, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 1, i32 1, i32 0), align 4
  %4 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 2, i32 0, i32 1), i32 0, i32 20)
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 2, i32 0, i32 0), align 4
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 2, i32 1, i32 0), align 4
  %5 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 3, i32 0, i32 1), i32 0, i32 20)
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 3, i32 0, i32 0), align 4
  store i32 262144, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 3, i32 1, i32 0), align 4
  %6 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 4, i32 0, i32 1), i32 0, i32 20)
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 4, i32 0, i32 0), align 4
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 4, i32 1, i32 0), align 4
  %7 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 5, i32 0, i32 1), i32 0, i32 20)
  store i32 4194304, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 5, i32 0, i32 0), align 4
  store i32 4194304, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 5, i32 1, i32 0), align 4
  %8 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 6, i32 0, i32 1), i32 0, i32 20)
  store i32 16777216, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 6, i32 0, i32 0), align 4
  store i32 16777216, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 6, i32 1, i32 0), align 4
  %9 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 7, i32 0, i32 1), i32 0, i32 20)
  store i32 8388608, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 7, i32 0, i32 0), align 4
  store i32 8388608, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 7, i32 1, i32 0), align 4
  %10 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 8, i32 0, i32 1), i32 0, i32 20)
  store i32 134217728, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 8, i32 0, i32 0), align 4
  store i32 134217728, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 8, i32 1, i32 0), align 4
  %11 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 12, i32 0, i32 1), i32 0, i32 20)
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 12, i32 0, i32 0), align 4
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 12, i32 1, i32 0), align 4
  %12 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 13, i32 0, i32 1), i32 0, i32 20)
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 13, i32 0, i32 0), align 4
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 13, i32 1, i32 0), align 4
  %13 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 14, i32 0, i32 1), i32 0, i32 20)
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 14, i32 0, i32 0), align 4
  store i32 524288, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 14, i32 1, i32 0), align 4
  %14 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 15, i32 0, i32 1), i32 0, i32 20)
  store i32 33554432, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 15, i32 0, i32 0), align 4
  store i32 33554432, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 15, i32 1, i32 0), align 4
  %15 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 16, i32 0, i32 1), i32 0, i32 20)
  store i32 67108864, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 16, i32 0, i32 0), align 4
  store i32 67108864, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 16, i32 1, i32 0), align 4
  %16 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 18), i32 0, i32 24)
  store i32 256, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 18, i32 0, i32 1), align 4
  store i32 256, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 18, i32 1, i32 1), align 4
  %17 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 20), i32 0, i32 24)
  store i32 64, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 20, i32 0, i32 1), align 4
  store i32 64, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 20, i32 1, i32 1), align 4
  %18 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 21), i32 0, i32 24)
  store i32 32, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 21, i32 0, i32 1), align 4
  store i32 32, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 21, i32 1, i32 1), align 4
  %19 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 22), i32 0, i32 24)
  store i32 16, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 22, i32 0, i32 1), align 4
  store i32 16, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 22, i32 1, i32 1), align 4
  %20 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 23), i32 0, i32 24)
  store i32 128, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 23, i32 0, i32 1), align 4
  store i32 128, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 23, i32 1, i32 1), align 4
  %21 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 26, i32 0, i32 1), i32 0, i32 20)
  store i32 4096, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 26, i32 0, i32 0), align 4
  store i32 4096, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 26, i32 1, i32 0), align 4
  %22 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 27, i32 0, i32 1), i32 0, i32 20)
  store i32 -2147483648, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 27, i32 0, i32 0), align 4
  store i32 -2147483648, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 27, i32 1, i32 0), align 4
  %23 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 28), i32 0, i32 24)
  store i32 1, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 28, i32 0, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 28, i32 1, i32 1), align 4
  %24 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 29), i32 0, i32 24)
  store i32 2, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 29, i32 0, i32 1), align 4
  store i32 2, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 29, i32 1, i32 1), align 4
  %25 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 30), i32 0, i32 24)
  store i32 4, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 30, i32 0, i32 1), align 4
  store i32 4, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 30, i32 1, i32 1), align 4
  %26 = call ptr @memset(ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 31), i32 0, i32 24)
  store i32 8, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 31, i32 0, i32 1), align 4
  store i32 8, ptr getelementptr inbounds ([32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 31, i32 1, i32 1), align 4
  %27 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 0, i32 0, i32 1), i32 0, i32 20)
  store i32 8, ptr @ptys2ext_ethtool_table, align 4
  store i32 8, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 0, i32 1, i32 0), align 4
  %28 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 1, i32 0, i32 2), i32 0, i32 16)
  store i32 131104, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 1), align 4
  store i32 131104, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 1, i32 1, i32 0), align 4
  store i32 512, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 1, i32 0, i32 1), align 4
  store i32 512, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 1, i32 1, i32 1), align 4
  %29 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 3), i32 0, i32 24)
  store i32 65536, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 3, i32 0, i32 1), align 4
  store i32 65536, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 3, i32 1, i32 1), align 4
  %30 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 4, i32 0, i32 2), i32 0, i32 16)
  store i32 1576960, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 4), align 4
  store i32 1576960, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 4, i32 1, i32 0), align 4
  store i32 23552, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 4, i32 0, i32 1), align 4
  store i32 23552, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 4, i32 1, i32 1), align 4
  %31 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 5, i32 0, i32 1), i32 0, i32 20)
  store i32 125829120, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 5), align 4
  store i32 125829120, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 5, i32 1, i32 0), align 4
  %32 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 6, i32 0, i32 2), i32 0, i32 16)
  store i32 -2147483648, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 6), align 4
  store i32 -2147483648, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 6, i32 1, i32 0), align 4
  store i32 3, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 6, i32 0, i32 1), align 4
  store i32 3, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 6, i32 1, i32 1), align 4
  %33 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 7), i32 0, i32 24)
  store i32 268, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 7, i32 0, i32 1), align 4
  store i32 268, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 7, i32 1, i32 1), align 4
  %34 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 8), i32 0, i32 24)
  store i32 32505856, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 8, i32 0, i32 1), align 4
  store i32 32505856, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 8, i32 1, i32 1), align 4
  %35 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 9), i32 0, i32 24)
  store i32 240, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 9, i32 0, i32 1), align 4
  store i32 240, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 9, i32 1, i32 1), align 4
  %36 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 10), i32 0, i32 24)
  store i32 1040187392, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 10, i32 0, i32 1), align 4
  store i32 1040187392, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 10, i32 1, i32 1), align 4
  %37 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 12), i32 0, i32 24)
  store i32 -1073741817, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 12, i32 0, i32 1), align 4
  store i32 -1073741817, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 12, i32 1, i32 1), align 4
  %38 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 11), i32 0, i32 24)
  store i32 63488, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 11, i32 0, i32 1), align 4
  store i32 63488, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 11, i32 1, i32 1), align 4
  %39 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 13), i32 0, i32 24)
  store i32 2031616, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 13, i32 0, i32 1), align 4
  store i32 2031616, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 13, i32 1, i32 1), align 4
  %40 = call ptr @memset(ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 16), i32 0, i32 24)
  store i32 65011712, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 16, i32 0, i32 1), align 4
  store i32 65011712, ptr getelementptr inbounds ([17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 16, i32 1, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_get_sset_count(ptr noundef %priv, i32 noundef %sset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %sset, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %entry.return_crit_edge
    i32 0, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @mlx5e_stats_total_num(ptr noundef %priv) #16
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3 = tail call i32 @mlx5e_self_test_num(ptr noundef %priv) #16
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return:                                           ; preds = %sw.default, %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %sw.default ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ], [ 8, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_stats_total_num(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_self_test_num(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ethtool_get_strings(ptr noundef %priv, i32 noundef %stringset, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %stringset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %stringset, label %entry.sw.epilog_crit_edge [
    i32 2, label %for.body.preheader
    i32 0, label %sw.bb1
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call ptr @strcpy(ptr noundef %data, ptr noundef nonnull @mlx5e_priv_flags) #19
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call.1 = tail call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef getelementptr inbounds ([8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 1)) #19
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %call.2 = tail call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef getelementptr inbounds ([8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 2)) #19
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %call.3 = tail call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef getelementptr inbounds ([8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 3)) #19
  %add.ptr.4 = getelementptr i8, ptr %data, i32 128
  %call.4 = tail call ptr @strcpy(ptr noundef %add.ptr.4, ptr noundef getelementptr inbounds ([8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 4)) #19
  %add.ptr.5 = getelementptr i8, ptr %data, i32 160
  %call.5 = tail call ptr @strcpy(ptr noundef %add.ptr.5, ptr noundef getelementptr inbounds ([8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 5)) #19
  %add.ptr.6 = getelementptr i8, ptr %data, i32 192
  %call.6 = tail call ptr @strcpy(ptr noundef %add.ptr.6, ptr noundef getelementptr inbounds ([8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 6)) #19
  %add.ptr.7 = getelementptr i8, ptr %data, i32 224
  %call.7 = tail call ptr @strcpy(ptr noundef %add.ptr.7, ptr noundef getelementptr inbounds ([8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 7)) #19
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call2 = tail call i32 @mlx5e_self_test_fill_strings(ptr noundef %priv, ptr noundef %data) #16
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mlx5e_stats_fill_strings(ptr noundef %priv, ptr noundef %data) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %for.body.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_self_test_fill_strings(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_fill_strings(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ethtool_get_ethtool_stats(ptr noundef %priv, ptr nocapture readnone %stats, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  tail call void @mlx5e_stats_update(ptr noundef %priv) #16
  tail call void @mutex_unlock(ptr noundef %state_lock) #16
  tail call void @mlx5e_stats_fill(ptr noundef %priv, ptr noundef %data, i32 noundef 0) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_update(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_ethtool_get_ringparam(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %param) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8192, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8192, ptr %tx_max_pending, align 4
  %params = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3
  %log_rq_mtu_frames = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 2
  %2 = ptrtoint ptr %log_rq_mtu_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %log_rq_mtu_frames, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %rx_pending, align 4
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %params, align 4
  %conv3 = zext i8 %6 to i32
  %shl4 = shl nuw i32 1, %conv3
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl4, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_set_ringparam(ptr noundef %priv, ptr nocapture noundef readonly %param) local_unnamed_addr #0 align 64 {
entry:
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #16
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 7
  %0 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.mlx5e_ethtool_set_ringparam) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 6
  %4 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %netdev3 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %6 = ptrtoint ptr %netdev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev3, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %7, ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.mlx5e_ethtool_set_ringparam) #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %8 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp = icmp ult i32 %9, 16
  br i1 %cmp, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %netdev6 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %10 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev6, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.mlx5e_ethtool_set_ringparam, i32 noundef %9, i32 noundef 16) #20
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %12 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp9 = icmp ult i32 %13, 64
  br i1 %cmp9, label %if.then10, label %cond.end40

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %netdev11 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %14 = ptrtoint ptr %netdev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev11, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %15, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.mlx5e_ethtool_set_ringparam, i32 noundef %13, i32 noundef 64) #20
  br label %cleanup

cond.end40:                                       ; preds = %if.end8
  %sub = add i32 %9, -1
  %16 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 false) #16, !range !130
  %17 = trunc i32 %16 to i8
  %conv42 = sub nsw i8 32, %17
  %sub55 = add i32 %13, -1
  %18 = tail call i32 @llvm.ctlz.i32(i32 %sub55, i1 false) #16, !range !130
  %19 = trunc i32 %18 to i8
  %conv84 = sub nsw i8 32, %19
  %params = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3
  %log_rq_mtu_frames = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 2
  %20 = ptrtoint ptr %log_rq_mtu_frames to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %log_rq_mtu_frames, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %conv42)
  %cmp87 = icmp eq i8 %21, %conv42
  br i1 %cmp87, label %land.lhs.true, label %cond.end40.if.end97_crit_edge

cond.end40.if.end97_crit_edge:                    ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

land.lhs.true:                                    ; preds = %cond.end40
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %params, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %conv84)
  %cmp94 = icmp eq i8 %23, %conv84
  br i1 %cmp94, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end97_crit_edge

land.lhs.true.if.end97_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end97

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end97:                                         ; preds = %land.lhs.true.if.end97_crit_edge, %cond.end40.if.end97_crit_edge
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %24 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %log_rq_mtu_frames100 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 2
  %25 = ptrtoint ptr %log_rq_mtu_frames100 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv42, ptr %log_rq_mtu_frames100, align 2
  %26 = ptrtoint ptr %new_params to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv84, ptr %new_params, align 4
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %27 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdev, align 64
  %call102 = call i32 @mlx5e_validate_params(ptr noundef %28, ptr noundef nonnull %new_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end97.unlock_crit_edge

if.end97.unlock_crit_edge:                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.end105:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #18
  %call106 = call i32 @mlx5e_safe_switch_params(ptr noundef %priv, ptr noundef nonnull %new_params, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #16
  br label %unlock

unlock:                                           ; preds = %if.end105, %if.end97.unlock_crit_edge
  %err.0 = phi i32 [ %call102, %if.end97.unlock_crit_edge ], [ %call106, %if.end105 ]
  call void @mutex_unlock(ptr noundef %state_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %unlock, %land.lhs.true.cleanup_crit_edge, %if.then10, %if.then5, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then5 ], [ -22, %if.then10 ], [ %err.0, %unlock ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #16
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_validate_params(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_safe_switch_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ethtool_get_channels(ptr noundef %priv, ptr nocapture noundef %ch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %max_nch = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 30
  %0 = ptrtoint ptr %max_nch to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_nch, align 2
  %conv = zext i16 %1 to i32
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %2 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %max_combined, align 4
  %num_channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_channels, align 4
  %conv1 = zext i16 %4 to i32
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %5 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %combined_count, align 4
  %refcnt = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 48, i32 1
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mul = shl nuw nsw i32 %conv, 1
  %8 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %max_combined, align 4
  %mul4 = shl nuw nsw i32 %conv1, 1
  %9 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul4, ptr %combined_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_set_channels(ptr noundef %priv, ptr nocapture noundef readonly %ch) local_unnamed_addr #0 align 64 {
entry:
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %0 = ptrtoint ptr %combined_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %combined_count, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #16
  %2 = call ptr @memset(ptr %new_params, i32 255, i32 144)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %4, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__.mlx5e_ethtool_set_channels) #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_channels = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num_channels, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp eq i32 %1, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %refcnt = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 48, i32 1
  %7 = ptrtoint ptr %refcnt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool4.not = icmp eq i16 %8, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %netdev6 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %9 = ptrtoint ptr %netdev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev6, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.mlx5e_ethtool_set_channels) #20
  br label %out

if.end7:                                          ; preds = %if.end3
  %maj_id = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 50, i32 4
  %11 = ptrtoint ptr %maj_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %maj_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool8.not = icmp eq i16 %12, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %netdev10 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %13 = ptrtoint ptr %netdev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev10, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.mlx5e_ethtool_set_channels) #20
  br label %out

if.end11:                                         ; preds = %if.end7
  %rx_res = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %15 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_res, align 4
  %call = tail call i32 @mlx5e_rx_res_rss_cnt(ptr noundef %16) #16
  %sub = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool12.not = icmp eq i32 %sub, 0
  br i1 %tobool12.not, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %netdev14 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %17 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.mlx5e_ethtool_set_channels, i32 noundef %sub) #20
  br label %out

if.end15:                                         ; preds = %if.end11
  %mqprio = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 4
  %19 = ptrtoint ptr %mqprio to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mqprio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %20)
  %cmp17 = icmp eq i16 %20, 1
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %netdev20 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %21 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev20, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.mlx5e_ethtool_set_channels) #20
  br label %out

if.end21:                                         ; preds = %if.end15
  %23 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %conv22 = trunc i32 %1 to i16
  %num_channels23 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 3
  %24 = ptrtoint ptr %num_channels23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv22, ptr %num_channels23, align 4
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool25.not = icmp eq i32 %and1.i, 0
  br i1 %tobool25.not, label %if.end21.if.end34.thread_crit_edge, label %land.end

if.end21.if.end34.thread_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.thread

land.end:                                         ; preds = %if.end21
  %netdev28 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %27 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %netdev28, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features, align 16
  %and = and i64 %30, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool29.not = icmp eq i64 %and, 0
  br i1 %tobool29.not, label %land.end.if.end34.thread_crit_edge, label %if.then37

land.end.if.end34.thread_crit_edge:               ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end34.thread

if.end34.thread:                                  ; preds = %land.end.if.end34.thread_crit_edge, %if.end21.if.end34.thread_crit_edge
  %call3574 = call i32 @mlx5e_safe_switch_params(ptr noundef %priv, ptr noundef nonnull %new_params, ptr noundef nonnull @mlx5e_num_channels_changed_ctx, ptr noundef null, i1 noundef zeroext true) #16
  br label %out

if.then37:                                        ; preds = %land.end
  %call33 = tail call i32 @mlx5e_arfs_disable(ptr noundef %priv) #16
  %call35 = call i32 @mlx5e_safe_switch_params(ptr noundef %priv, ptr noundef nonnull %new_params, ptr noundef nonnull @mlx5e_num_channels_changed_ctx, ptr noundef null, i1 noundef zeroext true) #16
  %call38 = call i32 @mlx5e_arfs_enable(ptr noundef %priv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.out_crit_edge, label %if.then40

if.then37.out_crit_edge:                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #18
  %31 = ptrtoint ptr %netdev28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev28, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %32, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.mlx5e_ethtool_set_channels, i32 noundef %call38) #20
  br label %out

out:                                              ; preds = %if.then40, %if.then37.out_crit_edge, %if.end34.thread, %if.then19, %if.then13, %if.then9, %if.then5
  %err.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then9 ], [ -22, %if.then13 ], [ -22, %if.then19 ], [ %call35, %if.then40 ], [ %call35, %if.then37.out_crit_edge ], [ %call3574, %if.end34.thread ]
  call void @mutex_unlock(ptr noundef %state_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %if.then ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #16
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_rss_cnt(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_arfs_disable(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_num_channels_changed_ctx(ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_arfs_enable(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_ethtool_get_coalesce(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %coal, ptr nocapture noundef writeonly %kernel_coal) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 17
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_cq_moderation = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 7
  %7 = ptrtoint ptr %rx_cq_moderation to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_cq_moderation, align 2
  %conv = zext i16 %8 to i32
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %9 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %rx_coalesce_usecs, align 4
  %pkts = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 7, i32 1
  %10 = ptrtoint ptr %pkts to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pkts, align 2
  %conv1 = zext i16 %11 to i32
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %12 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv1, ptr %rx_max_coalesced_frames, align 4
  %rx_dim_enabled = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 13
  %13 = ptrtoint ptr %rx_dim_enabled to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx_dim_enabled, align 1, !range !131
  %15 = zext i8 %14 to i32
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 10
  %16 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %use_adaptive_rx_coalesce, align 4
  %tx_cq_moderation = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 8
  %17 = ptrtoint ptr %tx_cq_moderation to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tx_cq_moderation, align 2
  %conv9 = zext i16 %18 to i32
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %19 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9, ptr %tx_coalesce_usecs, align 4
  %pkts10 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 8, i32 1
  %20 = ptrtoint ptr %pkts10 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pkts10, align 2
  %conv11 = zext i16 %21 to i32
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %22 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv11, ptr %tx_max_coalesced_frames, align 4
  %tx_dim_enabled = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 14
  %23 = ptrtoint ptr %tx_dim_enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_dim_enabled, align 4, !range !131
  %25 = zext i8 %24 to i32
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 11
  %26 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %use_adaptive_tx_coalesce, align 4
  %pflags = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %27 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pflags, align 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %use_cqe_mode_rx = getelementptr inbounds %struct.kernel_ethtool_coalesce, ptr %kernel_coal, i32 0, i32 1
  %31 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %use_cqe_mode_rx, align 1
  %32 = load i32, ptr %pflags, align 4
  %33 = trunc i32 %32 to i8
  %34 = lshr i8 %33, 1
  %35 = and i8 %34, 1
  %36 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %kernel_coal, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_set_coalesce(ptr noundef %priv, ptr nocapture noundef readonly %coal, ptr nocapture noundef readonly %kernel_coal, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #16
  %2 = call ptr @memset(ptr %new_params, i32 255, i32 144)
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 17
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %8 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %9)
  %cmp = icmp ugt i32 %9, 4095
  br i1 %cmp, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %10 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %11)
  %cmp2 = icmp ugt i32 %11, 4095
  br i1 %cmp2, label %lor.lhs.false.if.then3_crit_edge, label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %13, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.mlx5e_ethtool_set_coalesce, i32 noundef 4095) #20
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %14 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %15)
  %cmp5 = icmp ugt i32 %15, 65535
  br i1 %cmp5, label %if.end4.if.then8_crit_edge, label %lor.lhs.false6

if.end4.if.then8_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

lor.lhs.false6:                                   ; preds = %if.end4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %16 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %17)
  %cmp7 = icmp ugt i32 %17, 65535
  br i1 %cmp7, label %lor.lhs.false6.if.then8_crit_edge, label %if.end10

lor.lhs.false6.if.then8_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false6.if.then8_crit_edge, %if.end4.if.then8_crit_edge
  %netdev9 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %18 = ptrtoint ptr %netdev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netdev9, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__.mlx5e_ethtool_set_coalesce, i32 noundef 65535) #20
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %use_cqe_mode_rx = getelementptr inbounds %struct.kernel_ethtool_coalesce, ptr %kernel_coal, i32 0, i32 1
  %20 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %use_cqe_mode_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool11.not = icmp eq i8 %21, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %land.lhs.true

lor.lhs.false12:                                  ; preds = %if.end10
  %22 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %kernel_coal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not = icmp ne i8 %23, 0
  %24 = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  %or.cond = select i1 %tobool14.not, i1 %tobool24.not, i1 false
  br i1 %or.cond, label %lor.lhs.false12.do.body_crit_edge, label %lor.lhs.false12.if.end29_crit_edge

lor.lhs.false12.if.end29_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

lor.lhs.false12.do.body_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true:                                    ; preds = %if.end10
  %.old = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.old)
  %tobool24.not.old = icmp eq i32 %.old, 0
  br i1 %tobool24.not.old, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %lor.lhs.false12.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlx5e_ethtool_set_coalesce.__msg) #16
  %tobool26.not = icmp eq ptr %extack, null
  br i1 %tobool26.not, label %do.body.cleanup_crit_edge, label %if.then27

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx5e_ethtool_set_coalesce.__msg, ptr %extack, align 4
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %lor.lhs.false12.if.end29_crit_edge
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %params = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3
  %26 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %rx_cq_moderation = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 7
  %27 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv31 = trunc i32 %28 to i16
  %29 = ptrtoint ptr %rx_cq_moderation to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv31, ptr %rx_cq_moderation, align 2
  %30 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_max_coalesced_frames, align 4
  %conv33 = trunc i32 %31 to i16
  %pkts = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %pkts to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv33, ptr %pkts, align 4
  %use_adaptive_rx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 10
  %33 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool34 = icmp ne i32 %34, 0
  %rx_dim_enabled = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 13
  %frombool = zext i1 %tobool34 to i8
  %35 = ptrtoint ptr %rx_dim_enabled to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool, ptr %rx_dim_enabled, align 1
  %tx_cq_moderation = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 8
  %36 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv37 = trunc i32 %37 to i16
  %38 = ptrtoint ptr %tx_cq_moderation to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv37, ptr %tx_cq_moderation, align 2
  %39 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_max_coalesced_frames, align 4
  %conv40 = trunc i32 %40 to i16
  %pkts41 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %pkts41 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv40, ptr %pkts41, align 4
  %use_adaptive_tx_coalesce = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 11
  %42 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool42 = icmp ne i32 %43, 0
  %tx_dim_enabled = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 14
  %frombool45 = zext i1 %tobool42 to i8
  %44 = ptrtoint ptr %tx_dim_enabled to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %frombool45, ptr %tx_dim_enabled, align 4
  %rx_dim_enabled52 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 13
  %45 = ptrtoint ptr %rx_dim_enabled52 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rx_dim_enabled52, align 1, !range !131
  %tx_dim_enabled66 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 14
  %47 = ptrtoint ptr %tx_dim_enabled66 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %tx_dim_enabled66, align 4, !range !131
  %49 = ptrtoint ptr %use_cqe_mode_rx to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_cqe_mode_rx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool73 = icmp ne i8 %50, 0
  %cq_period_mode76 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 7, i32 3
  %51 = ptrtoint ptr %cq_period_mode76 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cq_period_mode76, align 4
  %53 = zext i1 %tobool73 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %53)
  %cmp78.not = icmp eq i8 %52, %53
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %frombool)
  %extract.t.not = icmp eq i8 %46, %frombool
  br i1 %cmp78.not, label %if.end81, label %if.end81.thread

if.end81:                                         ; preds = %if.end29
  %54 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %kernel_coal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool83 = icmp ne i8 %55, 0
  %cq_period_mode87 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 8, i32 3
  %56 = ptrtoint ptr %cq_period_mode87 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %cq_period_mode87, align 4
  %58 = zext i1 %tobool83 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %58)
  %cmp89.not = icmp eq i8 %57, %58
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %frombool45)
  %extract.t182.not = icmp eq i8 %48, %frombool45
  br i1 %cmp89.not, label %if.end92, label %if.end92.thread

if.end81.thread:                                  ; preds = %if.end29
  call void @mlx5e_set_rx_cq_mode_params(ptr noundef nonnull %new_params, i8 noundef zeroext %53) #16
  %59 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %kernel_coal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool83205 = icmp ne i8 %60, 0
  %cq_period_mode87206 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 8, i32 3
  %61 = ptrtoint ptr %cq_period_mode87206 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %cq_period_mode87206, align 4
  %63 = zext i1 %tobool83205 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %63)
  %cmp89.not207 = icmp eq i8 %62, %63
  br i1 %cmp89.not207, label %if.end92.thread212, label %if.end92.thread.thread

if.end92.thread.thread:                           ; preds = %if.end81.thread
  call void @__sanitizer_cov_trace_pc() #18
  call void @mlx5e_set_tx_cq_mode_params(ptr noundef nonnull %new_params, i8 noundef zeroext %63) #16
  br label %if.end102.thread200

if.end92.thread212:                               ; preds = %if.end81.thread
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %frombool45)
  %extract.t182208.not = icmp eq i8 %48, %frombool45
  %pflags216 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %64 = ptrtoint ptr %pflags216 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pflags216, align 4
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  call void @mlx5e_reset_rx_moderation(ptr noundef nonnull %new_params, i8 noundef zeroext %67) #16
  br i1 %extract.t182208.not, label %if.end92.thread212.if.end130_crit_edge, label %if.end92.thread212.if.end114.thread_crit_edge

if.end92.thread212.if.end114.thread_crit_edge:    ; preds = %if.end92.thread212
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.thread

if.end92.thread212.if.end130_crit_edge:           ; preds = %if.end92.thread212
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.end92:                                         ; preds = %if.end81
  br i1 %extract.t.not, label %if.end102.thread, label %if.end102

if.end92.thread:                                  ; preds = %if.end81
  call void @mlx5e_set_tx_cq_mode_params(ptr noundef nonnull %new_params, i8 noundef zeroext %58) #16
  br i1 %extract.t.not, label %if.end92.thread.if.end114.thread_crit_edge, label %if.end92.thread.if.end102.thread200_crit_edge

if.end92.thread.if.end102.thread200_crit_edge:    ; preds = %if.end92.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102.thread200

if.end92.thread.if.end114.thread_crit_edge:       ; preds = %if.end92.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.thread

if.end102.thread200:                              ; preds = %if.end92.thread.if.end102.thread200_crit_edge, %if.end92.thread.thread
  %pflags202 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %68 = ptrtoint ptr %pflags202 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %pflags202, align 4
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  call void @mlx5e_reset_rx_moderation(ptr noundef nonnull %new_params, i8 noundef zeroext %71) #16
  br label %if.end114.thread

if.end102:                                        ; preds = %if.end92
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %72 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %pflags, align 4
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  call void @mlx5e_reset_rx_moderation(ptr noundef nonnull %new_params, i8 noundef zeroext %75) #16
  br i1 %extract.t182.not, label %if.end102.if.end130_crit_edge, label %if.end102.if.end114.thread_crit_edge

if.end102.if.end114.thread_crit_edge:             ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.thread

if.end102.if.end130_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.end102.thread:                                 ; preds = %if.end92
  br i1 %extract.t182.not, label %land.lhs.true118, label %if.end102.thread.if.end114.thread_crit_edge

if.end102.thread.if.end114.thread_crit_edge:      ; preds = %if.end102.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end114.thread

if.end114.thread:                                 ; preds = %if.end102.thread.if.end114.thread_crit_edge, %if.end102.if.end114.thread_crit_edge, %if.end102.thread200, %if.end92.thread.if.end114.thread_crit_edge, %if.end92.thread212.if.end114.thread_crit_edge
  %pflags106 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %76 = ptrtoint ptr %pflags106 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pflags106, align 4
  %78 = trunc i32 %77 to i8
  %79 = lshr i8 %78, 1
  %80 = and i8 %79, 1
  call void @mlx5e_reset_tx_moderation(ptr noundef nonnull %new_params, i8 noundef zeroext %80) #16
  br label %if.end130

land.lhs.true118:                                 ; preds = %if.end102.thread
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %82, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool120.not = icmp eq i32 %and1.i, 0
  br i1 %tobool120.not, label %land.lhs.true118.if.end130_crit_edge, label %if.then121

land.lhs.true118.if.end130_crit_edge:             ; preds = %land.lhs.true118
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.then121:                                       ; preds = %land.lhs.true118
  %83 = ptrtoint ptr %use_adaptive_rx_coalesce to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %use_adaptive_rx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool123.not = icmp eq i32 %84, 0
  br i1 %tobool123.not, label %if.then124, label %if.then121.if.end125_crit_edge

if.then121.if.end125_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

if.then124:                                       ; preds = %if.then121
  %85 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mdev1, align 64
  %num.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 2
  %87 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp10.not.i = icmp eq i32 %88, 0
  br i1 %cmp10.not.i, label %if.then124.if.end125_crit_edge, label %for.body.lr.ph.i

if.then124.if.end125_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

for.body.lr.ph.i:                                 ; preds = %if.then124
  %channels.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %89 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %channels.i, align 128
  %arrayidx.i = getelementptr ptr, ptr %90, i32 %i.011.i
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx.i, align 4
  %mcq.i = getelementptr inbounds %struct.mlx5e_rq, ptr %92, i32 0, i32 6, i32 3
  %93 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_coalesce_usecs, align 4
  %conv.i = trunc i32 %94 to i16
  %95 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_max_coalesced_frames, align 4
  %conv4.i = trunc i32 %96 to i16
  %call.i = call i32 @mlx5_core_modify_cq_moderation(ptr noundef %86, ptr noundef %mcq.i, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv4.i) #16
  %inc.i = add nuw i32 %i.011.i, 1
  %97 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %98
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end125_crit_edge

for.body.i.if.end125_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end125

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

if.end125:                                        ; preds = %for.body.i.if.end125_crit_edge, %if.then124.if.end125_crit_edge, %if.then121.if.end125_crit_edge
  %99 = ptrtoint ptr %use_adaptive_tx_coalesce to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %use_adaptive_tx_coalesce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool127.not = icmp eq i32 %100, 0
  br i1 %tobool127.not, label %if.then128, label %if.end125.if.end130_crit_edge

if.end125.if.end130_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

if.then128:                                       ; preds = %if.end125
  %101 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mdev1, align 64
  %num.i185 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 2
  %103 = ptrtoint ptr %num.i185 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %num.i185, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp25.not.i = icmp eq i32 %104, 0
  br i1 %cmp25.not.i, label %if.then128.if.end130_crit_edge, label %for.body.lr.ph.i187

if.then128.if.end130_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

for.body.lr.ph.i187:                              ; preds = %if.then128
  %channels.i186 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9
  br label %for.body.i189

for.body.i189:                                    ; preds = %for.end.i.for.body.i189_crit_edge, %for.body.lr.ph.i187
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i187 ], [ %inc12.i, %for.end.i.for.body.i189_crit_edge ]
  %105 = ptrtoint ptr %channels.i186 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %channels.i186, align 128
  %arrayidx.i188 = getelementptr ptr, ptr %106, i32 %i.026.i
  %107 = ptrtoint ptr %arrayidx.i188 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i188, align 4
  %num_tc.i = getelementptr inbounds %struct.mlx5e_channel, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %num_tc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %cmp523.not.i = icmp eq i8 %110, 0
  br i1 %cmp523.not.i, label %for.body.i189.for.end.i_crit_edge, label %for.body.i189.for.body7.i_crit_edge

for.body.i189.for.body7.i_crit_edge:              ; preds = %for.body.i189
  br label %for.body7.i

for.body.i189.for.end.i_crit_edge:                ; preds = %for.body.i189
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body.i189.for.body7.i_crit_edge
  %tc.024.i = phi i32 [ %inc.i192, %for.body7.i.for.body7.i_crit_edge ], [ 0, %for.body.i189.for.body7.i_crit_edge ]
  %mcq.i190 = getelementptr %struct.mlx5e_channel, ptr %108, i32 0, i32 2, i32 %tc.024.i, i32 10, i32 3
  %111 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tx_coalesce_usecs, align 4
  %conv9.i = trunc i32 %112 to i16
  %113 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %tx_max_coalesced_frames, align 4
  %conv10.i = trunc i32 %114 to i16
  %call.i191 = call i32 @mlx5_core_modify_cq_moderation(ptr noundef %102, ptr noundef %mcq.i190, i16 noundef zeroext %conv9.i, i16 noundef zeroext %conv10.i) #16
  %inc.i192 = add nuw nsw i32 %tc.024.i, 1
  %115 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %num_tc.i, align 2
  %conv.i193 = zext i8 %116 to i32
  %cmp5.i = icmp ult i32 %inc.i192, %conv.i193
  br i1 %cmp5.i, label %for.body7.i.for.body7.i_crit_edge, label %for.body7.i.for.end.i_crit_edge

for.body7.i.for.end.i_crit_edge:                  ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body7.i

for.end.i:                                        ; preds = %for.body7.i.for.end.i_crit_edge, %for.body.i189.for.end.i_crit_edge
  %inc12.i = add nuw i32 %i.026.i, 1
  %117 = ptrtoint ptr %num.i185 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %num.i185, align 8
  %cmp.i194 = icmp ult i32 %inc12.i, %118
  br i1 %cmp.i194, label %for.end.i.for.body.i189_crit_edge, label %for.end.i.if.end130_crit_edge

for.end.i.if.end130_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end130

for.end.i.for.body.i189_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i189

if.end130:                                        ; preds = %for.end.i.if.end130_crit_edge, %if.then128.if.end130_crit_edge, %if.end125.if.end130_crit_edge, %land.lhs.true118.if.end130_crit_edge, %if.end114.thread, %if.end102.if.end130_crit_edge, %if.end92.thread212.if.end130_crit_edge
  %reset.0.off0 = phi i1 [ true, %land.lhs.true118.if.end130_crit_edge ], [ false, %if.end125.if.end130_crit_edge ], [ true, %if.end114.thread ], [ false, %if.then128.if.end130_crit_edge ], [ true, %if.end102.if.end130_crit_edge ], [ true, %if.end92.thread212.if.end130_crit_edge ], [ false, %for.end.i.if.end130_crit_edge ]
  %call132 = call i32 @mlx5e_safe_switch_params(ptr noundef %priv, ptr noundef nonnull %new_params, ptr noundef null, ptr noundef null, i1 noundef zeroext %reset.0.off0) #16
  call void @mutex_unlock(ptr noundef %state_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %if.then27, %do.body.cleanup_crit_edge, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then3 ], [ -34, %if.then8 ], [ %call132, %if.end130 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then27 ], [ -95, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_rx_cq_mode_params(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_tx_cq_mode_params(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_reset_rx_moderation(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_reset_tx_moderation(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_get_link_ksettings(ptr nocapture noundef readonly %priv, ptr noundef %link_ksettings) local_unnamed_addr #0 align 64 {
entry:
  %active_fec_long.i = alloca i32, align 4
  %active_fec.i = alloca i32, align 4
  %proto_cap.i.i196 = alloca i32, align 4
  %proto_cap.i.i176 = alloca i32, align 4
  %proto_cap.i.i = alloca i32, align 4
  %out = alloca [16 x i32], align 4
  %rx_pause = alloca i32, align 4
  %tx_pause = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out) #16
  %2 = call ptr @memset(ptr %out, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_pause) #16
  %3 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rx_pause, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx_pause) #16
  %4 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_pause, align 4
  %call = call i32 @mlx5_query_port_ptys(ptr noundef %1, ptr noundef nonnull %out, i32 noundef 64, i32 noundef 4, i8 noundef zeroext 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.mlx5e_ethtool_get_link_ksettings, i32 noundef %call) #20
  br label %err_query_regs

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i32, ptr %out, i32 2
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %cond.end25.thread, label %cond.end25

cond.end25.thread:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr11 = getelementptr inbounds i32, ptr %out, i32 3
  %9 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr11, align 4
  br label %cond.false43

cond.end25:                                       ; preds = %if.end
  %add.ptr17 = getelementptr inbounds i32, ptr %out, i32 5
  %11 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool30.not = icmp eq i32 %12, 0
  br i1 %tobool30.not, label %cond.end25.cond.false43_crit_edge, label %cond.end25.cond.end48_crit_edge

cond.end25.cond.end48_crit_edge:                  ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end48

cond.end25.cond.false43_crit_edge:                ; preds = %cond.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.false43

cond.false43:                                     ; preds = %cond.end25.cond.false43_crit_edge, %cond.end25.thread
  %cond215221.ph = phi i32 [ %10, %cond.end25.thread ], [ %8, %cond.end25.cond.false43_crit_edge ]
  %add.ptr33 = getelementptr inbounds i32, ptr %out, i32 6
  %13 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr33, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false43, %cond.end25.cond.end48_crit_edge
  %.sink = phi i32 [ 9, %cond.false43 ], [ 8, %cond.end25.cond.end48_crit_edge ]
  %eth_proto_admin.0229 = phi i32 [ %14, %cond.false43 ], [ %12, %cond.end25.cond.end48_crit_edge ]
  %admin_ext.0.shrunk227 = phi i1 [ false, %cond.false43 ], [ true, %cond.end25.cond.end48_crit_edge ]
  %cond215221225 = phi i32 [ %cond215221.ph, %cond.false43 ], [ %8, %cond.end25.cond.end48_crit_edge ]
  %add.ptr45 = getelementptr inbounds i32, ptr %out, i32 %.sink
  %15 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr45, align 4
  %add.ptr51 = getelementptr inbounds i32, ptr %out, i32 12
  %17 = ptrtoint ptr %add.ptr51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr51, align 4
  %19 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out, align 4
  %shr56 = lshr i32 %20, 30
  %21 = trunc i32 %shr56 to i8
  %conv = and i8 %21, 1
  %add.ptr59 = getelementptr inbounds i32, ptr %out, i32 1
  %22 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr59, align 4
  %add.ptr64 = getelementptr inbounds i32, ptr %out, i32 11
  %24 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr64, align 4
  %conv67 = and i32 %25, 15
  %conv72 = trunc i32 %23 to i16
  %call73 = call i32 @mlx5_query_port_pause(ptr noundef %1, ptr noundef nonnull %rx_pause, ptr noundef nonnull %tx_pause) #16
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %26 = call ptr @memset(ptr %link_modes, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proto_cap.i.i) #16
  %27 = ptrtoint ptr %proto_cap.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond215221225, ptr %proto_cap.i.i, align 4
  %call.i.i.i = call zeroext i1 @mlx5e_ptys_ext_supported(ptr noundef %1) #16
  %cond.i.i.i = select i1 %call.i.i.i, ptr @ptys2ext_ethtool_table, ptr @ptys2legacy_ethtool_table
  %cond2.i.i.i = select i1 %call.i.i.i, i32 17, i32 32
  %call.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %proto_cap.i.i, i32 noundef %cond2.i.i.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %cond2.i.i.i)
  %cmp7.i.i = icmp ult i32 %call.i.i, %cond2.i.i.i
  br i1 %cmp7.i.i, label %cond.end48.for.body.i.i_crit_edge, label %cond.end48.get_supported.exit_crit_edge

cond.end48.get_supported.exit_crit_edge:          ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_supported.exit

cond.end48.for.body.i.i_crit_edge:                ; preds = %cond.end48
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %cond.end48.for.body.i.i_crit_edge
  %proto.08.i.i = phi i32 [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %cond.end48.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ptys2ethtool_config, ptr %cond.i.i.i, i32 %proto.08.i.i
  call void @__bitmap_or(ptr noundef %link_modes, ptr noundef %link_modes, ptr noundef %arrayidx.i.i, i32 noundef 92) #16
  %add.i.i = add nuw i32 %proto.08.i.i, 1
  %call1.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %proto_cap.i.i, i32 noundef %cond2.i.i.i, i32 noundef %add.i.i) #16
  %cmp.i.i = icmp ult i32 %call1.i.i, %cond2.i.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.get_supported.exit_crit_edge

for.body.i.i.get_supported.exit_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_supported.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

get_supported.exit:                               ; preds = %for.body.i.i.get_supported.exit_crit_edge, %cond.end48.get_supported.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proto_cap.i.i) #16
  %28 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link_modes, align 4
  %or.i.i = or i32 %29, 8192
  store i32 %or.i.i, ptr %link_modes, align 4
  %30 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_pause, align 4
  %conv77 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_pause, align 4
  %conv78 = trunc i32 %33 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proto_cap.i.i176) #16
  %34 = ptrtoint ptr %proto_cap.i.i176 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %eth_proto_admin.0229, ptr %proto_cap.i.i176, align 4
  %cond.i.i = select i1 %admin_ext.0.shrunk227, ptr @ptys2ext_ethtool_table, ptr @ptys2legacy_ethtool_table
  %cond2.i.i = select i1 %admin_ext.0.shrunk227, i32 17, i32 32
  %call.i.i177 = call i32 @_find_next_bit_be(ptr noundef nonnull %proto_cap.i.i176, i32 noundef %cond2.i.i, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i177, i32 %cond2.i.i)
  %cmp10.i.i = icmp ult i32 %call.i.i177, %cond2.i.i
  br i1 %cmp10.i.i, label %get_supported.exit.for.body.i.i180_crit_edge, label %get_supported.exit.ptys2ethtool_adver_link.exit.i_crit_edge

get_supported.exit.ptys2ethtool_adver_link.exit.i_crit_edge: ; preds = %get_supported.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ptys2ethtool_adver_link.exit.i

get_supported.exit.for.body.i.i180_crit_edge:     ; preds = %get_supported.exit
  br label %for.body.i.i180

for.body.i.i180:                                  ; preds = %for.body.i.i180.for.body.i.i180_crit_edge, %get_supported.exit.for.body.i.i180_crit_edge
  %proto.011.i.i = phi i32 [ %call3.i.i, %for.body.i.i180.for.body.i.i180_crit_edge ], [ %call.i.i177, %get_supported.exit.for.body.i.i180_crit_edge ]
  %advertised.i.i = getelementptr %struct.ptys2ethtool_config, ptr %cond.i.i, i32 %proto.011.i.i, i32 1
  call void @__bitmap_or(ptr noundef %advertising, ptr noundef %advertising, ptr noundef %advertised.i.i, i32 noundef 92) #16
  %add.i.i178 = add nuw i32 %proto.011.i.i, 1
  %call3.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %proto_cap.i.i176, i32 noundef %cond2.i.i, i32 noundef %add.i.i178) #16
  %cmp.i.i179 = icmp ult i32 %call3.i.i, %cond2.i.i
  br i1 %cmp.i.i179, label %for.body.i.i180.for.body.i.i180_crit_edge, label %for.body.i.i180.ptys2ethtool_adver_link.exit.i_crit_edge

for.body.i.i180.ptys2ethtool_adver_link.exit.i_crit_edge: ; preds = %for.body.i.i180
  call void @__sanitizer_cov_trace_pc() #18
  br label %ptys2ethtool_adver_link.exit.i

for.body.i.i180.for.body.i.i180_crit_edge:        ; preds = %for.body.i.i180
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i180

ptys2ethtool_adver_link.exit.i:                   ; preds = %for.body.i.i180.ptys2ethtool_adver_link.exit.i_crit_edge, %get_supported.exit.ptys2ethtool_adver_link.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proto_cap.i.i176) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv78)
  %tobool2.not.i = icmp eq i8 %conv78, 0
  br i1 %tobool2.not.i, label %ptys2ethtool_adver_link.exit.i.if.end.i_crit_edge, label %if.then.i

ptys2ethtool_adver_link.exit.i.if.end.i_crit_edge: ; preds = %ptys2ethtool_adver_link.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %ptys2ethtool_adver_link.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %35 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %advertising, align 4
  %or.i.i181 = or i32 %36, 8192
  store i32 %or.i.i181, ptr %advertising, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %ptys2ethtool_adver_link.exit.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %conv77, i8 %conv78)
  %tobool7.not.i = icmp eq i8 %conv77, %conv78
  br i1 %tobool7.not.i, label %if.end.i.get_advertising.exit_crit_edge, label %if.then8.i

if.end.i.get_advertising.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_advertising.exit

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %advertising, align 4
  %or.i17.i = or i32 %38, 16384
  store i32 %or.i17.i, ptr %advertising, align 4
  br label %get_advertising.exit

get_advertising.exit:                             ; preds = %if.then8.i, %if.end.i.get_advertising.exit_crit_edge
  %netdev80 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %39 = ptrtoint ptr %netdev80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev80, align 4
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i.i, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i, label %if.end.i182, label %get_advertising.exit.get_speed_duplex.exit_crit_edge

get_advertising.exit.get_speed_duplex.exit_crit_edge: ; preds = %get_advertising.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_speed_duplex.exit

if.end.i182:                                      ; preds = %get_advertising.exit
  %lnot82 = xor i1 %admin_ext.0.shrunk227, true
  %mdev.i = getelementptr i8, ptr %40, i32 11328
  %44 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mdev.i, align 64
  %call2.i = call i32 @mlx5e_port_ptys2speed(ptr noundef %45, i32 noundef %16, i1 noundef zeroext %lnot82) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end.i182.get_speed_duplex.exit_crit_edge

if.end.i182.get_speed_duplex.exit_crit_edge:      ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_speed_duplex.exit

if.then4.i:                                       ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv72)
  %tobool5.not.i = icmp eq i16 %conv72, 0
  br i1 %tobool5.not.i, label %if.then4.i.get_speed_duplex.exit_crit_edge, label %if.then6.i

if.then4.i.get_speed_duplex.exit_crit_edge:       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_speed_duplex.exit

if.then6.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i = and i32 %23, 65535
  %mul.i = mul nuw nsw i32 %conv.i, 100
  br label %get_speed_duplex.exit

get_speed_duplex.exit:                            ; preds = %if.then6.i, %if.then4.i.get_speed_duplex.exit_crit_edge, %if.end.i182.get_speed_duplex.exit_crit_edge, %get_advertising.exit.get_speed_duplex.exit_crit_edge
  %speed.0.i = phi i32 [ %mul.i, %if.then6.i ], [ -1, %get_advertising.exit.get_speed_duplex.exit_crit_edge ], [ -1, %if.then4.i.get_speed_duplex.exit_crit_edge ], [ %call2.i, %if.end.i182.get_speed_duplex.exit_crit_edge ]
  %duplex.0.i = phi i8 [ -1, %if.then6.i ], [ -1, %get_advertising.exit.get_speed_duplex.exit_crit_edge ], [ -1, %if.then4.i.get_speed_duplex.exit_crit_edge ], [ 1, %if.end.i182.get_speed_duplex.exit_crit_edge ]
  %speed9.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %46 = ptrtoint ptr %speed9.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %speed.0.i, ptr %speed9.i, align 4
  %duplex11.i = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 2
  %47 = ptrtoint ptr %duplex11.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %duplex.0.i, ptr %duplex11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool83.not = icmp eq i32 %16, 0
  %cond.cond49 = select i1 %tobool83.not, i32 %cond215221225, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv67)
  %cmp = icmp ult i32 %conv67, 9
  %phi.cast = trunc i32 %conv67 to i8
  %cond94 = select i1 %cmp, i8 %phi.cast, i8 0
  %add.ptr.i = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 13
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %50 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i = icmp eq i32 %50, 0
  br i1 %tobool.not.i, label %if.end.i186, label %if.then.i184

if.then.i184:                                     ; preds = %get_speed_duplex.exit
  call void @__sanitizer_cov_trace_pc() #18
  %idxprom.i = zext i8 %cond94 to i32
  %arrayidx.i = getelementptr [9 x i32], ptr @ptys2connector_type, i32 0, i32 %idxprom.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i, align 4
  %conv.i183 = trunc i32 %52 to i8
  br label %get_connector_port.exit

if.end.i186:                                      ; preds = %get_speed_duplex.exit
  %and1.i = and i32 %cond.cond49, 2138113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i185 = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i185, label %if.end4.i, label %if.end.i186.get_connector_port.exit_crit_edge

if.end.i186.get_connector_port.exit_crit_edge:    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_connector_port.exit

if.end4.i:                                        ; preds = %if.end.i186
  %and5.i = and i32 %cond.cond49, 1052736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.get_connector_port.exit_crit_edge

if.end4.i.get_connector_port.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_connector_port.exit

if.end8.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %and9.i = and i32 %cond.cond49, 4194456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  %..i = select i1 %tobool10.not.i, i8 -1, i8 -17
  br label %get_connector_port.exit

get_connector_port.exit:                          ; preds = %if.end8.i, %if.end4.i.get_connector_port.exit_crit_edge, %if.end.i186.get_connector_port.exit_crit_edge, %if.then.i184
  %retval.0.i187 = phi i8 [ %conv.i183, %if.then.i184 ], [ 3, %if.end.i186.get_connector_port.exit_crit_edge ], [ 5, %if.end4.i.get_connector_port.exit_crit_edge ], [ %..i, %if.end8.i ]
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 3
  %53 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %retval.0.i187, ptr %port, align 1
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i, align 4
  %56 = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i189 = icmp eq i32 %56, 0
  br i1 %tobool.not.i189, label %if.then.i192, label %if.end17.i

if.then.i192:                                     ; preds = %get_connector_port.exit
  %and1.i190 = and i32 %eth_proto_admin.0229, 2142273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i190)
  %tobool2.not.i191 = icmp eq i32 %and1.i190, 0
  br i1 %tobool2.not.i191, label %if.then.i192.if.end.i195_crit_edge, label %if.then3.i

if.then.i192.if.end.i195_crit_edge:               ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i195

if.then3.i:                                       ; preds = %if.then.i192
  call void @__sanitizer_cov_trace_pc() #18
  %57 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %link_modes, align 4
  %or.i.i194 = or i32 %58, 1024
  store i32 %or.i.i194, ptr %link_modes, align 4
  %59 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %advertising, align 4
  %or.i76.i = or i32 %60, 1024
  store i32 %or.i76.i, ptr %advertising, align 4
  br label %if.end.i195

if.end.i195:                                      ; preds = %if.then3.i, %if.then.i192.if.end.i195_crit_edge
  %and7.i = and i32 %eth_proto_admin.0229, 4194458
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end.i195.ptys2ethtool_supported_advertised_port.exit_crit_edge, label %if.end.i195.sw.epilog.sink.split.i_crit_edge

if.end.i195.sw.epilog.sink.split.i_crit_edge:     ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.end.i195.ptys2ethtool_supported_advertised_port.exit_crit_edge: ; preds = %if.end.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %ptys2ethtool_supported_advertised_port.exit

if.end17.i:                                       ; preds = %get_connector_port.exit
  %trunc = trunc i8 %cond94 to i4
  %61 = sext i4 %trunc to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %61)
  %62 = icmp sgt i4 %trunc, 1
  br i1 %62, label %switch.lookup, label %if.end17.i.ptys2ethtool_supported_advertised_port.exit_crit_edge

if.end17.i.ptys2ethtool_supported_advertised_port.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ptys2ethtool_supported_advertised_port.exit

switch.lookup:                                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  %switch.tableidx = add i4 %trunc, -2
  %63 = sext i4 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.mlx5e_ethtool_get_link_ksettings, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %switch.lookup, %if.end.i195.sw.epilog.sink.split.i_crit_edge
  %.sink93.i = phi i32 [ 65536, %if.end.i195.sw.epilog.sink.split.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %65 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %link_modes, align 4
  %or.i79.i = or i32 %66, %.sink93.i
  store i32 %or.i79.i, ptr %link_modes, align 4
  %67 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %advertising, align 4
  %or.i78.i = or i32 %68, %.sink93.i
  store i32 %or.i78.i, ptr %advertising, align 4
  br label %ptys2ethtool_supported_advertised_port.exit

ptys2ethtool_supported_advertised_port.exit:      ; preds = %sw.epilog.sink.split.i, %if.end17.i.ptys2ethtool_supported_advertised_port.exit_crit_edge, %if.end.i195.ptys2ethtool_supported_advertised_port.exit_crit_edge
  %lp_advertising1.i = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 2
  %call.i = call zeroext i1 @mlx5e_ptys_ext_supported(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %proto_cap.i.i196) #16
  %69 = ptrtoint ptr %proto_cap.i.i196 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %18, ptr %proto_cap.i.i196, align 4
  %cond.i.i197 = select i1 %call.i, ptr @ptys2ext_ethtool_table, ptr @ptys2legacy_ethtool_table
  %cond2.i.i198 = select i1 %call.i, i32 17, i32 32
  %call.i.i199 = call i32 @_find_next_bit_be(ptr noundef nonnull %proto_cap.i.i196, i32 noundef %cond2.i.i198, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i199, i32 %cond2.i.i198)
  %cmp10.i.i200 = icmp ult i32 %call.i.i199, %cond2.i.i198
  br i1 %cmp10.i.i200, label %ptys2ethtool_supported_advertised_port.exit.for.body.i.i206_crit_edge, label %ptys2ethtool_supported_advertised_port.exit.get_lp_advertising.exit_crit_edge

ptys2ethtool_supported_advertised_port.exit.get_lp_advertising.exit_crit_edge: ; preds = %ptys2ethtool_supported_advertised_port.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_lp_advertising.exit

ptys2ethtool_supported_advertised_port.exit.for.body.i.i206_crit_edge: ; preds = %ptys2ethtool_supported_advertised_port.exit
  br label %for.body.i.i206

for.body.i.i206:                                  ; preds = %for.body.i.i206.for.body.i.i206_crit_edge, %ptys2ethtool_supported_advertised_port.exit.for.body.i.i206_crit_edge
  %proto.011.i.i201 = phi i32 [ %call3.i.i204, %for.body.i.i206.for.body.i.i206_crit_edge ], [ %call.i.i199, %ptys2ethtool_supported_advertised_port.exit.for.body.i.i206_crit_edge ]
  %advertised.i.i202 = getelementptr %struct.ptys2ethtool_config, ptr %cond.i.i197, i32 %proto.011.i.i201, i32 1
  call void @__bitmap_or(ptr noundef %lp_advertising1.i, ptr noundef %lp_advertising1.i, ptr noundef %advertised.i.i202, i32 noundef 92) #16
  %add.i.i203 = add nuw i32 %proto.011.i.i201, 1
  %call3.i.i204 = call i32 @_find_next_bit_be(ptr noundef nonnull %proto_cap.i.i196, i32 noundef %cond2.i.i198, i32 noundef %add.i.i203) #16
  %cmp.i.i205 = icmp ult i32 %call3.i.i204, %cond2.i.i198
  br i1 %cmp.i.i205, label %for.body.i.i206.for.body.i.i206_crit_edge, label %for.body.i.i206.get_lp_advertising.exit_crit_edge

for.body.i.i206.get_lp_advertising.exit_crit_edge: ; preds = %for.body.i.i206
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_lp_advertising.exit

for.body.i.i206.for.body.i.i206_crit_edge:        ; preds = %for.body.i.i206
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i206

get_lp_advertising.exit:                          ; preds = %for.body.i.i206.get_lp_advertising.exit_crit_edge, %ptys2ethtool_supported_advertised_port.exit.get_lp_advertising.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %proto_cap.i.i196) #16
  %shr60.mask = and i32 %23, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %shr60.mask)
  %cmp98 = icmp eq i32 %shr60.mask, 268435456
  br i1 %cmp98, label %if.then100, label %get_lp_advertising.exit.if.end103_crit_edge

get_lp_advertising.exit.if.end103_crit_edge:      ; preds = %get_lp_advertising.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end103

if.then100:                                       ; preds = %get_lp_advertising.exit
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %lp_advertising1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %lp_advertising1.i, align 4
  %or.i = or i32 %71, 64
  store i32 %or.i, ptr %lp_advertising1.i, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %get_lp_advertising.exit.if.end103_crit_edge
  %72 = xor i8 %conv, 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %73 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %autoneg, align 1
  %74 = ptrtoint ptr %link_modes to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %link_modes, align 4
  %or.i174 = or i32 %75, 64
  store i32 %or.i174, ptr %link_modes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_fec_long.i) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_fec.i) #16
  %76 = ptrtoint ptr %active_fec.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %active_fec.i, align 4, !annotation !132
  %call.i208 = call i32 @mlx5e_get_fec_mode(ptr noundef %1, ptr noundef nonnull %active_fec.i, ptr noundef null) #16
  %77 = zext i32 %call.i208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call.i208, label %get_fec_supported_advertised.exit [
    i32 0, label %do.body.i
    i32 -95, label %if.end103.get_fec_supported_advertised.exit.thread_crit_edge
  ]

if.end103.get_fec_supported_advertised.exit.thread_crit_edge: ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_fec_supported_advertised.exit.thread

do.body.i:                                        ; preds = %if.end103
  %call1.i = call zeroext i1 @mlx5e_fec_in_caps(ptr noundef %1, i32 noundef 1) #16
  br i1 %call1.i, label %if.then2.i, label %do.body.i.do.body4.i_crit_edge

do.body.i.do.body4.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body4.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i = getelementptr %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 0, i32 1
  %78 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i209 = or i32 %79, 131072
  store i32 %or.i.i209, ptr %add.ptr.i.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %if.then2.i, %do.body.i.do.body4.i_crit_edge
  %call5.i = call zeroext i1 @mlx5e_fec_in_caps(ptr noundef %1, i32 noundef 2) #16
  br i1 %call5.i, label %if.then6.i210, label %do.body4.i.do.body13.i_crit_edge

do.body4.i.do.body13.i_crit_edge:                 ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body13.i

if.then6.i210:                                    ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i51.i = getelementptr %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %add.ptr.i51.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i51.i, align 4
  %or.i52.i = or i32 %81, 524288
  store i32 %or.i52.i, ptr %add.ptr.i51.i, align 4
  br label %do.body13.i

do.body13.i:                                      ; preds = %if.then6.i210, %do.body4.i.do.body13.i_crit_edge
  %call14.i = call zeroext i1 @mlx5e_fec_in_caps(ptr noundef %1, i32 noundef 4) #16
  br i1 %call14.i, label %if.then15.i, label %do.body13.i.do.body22.i_crit_edge

do.body13.i.do.body22.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body22.i

if.then15.i:                                      ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i53.i = getelementptr %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %add.ptr.i53.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i53.i, align 4
  %or.i54.i = or i32 %83, 262144
  store i32 %or.i54.i, ptr %add.ptr.i53.i, align 4
  br label %do.body22.i

do.body22.i:                                      ; preds = %if.then15.i, %do.body13.i.do.body22.i_crit_edge
  %call23.i = call zeroext i1 @mlx5e_fec_in_caps(ptr noundef %1, i32 noundef 512) #16
  br i1 %call23.i, label %if.then24.i, label %do.body22.i.do.end30.i_crit_edge

do.body22.i.do.end30.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then24.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i55.i = getelementptr %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 0, i32 2
  %84 = ptrtoint ptr %add.ptr.i55.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %add.ptr.i55.i, align 4
  %or.i56.i = or i32 %85, 1024
  store i32 %or.i56.i, ptr %add.ptr.i55.i, align 4
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then24.i, %do.body22.i.do.end30.i_crit_edge
  %86 = ptrtoint ptr %active_fec.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %active_fec.i, align 4
  %88 = ptrtoint ptr %active_fec_long.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %active_fec_long.i, align 4
  %call31.i = call i32 @_find_first_bit_be(ptr noundef nonnull %active_fec_long.i, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call31.i)
  %cmp32.i = icmp ult i32 %call31.i, 10
  br i1 %cmp32.i, label %if.then33.i, label %do.end30.i.get_fec_supported_advertised.exit.thread_crit_edge

do.end30.i.get_fec_supported_advertised.exit.thread_crit_edge: ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_fec_supported_advertised.exit.thread

if.then33.i:                                      ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i211 = getelementptr [10 x i32], ptr @pplm_fec_2_ethtool_linkmodes, i32 0, i32 %call31.i
  %89 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i211, align 4
  %rem.i.i = and i32 %90, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %90, 5
  %add.ptr.i57.i = getelementptr i32, ptr %advertising, i32 %div2.i.i
  %91 = ptrtoint ptr %add.ptr.i57.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr.i57.i, align 4
  %or.i58.i = or i32 %shl.i.i, %92
  store i32 %or.i58.i, ptr %add.ptr.i57.i, align 4
  br label %get_fec_supported_advertised.exit.thread

get_fec_supported_advertised.exit.thread:         ; preds = %if.then33.i, %do.end30.i.get_fec_supported_advertised.exit.thread_crit_edge, %if.end103.get_fec_supported_advertised.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_fec.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_fec_long.i) #16
  br label %if.end127

get_fec_supported_advertised.exit:                ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_fec.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_fec_long.i) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_ethtool_get_link_ksettings.__UNIQUE_ID_ddebug640, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_ethtool_get_link_ksettings, %if.then122)) #16
          to label %if.end127 [label %if.then122], !srcloc !133

if.then122:                                       ; preds = %get_fec_supported_advertised.exit
  call void @__sanitizer_cov_trace_pc() #18
  %93 = ptrtoint ptr %netdev80 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %netdev80, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mlx5e_ethtool_get_link_ksettings.__UNIQUE_ID_ddebug640, ptr noundef %94, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.mlx5e_ethtool_get_link_ksettings, i32 noundef %call.i208) #16
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %get_fec_supported_advertised.exit, %get_fec_supported_advertised.exit.thread
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool128.not = icmp eq i8 %conv, 0
  br i1 %tobool128.not, label %if.then129, label %if.end127.err_query_regs_crit_edge

if.end127.err_query_regs_crit_edge:               ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_query_regs

if.then129:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #18
  %95 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %advertising, align 4
  %or.i175 = or i32 %96, 64
  store i32 %or.i175, ptr %advertising, align 4
  br label %err_query_regs

err_query_regs:                                   ; preds = %if.then129, %if.end127.err_query_regs_crit_edge, %if.then
  %err.1 = phi i32 [ %call, %if.then ], [ 0, %if.end127.err_query_regs_crit_edge ], [ 0, %if.then129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx_pause) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_pause) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out) #16
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_ptys(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_pause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_set_link_ksettings(ptr nocapture noundef readonly %priv, ptr noundef %link_ksettings) local_unnamed_addr #0 align 64 {
entry:
  %modes.i.i = alloca [3 x i32], align 4
  %eproto = alloca %struct.mlx5e_port_eth_proto, align 4
  %an_disable_admin = alloca i8, align 1
  %an_disable_cap = alloca i8, align 1
  %an_status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %eproto) #16
  %2 = ptrtoint ptr %eproto to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %eproto, align 4, !annotation !132
  %3 = getelementptr inbounds %struct.mlx5e_port_eth_proto, ptr %eproto, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !132
  %5 = getelementptr inbounds %struct.mlx5e_port_eth_proto, ptr %eproto, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %an_disable_admin) #16
  %7 = ptrtoint ptr %an_disable_admin to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %an_disable_admin, align 1, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %an_disable_cap) #16
  %8 = ptrtoint ptr %an_disable_cap to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %an_disable_cap, align 1, !annotation !132
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %an_status) #16
  %9 = ptrtoint ptr %an_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %an_status, align 1, !annotation !132
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %link_ksettings, i32 0, i32 1, i32 1
  %autoneg3 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 5
  %10 = ptrtoint ptr %autoneg3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %autoneg3, align 1
  %speed5 = getelementptr inbounds %struct.ethtool_link_settings, ptr %link_ksettings, i32 0, i32 1
  %12 = ptrtoint ptr %speed5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed5, align 4
  %call = tail call zeroext i1 @mlx5e_ptys_ext_supported(ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %modes.i.i) #16
  %14 = call ptr @memset(ptr %modes.i.i, i32 0, i32 12)
  call void @__bitmap_set(ptr noundef nonnull %modes.i.i, i32 noundef 52, i32 noundef 40) #16
  %call.i.i.i = call i32 @__bitmap_intersects(ptr noundef nonnull %modes.i.i, ptr noundef %advertising, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.i.i = icmp ne i32 %call.i.i.i, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %modes.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp.i = icmp eq i8 %11, 1
  %call.ext_supported.i = select i1 %cmp.i, i1 %tobool.i.i, i1 %call
  %call6.not = xor i1 %call.ext_supported.i, true
  %brmerge = select i1 %call, i1 true, i1 %call6.not
  br i1 %brmerge, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond = select i1 %call.ext_supported.i, ptr @mlx5e_ethtool2ptys_ext_adver_link, ptr @mlx5e_ethtool2ptys_adver_link
  %call12 = call i32 @mlx5_port_query_eth_proto(ptr noundef %1, i8 noundef zeroext 1, i1 noundef zeroext %call.ext_supported.i, ptr noundef nonnull %eproto) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.mlx5e_ethtool_set_link_ksettings, i32 noundef %call12) #20
  br label %cleanup

if.end15:                                         ; preds = %if.end
  br i1 %cmp.i, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %call17 = call i32 %cond(ptr noundef %advertising) #16, !callees !134
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = call i32 @mlx5e_port_speed2linkmodes(ptr noundef %1, i32 noundef %13, i1 noundef zeroext %call6.not) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i32 [ %call17, %cond.true ], [ %call19, %cond.false ]
  %netdev21 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %17 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %netdev21, align 4
  br i1 %call.ext_supported.i, label %cond.end.if.end26_crit_edge, label %if.end.i

cond.end.if.end26_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end.i:                                         ; preds = %cond.end
  %and.i = and i32 %cond20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = or i1 %cmp.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.i.if.end26_crit_edge, label %mlx5e_speed_validate.exit

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

mlx5e_speed_validate.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.mlx5e_speed_validate) #20
  br label %cleanup

if.end26:                                         ; preds = %if.end.i.if.end26_crit_edge, %cond.end.if.end26_crit_edge
  %19 = ptrtoint ptr %eproto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %eproto, align 4
  %and = and i32 %20, %cond20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev21, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.mlx5e_ethtool_set_link_ksettings) #20
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @mlx5_port_query_eth_autoneg(ptr noundef %1, ptr noundef nonnull %an_status, ptr noundef nonnull %an_disable_cap, ptr noundef nonnull %an_disable_admin) #16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp32 = icmp eq i8 %11, 0
  %23 = ptrtoint ptr %an_disable_admin to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %an_disable_admin, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool41.not = icmp eq i8 %24, 0
  br i1 %cmp32, label %land.rhs.critedge, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %if.end30
  br i1 %tobool41.not, label %land.lhs.true36.land.lhs.true45_crit_edge, label %land.lhs.true36.if.end49_crit_edge

land.lhs.true36.if.end49_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true36.land.lhs.true45_crit_edge:        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true45

land.rhs.critedge:                                ; preds = %if.end30
  br i1 %tobool41.not, label %land.rhs.critedge.if.end49_crit_edge, label %land.rhs.critedge.land.lhs.true45_crit_edge

land.rhs.critedge.land.lhs.true45_crit_edge:      ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true45

land.rhs.critedge.if.end49_crit_edge:             ; preds = %land.rhs.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true45:                                  ; preds = %land.rhs.critedge.land.lhs.true45_crit_edge, %land.lhs.true36.land.lhs.true45_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %26)
  %cmp46 = icmp eq i32 %and, %26
  br i1 %cmp46, label %land.lhs.true45.cleanup_crit_edge, label %land.lhs.true45.if.end49_crit_edge

land.lhs.true45.if.end49_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end49

land.lhs.true45.cleanup_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true45.if.end49_crit_edge, %land.rhs.critedge.if.end49_crit_edge, %land.lhs.true36.if.end49_crit_edge
  %call52 = call i32 @mlx5_port_set_eth_ptys(ptr noundef %1, i1 noundef zeroext %cmp32, i32 noundef %and, i1 noundef zeroext %call.ext_supported.i) #16
  call void @mlx5_toggle_port_link(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %land.lhs.true45.cleanup_crit_edge, %if.then28, %mlx5e_speed_validate.exit, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call12, %if.then14 ], [ -22, %mlx5e_speed_validate.exit ], [ 0, %if.end49 ], [ 0, %land.lhs.true45.cleanup_crit_edge ], [ -22, %if.then28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %an_status) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %an_disable_cap) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %an_disable_admin) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %eproto) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_ptys_ext_supported(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_ethtool2ptys_ext_adver_link(ptr noundef %link_modes) unnamed_addr #0 align 64 {
entry:
  %modes = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %modes) #16
  %0 = getelementptr inbounds [2 x i32], ptr %modes, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ptys_modes.035 = phi i32 [ 0, %entry ], [ %ptys_modes.1, %for.inc.for.body_crit_edge ]
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %advertised = getelementptr [17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 %i.032, i32 1
  %1 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx5 = getelementptr [17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 %i.032, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp6 = icmp eq i32 %4, 0
  br i1 %cmp6, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %5 = ptrtoint ptr %modes to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %modes, align 8
  %call.i = call i32 @__bitmap_and(ptr noundef nonnull %modes, ptr noundef %advertised, ptr noundef %link_modes, i32 noundef 92) #16
  %6 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %modes, align 8
  %8 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp15 = icmp eq i32 %7, %9
  br i1 %cmp15, label %land.lhs.true16, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

land.lhs.true16:                                  ; preds = %if.end
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %arrayidx20 = getelementptr [17 x %struct.ptys2ethtool_config], ptr @ptys2ext_ethtool_table, i32 0, i32 %i.032, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp21 = icmp eq i32 %11, %13
  br i1 %cmp21, label %if.then22, label %land.lhs.true16.for.inc_crit_edge

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then22:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  %shl = shl nuw nsw i32 1, %i.032
  %or = or i32 %ptys_modes.035, %shl
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %land.lhs.true16.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %ptys_modes.1 = phi i32 [ %ptys_modes.035, %land.lhs.true.for.inc_crit_edge ], [ %or, %if.then22 ], [ %ptys_modes.035, %land.lhs.true16.for.inc_crit_edge ], [ %ptys_modes.035, %if.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %modes) #16
  ret i32 %ptys_modes.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_ethtool2ptys_adver_link(ptr noundef %link_modes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ptys_modes.013 = phi i32 [ 0, %entry ], [ %ptys_modes.1, %for.inc.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %advertised = getelementptr [32 x %struct.ptys2ethtool_config], ptr @ptys2legacy_ethtool_table, i32 0, i32 %i.012, i32 1
  %0 = ptrtoint ptr %advertised to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %advertised, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call.i = tail call i32 @__bitmap_intersects(ptr noundef %advertised, ptr noundef %link_modes, i32 noundef 92) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then5

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %shl = shl nuw i32 1, %i.012
  %or = or i32 %ptys_modes.013, %shl
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ptys_modes.1 = phi i32 [ %ptys_modes.013, %for.body.for.inc_crit_edge ], [ %or, %if.then5 ], [ %ptys_modes.013, %if.end.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  ret i32 %ptys_modes.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_port_query_eth_proto(ptr noundef, i8 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_speed2linkmodes(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_port_query_eth_autoneg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_port_set_eth_ptys(ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_toggle_port_link(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_ethtool_get_rxfh_key_size(ptr nocapture readnone %priv) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlx5e_ethtool_get_rxfh_indir_size(ptr nocapture readnone %priv) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_get_rxfh(ptr noundef %netdev, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock.i = getelementptr i8, ptr %netdev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #16
  %rx_res.i = getelementptr i8, ptr %netdev, i32 6236
  %0 = ptrtoint ptr %rx_res.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_res.i, align 4
  %call1.i = tail call i32 @mlx5e_rx_res_rss_get_rxfh(ptr noundef %1, i32 noundef 0, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) #16
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #16
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_rxfh_context(ptr noundef %dev, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc, i32 noundef %rss_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %rx_res = getelementptr i8, ptr %dev, i32 6236
  %0 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_res, align 4
  %call1 = tail call i32 @mlx5e_rx_res_rss_get_rxfh(ptr noundef %1, i32 noundef %rss_context, ptr noundef %indir, ptr noundef %key, ptr noundef %hfunc) #16
  tail call void @mutex_unlock(ptr noundef %state_lock) #16
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_set_rxfh(ptr noundef %dev, ptr noundef %indir, ptr noundef %key, i8 noundef zeroext %hfunc) #0 align 64 {
entry:
  %hfunc.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hfunc.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %hfunc, ptr %hfunc.addr, align 1
  %state_lock = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %rx_res = getelementptr i8, ptr %dev, i32 6236
  %1 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_res, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %hfunc)
  %cmp = icmp eq i8 %hfunc, 0
  %.hfunc.addr = select i1 %cmp, ptr null, ptr %hfunc.addr
  %call2 = call i32 @mlx5e_rx_res_rss_set_rxfh(ptr noundef %2, i32 noundef 0, ptr noundef %indir, ptr noundef %key, ptr noundef %.hfunc.addr) #16
  call void @mutex_unlock(ptr noundef %state_lock) #16
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_rss_set_rxfh(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ethtool_get_pauseparam(ptr nocapture noundef readonly %priv, ptr noundef %pauseparam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 2
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %call = tail call i32 @mlx5_query_port_pause(ptr noundef %1, ptr noundef %rx_pause, ptr noundef %tx_pause) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.mlx5e_ethtool_get_pauseparam, i32 noundef %call) #20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_set_pauseparam(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %pauseparam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not = icmp sgt i32 %5, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 1
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp ne i32 %9, 0
  %cond = zext i1 %tobool5.not to i32
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %10 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp ne i32 %11, 0
  %cond7 = zext i1 %tobool6.not to i32
  %call = tail call i32 @mlx5_set_port_pause(ptr noundef %1, i32 noundef %cond, i32 noundef %cond7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.end4.cleanup_crit_edge, label %if.then9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %12 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.mlx5e_ethtool_set_pauseparam, i32 noundef %call) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.then9 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_pause(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_get_ts_info(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %ptp.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 27, i32 3
  %2 = ptrtoint ptr %ptp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.mlx5_clock_get_ptp_index.exit_crit_edge, label %cond.true.i

entry.mlx5_clock_get_ptp_index.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_clock_get_ptp_index.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 @ptp_clock_index(ptr noundef nonnull %3) #16
  br label %mlx5_clock_get_ptp_index.exit

mlx5_clock_get_ptp_index.exit:                    ; preds = %cond.true.i, %entry.mlx5_clock_get_ptp_index.exit_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ -1, %entry.mlx5_clock_get_ptp_index.exit_crit_edge ]
  %phc_index = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %phc_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i, ptr %phc_index, align 4
  %5 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %8, i32 39
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, -1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %mlx5_clock_get_ptp_index.exit.cleanup_crit_edge, label %if.end

mlx5_clock_get_ptp_index.exit.cleanup_crit_edge:  ; preds = %mlx5_clock_get_ptp_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %mlx5_clock_get_ptp_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 69, ptr %so_timestamping, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %13 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %rx_filters, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mlx5_clock_get_ptp_index.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_flash_device(ptr nocapture noundef readonly %priv, ptr noundef %flash) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #16
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !132
  %region = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 1
  %5 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.ethtool_flash, ptr %flash, i32 0, i32 2
  %dev2 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 133
  %call = call i32 @request_firmware_direct(ptr noundef nonnull %fw, ptr noundef %data, ptr noundef %dev2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end4.dev_hold.exit_crit_edge, label %do.body1.i

if.end4.dev_hold.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end4
  %7 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !135
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %8 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = call i32 @llvm.read_register.i32(metadata !116) #16
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i = add i32 %19, 1
  store i32 %add13.i, ptr %17, align 4
  %20 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !136
  %and.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !137

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #16, !srcloc !138
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end4.dev_hold.exit_crit_edge
  call void @rtnl_unlock() #16
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  %call5 = call i32 @mlx5_firmware_flash(ptr noundef %1, ptr noundef %22, ptr noundef null) #16
  %23 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %24) #16
  call void @rtnl_lock() #16
  br i1 %tobool.not.i, label %dev_hold.exit.cleanup_crit_edge, label %do.body1.i24

dev_hold.exit.cleanup_crit_edge:                  ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body1.i24:                                     ; preds = %dev_hold.exit
  %25 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !135
  %pcpu_refcnt.i16 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %26 = ptrtoint ptr %pcpu_refcnt.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcpu_refcnt.i16, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = call i32 @llvm.read_register.i32(metadata !116) #16
  %and.i.i17 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i17 to ptr
  %cpu.i18 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i18, align 4
  %arrayidx.i19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i19, align 4
  %add.i20 = add i32 %34, %28
  %35 = inttoptr i32 %add.i20 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add13.i21 = add i32 %37, -1
  store i32 %add13.i21, ptr %35, align 4
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !136
  %and.i.i.i22 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i22)
  %tobool24.not.i23 = icmp eq i32 %and.i.i.i22, 0
  br i1 %tobool24.not.i23, label %if.then28.i25, label %do.body1.i24.do.end30.i26_crit_edge, !prof !137

do.body1.i24.do.end30.i26_crit_edge:              ; preds = %do.body1.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i26

if.then28.i25:                                    ; preds = %do.body1.i24
  call void @__sanitizer_cov_trace_pc() #18
  call void @warn_bogus_irq_restore() #16
  br label %do.end30.i26

do.end30.i26:                                     ; preds = %if.then28.i25, %do.body1.i24.do.end30.i26_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #16, !srcloc !138
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i26, %dev_hold.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call5, %dev_hold.exit.cleanup_crit_edge ], [ %call5, %do.end30.i26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_firmware_flash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_modify_rx_cqe_compression_locked(ptr noundef %priv, i1 noundef zeroext %new_val, i1 noundef zeroext %rx_filter) local_unnamed_addr #0 align 64 {
entry:
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %new_val to i8
  %params = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3
  %pflags = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 15
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pflags, align 4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #16
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %5, i32 45
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %cond = select i1 %new_val, i32 -95, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp eq i32 %8, 0
  %cmp = xor i1 %9, %new_val
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end12:                                         ; preds = %if.end
  br i1 %new_val, label %land.lhs.true, label %if.end21.thread

land.lhs.true:                                    ; preds = %if.end12
  %profile = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %10 = ptrtoint ptr %profile to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %profile, align 4
  %features = getelementptr inbounds %struct.mlx5e_profile, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features, align 4
  %and15 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %14 = and i1 %tobool16.not, %rx_filter
  br i1 %14, label %if.then20, label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.59) #20
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true
  %packet_merge = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 9
  %17 = ptrtoint ptr %packet_merge to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %packet_merge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp24 = icmp eq i32 %18, 2
  br i1 %cmp24, label %if.end21.if.then26_crit_edge, label %if.then32.critedge

if.end21.if.then26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

if.end21.thread:                                  ; preds = %if.end12
  %packet_merge96 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 9
  %19 = ptrtoint ptr %packet_merge96 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %packet_merge96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2497 = icmp eq i32 %20, 2
  br i1 %cmp2497, label %if.end21.thread.if.then26_crit_edge, label %if.end28.thread

if.end21.thread.if.then26_crit_edge:              ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26

if.end28.thread:                                  ; preds = %if.end21.thread
  call void @__sanitizer_cov_trace_pc() #18
  %21 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %pflags34 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %22 = ptrtoint ptr %pflags34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pflags34, align 4
  %and35 = and i32 %23, -5
  store i32 %and35, ptr %pflags34, align 4
  br label %do.end

if.then26:                                        ; preds = %if.end21.thread.if.then26_crit_edge, %if.end21.if.then26_crit_edge
  %netdev27 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %24 = ptrtoint ptr %netdev27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev27, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.60) #20
  br label %cleanup

if.then32.critedge:                               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  %26 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %pflags33 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %27 = ptrtoint ptr %pflags33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pflags33, align 4
  %or = or i32 %28, 4
  store i32 %or, ptr %pflags33, align 4
  br label %do.end

do.end:                                           ; preds = %if.then32.critedge, %if.end28.thread
  br i1 %rx_filter, label %if.then38, label %do.end.if.end41_crit_edge

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %ptp_rx = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 20
  %29 = ptrtoint ptr %ptp_rx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %frombool, ptr %ptp_rx, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %do.end.if.end41_crit_edge
  %ptp_rx42 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 20
  %30 = ptrtoint ptr %ptp_rx42 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ptp_rx42, align 4, !range !131
  %ptp_rx47 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 20
  %32 = ptrtoint ptr %ptp_rx47 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ptp_rx47, align 4, !range !131
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp50 = icmp eq i8 %31, %33
  br i1 %cmp50, label %if.then52, label %if.else53

if.then52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %call = call i32 @mlx5e_safe_switch_params(ptr noundef %priv, ptr noundef nonnull %new_params, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #16
  br label %if.end56

if.else53:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  %call55 = call i32 @mlx5e_safe_switch_params(ptr noundef %priv, ptr noundef nonnull %new_params, ptr noundef nonnull @mlx5e_ptp_rx_manage_fs_ctx, ptr noundef %ptp_rx42, i1 noundef zeroext true) #16
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then52
  %err.0 = phi i32 [ %call, %if.then52 ], [ %call55, %if.else53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool57.not = icmp eq i32 %err.0, 0
  br i1 %tobool57.not, label %do.body60, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body60:                                        ; preds = %if.end56
  %msglevel = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 4
  %34 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msglevel, align 4
  %and61 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body60.cleanup_crit_edge, label %if.then63

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then63:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #18
  %netdev64 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %36 = ptrtoint ptr %netdev64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev64, align 4
  %38 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pflags, align 4
  %and68 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond72 = select i1 %tobool69.not, ptr @.str.63, ptr @.str.62
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.61, ptr noundef nonnull %cond72) #20
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %do.body60.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then26, %if.then20, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then26 ], [ -22, %if.then20 ], [ %cond, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %err.0, %if.end56.cleanup_crit_edge ], [ 0, %if.then63 ], [ 0, %do.body60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #16
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ptp_rx_manage_fs_ctx(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_get_rxnfc(ptr noundef %dev, ptr noundef %info, ptr noundef %rule_locs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %1)
  %cmp = icmp eq i32 %1, 45
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %num_channels = getelementptr i8, ptr %dev, i32 6032
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_channels, align 4
  %conv = zext i16 %3 to i64
  %data = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %data, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_get_rxnfc(ptr noundef %add.ptr.i, ptr noundef %info, ptr noundef %rule_locs) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_get_rxnfc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_set_rxnfc(ptr noundef %dev, ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_rxnfc(ptr noundef %add.ptr.i, ptr noundef %cmd) #16
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ethtool_set_rxnfc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %drvinfo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_ethtool_get_drvinfo(ptr noundef %add.ptr.i, ptr noundef %drvinfo)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %wol) #0 align 64 {
entry:
  %mlx5_wol_mode = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mlx5_wol_mode) #16
  %2 = ptrtoint ptr %mlx5_wol_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %mlx5_wol_mode, align 1, !annotation !132
  %3 = call ptr @memset(ptr %wol, i32 0, i32 20)
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i16 = getelementptr i32, ptr %5, i32 14
  %6 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i16, align 4
  %8 = and i32 %7, 127
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %9 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @mlx5_query_port_wol(ptr noundef %1, ptr noundef nonnull %mlx5_wol_mode) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %mlx5_wol_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mlx5_wol_mode, align 1
  %conv.i = zext i8 %11 to i32
  %and.i = shl nuw nsw i32 %conv.i, 3
  %12 = and i32 %and.i, 32
  %and2.i = shl nuw nsw i32 %conv.i, 5
  %13 = and i32 %and2.i, 64
  %and8.i = shl nuw nsw i32 %conv.i, 1
  %14 = and i32 %and8.i, 16
  %and14.i = lshr i32 %conv.i, 1
  %15 = and i32 %and14.i, 8
  %and20.i = lshr i32 %conv.i, 3
  %16 = and i32 %and20.i, 4
  %and26.i = lshr i32 %conv.i, 5
  %17 = and i32 %and26.i, 2
  %18 = lshr i32 %conv.i, 7
  %19 = or i32 %12, %18
  %20 = or i32 %19, %13
  %21 = or i32 %20, %14
  %22 = or i32 %21, %15
  %23 = or i32 %22, %16
  %24 = or i32 %23, %17
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %25 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %wolopts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mlx5_wol_mode) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i16 = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %add.ptr.i16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i16, align 4
  %6 = and i32 %5, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  %neg = xor i32 %6, -1
  %and = and i32 %8, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %trunc.i = trunc i32 %8 to i8
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %trunc.i) #16
  %9 = and i8 %rev.i, -2
  %call9 = tail call i32 @mlx5_set_port_wol(ptr noundef %1, i8 noundef zeroext %9) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end5 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_get_msglevel(ptr nocapture noundef readonly %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msglevel = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msglevel, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlx5e_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %val) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %msglevel = getelementptr i8, ptr %dev, i32 2412
  %0 = ptrtoint ptr %msglevel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msglevel, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_link_ext_state(ptr noundef %dev, ptr nocapture noundef writeonly %link_ext_state_info) #0 align 64 {
entry:
  %in.i = alloca [64 x i32], align 4
  %out.i = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mdev = getelementptr i8, ptr %dev, i32 11328
  %3 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdev, align 64
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %in.i) #16
  %5 = getelementptr inbounds i8, ptr %in.i, i32 12
  %6 = call ptr @memset(ptr %5, i32 0, i32 244)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %out.i) #16
  %7 = call ptr @memset(ptr %out.i, i32 255, i32 256)
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65536, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 1
  %9 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %add.ptr13.i, align 4
  %add.ptr23.i = getelementptr inbounds i8, ptr %in.i, i32 8
  %10 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %add.ptr23.i, align 4
  %call.i = call i32 @mlx5_core_access_reg(ptr noundef %4, ptr noundef nonnull %in.i, i32 noundef 256, ptr noundef nonnull %out.i, i32 noundef 256, i16 noundef zeroext 20529, i32 noundef 0, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i19 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i19, label %lor.lhs.false, label %query_port_status_opcode.exit

query_port_status_opcode.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %out.i) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr41.i = getelementptr inbounds i8, ptr %out.i, i32 12
  %11 = ptrtoint ptr %add.ptr41.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr41.i, align 4
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %out.i) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %in.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %lor.lhs.false.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x %struct.mlx5e_ethtool_link_ext_state_opcode_mapping], ptr @mlx5e_link_ext_state_opcode_map, i32 0, i32 %i.023
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %link_ext_state_mapping.sroa.0.0.copyload15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %link_ext_state_mapping.sroa.0.0.copyload15, i32 %12)
  %cmp7 = icmp eq i32 %link_ext_state_mapping.sroa.0.0.copyload15, %12
  br i1 %cmp7, label %if.then8, label %for.cond

if.then8:                                         ; preds = %for.body
  %link_ext_state_mapping.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %14 = ptrtoint ptr %link_ext_state_mapping.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %link_ext_state_mapping.sroa.6.0.copyload16 = load i32, ptr %link_ext_state_mapping.sroa.6.0.arrayidx.sroa_idx, align 4
  %15 = zext i32 %link_ext_state_mapping.sroa.6.0.copyload16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %link_ext_state_mapping.sroa.6.0.copyload16, label %if.then8.mlx5e_set_link_ext_state.exit_crit_edge [
    i32 0, label %if.then8.sw.epilog.sink.split.i_crit_edge
    i32 1, label %if.then8.sw.epilog.sink.split.i_crit_edge29
    i32 2, label %if.then8.sw.epilog.sink.split.i_crit_edge30
    i32 3, label %if.then8.sw.epilog.sink.split.i_crit_edge31
    i32 5, label %if.then8.sw.epilog.sink.split.i_crit_edge32
  ]

if.then8.sw.epilog.sink.split.i_crit_edge32:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then8.sw.epilog.sink.split.i_crit_edge31:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then8.sw.epilog.sink.split.i_crit_edge30:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then8.sw.epilog.sink.split.i_crit_edge29:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then8.sw.epilog.sink.split.i_crit_edge:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog.sink.split.i

if.then8.mlx5e_set_link_ext_state.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_set_link_ext_state.exit

sw.epilog.sink.split.i:                           ; preds = %if.then8.sw.epilog.sink.split.i_crit_edge, %if.then8.sw.epilog.sink.split.i_crit_edge29, %if.then8.sw.epilog.sink.split.i_crit_edge30, %if.then8.sw.epilog.sink.split.i_crit_edge31, %if.then8.sw.epilog.sink.split.i_crit_edge32
  %link_ext_state_mapping.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %16 = ptrtoint ptr %link_ext_state_mapping.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %link_ext_state_mapping.sroa.7.0.copyload17 = load i32, ptr %link_ext_state_mapping.sroa.7.0.arrayidx.sroa_idx, align 4
  %link_ext_state_mapping.sroa.4.8.extract.shift.i = lshr i32 %link_ext_state_mapping.sroa.7.0.copyload17, 24
  %17 = getelementptr inbounds %struct.ethtool_link_ext_state_info, ptr %link_ext_state_info, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %link_ext_state_mapping.sroa.4.8.extract.shift.i, ptr %17, align 4
  br label %mlx5e_set_link_ext_state.exit

mlx5e_set_link_ext_state.exit:                    ; preds = %sw.epilog.sink.split.i, %if.then8.mlx5e_set_link_ext_state.exit_crit_edge
  %19 = ptrtoint ptr %link_ext_state_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %link_ext_state_mapping.sroa.6.0.copyload16, ptr %link_ext_state_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_set_link_ext_state.exit, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %query_port_status_opcode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mlx5e_set_link_ext_state.exit ], [ -61, %entry.cleanup_crit_edge ], [ -61, %lor.lhs.false.cleanup_crit_edge ], [ -61, %query_port_status_opcode.exit ], [ -61, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef writeonly %kernel_coal, ptr nocapture noundef readnone %extack) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i2 = getelementptr i32, ptr %3, i32 17
  %4 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i2, align 4
  %6 = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.mlx5e_ethtool_get_coalesce.exit_crit_edge, label %if.end.i

entry.mlx5e_ethtool_get_coalesce.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_get_coalesce.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_cq_moderation.i = getelementptr i8, ptr %netdev, i32 6110
  %7 = ptrtoint ptr %rx_cq_moderation.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_cq_moderation.i, align 2
  %conv.i = zext i16 %8 to i32
  %rx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %9 = ptrtoint ptr %rx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %rx_coalesce_usecs.i, align 4
  %pkts.i = getelementptr i8, ptr %netdev, i32 6112
  %10 = ptrtoint ptr %pkts.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pkts.i, align 2
  %conv1.i = zext i16 %11 to i32
  %rx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 2
  %12 = ptrtoint ptr %rx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv1.i, ptr %rx_max_coalesced_frames.i, align 4
  %rx_dim_enabled.i = getelementptr i8, ptr %netdev, i32 6143
  %13 = ptrtoint ptr %rx_dim_enabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %rx_dim_enabled.i, align 1, !range !131
  %15 = zext i8 %14 to i32
  %use_adaptive_rx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 10
  %16 = ptrtoint ptr %use_adaptive_rx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %use_adaptive_rx_coalesce.i, align 4
  %tx_cq_moderation.i = getelementptr i8, ptr %netdev, i32 6118
  %17 = ptrtoint ptr %tx_cq_moderation.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tx_cq_moderation.i, align 2
  %conv9.i = zext i16 %18 to i32
  %tx_coalesce_usecs.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 5
  %19 = ptrtoint ptr %tx_coalesce_usecs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv9.i, ptr %tx_coalesce_usecs.i, align 4
  %pkts10.i = getelementptr i8, ptr %netdev, i32 6120
  %20 = ptrtoint ptr %pkts10.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pkts10.i, align 2
  %conv11.i = zext i16 %21 to i32
  %tx_max_coalesced_frames.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 6
  %22 = ptrtoint ptr %tx_max_coalesced_frames.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv11.i, ptr %tx_max_coalesced_frames.i, align 4
  %tx_dim_enabled.i = getelementptr i8, ptr %netdev, i32 6144
  %23 = ptrtoint ptr %tx_dim_enabled.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tx_dim_enabled.i, align 4, !range !131
  %25 = zext i8 %24 to i32
  %use_adaptive_tx_coalesce.i = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 11
  %26 = ptrtoint ptr %use_adaptive_tx_coalesce.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %use_adaptive_tx_coalesce.i, align 4
  %pflags.i = getelementptr i8, ptr %netdev, i32 6148
  %27 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pflags.i, align 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %use_cqe_mode_rx.i = getelementptr inbounds %struct.kernel_ethtool_coalesce, ptr %kernel_coal, i32 0, i32 1
  %31 = ptrtoint ptr %use_cqe_mode_rx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %use_cqe_mode_rx.i, align 1
  %32 = load i32, ptr %pflags.i, align 4
  %33 = trunc i32 %32 to i8
  %34 = lshr i8 %33, 1
  %35 = and i8 %34, 1
  %36 = ptrtoint ptr %kernel_coal to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %kernel_coal, align 1
  br label %mlx5e_ethtool_get_coalesce.exit

mlx5e_ethtool_get_coalesce.exit:                  ; preds = %if.end.i, %entry.mlx5e_ethtool_get_coalesce.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -95, %entry.mlx5e_ethtool_get_coalesce.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_coalesce(ptr noundef %netdev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readonly %kernel_coal, ptr noundef %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_coalesce(ptr noundef %add.ptr.i, ptr noundef %coal, ptr noundef %kernel_coal, ptr noundef %extack)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx5e_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending.i = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8192, ptr %rx_max_pending.i, align 4
  %tx_max_pending.i = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8192, ptr %tx_max_pending.i, align 4
  %params.i = getelementptr i8, ptr %dev, i32 6028
  %log_rq_mtu_frames.i = getelementptr i8, ptr %dev, i32 6030
  %2 = ptrtoint ptr %log_rq_mtu_frames.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %log_rq_mtu_frames.i, align 2
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %rx_pending.i = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl.i, ptr %rx_pending.i, align 4
  %5 = ptrtoint ptr %params.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %params.i, align 4
  %conv3.i = zext i8 %6 to i32
  %shl4.i = shl nuw i32 1, %conv3.i
  %tx_pending.i = getelementptr inbounds %struct.ethtool_ringparam, ptr %param, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl4.i, ptr %tx_pending.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %param, ptr nocapture noundef readnone %kernel_param, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_ringparam(ptr noundef %add.ptr.i, ptr noundef %param)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_pause_stats(ptr noundef %netdev, ptr noundef %pause_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @mlx5e_stats_pause_get(ptr noundef %add.ptr.i, ptr noundef %pause_stats) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr noundef %pauseparam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1.i = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  %rx_pause.i = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 2
  %tx_pause.i = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %call.i = tail call i32 @mlx5_query_port_pause(ptr noundef %1, ptr noundef %rx_pause.i, ptr noundef %tx_pause.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.mlx5e_ethtool_get_pauseparam.exit_crit_edge, label %if.then.i

entry.mlx5e_ethtool_get_pauseparam.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_get_pauseparam.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %netdev.i = getelementptr i8, ptr %netdev, i32 11332
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.mlx5e_ethtool_get_pauseparam, i32 noundef %call.i) #20
  br label %mlx5e_ethtool_get_pauseparam.exit

mlx5e_ethtool_get_pauseparam.exit:                ; preds = %if.then.i, %entry.mlx5e_ethtool_get_pauseparam.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %pauseparam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1.i = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i2 = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i, label %entry.mlx5e_ethtool_set_pauseparam.exit_crit_edge, label %if.end.i

entry.mlx5e_ethtool_set_pauseparam.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_set_pauseparam.exit

if.end.i:                                         ; preds = %entry
  %autoneg.i = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 1
  %6 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %autoneg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge

if.end.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_set_pauseparam.exit

if.end4.i:                                        ; preds = %if.end.i
  %rx_pause.i = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 2
  %8 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not.i = icmp ne i32 %9, 0
  %cond.i = zext i1 %tobool5.not.i to i32
  %tx_pause.i = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pauseparam, i32 0, i32 3
  %10 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp ne i32 %11, 0
  %cond7.i = zext i1 %tobool6.not.i to i32
  %call.i = tail call i32 @mlx5_set_port_pause(ptr noundef %1, i32 noundef %cond.i, i32 noundef %cond7.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.end4.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge, label %if.then9.i

if.end4.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_set_pauseparam.exit

if.then9.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  %netdev.i = getelementptr i8, ptr %netdev, i32 11332
  %12 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.mlx5e_ethtool_set_pauseparam, i32 noundef %call.i) #20
  br label %mlx5e_ethtool_set_pauseparam.exit

mlx5e_ethtool_set_pauseparam.exit:                ; preds = %if.then9.i, %if.end4.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge, %if.end.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge, %entry.mlx5e_ethtool_set_pauseparam.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %entry.mlx5e_ethtool_set_pauseparam.exit_crit_edge ], [ -22, %if.end.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge ], [ %call.i, %if.then9.i ], [ 0, %if.end4.i.mlx5e_ethtool_set_pauseparam.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_self_test(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_strings(ptr noundef %dev, i32 noundef %stringset, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @mlx5e_ethtool_get_strings(ptr noundef %add.ptr.i, i32 noundef %stringset, ptr noundef %data)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_phys_id(ptr nocapture noundef readonly %dev, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %state, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 0, label %sw.bb2
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %if.end.sw.epilog_crit_edge
  %beacon_duration.0 = phi i16 [ 0, %sw.bb2 ], [ -1, %if.end.sw.epilog_crit_edge ]
  %call3 = tail call i32 @mlx5_set_port_beacon(ptr noundef %1, i16 noundef zeroext %beacon_duration.0) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.epilog ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state_lock.i = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #16
  tail call void @mlx5e_stats_update(ptr noundef %add.ptr.i) #16
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #16
  tail call void @mlx5e_stats_fill(ptr noundef %add.ptr.i, ptr noundef %data, i32 noundef 0) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_get_priv_flags(ptr nocapture noundef readonly %netdev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %pflags = getelementptr i8, ptr %netdev, i32 6148
  %0 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pflags, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_priv_flags(ptr noundef %netdev, i32 noundef %pflags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr i8, ptr %netdev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %pflags.i = getelementptr i8, ptr %netdev, i32 6148
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %pflag.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %pflag.013
  %and.i = and i32 %shl.i, %pflags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %0 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pflags.i, align 4
  %xor.i = xor i32 %1, %pflags
  %and3.i = and i32 %xor.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %for.body.for.inc_crit_edge, label %if.end.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %handler.i = getelementptr [8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 %pflag.013, i32 1
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 4
  %call6.i = tail call i32 %3(ptr noundef %netdev, i1 noundef zeroext %tobool.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i, label %mlx5e_handle_pflag.exit

do.body.i:                                        ; preds = %if.end.i
  br i1 %tobool.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pflags.i, align 4
  %or.i = or i32 %5, %shl.i
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %neg.i = xor i32 %shl.i, -1
  %6 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pflags.i, align 4
  %and22.i = and i32 %7, %neg.i
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.i, %if.then13.i
  %storemerge.i = phi i32 [ %and22.i, %if.else.i ], [ %or.i, %if.then13.i ]
  %8 = ptrtoint ptr %pflags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %storemerge.i, ptr %pflags.i, align 4
  br label %for.inc

mlx5e_handle_pflag.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr [8 x %struct.pflag_desc], ptr @mlx5e_priv_flags, i32 0, i32 %pflag.013
  %cond.i = select i1 %tobool.i, ptr @.str.69, ptr @.str.70
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond.i, ptr noundef %arrayidx.i, i32 noundef %call6.i) #20
  br label %for.end

for.inc:                                          ; preds = %do.end.i, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %pflag.013, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %mlx5e_handle_pflag.exit
  %err.1 = phi i32 [ %call6.i, %mlx5e_handle_pflag.exit ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #16
  tail call void @netdev_update_features(ptr noundef %netdev) #16
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_sset_count(ptr noundef %dev, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = zext i32 %sset to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %sset, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %entry.mlx5e_ethtool_get_sset_count.exit_crit_edge
    i32 0, label %sw.bb2.i
  ]

entry.mlx5e_ethtool_get_sset_count.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_get_sset_count.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i = tail call i32 @mlx5e_stats_total_num(ptr noundef %add.ptr.i) #16
  br label %mlx5e_ethtool_get_sset_count.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call3.i = tail call i32 @mlx5e_self_test_num(ptr noundef %add.ptr.i) #16
  br label %mlx5e_ethtool_get_sset_count.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_get_sset_count.exit

mlx5e_ethtool_get_sset_count.exit:                ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i, %entry.mlx5e_ethtool_get_sset_count.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %sw.default.i ], [ %call3.i, %sw.bb2.i ], [ %call.i, %sw.bb.i ], [ 8, %entry.mlx5e_ethtool_get_sset_count.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_flash_device(ptr nocapture noundef readonly %dev, ptr noundef %flash) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_flash_device(ptr noundef %add.ptr.i, ptr noundef %flash)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_get_rxfh_key_size(ptr nocapture noundef readnone %netdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_get_rxfh_indir_size(ptr nocapture noundef readnone %netdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 256
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_rxfh_context(ptr noundef %dev, ptr noundef %indir, ptr noundef %key, i8 noundef zeroext %hfunc, ptr noundef %rss_context, i1 noundef zeroext %delete) #0 align 64 {
entry:
  %hfunc.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hfunc.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %hfunc, ptr %hfunc.addr, align 1
  %state_lock = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  br i1 %delete, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %rx_res = getelementptr i8, ptr %dev, i32 6236
  %1 = ptrtoint ptr %rx_res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_res, align 4
  %3 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rss_context, align 4
  %call1 = tail call i32 @mlx5e_rx_res_rss_destroy(ptr noundef %2, i32 noundef %4) #16
  br label %unlock

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rss_context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp = icmp eq i32 %6, -1
  br i1 %cmp, label %if.then2, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %num_channels = getelementptr i8, ptr %dev, i32 6032
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_channels, align 4
  %conv = zext i16 %8 to i32
  %rx_res3 = getelementptr i8, ptr %dev, i32 6236
  %9 = ptrtoint ptr %rx_res3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_res3, align 4
  %call4 = tail call i32 @mlx5e_rx_res_rss_init(ptr noundef %10, ptr noundef %rss_context, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.unlock_crit_edge

if.then2.unlock_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlock

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %rx_res9 = getelementptr i8, ptr %dev, i32 6236
  %11 = ptrtoint ptr %rx_res9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_res9, align 4
  %13 = ptrtoint ptr %rss_context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rss_context, align 4
  %15 = ptrtoint ptr %hfunc.addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hfunc.addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp11 = icmp eq i8 %16, 0
  %.hfunc.addr = select i1 %cmp11, ptr null, ptr %hfunc.addr
  %call13 = call i32 @mlx5e_rx_res_rss_set_rxfh(ptr noundef %12, i32 noundef %14, ptr noundef %indir, ptr noundef %key, ptr noundef %.hfunc.addr) #16
  br label %unlock

unlock:                                           ; preds = %if.end8, %if.then2.unlock_crit_edge, %if.then
  %err.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.then2.unlock_crit_edge ], [ %call13, %if.end8 ]
  call void @mutex_unlock(ptr noundef %state_lock) #16
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_channels(ptr noundef %dev, ptr nocapture noundef writeonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock.i = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #16
  %max_nch.i = getelementptr i8, ptr %dev, i32 30082
  %0 = ptrtoint ptr %max_nch.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %max_nch.i, align 2
  %conv.i = zext i16 %1 to i32
  %max_combined.i = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %2 = ptrtoint ptr %max_combined.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv.i, ptr %max_combined.i, align 4
  %num_channels.i = getelementptr i8, ptr %dev, i32 6032
  %3 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num_channels.i, align 4
  %conv1.i = zext i16 %4 to i32
  %combined_count.i = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %5 = ptrtoint ptr %combined_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1.i, ptr %combined_count.i, align 4
  %refcnt.i = getelementptr i8, ptr %dev, i32 30264
  %6 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %entry.mlx5e_ethtool_get_channels.exit_crit_edge, label %if.then.i

entry.mlx5e_ethtool_get_channels.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_get_channels.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %8 = ptrtoint ptr %max_combined.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul.i, ptr %max_combined.i, align 4
  %mul4.i = shl nuw nsw i32 %conv1.i, 1
  %9 = ptrtoint ptr %combined_count.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul4.i, ptr %combined_count.i, align 4
  br label %mlx5e_ethtool_get_channels.exit

mlx5e_ethtool_get_channels.exit:                  ; preds = %if.then.i, %entry.mlx5e_ethtool_get_channels.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_channels(ptr noundef %dev, ptr nocapture noundef readonly %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_channels(ptr noundef %add.ptr.i, ptr noundef %ch)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_ts_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1.i = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  %ptp.i.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 27, i32 3
  %2 = ptrtoint ptr %ptp.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptp.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.mlx5_clock_get_ptp_index.exit.i_crit_edge, label %cond.true.i.i

entry.mlx5_clock_get_ptp_index.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5_clock_get_ptp_index.exit.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call i32 @ptp_clock_index(ptr noundef nonnull %3) #16
  br label %mlx5_clock_get_ptp_index.exit.i

mlx5_clock_get_ptp_index.exit.i:                  ; preds = %cond.true.i.i, %entry.mlx5_clock_get_ptp_index.exit.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ -1, %entry.mlx5_clock_get_ptp_index.exit.i_crit_edge ]
  %phc_index.i = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %phc_index.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond.i.i, ptr %phc_index.i, align 4
  %5 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev1.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %caps.i, align 8
  %add.ptr.i2 = getelementptr i32, ptr %8, i32 39
  %9 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i.i)
  %cmp.i = icmp eq i32 %cond.i.i, -1
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %mlx5_clock_get_ptp_index.exit.i.mlx5e_ethtool_get_ts_info.exit_crit_edge, label %if.end.i

mlx5_clock_get_ptp_index.exit.i.mlx5e_ethtool_get_ts_info.exit_crit_edge: ; preds = %mlx5_clock_get_ptp_index.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlx5e_ethtool_get_ts_info.exit

if.end.i:                                         ; preds = %mlx5_clock_get_ptp_index.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %so_timestamping.i = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %so_timestamping.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 69, ptr %so_timestamping.i, align 4
  %tx_types.i = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %tx_types.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %tx_types.i, align 4
  %rx_filters.i = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %13 = ptrtoint ptr %rx_filters.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %rx_filters.i, align 4
  br label %mlx5e_ethtool_get_ts_info.exit

mlx5e_ethtool_get_ts_info.exit:                   ; preds = %if.end.i, %mlx5_clock_get_ptp_index.exit.i.mlx5e_ethtool_get_ts_info.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_module_info(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %modinfo) #0 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %call1 = call i32 @mlx5_query_module_eeprom(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef nonnull %data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp = icmp slt i32 %call1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %4, label %sw.default [
    i8 12, label %sw.bb
    i8 3, label %sw.bb17
    i8 17, label %if.end.if.then11_crit_edge
    i8 13, label %lor.lhs.false
  ]

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %type = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %type, align 4
  %eeprom_len = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %7 = ptrtoint ptr %eeprom_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 640, ptr %eeprom_len, align 4
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx7 = getelementptr inbounds [4 x i8], ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp9 = icmp ugt i8 %9, 2
  br i1 %cmp9, label %lor.lhs.false.if.then11_crit_edge, label %if.else

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.end.if.then11_crit_edge
  %type12 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %10 = ptrtoint ptr %type12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %type12, align 4
  %eeprom_len13 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %11 = ptrtoint ptr %eeprom_len13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 640, ptr %eeprom_len13, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %type14 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %12 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %type14, align 4
  %eeprom_len15 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %13 = ptrtoint ptr %eeprom_len15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 640, ptr %eeprom_len15, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %type18 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 1
  %14 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %type18, align 4
  %eeprom_len19 = getelementptr inbounds %struct.ethtool_modinfo, ptr %modinfo, i32 0, i32 2
  %15 = ptrtoint ptr %eeprom_len19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %eeprom_len19, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %conv = zext i8 %4 to i32
  %netdev20 = getelementptr i8, ptr %netdev, i32 11332
  %16 = ptrtoint ptr %netdev20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev20, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.mlx5e_get_module_info, i32 noundef %conv) #20
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb17, %if.else, %if.then11, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -5, %entry.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.else ], [ 0, %sw.bb17 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_module_eeprom(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %ee, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %len = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %offset2 = getelementptr inbounds %struct.ethtool_eeprom, ptr %ee, i32 0, i32 2
  %4 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset2, align 4
  %6 = call ptr @memset(ptr %data, i32 0, i32 %3)
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp37.not = icmp eq i32 %8, 0
  br i1 %cmp37.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %if.end.while.body_crit_edge
  %9 = phi i32 [ %13, %if.end15.while.body_crit_edge ], [ %8, %if.end.while.body_crit_edge ]
  %i.039 = phi i32 [ %add, %if.end15.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %offset.038 = phi i32 [ %add16, %if.end15.while.body_crit_edge ], [ %5, %if.end.while.body_crit_edge ]
  %conv = trunc i32 %offset.038 to i16
  %sub = sub i32 %9, %i.039
  %conv6 = trunc i32 %sub to i16
  %add.ptr = getelementptr i8, ptr %data, i32 %i.039
  %call7 = tail call i32 @mlx5_query_module_eeprom(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext %conv6, ptr noundef %add.ptr) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.body.cleanup_crit_edge, label %if.end10

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp11 = icmp slt i32 %call7, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %netdev14 = getelementptr i8, ptr %netdev, i32 11332
  %10 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev14, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.mlx5e_get_module_eeprom, i32 noundef %call7) #20
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %add = add i32 %call7, %i.039
  %add16 = add i32 %call7, %offset.038
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %cmp = icmp ugt i32 %13, %add
  br i1 %cmp, label %if.end15.while.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %if.then13, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then13 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_tunable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tuna, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cond = icmp eq i32 %1, 3
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mdev1.i = getelementptr i8, ptr %dev, i32 11328
  %2 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1.i, align 64
  %add.ptr.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 1, i32 13
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 0, i32 13
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr6.i = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr6.i, align 4
  %11 = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %if.end.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  %call10.i = tail call i32 @mlx5_query_port_stall_watermark(ptr noundef %3, ptr noundef %data, ptr noundef null) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call10.i, %if.end.i ], [ -95, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -95, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_tunable(ptr noundef %dev, ptr nocapture noundef readonly %tuna, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr i8, ptr %dev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #16
  %id = getelementptr inbounds %struct.ethtool_tunable, ptr %tuna, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cond = icmp eq i32 %1, 3
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %mdev1.i = getelementptr i8, ptr %dev, i32 11328
  %4 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev1.i, align 64
  %add.ptr.i5 = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 1, i32 13
  %6 = ptrtoint ptr %add.ptr.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i5, align 4
  %8 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %lor.lhs.false.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %sw.bb
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %5, i32 0, i32 8, i32 0, i32 13
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr6.i = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr6.i, align 4
  %13 = and i32 %12, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not.i = icmp eq i32 %13, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.sw.epilog_crit_edge, label %if.end.i

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i = icmp eq i16 %3, -1
  %spec.select.i = select i1 %cmp.i, i16 100, i16 %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select.i)
  %cmp14.not.i = icmp ne i16 %spec.select.i, 0
  %14 = add i16 %spec.select.i, -8001
  call void @__sanitizer_cov_trace_const_cmp2(i16 -7921, i16 %14)
  %15 = icmp ult i16 %14, -7921
  %or.cond.i = and i1 %cmp14.not.i, %15
  br i1 %or.cond.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.mlx5e_set_pfc_prevention_tout, i32 noundef 80, i32 noundef 8000) #20
  br label %sw.epilog

if.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv13.i = zext i16 %spec.select.i to i32
  %mul.i = mul nuw nsw i32 %conv13.i, 85
  %div.i = udiv i32 %mul.i, 100
  %conv28.i = and i32 %div.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %conv28.i)
  %cmp29.i = icmp ult i32 %conv28.i, 80
  %phi.cast.i = trunc i32 %div.i to i16
  %cond36.i = select i1 %cmp29.i, i16 80, i16 %phi.cast.i
  %call38.i = tail call i32 @mlx5_set_port_stall_watermark(ptr noundef %5, i16 noundef zeroext %spec.select.i, i16 noundef zeroext %cond36.i) #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end24.i, %if.then23.i, %lor.lhs.false.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ -22, %if.then23.i ], [ %call38.i, %if.end24.i ], [ -95, %lor.lhs.false.i.sw.epilog_crit_edge ], [ -95, %sw.bb.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_lock) #16
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_get_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %link_ksettings)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_link_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %link_ksettings) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %call1 = tail call i32 @mlx5e_ethtool_set_link_ksettings(ptr noundef %add.ptr.i, ptr noundef %link_ksettings)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_fec_stats(ptr noundef %netdev, ptr noundef %fec_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @mlx5e_stats_fec_get(ptr noundef %add.ptr.i, ptr noundef %fec_stats) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_fecparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %fecparam) #0 align 64 {
entry:
  %fec_mode.addr.i16 = alloca i32, align 4
  %fec_mode.addr.i = alloca i32, align 4
  %fec_configured = alloca i16, align 2
  %fec_active = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fec_configured) #16
  %2 = ptrtoint ptr %fec_configured to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %fec_configured, align 2, !annotation !132
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_active) #16
  %3 = ptrtoint ptr %fec_active to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %fec_active, align 4, !annotation !132
  %call2 = call i32 @mlx5e_get_fec_mode(ptr noundef %1, ptr noundef nonnull %fec_active, ptr noundef nonnull %fec_configured) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fec_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fec_active, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_mode.addr.i)
  %6 = ptrtoint ptr %fec_mode.addr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fec_mode.addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %pplm2ethtool_fec.exit.thread28, label %if.end.i

pplm2ethtool_fec.exit.thread28:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode.addr.i)
  %active_fec30 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  %7 = ptrtoint ptr %active_fec30 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %active_fec30, align 4
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  %call.i = call i32 @_find_first_bit_be(ptr noundef nonnull %fec_mode.addr.i, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 10
  br i1 %cmp.i, label %pplm2ethtool_fec.exit, label %pplm2ethtool_fec.exit.thread

pplm2ethtool_fec.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode.addr.i)
  %active_fec26 = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  %8 = ptrtoint ptr %active_fec26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %active_fec26, align 4
  br label %cleanup

pplm2ethtool_fec.exit:                            ; preds = %if.end.i
  %arrayidx.i = getelementptr [10 x i32], ptr @pplm_fec_2_ethtool, i32 0, i32 %call.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode.addr.i)
  %active_fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 1
  %11 = ptrtoint ptr %active_fec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %active_fec, align 4
  %12 = lshr i32 376, %call.i
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.not = icmp eq i32 %13, 0
  br i1 %tobool5.not.not, label %pplm2ethtool_fec.exit.if.end7_crit_edge, label %pplm2ethtool_fec.exit.cleanup_crit_edge

pplm2ethtool_fec.exit.cleanup_crit_edge:          ; preds = %pplm2ethtool_fec.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

pplm2ethtool_fec.exit.if.end7_crit_edge:          ; preds = %pplm2ethtool_fec.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end7:                                          ; preds = %pplm2ethtool_fec.exit.if.end7_crit_edge, %pplm2ethtool_fec.exit.thread28
  %14 = ptrtoint ptr %fec_configured to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fec_configured, align 2
  %conv = zext i16 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fec_mode.addr.i16)
  %16 = ptrtoint ptr %fec_mode.addr.i16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %fec_mode.addr.i16, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i17 = icmp eq i16 %15, 0
  br i1 %tobool.not.i17, label %if.end7.pplm2ethtool_fec.exit24_crit_edge, label %if.end.i20

if.end7.pplm2ethtool_fec.exit24_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %pplm2ethtool_fec.exit24

if.end.i20:                                       ; preds = %if.end7
  %call.i18 = call i32 @_find_first_bit_be(ptr noundef nonnull %fec_mode.addr.i16, i32 noundef 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i18)
  %cmp.i19 = icmp ult i32 %call.i18, 10
  br i1 %cmp.i19, label %if.then1.i22, label %if.end.i20.pplm2ethtool_fec.exit24_crit_edge

if.end.i20.pplm2ethtool_fec.exit24_crit_edge:     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %pplm2ethtool_fec.exit24

if.then1.i22:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i21 = getelementptr [10 x i32], ptr @pplm_fec_2_ethtool, i32 0, i32 %call.i18
  %17 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i21, align 4
  br label %pplm2ethtool_fec.exit24

pplm2ethtool_fec.exit24:                          ; preds = %if.then1.i22, %if.end.i20.pplm2ethtool_fec.exit24_crit_edge, %if.end7.pplm2ethtool_fec.exit24_crit_edge
  %retval.0.i23 = phi i32 [ %18, %if.then1.i22 ], [ 2, %if.end7.pplm2ethtool_fec.exit24_crit_edge ], [ 0, %if.end.i20.pplm2ethtool_fec.exit24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_mode.addr.i16)
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %19 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i23, ptr %fec, align 4
  br label %cleanup

cleanup:                                          ; preds = %pplm2ethtool_fec.exit24, %pplm2ethtool_fec.exit.cleanup_crit_edge, %pplm2ethtool_fec.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pplm2ethtool_fec.exit24 ], [ %call2, %entry.cleanup_crit_edge ], [ -95, %pplm2ethtool_fec.exit.cleanup_crit_edge ], [ -95, %pplm2ethtool_fec.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fec_active) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fec_configured) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_set_fecparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %fecparam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %fec = getelementptr inbounds %struct.ethtool_fecparam, ptr %fecparam, i32 0, i32 2
  %2 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fec, align 4
  %and3.i = and i32 %3, 63
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and3.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp = icmp sgt i32 %call.i.i.i, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fec, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %for.cond.preheader.if.end6_crit_edge

for.cond.preheader.if.end6_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

if.end6:                                          ; preds = %for.inc.8.if.end6_crit_edge, %for.inc.1.if.end6_crit_edge, %for.inc.if.end6_crit_edge, %for.cond.preheader.if.end6_crit_edge
  %mode.025.lcssa = phi i16 [ 0, %for.cond.preheader.if.end6_crit_edge ], [ 1, %for.inc.if.end6_crit_edge ], [ 2, %for.inc.1.if.end6_crit_edge ], [ 9, %for.inc.8.if.end6_crit_edge ]
  %shl = shl i16 1, %mode.025.lcssa
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  %and.1 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.end6_crit_edge

for.inc.if.end6_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.8, label %for.inc.1.if.end6_crit_edge

for.inc.1.if.end6_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.inc.8:                                        ; preds = %for.inc.1
  %and.9 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.8.for.end_crit_edge, label %for.inc.8.if.end6_crit_edge

for.inc.8.if.end6_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end6

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.8.for.end_crit_edge, %if.end6
  %fec_policy.0 = phi i16 [ %shl, %if.end6 ], [ 0, %for.inc.8.for.end_crit_edge ]
  %call8 = tail call i32 @mlx5e_set_fec_mode(ptr noundef %1, i16 noundef zeroext %fec_policy.0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mlx5_toggle_port_link(ptr noundef %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -95, %entry.cleanup_crit_edge ], [ %call8, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_get_module_eeprom_by_page(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %page_data, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %query = alloca %struct.mlx5_module_eeprom_query_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %query) #16
  %0 = getelementptr inbounds i8, ptr %query, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev1, align 64
  %data2 = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 5
  %4 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data2, align 4
  %length = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = call ptr @memset(ptr %5, i32 0, i32 %7)
  %9 = ptrtoint ptr %page_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_data, align 4
  %conv = trunc i32 %10 to i16
  %offset4 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 1
  %11 = ptrtoint ptr %offset4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %offset4, align 2
  %i2c_address = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 4
  %12 = ptrtoint ptr %i2c_address to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_address, align 2
  %conv5 = zext i8 %13 to i16
  %i2c_address6 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 2
  %14 = ptrtoint ptr %i2c_address6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5, ptr %i2c_address6, align 4
  %bank = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 3
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bank, align 1
  %conv7 = zext i8 %16 to i32
  %bank8 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 4
  %17 = ptrtoint ptr %bank8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv7, ptr %bank8, align 4
  %page = getelementptr inbounds %struct.ethtool_module_eeprom, ptr %page_data, i32 0, i32 2
  %18 = ptrtoint ptr %page to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %page, align 4
  %conv9 = zext i8 %19 to i32
  %page10 = getelementptr inbounds %struct.mlx5_module_eeprom_query_params, ptr %query, i32 0, i32 3
  %20 = ptrtoint ptr %page10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv9, ptr %page10, align 4
  %21 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp62.not = icmp eq i32 %22, 0
  br i1 %cmp62.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %if.end.while.body_crit_edge
  %23 = phi i32 [ %32, %if.end27.while.body_crit_edge ], [ %22, %if.end.while.body_crit_edge ]
  %i.063 = phi i32 [ %add, %if.end27.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %sub = sub i32 %23, %i.063
  %conv14 = trunc i32 %sub to i16
  %24 = ptrtoint ptr %query to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv14, ptr %query, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %i.063
  %call15 = call i32 @mlx5_query_module_eeprom_by_page(ptr noundef %3, ptr noundef nonnull %query, ptr noundef %add.ptr) #16
  %25 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call15, label %if.end22 [
    i32 0, label %while.body.cleanup.loopexit_crit_edge
    i32 -22, label %while.body.cleanup_crit_edge
  ]

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.cleanup.loopexit_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.loopexit

if.end22:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp23 = icmp slt i32 %call15, 0
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %netdev26 = getelementptr i8, ptr %netdev, i32 11332
  %26 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev26, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.mlx5e_get_module_eeprom_by_page, i32 noundef %call15) #20
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %add = add i32 %call15, %i.063
  %28 = ptrtoint ptr %offset4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %offset4, align 2
  %30 = trunc i32 %call15 to i16
  %conv31 = add i16 %29, %30
  store i16 %conv31, ptr %offset4, align 2
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length, align 4
  %cmp = icmp ugt i32 %32, %add
  br i1 %cmp, label %if.end27.while.body_crit_edge, label %if.end27.cleanup.loopexit_crit_edge

if.end27.cleanup.loopexit_crit_edge:              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.loopexit

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup.loopexit:                                 ; preds = %if.end27.cleanup.loopexit_crit_edge, %while.body.cleanup.loopexit_crit_edge
  %retval.0.ph = phi i32 [ %add, %if.end27.cleanup.loopexit_crit_edge ], [ %i.063, %while.body.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then25, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.063, %if.then25 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.loopexit ], [ -22, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %query) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_eth_phy_stats(ptr noundef %netdev, ptr noundef %phy_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @mlx5e_stats_eth_phy_get(ptr noundef %add.ptr.i, ptr noundef %phy_stats) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_eth_mac_stats(ptr noundef %netdev, ptr noundef %mac_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @mlx5e_stats_eth_mac_get(ptr noundef %add.ptr.i, ptr noundef %mac_stats) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_eth_ctrl_stats(ptr noundef %netdev, ptr noundef %ctrl_stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @mlx5e_stats_eth_ctrl_get(ptr noundef %add.ptr.i, ptr noundef %ctrl_stats) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_get_rmon_stats(ptr noundef %netdev, ptr noundef %rmon_stats, ptr noundef %ranges) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @mlx5e_stats_rmon_get(ptr noundef %add.ptr.i, ptr noundef %rmon_stats, ptr noundef %ranges) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_modify_cq_moderation(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_ptys2speed(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_get_fec_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_fec_in_caps(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_intersects(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_rss_get_rxfh(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_rx_cqe_based_moder(ptr noundef %netdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %new_params.i = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params.i) #16
  br i1 %enable, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %mdev.i = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 17
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_cqe_based_moder.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %conv.i = zext i1 %enable to i8
  %cond.in.in.i = getelementptr i8, ptr %netdev, i32 6116
  %7 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %cond.in36.i = load i8, ptr %cond.in.in.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.in36.i, i8 %conv.i)
  %cmp.i = icmp eq i8 %cond.in36.i, %conv.i
  br i1 %cmp.i, label %if.end.i.set_pflag_cqe_based_moder.exit_crit_edge, label %if.end18.i

if.end.i.set_pflag_cqe_based_moder.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_cqe_based_moder.exit

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %params20.i = getelementptr i8, ptr %netdev, i32 6028
  %8 = call ptr @memcpy(ptr %new_params.i, ptr %params20.i, i32 144)
  call void @mlx5e_set_rx_cq_mode_params(ptr noundef nonnull %new_params.i, i8 noundef zeroext %conv.i) #16
  %call24.i = call i32 @mlx5e_safe_switch_params(ptr noundef %add.ptr.i.i, ptr noundef nonnull %new_params.i, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #16
  br label %set_pflag_cqe_based_moder.exit

set_pflag_cqe_based_moder.exit:                   ; preds = %if.end18.i, %if.end.i.set_pflag_cqe_based_moder.exit_crit_edge, %land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end18.i ], [ -95, %land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge ], [ 0, %if.end.i.set_pflag_cqe_based_moder.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_tx_cqe_based_moder(ptr noundef %netdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %new_params.i = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params.i) #16
  br i1 %enable, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %mdev.i = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 17
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_cqe_based_moder.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %conv.i = zext i1 %enable to i8
  %cond.in.in.i = getelementptr i8, ptr %netdev, i32 6124
  %7 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %cond.in36.i = load i8, ptr %cond.in.in.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %cond.in36.i, i8 %conv.i)
  %cmp.i = icmp eq i8 %cond.in36.i, %conv.i
  br i1 %cmp.i, label %if.end.i.set_pflag_cqe_based_moder.exit_crit_edge, label %if.end18.i

if.end.i.set_pflag_cqe_based_moder.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_cqe_based_moder.exit

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %params20.i = getelementptr i8, ptr %netdev, i32 6028
  %8 = call ptr @memcpy(ptr %new_params.i, ptr %params20.i, i32 144)
  call void @mlx5e_set_tx_cq_mode_params(ptr noundef nonnull %new_params.i, i8 noundef zeroext %conv.i) #16
  %call24.i = call i32 @mlx5e_safe_switch_params(ptr noundef %add.ptr.i.i, ptr noundef nonnull %new_params.i, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #16
  br label %set_pflag_cqe_based_moder.exit

set_pflag_cqe_based_moder.exit:                   ; preds = %if.end18.i, %if.end.i.set_pflag_cqe_based_moder.exit_crit_edge, %land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end18.i ], [ -95, %land.lhs.true.i.set_pflag_cqe_based_moder.exit_crit_edge ], [ 0, %if.end.i.set_pflag_cqe_based_moder.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_rx_cqe_compress(ptr noundef %netdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 45
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_filter2 = getelementptr i8, ptr %netdev, i32 30096
  %6 = ptrtoint ptr %rx_filter2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_filter2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp ne i32 %7, 0
  %call6 = tail call i32 @mlx5e_modify_rx_cqe_compression_locked(ptr noundef %add.ptr.i, i1 noundef zeroext %enable, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %rx_cqe_compress_def = getelementptr i8, ptr %netdev, i32 6108
  %8 = ptrtoint ptr %rx_cqe_compress_def to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %rx_cqe_compress_def, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -95, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_rx_striding_rq(ptr noundef %netdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #16
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @mlx5e_check_fragmented_striding_rq_cap(ptr noundef %1) #16
  br i1 %call2, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %if.then
  %params = getelementptr i8, ptr %netdev, i32 6028
  %call4 = tail call zeroext i1 @mlx5e_striding_rq_possible(ptr noundef %1, ptr noundef %params) #16
  br i1 %call4, label %if.then15.critedge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %entry
  %packet_merge = getelementptr i8, ptr %netdev, i32 6128
  %2 = ptrtoint ptr %packet_merge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %packet_merge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.else16.critedge, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.65) #20
  br label %cleanup

if.then15.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %4 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %5 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pflags, align 4
  %or = or i32 %6, 8
  store i32 %or, ptr %pflags, align 4
  br label %do.end

if.else16.critedge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  %params13.c = getelementptr i8, ptr %netdev, i32 6028
  %7 = call ptr @memcpy(ptr %new_params, ptr %params13.c, i32 144)
  %pflags17 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %8 = ptrtoint ptr %pflags17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pflags17, align 4
  %and = and i32 %9, -9
  store i32 %and, ptr %pflags17, align 4
  br label %do.end

do.end:                                           ; preds = %if.else16.critedge, %if.then15.critedge
  call void @mlx5e_set_rq_type(ptr noundef %1, ptr noundef nonnull %new_params) #16
  %call19 = call i32 @mlx5e_safe_switch_params(ptr noundef %add.ptr.i, ptr noundef nonnull %new_params, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then9, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end ], [ -22, %if.then9 ], [ -95, %if.then.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #16
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_rx_no_csum_complete(ptr noundef %netdev, i1 noundef zeroext %enable) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %channels1 = getelementptr i8, ptr %netdev, i32 6016
  %state = getelementptr i8, ptr %netdev, i32 2416
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %xdp_prog = getelementptr i8, ptr %netdev, i32 6152
  %2 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp_prog, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %num = getelementptr i8, ptr %netdev, i32 6024
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21.not = icmp eq i32 %5, 0
  br i1 %cmp21.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %masksel = select i1 %enable, i32 8, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %6 = ptrtoint ptr %channels1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels1, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.022
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %state8 = getelementptr inbounds %struct.mlx5e_rq, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state8, align 4
  %and.i = and i32 %11, -9
  %or.i.sink = or i32 %and.i, %masksel
  store i32 %or.i.sink, ptr %state8, align 4
  %inc = add nuw i32 %i.022, 1
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_xdp_tx_mpwqe(ptr noundef %netdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %new_params.i = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %mdev1.i = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params.i) #16
  br i1 %enable, label %land.lhs.true.i, label %if.else.critedge.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %2 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %2)
  %cmp.i.not.i.i = icmp eq i64 %2, -1
  br i1 %cmp.i.not.i.i, label %mlx5e_tx_mpwqe_supported.exit.i, label %land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge

land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_tx_mpwqe_common.exit

mlx5e_tx_mpwqe_supported.exit.i:                  ; preds = %land.lhs.true.i
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge, label %if.then4.critedge.i

mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge: ; preds = %mlx5e_tx_mpwqe_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_tx_mpwqe_common.exit

if.then4.critedge.i:                              ; preds = %mlx5e_tx_mpwqe_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %params.c.i = getelementptr i8, ptr %netdev, i32 6028
  %8 = call ptr @memcpy(ptr %new_params.i, ptr %params.c.i, i32 144)
  %pflags.i = getelementptr inbounds %struct.mlx5e_params, ptr %new_params.i, i32 0, i32 15
  %9 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pflags.i, align 4
  %or.i = or i32 %10, 32
  store i32 %or.i, ptr %pflags.i, align 4
  br label %do.end.i

if.else.critedge.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %params.c15.i = getelementptr i8, ptr %netdev, i32 6028
  %11 = call ptr @memcpy(ptr %new_params.i, ptr %params.c15.i, i32 144)
  %pflags6.i = getelementptr inbounds %struct.mlx5e_params, ptr %new_params.i, i32 0, i32 15
  %12 = ptrtoint ptr %pflags6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pflags6.i, align 4
  %and.i = and i32 %13, -33
  store i32 %and.i, ptr %pflags6.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.critedge.i, %if.then4.critedge.i
  %call8.i = call i32 @mlx5e_safe_switch_params(ptr noundef %add.ptr.i.i, ptr noundef nonnull %new_params.i, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #16
  br label %set_pflag_tx_mpwqe_common.exit

set_pflag_tx_mpwqe_common.exit:                   ; preds = %do.end.i, %mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge, %land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %do.end.i ], [ -95, %mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge ], [ -95, %land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_skb_tx_mpwqe(ptr noundef %netdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %new_params.i = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %mdev1.i = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params.i) #16
  br i1 %enable, label %land.lhs.true.i, label %if.else.critedge.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @elfcorehdr_addr to i32))
  %2 = load i64, ptr @elfcorehdr_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %2)
  %cmp.i.not.i.i = icmp eq i64 %2, -1
  br i1 %cmp.i.not.i.i, label %mlx5e_tx_mpwqe_supported.exit.i, label %land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge

land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_tx_mpwqe_common.exit

mlx5e_tx_mpwqe_supported.exit.i:                  ; preds = %land.lhs.true.i
  %arrayidx.i.i = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge, label %if.then4.critedge.i

mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge: ; preds = %mlx5e_tx_mpwqe_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_pflag_tx_mpwqe_common.exit

if.then4.critedge.i:                              ; preds = %mlx5e_tx_mpwqe_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %params.c.i = getelementptr i8, ptr %netdev, i32 6028
  %8 = call ptr @memcpy(ptr %new_params.i, ptr %params.c.i, i32 144)
  %pflags.i = getelementptr inbounds %struct.mlx5e_params, ptr %new_params.i, i32 0, i32 15
  %9 = ptrtoint ptr %pflags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pflags.i, align 4
  %or.i = or i32 %10, 64
  store i32 %or.i, ptr %pflags.i, align 4
  br label %do.end.i

if.else.critedge.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %params.c15.i = getelementptr i8, ptr %netdev, i32 6028
  %11 = call ptr @memcpy(ptr %new_params.i, ptr %params.c15.i, i32 144)
  %pflags6.i = getelementptr inbounds %struct.mlx5e_params, ptr %new_params.i, i32 0, i32 15
  %12 = ptrtoint ptr %pflags6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pflags6.i, align 4
  %and.i = and i32 %13, -65
  store i32 %and.i, ptr %pflags6.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.else.critedge.i, %if.then4.critedge.i
  %call8.i = call i32 @mlx5e_safe_switch_params(ptr noundef %add.ptr.i.i, ptr noundef nonnull %new_params.i, ptr noundef null, ptr noundef null, i1 noundef zeroext true) #16
  br label %set_pflag_tx_mpwqe_common.exit

set_pflag_tx_mpwqe_common.exit:                   ; preds = %do.end.i, %mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge, %land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %do.end.i ], [ -95, %mlx5e_tx_mpwqe_supported.exit.i.set_pflag_tx_mpwqe_common.exit_crit_edge ], [ -95, %land.lhs.true.i.set_pflag_tx_mpwqe_common.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pflag_tx_port_ts(ptr noundef %netdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #16
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 5
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %maj_id = getelementptr i8, ptr %netdev, i32 31334
  %7 = ptrtoint ptr %maj_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %maj_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %netdev4 = getelementptr i8, ptr %netdev, i32 11332
  %9 = ptrtoint ptr %netdev4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev4, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.set_pflag_tx_port_ts) #20
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %params = getelementptr i8, ptr %netdev, i32 6028
  %11 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  br i1 %enable, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %mqprio = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 4
  %12 = ptrtoint ptr %mqprio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mqprio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp = icmp eq i16 %13, 1
  br i1 %cmp, label %if.then8, label %if.then12.critedge

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %netdev9 = getelementptr i8, ptr %netdev, i32 11332
  %14 = ptrtoint ptr %netdev9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev9, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.set_pflag_tx_port_ts) #20
  br label %cleanup

if.then12.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  %pflags = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %16 = ptrtoint ptr %pflags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pflags, align 4
  %or = or i32 %17, 128
  store i32 %or, ptr %pflags, align 4
  br label %do.end

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %pflags13 = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 15
  %18 = ptrtoint ptr %pflags13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pflags13, align 4
  %and14 = and i32 %19, -129
  store i32 %and14, ptr %pflags13, align 4
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then12.critedge
  %call16 = call i32 @mlx5e_safe_switch_params(ptr noundef %add.ptr.i, ptr noundef nonnull %new_params, ptr noundef nonnull @mlx5e_num_channels_changed_ctx, ptr noundef null, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then18, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %tx_ptp_opened = getelementptr i8, ptr %netdev, i32 30085
  %20 = ptrtoint ptr %tx_ptp_opened to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %tx_ptp_opened, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.end.cleanup_crit_edge, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %if.then8 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then18 ], [ %call16, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_check_fragmented_striding_rq_cap(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_striding_rq_possible(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_set_rq_type(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_wol(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_wol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_pause_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_beacon(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_rss_destroy(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_rss_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_module_eeprom(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_stall_watermark(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_stall_watermark(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_fec_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_set_fec_mode(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_module_eeprom_by_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_eth_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_eth_mac_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_eth_ctrl_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_stats_rmon_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.bitreverse.i8(i8) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin }
attributes #20 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114}
!llvm.named.register.sp = !{!116}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 45, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 47, i32 4}
!4 = !{ptr @.str.40, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 335, i32 29}
!6 = !{ptr @__func__.mlx5e_ethtool_set_ringparam, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 336, i32 8}
!8 = !{ptr @.str.41, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 340, i32 29}
!10 = !{ptr @.str.42, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 346, i32 29}
!12 = !{ptr @.str.43, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 353, i32 29}
!14 = !{ptr @.str.44, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 430, i32 29}
!16 = !{ptr @__func__.mlx5e_ethtool_set_channels, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 431, i32 8}
!18 = !{ptr @.str.45, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 445, i32 28}
!20 = !{ptr @.str.46, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 456, i32 28}
!22 = !{ptr @.str.47, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 467, i32 28}
!24 = !{ptr @.str.48, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 477, i32 28}
!26 = !{ptr @.str.49, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 499, i32 29}
!28 = !{ptr @.str.50, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 618, i32 29}
!30 = !{ptr @__func__.mlx5e_ethtool_set_coalesce, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 619, i32 8}
!32 = !{ptr @.str.51, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 625, i32 29}
!34 = !{ptr @mlx5e_ethtool_set_coalesce.__msg, !35, !"__msg", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 632, i32 3}
!36 = !{ptr @.str.52, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1010, i32 28}
!38 = !{ptr @__func__.mlx5e_ethtool_get_link_ksettings, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1011, i32 7}
!40 = !{ptr @.str.53, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1070, i32 3}
!42 = !{ptr @.str.54, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlx5e_ethtool_get_link_ksettings.__UNIQUE_ID_ddebug640, !41, !"__UNIQUE_ID_ddebug640", i1 false, i1 false}
!44 = !{ptr @.str.55, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1193, i32 28}
!46 = !{ptr @__func__.mlx5e_ethtool_set_link_ksettings, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1194, i32 7}
!48 = !{ptr @.str.56, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1206, i32 28}
!50 = !{ptr @.str.57, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1429, i32 28}
!52 = !{ptr @__func__.mlx5e_ethtool_get_pauseparam, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1430, i32 7}
!54 = !{ptr @.str.58, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1458, i32 28}
!56 = !{ptr @__func__.mlx5e_ethtool_set_pauseparam, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1459, i32 7}
!58 = !{ptr @.str.59, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1934, i32 7}
!60 = !{ptr @.str.60, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1939, i32 29}
!62 = !{ptr @.str.61, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1956, i32 2}
!64 = !{ptr @.str.62, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.63, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlx5e_ethtool_ops, !67, !"mlx5e_ethtool_ops", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2393, i32 26}
!68 = !{ptr @ptys2legacy_ethtool_table, !69, !"ptys2legacy_ethtool_table", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 68, i32 28}
!70 = !{ptr @ptys2ext_ethtool_table, !71, !"ptys2ext_ethtool_table", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 70, i32 28}
!72 = !{ptr @ptys2connector_type, !73, !"ptys2connector_type", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 937, i32 12}
!74 = !{ptr @pplm_fec_2_ethtool_linkmodes, !75, !"pplm_fec_2_ethtool_linkmodes", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 768, i32 18}
!76 = !{ptr @.str.64, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1100, i32 22}
!78 = !{ptr @__func__.mlx5e_speed_validate, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1101, i32 7}
!80 = !{ptr @mlx5e_priv_flags, !81, !"mlx5e_priv_flags", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2102, i32 32}
!82 = !{ptr @.str.65, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1996, i32 23}
!84 = !{ptr @.str.66, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2071, i32 28}
!86 = !{ptr @__func__.set_pflag_tx_port_ts, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2072, i32 7}
!88 = !{ptr @.str.67, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2084, i32 7}
!90 = !{ptr @mlx5e_link_ext_state_opcode_map, !91, !"mlx5e_link_ext_state_opcode_map", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2222, i32 1}
!92 = !{ptr @.str.68, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2127, i32 22}
!94 = !{ptr @.str.69, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2128, i32 16}
!96 = !{ptr @.str.70, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 2128, i32 27}
!98 = !{ptr @.str.71, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1761, i32 28}
!100 = !{ptr @__func__.mlx5e_get_module_info, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1762, i32 7}
!102 = !{ptr @.str.72, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1793, i32 29}
!104 = !{ptr @__func__.mlx5e_get_module_eeprom, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1794, i32 8}
!106 = !{ptr @.str.73, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1361, i32 23}
!108 = !{ptr @__func__.mlx5e_set_pfc_prevention_tout, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1362, i32 8}
!110 = !{ptr @pplm_fec_2_ethtool, !111, !"pplm_fec_2_ethtool", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 738, i32 18}
!112 = !{ptr @.str.74, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1836, i32 29}
!114 = !{ptr @__func__.mlx5e_get_module_eeprom_by_page, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c", i32 1837, i32 8}
!116 = !{!"sp"}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 6659677}
!127 = !{i64 2158879511}
!128 = !{i64 2158879982}
!129 = !{i64 2158880473}
!130 = !{i32 0, i32 33}
!131 = !{i8 0, i8 2}
!132 = !{!"auto-init"}
!133 = !{i64 2149171205, i64 2149171210, i64 2149171223, i64 2149171267, i64 2149171301, i64 2149171322}
!134 = !{ptr @mlx5e_ethtool2ptys_adver_link, ptr @mlx5e_ethtool2ptys_ext_adver_link}
!135 = !{i64 1017640, i64 1017701}
!136 = !{i64 1020372}
!137 = !{!"branch_weights", i32 1, i32 2000}
!138 = !{i64 1020657}
