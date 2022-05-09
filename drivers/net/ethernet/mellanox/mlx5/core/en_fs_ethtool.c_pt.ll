; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_fs_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_fs_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mlx5e_ethtool_rule = type { %struct.list_head, %struct.ethtool_rx_flow_spec, ptr, ptr, ptr }
%struct.ethtool_rx_flow_spec = type { i32, %union.ethtool_flow_union, %struct.ethtool_flow_ext, %union.ethtool_flow_union, %struct.ethtool_flow_ext, i64, i32 }
%union.ethtool_flow_union = type { %struct.ethtool_tcpip6_spec, [12 x i8] }
%struct.ethtool_tcpip6_spec = type { [4 x i32], [4 x i32], i16, i16, i8 }
%struct.ethtool_flow_ext = type { [2 x i8], [6 x i8], i16, i16, [2 x i32] }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.215, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.215 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.214 }
%struct.anon.214 = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32, i64, %struct.ethtool_rx_flow_spec, %union.anon.158, [0 x i32] }
%union.anon.158 = type { i32 }
%struct.mlx5e_profile = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i16, i16, i8 }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i8, i8, i8 }
%struct.ethtool_usrip6_spec = type { [4 x i32], [4 x i32], i32, i8, i8 }
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
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5_flow_destination = type { i32, %union.anon.239 }
%union.anon.239 = type { %struct.anon.240 }
%struct.anon.240 = type { i16, i16, ptr, i8 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: flow is not valid %d\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ethtool_flow_replace = private unnamed_addr constant [27 x i8] c"mlx5e_ethtool_flow_replace\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: failed to add ethtool steering rule: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.add_ethtool_flow_rule = private unnamed_addr constant [22 x i8] c"add_ethtool_flow_rule\00", align 1
@switch.table.mlx5e_ethtool_set_rxnfc = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 2, i32 0, i32 0, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6, i32 5, i32 7, i32 0, i32 0, i32 0, i32 8, i32 9], [60 x i8] zeroinitializer }, align 32
@switch.table.mlx5e_ethtool_get_rxnfc = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 2, i32 0, i32 0, i32 1, i32 3, i32 0, i32 0, i32 4, i32 6, i32 5, i32 7, i32 0, i32 0, i32 0, i32 8, i32 9], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 42, i64 49, i64 50]
@__sancov_gen_cov_switch_values.2 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 13, i64 14, i64 18]
@__sancov_gen_cov_switch_values.3 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 13, i64 14, i64 18]
@__sancov_gen_cov_switch_values.4 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 6, i64 13, i64 14, i64 18]
@__sancov_gen_cov_switch_values.5 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 5, i64 6, i64 9, i64 10, i64 11, i64 12, i64 16, i64 17]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 41, i64 46, i64 47, i64 48]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 728, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_fs_ethtool.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 492, i32 28 }
@___asan_gen_.14 = private unnamed_addr constant [37 x i8] c"switch.table.mlx5e_ethtool_set_rxnfc\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [37 x i8] c"switch.table.mlx5e_ethtool_get_rxnfc\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @switch.table.mlx5e_ethtool_set_rxnfc, ptr @switch.table.mlx5e_ethtool_get_rxnfc], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5e_ethtool_set_rxnfc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mlx5e_ethtool_get_rxnfc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ethtool_cleanup_steering(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rules = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2
  %0 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rules, align 4
  %cmp.not19 = icmp eq ptr %1, %rules
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %iter.020 = phi ptr [ %temp.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %iter.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.0 = load ptr, ptr %iter.020, align 8
  tail call fastcc void @del_ethtool_rule(ptr noundef %priv, ptr noundef %iter.020)
  %cmp.not = icmp eq ptr %temp.0, %rules
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @del_ethtool_rule(ptr nocapture noundef %priv, ptr noundef %eth_rule) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %eth_rule, i32 0, i32 2
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rss = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %eth_rule, i32 0, i32 4
  %2 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rss, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mlx5e_rss_refcnt_dec(ptr noundef nonnull %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %eth_rule) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_del.exit_crit_edge

if.end5.list_del.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %eth_rule, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %eth_rule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eth_rule, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end5.list_del.exit_crit_edge
  %10 = ptrtoint ptr %eth_rule to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %eth_rule, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %eth_rule, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tot_num_rules = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 3
  %12 = ptrtoint ptr %tot_num_rules to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tot_num_rules, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %tot_num_rules, align 4
  %eth_ft = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %eth_rule, i32 0, i32 3
  %14 = ptrtoint ptr %eth_ft to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eth_ft, align 4
  %num_rules.i = getelementptr inbounds %struct.mlx5e_ethtool_table, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_rules.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_rules.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %num_rules.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_del.exit.put_flow_table.exit_crit_edge

list_del.exit.put_flow_table.exit_crit_edge:      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_flow_table.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %19) #8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %15, align 4
  br label %put_flow_table.exit

put_flow_table.exit:                              ; preds = %if.then.i, %list_del.exit.put_flow_table.exit_crit_edge
  tail call void @kfree(ptr noundef %eth_rule) #8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_ethtool_init_steering(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rules = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2
  %0 = ptrtoint ptr %rules to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %rules, ptr %rules, align 4
  %prev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %rules, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_set_rxnfc(ptr noundef %priv, ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  %pkt_merge_param.i.i.i = alloca %struct.mlx5e_packet_merge_param, align 4
  %flow_act.i.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 50, label %sw.bb
    i32 49, label %sw.bb2
    i32 42, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %fs = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %location.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %6 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %location.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %7)
  %cmp.i.i = icmp ugt i32 %7, 1023
  br i1 %cmp.i.i, label %sw.bb.if.then.i_crit_edge, label %if.end.i.i

sw.bb.if.then.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.i.i:                                       ; preds = %sw.bb
  %ring_cookie.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 5
  %8 = ptrtoint ptr %ring_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ring_cookie.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %9)
  %cmp1.not.i.i = icmp eq i64 %9, -1
  br i1 %cmp1.not.i.i, label %if.end.i.i.if.end6.i.i_crit_edge, label %if.then2.i.i

if.end.i.i.if.end6.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %profile.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 42
  %10 = ptrtoint ptr %profile.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %profile.i.i, align 4
  %num_channels.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %12 = ptrtoint ptr %num_channels.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_channels.i.i.i, align 4
  %conv.i.i.i = zext i16 %13 to i32
  %rq_groups.i.i.i = getelementptr inbounds %struct.mlx5e_profile, ptr %11, i32 0, i32 16
  %14 = ptrtoint ptr %rq_groups.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rq_groups.i.i.i, align 4
  %conv1.i.i.i = zext i8 %15 to i32
  %mul.i.i.i = mul nuw nsw i32 %conv1.i.i.i, %conv.i.i.i
  %16 = zext i32 %mul.i.i.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %16)
  %cmp.i.i.i = icmp ult i64 %9, %16
  br i1 %cmp.i.i.i, label %if.then2.i.i.if.end6.i.i_crit_edge, label %if.then2.i.i.if.then.i_crit_edge

if.then2.i.i.if.then.i_crit_edge:                 ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then2.i.i.if.end6.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then2.i.i.if.end6.i.i_crit_edge, %if.end.i.i.if.end6.i.i_crit_edge
  %17 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fs, align 8
  %and.i.i.i = and i32 %18, 536870911
  %19 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and.i.i.i, label %if.end6.i.i.if.then.i_crit_edge [
    i32 18, label %sw.bb.i.i
    i32 1, label %if.end6.i.i.sw.bb9.i.i_crit_edge
    i32 2, label %if.end6.i.i.sw.bb9.i.i_crit_edge32
    i32 13, label %sw.bb15.i.i
    i32 5, label %if.end6.i.i.sw.bb21.i.i_crit_edge
    i32 6, label %if.end6.i.i.sw.bb21.i.i_crit_edge33
    i32 14, label %sw.bb27.i.i
  ]

if.end6.i.i.sw.bb21.i.i_crit_edge33:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i.i

if.end6.i.i.sw.bb21.i.i_crit_edge:                ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb21.i.i

if.end6.i.i.sw.bb9.i.i_crit_edge32:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i

if.end6.i.i.sw.bb9.i.i_crit_edge:                 ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i.i

if.end6.i.i.if.then.i_crit_edge:                  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

sw.bb.i.i:                                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %m_u.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %m_u.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_u.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %23 to i32
  %or.i.i.i.i = or i32 %21, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i.i)
  %cmp.i.i.i.i = icmp ne i32 %or.i.i.i.i, 0
  %spec.select.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %h_source.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %h_source.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_source.i.i.i, align 4
  %add.ptr.i14.i.i.i = getelementptr %struct.ethhdr, ptr %m_u.i.i.i, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr.i14.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i14.i.i.i, align 2
  %conv.i15.i.i.i = zext i16 %27 to i32
  %or.i16.i.i.i = or i32 %25, %conv.i15.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i16.i.i.i)
  %cmp.i17.i.i.i = icmp eq i32 %or.i16.i.i.i, 0
  %inc4.i.i.i = select i1 %cmp.i.i.i.i, i32 2, i32 1
  %ntuples.1.i.i.i = select i1 %cmp.i17.i.i.i, i32 %spec.select.i.i.i, i32 %inc4.i.i.i
  %h_proto.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %h_proto.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %h_proto.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i.i.i = icmp ne i16 %29, 0
  %inc7.i.i.i = zext i1 %tobool.not.i.i.i to i32
  %ntuples.2.i.i.i = add nuw nsw i32 %ntuples.1.i.i.i, %inc7.i.i.i
  br label %sw.epilog.i.i

sw.bb9.i.i:                                       ; preds = %if.end6.i.i.sw.bb9.i.i_crit_edge, %if.end6.i.i.sw.bb9.i.i_crit_edge32
  %tos.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %30 = ptrtoint ptr %tos.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i82.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i82.i.i, label %validate_tcpudp4.exit.i.i, label %sw.bb9.i.i.if.then.i_crit_edge

sw.bb9.i.i.if.then.i_crit_edge:                   ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

validate_tcpudp4.exit.i.i:                        ; preds = %sw.bb9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %m_u.i83.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %m_u.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_u.i83.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool1.not.i.i.i = icmp ne i32 %33, 0
  %spec.select.i84.i.i = zext i1 %tobool1.not.i.i.i to i32
  %ip4dst.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %ip4dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ip4dst.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool4.not.i.i.i = icmp eq i32 %35, 0
  %inc6.i.i.i = select i1 %tobool1.not.i.i.i, i32 2, i32 1
  %ntuples.1.i85.i.i = select i1 %tobool4.not.i.i.i, i32 %spec.select.i84.i.i, i32 %inc6.i.i.i
  %psrc.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %psrc.i.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %psrc.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool8.not.i.i.i = icmp ne i16 %37, 0
  %inc10.i.i.i = zext i1 %tobool8.not.i.i.i to i32
  %pdst.i.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i83.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %pdst.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %pdst.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool12.not.i.i.i = icmp ne i16 %39, 0
  %inc14.i.i.i = zext i1 %tobool12.not.i.i.i to i32
  %ntuples.2.i86.i.i = add nuw nsw i32 %ntuples.1.i85.i.i, 1
  %ntuples.3.i.i.i = add nuw nsw i32 %ntuples.2.i86.i.i, %inc10.i.i.i
  %inc16.i.i.i = add nuw nsw i32 %ntuples.3.i.i.i, %inc14.i.i.i
  br label %sw.epilog.i.i

sw.bb15.i.i:                                      ; preds = %if.end6.i.i
  %m_u.i87.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %l4_4_bytes.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %l4_4_bytes.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %l4_4_bytes.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i88.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i88.i.i, label %lor.lhs.false.i.i.i, label %sw.bb15.i.i.if.then.i_crit_edge

sw.bb15.i.i.if.then.i_crit_edge:                  ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i.i.i:                              ; preds = %sw.bb15.i.i
  %tos.i89.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %42 = ptrtoint ptr %tos.i89.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tos.i89.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool1.not.i90.i.i = icmp eq i8 %43, 0
  br i1 %tobool1.not.i90.i.i, label %lor.lhs.false2.i.i.i, label %lor.lhs.false.i.i.i.if.then.i_crit_edge

lor.lhs.false.i.i.i.if.then.i_crit_edge:          ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %h_u.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip_ver.i.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %ip_ver.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %ip_ver.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %45)
  %cmp.not.i.i.i = icmp eq i8 %45, 1
  br i1 %cmp.not.i.i.i, label %validate_ip4.exit.i.i, label %lor.lhs.false2.i.i.i.if.then.i_crit_edge

lor.lhs.false2.i.i.i.if.then.i_crit_edge:         ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

validate_ip4.exit.i.i:                            ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %m_u.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %m_u.i87.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool5.not.i.i.i = icmp ne i32 %47, 0
  %spec.select.i91.i.i = zext i1 %tobool5.not.i.i.i to i32
  %ip4dst.i92.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %ip4dst.i92.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ip4dst.i92.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool8.not.i93.i.i = icmp eq i32 %49, 0
  %inc10.i94.i.i = select i1 %tobool5.not.i.i.i, i32 2, i32 1
  %ntuples.1.i95.i.i = select i1 %tobool8.not.i93.i.i, i32 %spec.select.i91.i.i, i32 %inc10.i94.i.i
  %proto.i.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i87.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %proto.i.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %proto.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool12.not.i96.i.i = icmp ne i8 %51, 0
  %inc14.i97.i.i = zext i1 %tobool12.not.i96.i.i to i32
  %ntuples.2.i98.i.i = add nuw nsw i32 %ntuples.1.i95.i.i, 1
  %inc16.i99.i.i = add nuw nsw i32 %ntuples.2.i98.i.i, %inc14.i97.i.i
  br label %sw.epilog.i.i

sw.bb21.i.i:                                      ; preds = %if.end6.i.i.sw.bb21.i.i_crit_edge, %if.end6.i.i.sw.bb21.i.i_crit_edge33
  %tclass.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %52 = ptrtoint ptr %tclass.i.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tclass.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i102.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i102.i.i, label %validate_tcpudp6.exit.i.i, label %sw.bb21.i.i.if.then.i_crit_edge

sw.bb21.i.i.if.then.i_crit_edge:                  ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

validate_tcpudp6.exit.i.i:                        ; preds = %sw.bb21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %m_u.i103.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %m_u.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m_u.i103.i.i, align 4
  %arrayidx2.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx2.i.i.i.i, align 4
  %or.i.i104.i.i = or i32 %57, %55
  %arrayidx4.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx4.i.i.i.i, align 4
  %or5.i.i.i.i = or i32 %or.i.i104.i.i, %59
  %arrayidx7.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx7.i.i.i.i, align 4
  %or8.i.i.i.i = or i32 %or5.i.i.i.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i.i)
  %cmp.i.i105.i.i = icmp ne i32 %or8.i.i.i.i, 0
  %spec.select.i106.i.i = zext i1 %cmp.i.i105.i.i to i32
  %ip6dst.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %62 = ptrtoint ptr %ip6dst.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ip6dst.i.i.i, align 4
  %arrayidx2.i26.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx2.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx2.i26.i.i.i, align 4
  %or.i27.i.i.i = or i32 %65, %63
  %arrayidx4.i28.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %66 = ptrtoint ptr %arrayidx4.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx4.i28.i.i.i, align 4
  %or5.i29.i.i.i = or i32 %or.i27.i.i.i, %67
  %arrayidx7.i30.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %arrayidx7.i30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx7.i30.i.i.i, align 4
  %or8.i31.i.i.i = or i32 %or5.i29.i.i.i, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i31.i.i.i)
  %cmp.i32.i.i.i = icmp eq i32 %or8.i31.i.i.i, 0
  %inc6.i107.i.i = select i1 %cmp.i.i105.i.i, i32 2, i32 1
  %ntuples.1.i108.i.i = select i1 %cmp.i32.i.i.i, i32 %spec.select.i106.i.i, i32 %inc6.i107.i.i
  %psrc.i109.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %70 = ptrtoint ptr %psrc.i109.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %psrc.i109.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool8.not.not.i.i.i = icmp eq i16 %71, 0
  %pdst.i110.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %72 = ptrtoint ptr %pdst.i110.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %pdst.i110.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool12.not.i111.i.i = icmp ne i16 %73, 0
  %inc14.i112.i.i = zext i1 %tobool12.not.i111.i.i to i32
  %ntuples.2.i113.i.i = select i1 %tobool8.not.not.i.i.i, i32 1, i32 2
  %ntuples.3.i114.i.i = add nuw nsw i32 %ntuples.2.i113.i.i, %ntuples.1.i108.i.i
  %inc16.i115.i.i = add nuw nsw i32 %ntuples.3.i114.i.i, %inc14.i112.i.i
  br label %sw.epilog.i.i

sw.bb27.i.i:                                      ; preds = %if.end6.i.i
  %m_u.i118.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %l4_4_bytes.i119.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %74 = ptrtoint ptr %l4_4_bytes.i119.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %l4_4_bytes.i119.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i120.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i120.i.i, label %lor.lhs.false.i123.i.i, label %sw.bb27.i.i.if.then.i_crit_edge

sw.bb27.i.i.if.then.i_crit_edge:                  ; preds = %sw.bb27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i123.i.i:                           ; preds = %sw.bb27.i.i
  %tclass.i121.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 4
  %76 = ptrtoint ptr %tclass.i121.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %tclass.i121.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool1.not.i122.i.i = icmp eq i8 %77, 0
  br i1 %tobool1.not.i122.i.i, label %validate_ip6.exit.i.i, label %lor.lhs.false.i123.i.i.if.then.i_crit_edge

lor.lhs.false.i123.i.i.if.then.i_crit_edge:       ; preds = %lor.lhs.false.i123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

validate_ip6.exit.i.i:                            ; preds = %lor.lhs.false.i123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %m_u.i118.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %m_u.i118.i.i, align 4
  %arrayidx2.i.i124.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %80 = ptrtoint ptr %arrayidx2.i.i124.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx2.i.i124.i.i, align 4
  %or.i.i125.i.i = or i32 %81, %79
  %arrayidx4.i.i126.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %82 = ptrtoint ptr %arrayidx4.i.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx4.i.i126.i.i, align 4
  %or5.i.i127.i.i = or i32 %or.i.i125.i.i, %83
  %arrayidx7.i.i128.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx7.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx7.i.i128.i.i, align 4
  %or8.i.i129.i.i = or i32 %or5.i.i127.i.i, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i129.i.i)
  %cmp.i.i130.i.i = icmp ne i32 %or8.i.i129.i.i, 0
  %spec.select.i131.i.i = zext i1 %cmp.i.i130.i.i to i32
  %ip6dst.i132.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %86 = ptrtoint ptr %ip6dst.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ip6dst.i132.i.i, align 4
  %arrayidx2.i22.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx2.i22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx2.i22.i.i.i, align 4
  %or.i23.i.i.i = or i32 %89, %87
  %arrayidx4.i24.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %arrayidx4.i24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx4.i24.i.i.i, align 4
  %or5.i25.i.i.i = or i32 %or.i23.i.i.i, %91
  %arrayidx7.i26.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %92 = ptrtoint ptr %arrayidx7.i26.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx7.i26.i.i.i, align 4
  %or8.i27.i.i.i = or i32 %or5.i25.i.i.i, %93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i27.i.i.i)
  %cmp.i28.i.i.i = icmp eq i32 %or8.i27.i.i.i, 0
  %inc7.i133.i.i = select i1 %cmp.i.i130.i.i, i32 2, i32 1
  %ntuples.1.i134.i.i = select i1 %cmp.i28.i.i.i, i32 %spec.select.i131.i.i, i32 %inc7.i133.i.i
  %l4_proto.i.i.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u.i118.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %l4_proto.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %l4_proto.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool9.not.not.i.i.i = icmp eq i8 %95, 0
  %ntuples.2.i135.i.i = select i1 %tobool9.not.not.i.i.i, i32 1, i32 2
  %inc13.i.i.i = add nuw nsw i32 %ntuples.2.i135.i.i, %ntuples.1.i134.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %validate_ip6.exit.i.i, %validate_tcpudp6.exit.i.i, %validate_ip4.exit.i.i, %validate_tcpudp4.exit.i.i, %sw.bb.i.i
  %num_tuples.0.i.i = phi i32 [ %ntuples.2.i.i.i, %sw.bb.i.i ], [ %inc16.i.i.i, %validate_tcpudp4.exit.i.i ], [ %inc16.i99.i.i, %validate_ip4.exit.i.i ], [ %inc16.i115.i.i, %validate_tcpudp6.exit.i.i ], [ %inc13.i.i.i, %validate_ip6.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool.not.i.i = icmp sgt i32 %18, -1
  br i1 %tobool.not.i.i, label %sw.epilog.i.i.if.end40.i.i_crit_edge, label %if.then34.i.i

sw.epilog.i.i.if.end40.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i.i

if.then34.i.i:                                    ; preds = %sw.epilog.i.i
  %vlan_etype.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 2
  %96 = ptrtoint ptr %vlan_etype.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vlan_etype.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %97)
  %tobool.not.i138.i.i = icmp eq i16 %97, 0
  br i1 %tobool.not.i138.i.i, label %lor.lhs.false.i140.i.i, label %if.then34.i.i.if.then.i_crit_edge

if.then34.i.i.if.then.i_crit_edge:                ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i140.i.i:                           ; preds = %if.then34.i.i
  %vlan_tci.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %98 = ptrtoint ptr %vlan_tci.i.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %vlan_tci.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %99)
  %cmp.not.i139.i.i = icmp eq i16 %99, 4095
  br i1 %cmp.not.i139.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i140.i.i.if.then.i_crit_edge

lor.lhs.false.i140.i.i.if.then.i_crit_edge:       ; preds = %lor.lhs.false.i140.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i140.i.i
  %vlan_tci8.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %100 = ptrtoint ptr %vlan_tci8.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %vlan_tci8.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %101)
  %cmp10.i.i.i = icmp ugt i16 %101, 4095
  br i1 %cmp10.i.i.i, label %land.lhs.true.i.i.i.if.then.i_crit_edge, label %if.end38.i.i

land.lhs.true.i.i.i.if.then.i_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end38.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add39.i.i = add nuw nsw i32 %num_tuples.0.i.i, 1
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.end38.i.i, %sw.epilog.i.i.if.end40.i.i_crit_edge
  %num_tuples.1.i.i = phi i32 [ %add39.i.i, %if.end38.i.i ], [ %num_tuples.0.i.i, %sw.epilog.i.i.if.end40.i.i_crit_edge ]
  %and42.i.i = and i32 %18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp eq i32 %and42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end40.i.i.validate_flow.exit.i_crit_edge, label %land.lhs.true.i.i

if.end40.i.i.validate_flow.exit.i_crit_edge:      ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %validate_flow.exit.i

land.lhs.true.i.i:                                ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %h_dest.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1
  %102 = ptrtoint ptr %h_dest.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %h_dest.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 4
  %104 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i142.i.i = zext i16 %105 to i32
  %or.i.i.i = or i32 %103, %conv.i142.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i143.i.i = icmp ne i32 %or.i.i.i, 0
  %inc.i.i = zext i1 %cmp.i143.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %num_tuples.1.i.i, %inc.i.i
  br label %validate_flow.exit.i

validate_flow.exit.i:                             ; preds = %land.lhs.true.i.i, %if.end40.i.i.validate_flow.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %num_tuples.1.i.i, %if.end40.i.i.validate_flow.exit.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %validate_flow.exit.i.if.then.i_crit_edge, label %if.end.i

validate_flow.exit.i.if.then.i_crit_edge:         ; preds = %validate_flow.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %validate_flow.exit.i.if.then.i_crit_edge, %land.lhs.true.i.i.i.if.then.i_crit_edge, %lor.lhs.false.i140.i.i.if.then.i_crit_edge, %if.then34.i.i.if.then.i_crit_edge, %lor.lhs.false.i123.i.i.if.then.i_crit_edge, %sw.bb27.i.i.if.then.i_crit_edge, %sw.bb21.i.i.if.then.i_crit_edge, %lor.lhs.false2.i.i.i.if.then.i_crit_edge, %lor.lhs.false.i.i.i.if.then.i_crit_edge, %sw.bb15.i.i.if.then.i_crit_edge, %sw.bb9.i.i.if.then.i_crit_edge, %if.end6.i.i.if.then.i_crit_edge, %if.then2.i.i.if.then.i_crit_edge, %sw.bb.if.then.i_crit_edge
  %retval.0.i93.i = phi i32 [ 0, %validate_flow.exit.i.if.then.i_crit_edge ], [ -22, %land.lhs.true.i.i.i.if.then.i_crit_edge ], [ -22, %if.then34.i.i.if.then.i_crit_edge ], [ -22, %lor.lhs.false.i140.i.i.if.then.i_crit_edge ], [ -22, %sw.bb27.i.i.if.then.i_crit_edge ], [ -22, %lor.lhs.false.i123.i.i.if.then.i_crit_edge ], [ -22, %sw.bb21.i.i.if.then.i_crit_edge ], [ -22, %sw.bb15.i.i.if.then.i_crit_edge ], [ -22, %lor.lhs.false.i.i.i.if.then.i_crit_edge ], [ -22, %lor.lhs.false2.i.i.i.if.then.i_crit_edge ], [ -22, %sw.bb9.i.i.if.then.i_crit_edge ], [ -524, %if.end6.i.i.if.then.i_crit_edge ], [ -22, %if.then2.i.i.if.then.i_crit_edge ], [ -28, %sw.bb.if.then.i_crit_edge ]
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %106 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %107, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mlx5e_ethtool_flow_replace, i32 noundef %retval.0.i93.i) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %validate_flow.exit.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i.i) #8
  %108 = getelementptr inbounds i8, ptr %ft_attr.i.i, i32 8
  %109 = call ptr @memset(ptr %108, i32 0, i32 20)
  %110 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and.i.i.i, label %if.end.i.get_flow_table.exit.thread.i_crit_edge [
    i32 1, label %if.end.i.sw.bb.i51.i_crit_edge
    i32 2, label %if.end.i.sw.bb.i51.i_crit_edge34
    i32 5, label %if.end.i.sw.bb.i51.i_crit_edge35
    i32 6, label %if.end.i.sw.bb.i51.i_crit_edge36
    i32 13, label %if.end.i.sw.bb2.i.i_crit_edge
    i32 14, label %if.end.i.sw.bb2.i.i_crit_edge37
    i32 18, label %sw.bb9.i52.i
  ]

if.end.i.sw.bb2.i.i_crit_edge37:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.end.i.sw.bb2.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i.i

if.end.i.sw.bb.i51.i_crit_edge36:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i51.i

if.end.i.sw.bb.i51.i_crit_edge35:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i51.i

if.end.i.sw.bb.i51.i_crit_edge34:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i51.i

if.end.i.sw.bb.i51.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i51.i

if.end.i.get_flow_table.exit.thread.i_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_flow_table.exit.thread.i

sw.bb.i51.i:                                      ; preds = %if.end.i.sw.bb.i51.i_crit_edge, %if.end.i.sw.bb.i51.i_crit_edge34, %if.end.i.sw.bb.i51.i_crit_edge35, %if.end.i.sw.bb.i51.i_crit_edge36
  %sub.i.i = sub nuw nsw i32 7, %retval.0.i.i
  %ethtool.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2
  %arrayidx.i.i = getelementptr [7 x %struct.mlx5e_ethtool_table], ptr %ethtool.i.i, i32 0, i32 %sub.i.i
  br label %sw.epilog.i55.i

sw.bb2.i.i:                                       ; preds = %if.end.i.sw.bb2.i.i_crit_edge, %if.end.i.sw.bb2.i.i_crit_edge37
  %sub3.i.i = sub nuw nsw i32 7, %retval.0.i.i
  %ethtool6.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2
  %arrayidx8.i.i = getelementptr [7 x %struct.mlx5e_ethtool_table], ptr %ethtool6.i.i, i32 0, i32 %sub3.i.i
  br label %sw.epilog.i55.i

sw.bb9.i52.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub10.i.i = sub nsw i32 4, %retval.0.i.i
  %arrayidx13.i.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 1, i32 %sub10.i.i
  %add14.i.i = sub nuw nsw i32 11, %retval.0.i.i
  br label %sw.epilog.i55.i

sw.epilog.i55.i:                                  ; preds = %sw.bb9.i52.i, %sw.bb2.i.i, %sw.bb.i51.i
  %eth_ft.0.i.i = phi ptr [ %arrayidx13.i.i, %sw.bb9.i52.i ], [ %arrayidx8.i.i, %sw.bb2.i.i ], [ %arrayidx.i.i, %sw.bb.i51.i ]
  %prio.0.i.i = phi i32 [ %add14.i.i, %sw.bb9.i52.i ], [ %sub3.i.i, %sw.bb2.i.i ], [ %sub.i.i, %sw.bb.i51.i ]
  %num_rules.i.i = getelementptr inbounds %struct.mlx5e_ethtool_table, ptr %eth_ft.0.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %num_rules.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_rules.i.i, align 4
  %inc.i53.i = add i32 %112, 1
  store i32 %inc.i53.i, ptr %num_rules.i.i, align 4
  %113 = ptrtoint ptr %eth_ft.0.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %eth_ft.0.i.i, align 4
  %tobool.not.i54.i = icmp eq ptr %114, null
  br i1 %tobool.not.i54.i, label %if.end.i56.i, label %sw.epilog.i55.i.get_flow_table.exit.i_crit_edge

sw.epilog.i55.i.get_flow_table.exit.i_crit_edge:  ; preds = %sw.epilog.i55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_flow_table.exit.i

if.end.i56.i:                                     ; preds = %sw.epilog.i55.i
  %mdev.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %115 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mdev.i.i, align 64
  %call17.i.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %116, i32 noundef 3) #8
  %tobool18.not.i.i = icmp eq ptr %call17.i.i, null
  br i1 %tobool18.not.i.i, label %if.end.i56.i.get_flow_table.exit.thread.i_crit_edge, label %if.end21.i.i

if.end.i56.i.get_flow_table.exit.thread.i_crit_edge: ; preds = %if.end.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_flow_table.exit.thread.i

if.end21.i.i:                                     ; preds = %if.end.i56.i
  %117 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mdev.i.i, align 64
  %arrayidx23.i.i = getelementptr %struct.mlx5_core_dev, ptr %118, i32 0, i32 8, i32 0, i32 7
  %119 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx23.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %120, i32 17
  %121 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr.i.i, align 4
  %shr.i.i = lshr i32 %122, 24
  %and.i.i = and i32 %shr.i.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i.i)
  %cmp.i57.i = icmp ult i32 %and.i.i, 16
  %shl.i.i = shl nuw i32 1, %and.i.i
  %cond.i.i = select i1 %cmp.i57.i, i32 %shl.i.i, i32 64000
  %123 = ptrtoint ptr %ft_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %prio.0.i.i, ptr %ft_attr.i.i, align 4
  %max_fte.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i, i32 0, i32 1
  %124 = ptrtoint ptr %max_fte.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %cond.i.i, ptr %max_fte.i.i, align 4
  %autogroup.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i, i32 0, i32 5
  %125 = ptrtoint ptr %autogroup.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 10, ptr %autogroup.i.i, align 4
  %call25.i.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call17.i.i, ptr noundef nonnull %ft_attr.i.i) #8
  %cmp.i.i58.i = icmp ugt ptr %call25.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i58.i, label %if.end21.i.i.get_flow_table.exit.i_crit_edge, label %if.end28.i.i

if.end21.i.i.get_flow_table.exit.i_crit_edge:     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_flow_table.exit.i

if.end28.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %eth_ft.0.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call25.i.i, ptr %eth_ft.0.i.i, align 4
  br label %get_flow_table.exit.i

get_flow_table.exit.thread.i:                     ; preds = %if.end.i56.i.get_flow_table.exit.thread.i_crit_edge, %if.end.i.get_flow_table.exit.thread.i_crit_edge
  %retval.0.i59.ph.i = phi ptr [ inttoptr (i32 -95 to ptr), %if.end.i56.i.get_flow_table.exit.thread.i_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i.get_flow_table.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i) #8
  br label %if.then3.i

get_flow_table.exit.i:                            ; preds = %if.end28.i.i, %if.end21.i.i.get_flow_table.exit.i_crit_edge, %sw.epilog.i55.i.get_flow_table.exit.i_crit_edge
  %retval.0.i59.i = phi ptr [ %eth_ft.0.i.i, %if.end28.i.i ], [ %eth_ft.0.i.i, %sw.epilog.i55.i.get_flow_table.exit.i_crit_edge ], [ %call25.i.i, %if.end21.i.i.get_flow_table.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i) #8
  %cmp.i60.i = icmp ugt ptr %retval.0.i59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i, label %get_flow_table.exit.i.if.then3.i_crit_edge, label %if.end5.i

get_flow_table.exit.i.if.then3.i_crit_edge:       ; preds = %get_flow_table.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %get_flow_table.exit.i.if.then3.i_crit_edge, %get_flow_table.exit.thread.i
  %retval.0.i5996.i = phi ptr [ %retval.0.i59.ph.i, %get_flow_table.exit.thread.i ], [ %retval.0.i59.i, %get_flow_table.exit.i.if.then3.i_crit_edge ]
  %127 = ptrtoint ptr %retval.0.i5996.i to i32
  br label %sw.epilog

if.end5.i:                                        ; preds = %get_flow_table.exit.i
  %128 = ptrtoint ptr %location.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %location.i.i, align 8
  %rules.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.end5.i
  %iter.0.in.i.i.i = phi ptr [ %rules.i.i.i, %if.end5.i ], [ %iter.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %130 = ptrtoint ptr %iter.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %iter.0.i.i.i = load ptr, ptr %iter.0.in.i.i.i, align 4
  %cmp.not.i.i61.i = icmp eq ptr %iter.0.i.i.i, %rules.i.i.i
  br i1 %cmp.not.i.i61.i, label %for.cond.i.i.i.if.end.i63.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end.i63.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i63.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %location4.i.i.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %iter.0.i.i.i, i32 0, i32 1, i32 6
  %131 = ptrtoint ptr %location4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %location4.i.i.i, align 8
  %cmp5.i.i.i = icmp eq i32 %132, %129
  br i1 %cmp5.i.i.i, label %find_ethtool_rule.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

find_ethtool_rule.exit.i.i:                       ; preds = %for.body.i.i.i
  %tobool.not.i62.i = icmp eq ptr %iter.0.i.i.i, null
  br i1 %tobool.not.i62.i, label %find_ethtool_rule.exit.i.i.if.end.i63.i_crit_edge, label %if.then.i.i

find_ethtool_rule.exit.i.i.if.end.i63.i_crit_edge: ; preds = %find_ethtool_rule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i63.i

if.then.i.i:                                      ; preds = %find_ethtool_rule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @del_ethtool_rule(ptr noundef %priv, ptr noundef nonnull %iter.0.i.i.i) #8
  br label %if.end.i63.i

if.end.i63.i:                                     ; preds = %if.then.i.i, %find_ethtool_rule.exit.i.i.if.end.i63.i_crit_edge, %for.cond.i.i.i.if.end.i63.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %133 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %133, i32 noundef 3520, i32 noundef 192) #12
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i63.i.if.then8.i_crit_edge, label %if.end5.i.i

if.end.i63.i.if.then8.i_crit_edge:                ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.end5.i.i:                                      ; preds = %if.end.i63.i
  %location8.i.i.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %call7.i.i.i.i, i32 0, i32 1, i32 6
  br label %for.cond.i15.i.i

for.cond.i15.i.i:                                 ; preds = %for.body.i16.i.i.for.cond.i15.i.i_crit_edge, %if.end5.i.i
  %head.0.i.i.i = phi ptr [ %rules.i.i.i, %if.end5.i.i ], [ %iter.0.i13.i.i, %for.body.i16.i.i.for.cond.i15.i.i_crit_edge ]
  %134 = ptrtoint ptr %head.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %iter.0.i13.i.i = load ptr, ptr %head.0.i.i.i, align 4
  %cmp.not.i14.i.i = icmp eq ptr %iter.0.i13.i.i, %rules.i.i.i
  br i1 %cmp.not.i14.i.i, label %for.cond.i15.i.i.for.end.i.i.i_crit_edge, label %for.body.i16.i.i

for.cond.i15.i.i.for.end.i.i.i_crit_edge:         ; preds = %for.cond.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i16.i.i:                                 ; preds = %for.cond.i15.i.i
  %location.i.i.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %iter.0.i13.i.i, i32 0, i32 1, i32 6
  %135 = ptrtoint ptr %location.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %location.i.i.i, align 8
  %137 = ptrtoint ptr %location8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %location8.i.i.i, align 8
  %cmp9.i.i.i = icmp ugt i32 %136, %138
  br i1 %cmp9.i.i.i, label %for.body.i16.i.i.for.end.i.i.i_crit_edge, label %for.body.i16.i.i.for.cond.i15.i.i_crit_edge

for.body.i16.i.i.for.cond.i15.i.i_crit_edge:      ; preds = %for.body.i16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i15.i.i

for.body.i16.i.i.for.end.i.i.i_crit_edge:         ; preds = %for.body.i16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i16.i.i.for.end.i.i.i_crit_edge, %for.cond.i15.i.i.for.end.i.i.i_crit_edge
  %tot_num_rules.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 3
  %139 = ptrtoint ptr %tot_num_rules.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %tot_num_rules.i.i.i, align 4
  %inc.i.i.i = add i32 %140, 1
  store i32 %inc.i.i.i, ptr %tot_num_rules.i.i.i, align 4
  %141 = ptrtoint ptr %head.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %head.0.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %head.0.i.i.i, ptr noundef %142) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.end.i.i.i.get_ethtool_rule.exit.i_crit_edge

for.end.i.i.i.get_ethtool_rule.exit.i_crit_edge:  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_ethtool_rule.exit.i

if.end.i.i.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call7.i.i.i.i, ptr %prev1.i.i.i.i.i, align 4
  %144 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %142, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %head.0.i.i.i, ptr %prev3.i.i.i.i.i, align 4
  %146 = ptrtoint ptr %head.0.i.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile ptr %call7.i.i.i.i, ptr %head.0.i.i.i, align 4
  br label %get_ethtool_rule.exit.i

get_ethtool_rule.exit.i:                          ; preds = %if.end.i.i.i.i.i, %for.end.i.i.i.get_ethtool_rule.exit.i_crit_edge
  %cmp.i65.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i, label %get_ethtool_rule.exit.i.if.then8.i_crit_edge, label %if.end10.i

get_ethtool_rule.exit.i.if.then8.i_crit_edge:     ; preds = %get_ethtool_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.then8.i:                                       ; preds = %get_ethtool_rule.exit.i.if.then8.i_crit_edge, %if.end.i63.i.if.then8.i_crit_edge
  %retval.0.i64100.i = phi ptr [ %call7.i.i.i.i, %get_ethtool_rule.exit.i.if.then8.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i63.i.if.then8.i_crit_edge ]
  %num_rules.i66.i = getelementptr inbounds %struct.mlx5e_ethtool_table, ptr %retval.0.i59.i, i32 0, i32 1
  %147 = ptrtoint ptr %num_rules.i66.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %num_rules.i66.i, align 4
  %dec.i.i = add i32 %148, -1
  store i32 %dec.i.i, ptr %num_rules.i66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i67.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i67.i, label %if.then.i68.i, label %if.then8.i.put_flow_table.exit.i_crit_edge

if.then8.i.put_flow_table.exit.i_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_flow_table.exit.i

if.then.i68.i:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %retval.0.i59.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %retval.0.i59.i, align 4
  %call.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %150) #8
  %151 = ptrtoint ptr %retval.0.i59.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %retval.0.i59.i, align 4
  br label %put_flow_table.exit.i

put_flow_table.exit.i:                            ; preds = %if.then.i68.i, %if.then8.i.put_flow_table.exit.i_crit_edge
  %152 = ptrtoint ptr %retval.0.i64100.i to i32
  br label %sw.epilog

if.end10.i:                                       ; preds = %get_ethtool_rule.exit.i
  %flow_spec.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %call7.i.i.i.i, i32 0, i32 1
  %153 = call ptr @memcpy(ptr %flow_spec.i, ptr %fs, i32 168)
  %eth_ft11.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %call7.i.i.i.i, i32 0, i32 3
  %154 = ptrtoint ptr %eth_ft11.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %retval.0.i59.i, ptr %eth_ft11.i, align 4
  %155 = ptrtoint ptr %retval.0.i59.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %retval.0.i59.i, align 4
  %tobool.not.i = icmp eq ptr %156, null
  br i1 %tobool.not.i, label %if.end10.i.del_ethtool_rule.i_crit_edge, label %if.end13.i

if.end10.i.del_ethtool_rule.i_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %del_ethtool_rule.i

if.end13.i:                                       ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i) #8
  %157 = call ptr @memset(ptr %flow_act.i.i, i32 0, i32 36)
  %158 = getelementptr inbounds { i32, ptr, ptr, %union.anon.215, i32, [2 x { i16, i16, i8, [1 x i8] }], ptr }, ptr %flow_act.i.i, i32 0, i32 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 1, ptr %158, align 4
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #13
  %tobool.not.i70.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i70.i, label %add_ethtool_flow_rule.exit.thread.i, label %if.end.i71.i

add_ethtool_flow_rule.exit.thread.i:              ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #8
  br label %if.then17.i

if.end.i71.i:                                     ; preds = %if.end13.i
  %match_criteria.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1
  %160 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %fs, align 8
  %and.i.i.i.i = and i32 %161, 536870911
  %162 = zext i32 %and.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and.i.i.i.i, label %if.end.i71.i.free.i.i_crit_edge [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb3.i.i.i
    i32 13, label %sw.bb4.i.i.i
    i32 5, label %sw.bb5.i.i.i
    i32 6, label %sw.bb6.i.i.i
    i32 14, label %sw.bb7.i.i.i
    i32 18, label %sw.bb8.i.i.i
  ]

if.end.i71.i.free.i.i_crit_edge:                  ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free.i.i

sw.bb.i.i.i:                                      ; preds = %if.end.i71.i
  %m_u.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %163 = ptrtoint ptr %m_u.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %m_u.i.i.i.i, align 4
  %ip4dst.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %165 = ptrtoint ptr %ip4dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %ip4dst.i.i.i.i, align 4
  %ip4dst2.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %167 = ptrtoint ptr %ip4dst2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ip4dst2.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool.not.i.i.i.i.i = icmp eq i32 %164, 0
  br i1 %tobool.not.i.i.i.i.i, label %sw.bb.i.i.i.if.end.i.i.i.i72.i_crit_edge, label %if.then.i.i.i.i.i

sw.bb.i.i.i.if.end.i.i.i.i72.i_crit_edge:         ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i72.i

if.then.i.i.i.i.i:                                ; preds = %sw.bb.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %h_u.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %h_u.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 11
  %171 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %170, ptr %add.ptr.i.i.i.i.i, align 1
  %add.ptr1.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 11
  %172 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 4)
  store i32 %164, ptr %add.ptr1.i.i.i.i.i, align 1
  br label %if.end.i.i.i.i72.i

if.end.i.i.i.i72.i:                               ; preds = %if.then.i.i.i.i.i, %sw.bb.i.i.i.if.end.i.i.i.i72.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %166, 0
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i72.i.set_ip4.exit.i.i.i.i_crit_edge, label %if.then3.i.i.i.i.i

if.end.i.i.i.i72.i.set_ip4.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_ip4.exit.i.i.i.i

if.then3.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i72.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 15
  %173 = ptrtoint ptr %add.ptr4.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 %168, ptr %add.ptr4.i.i.i.i.i, align 1
  %add.ptr5.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 15
  %174 = ptrtoint ptr %add.ptr5.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 %166, ptr %add.ptr5.i.i.i.i.i, align 1
  br label %set_ip4.exit.i.i.i.i

set_ip4.exit.i.i.i.i:                             ; preds = %if.then3.i.i.i.i.i, %if.end.i.i.i.i72.i.set_ip4.exit.i.i.i.i_crit_edge
  %add.ptr8.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %add.ptr8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr8.i.i.i.i.i, align 4
  %or.i.i.i.i.i = or i32 %176, 65535
  store i32 %or.i.i.i.i.i, ptr %add.ptr8.i.i.i.i.i, align 4
  %add.ptr18.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %177 = ptrtoint ptr %add.ptr18.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr18.i.i.i.i.i, align 4
  %and19.i.i.i.i.i = and i32 %178, -65536
  %or22.i.i.i.i.i = or i32 %and19.i.i.i.i.i, 2048
  store i32 %or22.i.i.i.i.i, ptr %add.ptr18.i.i.i.i.i, align 4
  %psrc.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %179 = ptrtoint ptr %psrc.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %psrc.i.i.i.i, align 4
  %pdst.i.i.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i.i.i.i, i32 0, i32 3
  %181 = ptrtoint ptr %pdst.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %pdst.i.i.i.i, align 2
  %pdst4.i.i.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i.i.i.i, i32 0, i32 3
  %183 = ptrtoint ptr %pdst4.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %pdst4.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %180)
  %tobool.not.i14.i.i.i.i = icmp eq i16 %180, 0
  br i1 %tobool.not.i14.i.i.i.i, label %set_ip4.exit.i.i.i.i.if.end.i17.i.i.i.i_crit_edge, label %do.body.i.i.i.i.i

set_ip4.exit.i.i.i.i.if.end.i17.i.i.i.i_crit_edge: ; preds = %set_ip4.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i17.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %set_ip4.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %psrc3.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %185 = ptrtoint ptr %psrc3.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %psrc3.i.i.i.i, align 4
  %conv.i.i.i.i.i = zext i16 %180 to i32
  %add.ptr.i15.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 5
  %187 = ptrtoint ptr %add.ptr.i15.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %add.ptr.i15.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %188, 65535
  %shl.i.i.i.i.i = shl nuw i32 %conv.i.i.i.i.i, 16
  %or.i16.i.i.i.i = or i32 %and.i.i.i.i.i, %shl.i.i.i.i.i
  store i32 %or.i16.i.i.i.i, ptr %add.ptr.i15.i.i.i.i, align 4
  %conv8.i.i.i.i.i = zext i16 %186 to i32
  %add.ptr12.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %189 = ptrtoint ptr %add.ptr12.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %add.ptr12.i.i.i.i.i, align 4
  %and13.i.i.i.i.i = and i32 %190, 65535
  %shl15.i.i.i.i.i = shl nuw i32 %conv8.i.i.i.i.i, 16
  %or16.i.i.i.i.i = or i32 %and13.i.i.i.i.i, %shl15.i.i.i.i.i
  store i32 %or16.i.i.i.i.i, ptr %add.ptr12.i.i.i.i.i, align 4
  br label %if.end.i17.i.i.i.i

if.end.i17.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i, %set_ip4.exit.i.i.i.i.if.end.i17.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool20.not.i.i.i.i.i = icmp eq i16 %182, 0
  br i1 %tobool20.not.i.i.i.i.i, label %if.end.i17.i.i.i.i.parse_tcp4.exit.i.i.i_crit_edge, label %do.body22.i.i.i.i.i

if.end.i17.i.i.i.i.parse_tcp4.exit.i.i.i_crit_edge: ; preds = %if.end.i17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_tcp4.exit.i.i.i

do.body22.i.i.i.i.i:                              ; preds = %if.end.i17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i.i.i.i.i = zext i16 %182 to i32
  %add.ptr28.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 5
  %191 = ptrtoint ptr %add.ptr28.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %add.ptr28.i.i.i.i.i, align 4
  %and29.i.i.i.i.i = and i32 %192, -65536
  %or32.i.i.i.i.i = or i32 %and29.i.i.i.i.i, %conv24.i.i.i.i.i
  store i32 %or32.i.i.i.i.i, ptr %add.ptr28.i.i.i.i.i, align 4
  %conv38.i.i.i.i.i = zext i16 %184 to i32
  %add.ptr42.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %193 = ptrtoint ptr %add.ptr42.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %add.ptr42.i.i.i.i.i, align 4
  %and43.i.i.i.i.i = and i32 %194, -65536
  %or46.i.i.i.i.i = or i32 %and43.i.i.i.i.i, %conv38.i.i.i.i.i
  store i32 %or46.i.i.i.i.i, ptr %add.ptr42.i.i.i.i.i, align 4
  br label %parse_tcp4.exit.i.i.i

parse_tcp4.exit.i.i.i:                            ; preds = %do.body22.i.i.i.i.i, %if.end.i17.i.i.i.i.parse_tcp4.exit.i.i.i_crit_edge
  %add.ptr56.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 4
  %195 = ptrtoint ptr %add.ptr56.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %add.ptr56.i.i.i.i.i, align 4
  %or60.i.i.i.i.i = or i32 %196, -16777216
  store i32 %or60.i.i.i.i.i, ptr %add.ptr56.i.i.i.i.i, align 4
  %add.ptr69.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %197 = ptrtoint ptr %add.ptr69.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr69.i.i.i.i.i, align 4
  %and70.i.i.i.i.i = and i32 %198, 16777215
  %or73.i.i.i.i.i = or i32 %and70.i.i.i.i.i, 100663296
  store i32 %or73.i.i.i.i.i, ptr %add.ptr69.i.i.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end.i71.i
  %m_u.i67.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u.i68.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %199 = ptrtoint ptr %m_u.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %m_u.i67.i.i.i, align 4
  %ip4dst.i69.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %201 = ptrtoint ptr %ip4dst.i69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %ip4dst.i69.i.i.i, align 4
  %ip4dst2.i70.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %203 = ptrtoint ptr %ip4dst2.i70.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %ip4dst2.i70.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool.not.i.i71.i.i.i = icmp eq i32 %200, 0
  br i1 %tobool.not.i.i71.i.i.i, label %sw.bb3.i.i.i.if.end.i.i76.i.i.i_crit_edge, label %if.then.i.i74.i.i.i

sw.bb3.i.i.i.if.end.i.i76.i.i.i_crit_edge:        ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i76.i.i.i

if.then.i.i74.i.i.i:                              ; preds = %sw.bb3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %h_u.i68.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %h_u.i68.i.i.i, align 4
  %add.ptr.i.i72.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 11
  %207 = ptrtoint ptr %add.ptr.i.i72.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %207, i32 4)
  store i32 %206, ptr %add.ptr.i.i72.i.i.i, align 1
  %add.ptr1.i.i73.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 11
  %208 = ptrtoint ptr %add.ptr1.i.i73.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %208, i32 4)
  store i32 %200, ptr %add.ptr1.i.i73.i.i.i, align 1
  br label %if.end.i.i76.i.i.i

if.end.i.i76.i.i.i:                               ; preds = %if.then.i.i74.i.i.i, %sw.bb3.i.i.i.if.end.i.i76.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool2.not.i.i75.i.i.i = icmp eq i32 %202, 0
  br i1 %tobool2.not.i.i75.i.i.i, label %if.end.i.i76.i.i.i.set_ip4.exit.i89.i.i.i_crit_edge, label %if.then3.i.i79.i.i.i

if.end.i.i76.i.i.i.set_ip4.exit.i89.i.i.i_crit_edge: ; preds = %if.end.i.i76.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_ip4.exit.i89.i.i.i

if.then3.i.i79.i.i.i:                             ; preds = %if.end.i.i76.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4.i.i77.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 15
  %209 = ptrtoint ptr %add.ptr4.i.i77.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %209, i32 4)
  store i32 %204, ptr %add.ptr4.i.i77.i.i.i, align 1
  %add.ptr5.i.i78.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 15
  %210 = ptrtoint ptr %add.ptr5.i.i78.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %202, ptr %add.ptr5.i.i78.i.i.i, align 1
  br label %set_ip4.exit.i89.i.i.i

set_ip4.exit.i89.i.i.i:                           ; preds = %if.then3.i.i79.i.i.i, %if.end.i.i76.i.i.i.set_ip4.exit.i89.i.i.i_crit_edge
  %add.ptr8.i.i80.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %211 = ptrtoint ptr %add.ptr8.i.i80.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %add.ptr8.i.i80.i.i.i, align 4
  %or.i.i81.i.i.i = or i32 %212, 65535
  store i32 %or.i.i81.i.i.i, ptr %add.ptr8.i.i80.i.i.i, align 4
  %add.ptr18.i.i82.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %213 = ptrtoint ptr %add.ptr18.i.i82.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %add.ptr18.i.i82.i.i.i, align 4
  %and19.i.i83.i.i.i = and i32 %214, -65536
  %or22.i.i84.i.i.i = or i32 %and19.i.i83.i.i.i, 2048
  store i32 %or22.i.i84.i.i.i, ptr %add.ptr18.i.i82.i.i.i, align 4
  %psrc.i85.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %215 = ptrtoint ptr %psrc.i85.i.i.i to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %psrc.i85.i.i.i, align 4
  %pdst.i86.i.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %m_u.i67.i.i.i, i32 0, i32 3
  %217 = ptrtoint ptr %pdst.i86.i.i.i to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %pdst.i86.i.i.i, align 2
  %pdst4.i87.i.i.i = getelementptr inbounds %struct.ethtool_tcpip4_spec, ptr %h_u.i68.i.i.i, i32 0, i32 3
  %219 = ptrtoint ptr %pdst4.i87.i.i.i to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %pdst4.i87.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %216)
  %tobool.not.i14.i88.i.i.i = icmp eq i16 %216, 0
  br i1 %tobool.not.i14.i88.i.i.i, label %set_ip4.exit.i89.i.i.i.if.end.i17.i103.i.i.i_crit_edge, label %do.body.i.i101.i.i.i

set_ip4.exit.i89.i.i.i.if.end.i17.i103.i.i.i_crit_edge: ; preds = %set_ip4.exit.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i17.i103.i.i.i

do.body.i.i101.i.i.i:                             ; preds = %set_ip4.exit.i89.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %psrc3.i90.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %221 = ptrtoint ptr %psrc3.i90.i.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %psrc3.i90.i.i.i, align 4
  %conv.i.i91.i.i.i = zext i16 %216 to i32
  %add.ptr.i15.i92.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 7
  %223 = ptrtoint ptr %add.ptr.i15.i92.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %add.ptr.i15.i92.i.i.i, align 4
  %and.i.i93.i.i.i = and i32 %224, 65535
  %shl.i.i94.i.i.i = shl nuw i32 %conv.i.i91.i.i.i, 16
  %or.i16.i95.i.i.i = or i32 %and.i.i93.i.i.i, %shl.i.i94.i.i.i
  store i32 %or.i16.i95.i.i.i, ptr %add.ptr.i15.i92.i.i.i, align 4
  %conv8.i.i96.i.i.i = zext i16 %222 to i32
  %add.ptr12.i.i97.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 7
  %225 = ptrtoint ptr %add.ptr12.i.i97.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %add.ptr12.i.i97.i.i.i, align 4
  %and13.i.i98.i.i.i = and i32 %226, 65535
  %shl15.i.i99.i.i.i = shl nuw i32 %conv8.i.i96.i.i.i, 16
  %or16.i.i100.i.i.i = or i32 %and13.i.i98.i.i.i, %shl15.i.i99.i.i.i
  store i32 %or16.i.i100.i.i.i, ptr %add.ptr12.i.i97.i.i.i, align 4
  br label %if.end.i17.i103.i.i.i

if.end.i17.i103.i.i.i:                            ; preds = %do.body.i.i101.i.i.i, %set_ip4.exit.i89.i.i.i.if.end.i17.i103.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %218)
  %tobool20.not.i.i102.i.i.i = icmp eq i16 %218, 0
  br i1 %tobool20.not.i.i102.i.i.i, label %if.end.i17.i103.i.i.i.parse_udp4.exit.i.i.i_crit_edge, label %do.body22.i.i112.i.i.i

if.end.i17.i103.i.i.i.parse_udp4.exit.i.i.i_crit_edge: ; preds = %if.end.i17.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_udp4.exit.i.i.i

do.body22.i.i112.i.i.i:                           ; preds = %if.end.i17.i103.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i.i104.i.i.i = zext i16 %218 to i32
  %add.ptr28.i.i105.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 7
  %227 = ptrtoint ptr %add.ptr28.i.i105.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %add.ptr28.i.i105.i.i.i, align 4
  %and29.i.i106.i.i.i = and i32 %228, -65536
  %or32.i.i107.i.i.i = or i32 %and29.i.i106.i.i.i, %conv24.i.i104.i.i.i
  store i32 %or32.i.i107.i.i.i, ptr %add.ptr28.i.i105.i.i.i, align 4
  %conv38.i.i108.i.i.i = zext i16 %220 to i32
  %add.ptr42.i.i109.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 7
  %229 = ptrtoint ptr %add.ptr42.i.i109.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %add.ptr42.i.i109.i.i.i, align 4
  %and43.i.i110.i.i.i = and i32 %230, -65536
  %or46.i.i111.i.i.i = or i32 %and43.i.i110.i.i.i, %conv38.i.i108.i.i.i
  store i32 %or46.i.i111.i.i.i, ptr %add.ptr42.i.i109.i.i.i, align 4
  br label %parse_udp4.exit.i.i.i

parse_udp4.exit.i.i.i:                            ; preds = %do.body22.i.i112.i.i.i, %if.end.i17.i103.i.i.i.parse_udp4.exit.i.i.i_crit_edge
  %add.ptr56.i.i113.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 4
  %231 = ptrtoint ptr %add.ptr56.i.i113.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %add.ptr56.i.i113.i.i.i, align 4
  %or60.i.i114.i.i.i = or i32 %232, -16777216
  store i32 %or60.i.i114.i.i.i, ptr %add.ptr56.i.i113.i.i.i, align 4
  %add.ptr69.i.i115.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %233 = ptrtoint ptr %add.ptr69.i.i115.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %add.ptr69.i.i115.i.i.i, align 4
  %and70.i.i116.i.i.i = and i32 %234, 16777215
  %or73.i.i117.i.i.i = or i32 %and70.i.i116.i.i.i, 285212672
  store i32 %or73.i.i117.i.i.i, ptr %add.ptr69.i.i115.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end.i71.i
  %m_u.i118.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u.i119.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %235 = ptrtoint ptr %m_u.i118.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %m_u.i118.i.i.i, align 4
  %ip4dst.i120.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %237 = ptrtoint ptr %ip4dst.i120.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ip4dst.i120.i.i.i, align 4
  %ip4dst2.i121.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %239 = ptrtoint ptr %ip4dst2.i121.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %ip4dst2.i121.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool.not.i.i122.i.i.i = icmp eq i32 %236, 0
  br i1 %tobool.not.i.i122.i.i.i, label %sw.bb4.i.i.i.if.end.i.i127.i.i.i_crit_edge, label %if.then.i.i125.i.i.i

sw.bb4.i.i.i.if.end.i.i127.i.i.i_crit_edge:       ; preds = %sw.bb4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i127.i.i.i

if.then.i.i125.i.i.i:                             ; preds = %sw.bb4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %241 = ptrtoint ptr %h_u.i119.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %h_u.i119.i.i.i, align 4
  %add.ptr.i.i123.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 11
  %243 = ptrtoint ptr %add.ptr.i.i123.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %243, i32 4)
  store i32 %242, ptr %add.ptr.i.i123.i.i.i, align 1
  %add.ptr1.i.i124.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 11
  %244 = ptrtoint ptr %add.ptr1.i.i124.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %244, i32 4)
  store i32 %236, ptr %add.ptr1.i.i124.i.i.i, align 1
  br label %if.end.i.i127.i.i.i

if.end.i.i127.i.i.i:                              ; preds = %if.then.i.i125.i.i.i, %sw.bb4.i.i.i.if.end.i.i127.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %tobool2.not.i.i126.i.i.i = icmp eq i32 %238, 0
  br i1 %tobool2.not.i.i126.i.i.i, label %if.end.i.i127.i.i.i.set_ip4.exit.i136.i.i.i_crit_edge, label %if.then3.i.i130.i.i.i

if.end.i.i127.i.i.i.set_ip4.exit.i136.i.i.i_crit_edge: ; preds = %if.end.i.i127.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_ip4.exit.i136.i.i.i

if.then3.i.i130.i.i.i:                            ; preds = %if.end.i.i127.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4.i.i128.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 15
  %245 = ptrtoint ptr %add.ptr4.i.i128.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %245, i32 4)
  store i32 %240, ptr %add.ptr4.i.i128.i.i.i, align 1
  %add.ptr5.i.i129.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 15
  %246 = ptrtoint ptr %add.ptr5.i.i129.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %246, i32 4)
  store i32 %238, ptr %add.ptr5.i.i129.i.i.i, align 1
  br label %set_ip4.exit.i136.i.i.i

set_ip4.exit.i136.i.i.i:                          ; preds = %if.then3.i.i130.i.i.i, %if.end.i.i127.i.i.i.set_ip4.exit.i136.i.i.i_crit_edge
  %add.ptr8.i.i131.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %247 = ptrtoint ptr %add.ptr8.i.i131.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %add.ptr8.i.i131.i.i.i, align 4
  %or.i.i132.i.i.i = or i32 %248, 65535
  store i32 %or.i.i132.i.i.i, ptr %add.ptr8.i.i131.i.i.i, align 4
  %add.ptr18.i.i133.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %249 = ptrtoint ptr %add.ptr18.i.i133.i.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %add.ptr18.i.i133.i.i.i, align 4
  %and19.i.i134.i.i.i = and i32 %250, -65536
  %or22.i.i135.i.i.i = or i32 %and19.i.i134.i.i.i, 2048
  store i32 %or22.i.i135.i.i.i, ptr %add.ptr18.i.i133.i.i.i, align 4
  %proto.i.i.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %m_u.i118.i.i.i, i32 0, i32 5
  %251 = ptrtoint ptr %proto.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %proto.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i.i.i.i = icmp eq i8 %252, 0
  br i1 %tobool.not.i.i.i.i, label %set_ip4.exit.i136.i.i.i.sw.epilog.i.i.i_crit_edge, label %do.body.i.i.i.i

set_ip4.exit.i136.i.i.i.sw.epilog.i.i.i_crit_edge: ; preds = %set_ip4.exit.i136.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i

do.body.i.i.i.i:                                  ; preds = %set_ip4.exit.i136.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i73.i = zext i8 %252 to i32
  %add.ptr.i.i.i74.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 4
  %253 = ptrtoint ptr %add.ptr.i.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %add.ptr.i.i.i74.i, align 4
  %and.i137.i.i.i = and i32 %254, 16777215
  %shl.i.i.i.i = shl nuw i32 %conv.i.i.i73.i, 24
  %or.i.i.i75.i = or i32 %and.i137.i.i.i, %shl.i.i.i.i
  store i32 %or.i.i.i75.i, ptr %add.ptr.i.i.i74.i, align 4
  %proto11.i.i.i.i = getelementptr inbounds %struct.ethtool_usrip4_spec, ptr %h_u.i119.i.i.i, i32 0, i32 5
  %255 = ptrtoint ptr %proto11.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %proto11.i.i.i.i, align 2
  %conv12.i.i.i.i = zext i8 %256 to i32
  %add.ptr16.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %257 = ptrtoint ptr %add.ptr16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %add.ptr16.i.i.i.i, align 4
  %and17.i.i.i.i = and i32 %258, 16777215
  %shl19.i.i.i.i = shl nuw i32 %conv12.i.i.i.i, 24
  %or20.i.i.i.i = or i32 %and17.i.i.i.i, %shl19.i.i.i.i
  store i32 %or20.i.i.i.i, ptr %add.ptr16.i.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end.i71.i
  %m_u.i138.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip6dst.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %ip6dst4.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %259 = ptrtoint ptr %m_u.i138.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %m_u.i138.i.i.i, align 4
  %arrayidx2.i.i.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %261 = ptrtoint ptr %arrayidx2.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx2.i.i.i.i.i.i, align 4
  %or.i.i.i.i.i.i = or i32 %262, %260
  %arrayidx4.i.i.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %263 = ptrtoint ptr %arrayidx4.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx4.i.i.i.i.i.i, align 4
  %or5.i.i.i.i.i.i = or i32 %or.i.i.i.i.i.i, %264
  %arrayidx7.i.i.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %265 = ptrtoint ptr %arrayidx7.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %arrayidx7.i.i.i.i.i.i, align 4
  %or8.i.i.i.i.i.i = or i32 %or5.i.i.i.i.i.i, %266
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %or8.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i.i, label %sw.bb5.i.i.i.if.end.i.i143.i.i.i_crit_edge, label %if.then.i.i142.i.i.i

sw.bb5.i.i.i.if.end.i.i143.i.i.i_crit_edge:       ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i143.i.i.i

if.then.i.i142.i.i.i:                             ; preds = %sw.bb5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %h_u.i139.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %add.ptr.i.i140.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %267 = call ptr @memcpy(ptr %add.ptr.i.i140.i.i.i, ptr %h_u.i139.i.i.i, i32 16)
  %add.ptr1.i.i141.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 8
  %268 = call ptr @memcpy(ptr %add.ptr1.i.i141.i.i.i, ptr %m_u.i138.i.i.i, i32 16)
  br label %if.end.i.i143.i.i.i

if.end.i.i143.i.i.i:                              ; preds = %if.then.i.i142.i.i.i, %sw.bb5.i.i.i.if.end.i.i143.i.i.i_crit_edge
  %269 = ptrtoint ptr %ip6dst.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %ip6dst.i.i.i.i, align 4
  %arrayidx2.i40.i.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %271 = ptrtoint ptr %arrayidx2.i40.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %arrayidx2.i40.i.i.i.i.i, align 4
  %or.i41.i.i.i.i.i = or i32 %272, %270
  %arrayidx4.i42.i.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %273 = ptrtoint ptr %arrayidx4.i42.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx4.i42.i.i.i.i.i, align 4
  %or5.i43.i.i.i.i.i = or i32 %or.i41.i.i.i.i.i, %274
  %arrayidx7.i44.i.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %275 = ptrtoint ptr %arrayidx7.i44.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %arrayidx7.i44.i.i.i.i.i, align 4
  %or8.i45.i.i.i.i.i = or i32 %or5.i43.i.i.i.i.i, %276
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i45.i.i.i.i.i)
  %cmp.i46.i.i.i.i.i = icmp eq i32 %or8.i45.i.i.i.i.i, 0
  br i1 %cmp.i46.i.i.i.i.i, label %if.end.i.i143.i.i.i.set_ip6.exit.i.i.i.i_crit_edge, label %if.then4.i.i.i.i.i

if.end.i.i143.i.i.i.set_ip6.exit.i.i.i.i_crit_edge: ; preds = %if.end.i.i143.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_ip6.exit.i.i.i.i

if.then4.i.i.i.i.i:                               ; preds = %if.end.i.i143.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5.i.i144.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 12
  %277 = call ptr @memcpy(ptr %add.ptr5.i.i144.i.i.i, ptr %ip6dst4.i.i.i.i, i32 16)
  %add.ptr7.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 12
  %278 = call ptr @memcpy(ptr %add.ptr7.i.i.i.i.i, ptr %ip6dst.i.i.i.i, i32 16)
  br label %set_ip6.exit.i.i.i.i

set_ip6.exit.i.i.i.i:                             ; preds = %if.then4.i.i.i.i.i, %if.end.i.i143.i.i.i.set_ip6.exit.i.i.i.i_crit_edge
  %add.ptr11.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %279 = ptrtoint ptr %add.ptr11.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %add.ptr11.i.i.i.i.i, align 4
  %or.i.i145.i.i.i = or i32 %280, 65535
  store i32 %or.i.i145.i.i.i, ptr %add.ptr11.i.i.i.i.i, align 4
  %add.ptr21.i.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %281 = ptrtoint ptr %add.ptr21.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %add.ptr21.i.i.i.i.i, align 4
  %and22.i.i.i.i.i = and i32 %282, -65536
  %or25.i.i.i.i.i = or i32 %and22.i.i.i.i.i, 34525
  store i32 %or25.i.i.i.i.i, ptr %add.ptr21.i.i.i.i.i, align 4
  %psrc.i146.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %283 = ptrtoint ptr %psrc.i146.i.i.i to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %psrc.i146.i.i.i, align 4
  %pdst.i147.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %285 = ptrtoint ptr %pdst.i147.i.i.i to i32
  call void @__asan_load2_noabort(i32 %285)
  %286 = load i16, ptr %pdst.i147.i.i.i, align 2
  %pdst7.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %287 = ptrtoint ptr %pdst7.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %287)
  %288 = load i16, ptr %pdst7.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %284)
  %tobool.not.i.i148.i.i.i = icmp eq i16 %284, 0
  br i1 %tobool.not.i.i148.i.i.i, label %set_ip6.exit.i.i.i.i.if.end.i19.i.i.i.i_crit_edge, label %do.body.i.i157.i.i.i

set_ip6.exit.i.i.i.i.if.end.i19.i.i.i.i_crit_edge: ; preds = %set_ip6.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i19.i.i.i.i

do.body.i.i157.i.i.i:                             ; preds = %set_ip6.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %psrc6.i.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %289 = ptrtoint ptr %psrc6.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %psrc6.i.i.i.i, align 4
  %conv.i.i149.i.i.i = zext i16 %284 to i32
  %add.ptr.i17.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 5
  %291 = ptrtoint ptr %add.ptr.i17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %add.ptr.i17.i.i.i.i, align 4
  %and.i.i150.i.i.i = and i32 %292, 65535
  %shl.i.i151.i.i.i = shl nuw i32 %conv.i.i149.i.i.i, 16
  %or.i18.i.i.i.i = or i32 %and.i.i150.i.i.i, %shl.i.i151.i.i.i
  store i32 %or.i18.i.i.i.i, ptr %add.ptr.i17.i.i.i.i, align 4
  %conv8.i.i152.i.i.i = zext i16 %290 to i32
  %add.ptr12.i.i153.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %293 = ptrtoint ptr %add.ptr12.i.i153.i.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %add.ptr12.i.i153.i.i.i, align 4
  %and13.i.i154.i.i.i = and i32 %294, 65535
  %shl15.i.i155.i.i.i = shl nuw i32 %conv8.i.i152.i.i.i, 16
  %or16.i.i156.i.i.i = or i32 %and13.i.i154.i.i.i, %shl15.i.i155.i.i.i
  store i32 %or16.i.i156.i.i.i, ptr %add.ptr12.i.i153.i.i.i, align 4
  br label %if.end.i19.i.i.i.i

if.end.i19.i.i.i.i:                               ; preds = %do.body.i.i157.i.i.i, %set_ip6.exit.i.i.i.i.if.end.i19.i.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %286)
  %tobool20.not.i.i158.i.i.i = icmp eq i16 %286, 0
  br i1 %tobool20.not.i.i158.i.i.i, label %if.end.i19.i.i.i.i.parse_tcp6.exit.i.i.i_crit_edge, label %do.body22.i.i167.i.i.i

if.end.i19.i.i.i.i.parse_tcp6.exit.i.i.i_crit_edge: ; preds = %if.end.i19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_tcp6.exit.i.i.i

do.body22.i.i167.i.i.i:                           ; preds = %if.end.i19.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i.i159.i.i.i = zext i16 %286 to i32
  %add.ptr28.i.i160.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 5
  %295 = ptrtoint ptr %add.ptr28.i.i160.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %add.ptr28.i.i160.i.i.i, align 4
  %and29.i.i161.i.i.i = and i32 %296, -65536
  %or32.i.i162.i.i.i = or i32 %and29.i.i161.i.i.i, %conv24.i.i159.i.i.i
  store i32 %or32.i.i162.i.i.i, ptr %add.ptr28.i.i160.i.i.i, align 4
  %conv38.i.i163.i.i.i = zext i16 %288 to i32
  %add.ptr42.i.i164.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 5
  %297 = ptrtoint ptr %add.ptr42.i.i164.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %add.ptr42.i.i164.i.i.i, align 4
  %and43.i.i165.i.i.i = and i32 %298, -65536
  %or46.i.i166.i.i.i = or i32 %and43.i.i165.i.i.i, %conv38.i.i163.i.i.i
  store i32 %or46.i.i166.i.i.i, ptr %add.ptr42.i.i164.i.i.i, align 4
  br label %parse_tcp6.exit.i.i.i

parse_tcp6.exit.i.i.i:                            ; preds = %do.body22.i.i167.i.i.i, %if.end.i19.i.i.i.i.parse_tcp6.exit.i.i.i_crit_edge
  %add.ptr56.i.i168.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 4
  %299 = ptrtoint ptr %add.ptr56.i.i168.i.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %add.ptr56.i.i168.i.i.i, align 4
  %or60.i.i169.i.i.i = or i32 %300, -16777216
  store i32 %or60.i.i169.i.i.i, ptr %add.ptr56.i.i168.i.i.i, align 4
  %add.ptr69.i.i170.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %301 = ptrtoint ptr %add.ptr69.i.i170.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %add.ptr69.i.i170.i.i.i, align 4
  %and70.i.i171.i.i.i = and i32 %302, 16777215
  %or73.i.i172.i.i.i = or i32 %and70.i.i171.i.i.i, 100663296
  store i32 %or73.i.i172.i.i.i, ptr %add.ptr69.i.i170.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb6.i.i.i:                                     ; preds = %if.end.i71.i
  %m_u.i173.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %ip6dst.i174.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %ip6dst4.i175.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %303 = ptrtoint ptr %m_u.i173.i.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %m_u.i173.i.i.i, align 4
  %arrayidx2.i.i.i176.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %305 = ptrtoint ptr %arrayidx2.i.i.i176.i.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %arrayidx2.i.i.i176.i.i.i, align 4
  %or.i.i.i177.i.i.i = or i32 %306, %304
  %arrayidx4.i.i.i178.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %307 = ptrtoint ptr %arrayidx4.i.i.i178.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx4.i.i.i178.i.i.i, align 4
  %or5.i.i.i179.i.i.i = or i32 %or.i.i.i177.i.i.i, %308
  %arrayidx7.i.i.i180.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %309 = ptrtoint ptr %arrayidx7.i.i.i180.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %arrayidx7.i.i.i180.i.i.i, align 4
  %or8.i.i.i181.i.i.i = or i32 %or5.i.i.i179.i.i.i, %310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i181.i.i.i)
  %cmp.i.i.i182.i.i.i = icmp eq i32 %or8.i.i.i181.i.i.i, 0
  br i1 %cmp.i.i.i182.i.i.i, label %sw.bb6.i.i.i.if.end.i.i194.i.i.i_crit_edge, label %if.then.i.i186.i.i.i

sw.bb6.i.i.i.if.end.i.i194.i.i.i_crit_edge:       ; preds = %sw.bb6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i194.i.i.i

if.then.i.i186.i.i.i:                             ; preds = %sw.bb6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %h_u.i183.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %add.ptr.i.i184.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %311 = call ptr @memcpy(ptr %add.ptr.i.i184.i.i.i, ptr %h_u.i183.i.i.i, i32 16)
  %add.ptr1.i.i185.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 8
  %312 = call ptr @memcpy(ptr %add.ptr1.i.i185.i.i.i, ptr %m_u.i173.i.i.i, i32 16)
  br label %if.end.i.i194.i.i.i

if.end.i.i194.i.i.i:                              ; preds = %if.then.i.i186.i.i.i, %sw.bb6.i.i.i.if.end.i.i194.i.i.i_crit_edge
  %313 = ptrtoint ptr %ip6dst.i174.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %ip6dst.i174.i.i.i, align 4
  %arrayidx2.i40.i.i187.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %315 = ptrtoint ptr %arrayidx2.i40.i.i187.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %arrayidx2.i40.i.i187.i.i.i, align 4
  %or.i41.i.i188.i.i.i = or i32 %316, %314
  %arrayidx4.i42.i.i189.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %317 = ptrtoint ptr %arrayidx4.i42.i.i189.i.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx4.i42.i.i189.i.i.i, align 4
  %or5.i43.i.i190.i.i.i = or i32 %or.i41.i.i188.i.i.i, %318
  %arrayidx7.i44.i.i191.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %319 = ptrtoint ptr %arrayidx7.i44.i.i191.i.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %arrayidx7.i44.i.i191.i.i.i, align 4
  %or8.i45.i.i192.i.i.i = or i32 %or5.i43.i.i190.i.i.i, %320
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i45.i.i192.i.i.i)
  %cmp.i46.i.i193.i.i.i = icmp eq i32 %or8.i45.i.i192.i.i.i, 0
  br i1 %cmp.i46.i.i193.i.i.i, label %if.end.i.i194.i.i.i.set_ip6.exit.i207.i.i.i_crit_edge, label %if.then4.i.i197.i.i.i

if.end.i.i194.i.i.i.set_ip6.exit.i207.i.i.i_crit_edge: ; preds = %if.end.i.i194.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_ip6.exit.i207.i.i.i

if.then4.i.i197.i.i.i:                            ; preds = %if.end.i.i194.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5.i.i195.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 12
  %321 = call ptr @memcpy(ptr %add.ptr5.i.i195.i.i.i, ptr %ip6dst4.i175.i.i.i, i32 16)
  %add.ptr7.i.i196.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 12
  %322 = call ptr @memcpy(ptr %add.ptr7.i.i196.i.i.i, ptr %ip6dst.i174.i.i.i, i32 16)
  br label %set_ip6.exit.i207.i.i.i

set_ip6.exit.i207.i.i.i:                          ; preds = %if.then4.i.i197.i.i.i, %if.end.i.i194.i.i.i.set_ip6.exit.i207.i.i.i_crit_edge
  %add.ptr11.i.i198.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %323 = ptrtoint ptr %add.ptr11.i.i198.i.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %add.ptr11.i.i198.i.i.i, align 4
  %or.i.i199.i.i.i = or i32 %324, 65535
  store i32 %or.i.i199.i.i.i, ptr %add.ptr11.i.i198.i.i.i, align 4
  %add.ptr21.i.i200.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %325 = ptrtoint ptr %add.ptr21.i.i200.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %add.ptr21.i.i200.i.i.i, align 4
  %and22.i.i201.i.i.i = and i32 %326, -65536
  %or25.i.i202.i.i.i = or i32 %and22.i.i201.i.i.i, 34525
  store i32 %or25.i.i202.i.i.i, ptr %add.ptr21.i.i200.i.i.i, align 4
  %psrc.i203.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 2
  %327 = ptrtoint ptr %psrc.i203.i.i.i to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %psrc.i203.i.i.i, align 4
  %pdst.i204.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 3
  %329 = ptrtoint ptr %pdst.i204.i.i.i to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %pdst.i204.i.i.i, align 2
  %pdst7.i205.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 3
  %331 = ptrtoint ptr %pdst7.i205.i.i.i to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %pdst7.i205.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %328)
  %tobool.not.i.i206.i.i.i = icmp eq i16 %328, 0
  br i1 %tobool.not.i.i206.i.i.i, label %set_ip6.exit.i207.i.i.i.if.end.i19.i221.i.i.i_crit_edge, label %do.body.i.i219.i.i.i

set_ip6.exit.i207.i.i.i.if.end.i19.i221.i.i.i_crit_edge: ; preds = %set_ip6.exit.i207.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i19.i221.i.i.i

do.body.i.i219.i.i.i:                             ; preds = %set_ip6.exit.i207.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %psrc6.i208.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 2
  %333 = ptrtoint ptr %psrc6.i208.i.i.i to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %psrc6.i208.i.i.i, align 4
  %conv.i.i209.i.i.i = zext i16 %328 to i32
  %add.ptr.i17.i210.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 7
  %335 = ptrtoint ptr %add.ptr.i17.i210.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %add.ptr.i17.i210.i.i.i, align 4
  %and.i.i211.i.i.i = and i32 %336, 65535
  %shl.i.i212.i.i.i = shl nuw i32 %conv.i.i209.i.i.i, 16
  %or.i18.i213.i.i.i = or i32 %and.i.i211.i.i.i, %shl.i.i212.i.i.i
  store i32 %or.i18.i213.i.i.i, ptr %add.ptr.i17.i210.i.i.i, align 4
  %conv8.i.i214.i.i.i = zext i16 %334 to i32
  %add.ptr12.i.i215.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 7
  %337 = ptrtoint ptr %add.ptr12.i.i215.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %add.ptr12.i.i215.i.i.i, align 4
  %and13.i.i216.i.i.i = and i32 %338, 65535
  %shl15.i.i217.i.i.i = shl nuw i32 %conv8.i.i214.i.i.i, 16
  %or16.i.i218.i.i.i = or i32 %and13.i.i216.i.i.i, %shl15.i.i217.i.i.i
  store i32 %or16.i.i218.i.i.i, ptr %add.ptr12.i.i215.i.i.i, align 4
  br label %if.end.i19.i221.i.i.i

if.end.i19.i221.i.i.i:                            ; preds = %do.body.i.i219.i.i.i, %set_ip6.exit.i207.i.i.i.if.end.i19.i221.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %330)
  %tobool20.not.i.i220.i.i.i = icmp eq i16 %330, 0
  br i1 %tobool20.not.i.i220.i.i.i, label %if.end.i19.i221.i.i.i.parse_udp6.exit.i.i.i_crit_edge, label %do.body22.i.i230.i.i.i

if.end.i19.i221.i.i.i.parse_udp6.exit.i.i.i_crit_edge: ; preds = %if.end.i19.i221.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %parse_udp6.exit.i.i.i

do.body22.i.i230.i.i.i:                           ; preds = %if.end.i19.i221.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv24.i.i222.i.i.i = zext i16 %330 to i32
  %add.ptr28.i.i223.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 7
  %339 = ptrtoint ptr %add.ptr28.i.i223.i.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %add.ptr28.i.i223.i.i.i, align 4
  %and29.i.i224.i.i.i = and i32 %340, -65536
  %or32.i.i225.i.i.i = or i32 %and29.i.i224.i.i.i, %conv24.i.i222.i.i.i
  store i32 %or32.i.i225.i.i.i, ptr %add.ptr28.i.i223.i.i.i, align 4
  %conv38.i.i226.i.i.i = zext i16 %332 to i32
  %add.ptr42.i.i227.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 7
  %341 = ptrtoint ptr %add.ptr42.i.i227.i.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %add.ptr42.i.i227.i.i.i, align 4
  %and43.i.i228.i.i.i = and i32 %342, -65536
  %or46.i.i229.i.i.i = or i32 %and43.i.i228.i.i.i, %conv38.i.i226.i.i.i
  store i32 %or46.i.i229.i.i.i, ptr %add.ptr42.i.i227.i.i.i, align 4
  br label %parse_udp6.exit.i.i.i

parse_udp6.exit.i.i.i:                            ; preds = %do.body22.i.i230.i.i.i, %if.end.i19.i221.i.i.i.parse_udp6.exit.i.i.i_crit_edge
  %add.ptr56.i.i231.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 4
  %343 = ptrtoint ptr %add.ptr56.i.i231.i.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %add.ptr56.i.i231.i.i.i, align 4
  %or60.i.i232.i.i.i = or i32 %344, -16777216
  store i32 %or60.i.i232.i.i.i, ptr %add.ptr56.i.i231.i.i.i, align 4
  %add.ptr69.i.i233.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %345 = ptrtoint ptr %add.ptr69.i.i233.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %add.ptr69.i.i233.i.i.i, align 4
  %and70.i.i234.i.i.i = and i32 %346, 16777215
  %or73.i.i235.i.i.i = or i32 %and70.i.i234.i.i.i, 285212672
  store i32 %or73.i.i235.i.i.i, ptr %add.ptr69.i.i233.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end.i71.i
  %m_u.i236.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u.i237.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %ip6dst.i238.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1
  %ip6dst4.i239.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 1
  %347 = ptrtoint ptr %m_u.i236.i.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %m_u.i236.i.i.i, align 4
  %arrayidx2.i.i.i240.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %349 = ptrtoint ptr %arrayidx2.i.i.i240.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %arrayidx2.i.i.i240.i.i.i, align 4
  %or.i.i.i241.i.i.i = or i32 %350, %348
  %arrayidx4.i.i.i242.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %351 = ptrtoint ptr %arrayidx4.i.i.i242.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %arrayidx4.i.i.i242.i.i.i, align 4
  %or5.i.i.i243.i.i.i = or i32 %or.i.i.i241.i.i.i, %352
  %arrayidx7.i.i.i244.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %353 = ptrtoint ptr %arrayidx7.i.i.i244.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %arrayidx7.i.i.i244.i.i.i, align 4
  %or8.i.i.i245.i.i.i = or i32 %or5.i.i.i243.i.i.i, %354
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i245.i.i.i)
  %cmp.i.i.i246.i.i.i = icmp eq i32 %or8.i.i.i245.i.i.i, 0
  br i1 %cmp.i.i.i246.i.i.i, label %sw.bb7.i.i.i.if.end.i.i257.i.i.i_crit_edge, label %if.then.i.i249.i.i.i

sw.bb7.i.i.i.if.end.i.i257.i.i.i_crit_edge:       ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i257.i.i.i

if.then.i.i249.i.i.i:                             ; preds = %sw.bb7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i247.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 8
  %355 = call ptr @memcpy(ptr %add.ptr.i.i247.i.i.i, ptr %h_u.i237.i.i.i, i32 16)
  %add.ptr1.i.i248.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 8
  %356 = call ptr @memcpy(ptr %add.ptr1.i.i248.i.i.i, ptr %m_u.i236.i.i.i, i32 16)
  br label %if.end.i.i257.i.i.i

if.end.i.i257.i.i.i:                              ; preds = %if.then.i.i249.i.i.i, %sw.bb7.i.i.i.if.end.i.i257.i.i.i_crit_edge
  %357 = ptrtoint ptr %ip6dst.i238.i.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %ip6dst.i238.i.i.i, align 4
  %arrayidx2.i40.i.i250.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 1
  %359 = ptrtoint ptr %arrayidx2.i40.i.i250.i.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %arrayidx2.i40.i.i250.i.i.i, align 4
  %or.i41.i.i251.i.i.i = or i32 %360, %358
  %arrayidx4.i42.i.i252.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 2
  %361 = ptrtoint ptr %arrayidx4.i42.i.i252.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %arrayidx4.i42.i.i252.i.i.i, align 4
  %or5.i43.i.i253.i.i.i = or i32 %or.i41.i.i251.i.i.i, %362
  %arrayidx7.i44.i.i254.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 1, i32 3
  %363 = ptrtoint ptr %arrayidx7.i44.i.i254.i.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %arrayidx7.i44.i.i254.i.i.i, align 4
  %or8.i45.i.i255.i.i.i = or i32 %or5.i43.i.i253.i.i.i, %364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i45.i.i255.i.i.i)
  %cmp.i46.i.i256.i.i.i = icmp eq i32 %or8.i45.i.i255.i.i.i, 0
  br i1 %cmp.i46.i.i256.i.i.i, label %if.end.i.i257.i.i.i.set_ip6.exit.i267.i.i.i_crit_edge, label %if.then4.i.i260.i.i.i

if.end.i.i257.i.i.i.set_ip6.exit.i267.i.i.i_crit_edge: ; preds = %if.end.i.i257.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_ip6.exit.i267.i.i.i

if.then4.i.i260.i.i.i:                            ; preds = %if.end.i.i257.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5.i.i258.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 12
  %365 = call ptr @memcpy(ptr %add.ptr5.i.i258.i.i.i, ptr %ip6dst4.i239.i.i.i, i32 16)
  %add.ptr7.i.i259.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 12
  %366 = call ptr @memcpy(ptr %add.ptr7.i.i259.i.i.i, ptr %ip6dst.i238.i.i.i, i32 16)
  br label %set_ip6.exit.i267.i.i.i

set_ip6.exit.i267.i.i.i:                          ; preds = %if.then4.i.i260.i.i.i, %if.end.i.i257.i.i.i.set_ip6.exit.i267.i.i.i_crit_edge
  %add.ptr11.i.i261.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %367 = ptrtoint ptr %add.ptr11.i.i261.i.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %add.ptr11.i.i261.i.i.i, align 4
  %or.i.i262.i.i.i = or i32 %368, 65535
  store i32 %or.i.i262.i.i.i, ptr %add.ptr11.i.i261.i.i.i, align 4
  %add.ptr21.i.i263.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %369 = ptrtoint ptr %add.ptr21.i.i263.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %add.ptr21.i.i263.i.i.i, align 4
  %and22.i.i264.i.i.i = and i32 %370, -65536
  %or25.i.i265.i.i.i = or i32 %and22.i.i264.i.i.i, 34525
  store i32 %or25.i.i265.i.i.i, ptr %add.ptr21.i.i263.i.i.i, align 4
  %l4_proto.i.i.i.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %m_u.i236.i.i.i, i32 0, i32 4
  %371 = ptrtoint ptr %l4_proto.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %l4_proto.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %372)
  %tobool.not.i266.i.i.i = icmp eq i8 %372, 0
  br i1 %tobool.not.i266.i.i.i, label %set_ip6.exit.i267.i.i.i.sw.epilog.i.i.i_crit_edge, label %do.body.i273.i.i.i

set_ip6.exit.i267.i.i.i.sw.epilog.i.i.i_crit_edge: ; preds = %set_ip6.exit.i267.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i.i

do.body.i273.i.i.i:                               ; preds = %set_ip6.exit.i267.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i268.i.i.i = zext i8 %372 to i32
  %add.ptr.i269.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 4
  %373 = ptrtoint ptr %add.ptr.i269.i.i.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %add.ptr.i269.i.i.i, align 4
  %and.i270.i.i.i = and i32 %374, 16777215
  %shl.i271.i.i.i = shl nuw i32 %conv.i268.i.i.i, 24
  %or.i272.i.i.i = or i32 %and.i270.i.i.i, %shl.i271.i.i.i
  store i32 %or.i272.i.i.i, ptr %add.ptr.i269.i.i.i, align 4
  %l4_proto14.i.i.i.i = getelementptr inbounds %struct.ethtool_usrip6_spec, ptr %h_u.i237.i.i.i, i32 0, i32 4
  %375 = ptrtoint ptr %l4_proto14.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %375)
  %376 = load i8, ptr %l4_proto14.i.i.i.i, align 1
  %conv15.i.i.i.i = zext i8 %376 to i32
  %add.ptr19.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %377 = ptrtoint ptr %add.ptr19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %add.ptr19.i.i.i.i, align 4
  %and20.i.i.i.i = and i32 %378, 16777215
  %shl22.i.i.i.i = shl nuw i32 %conv15.i.i.i.i, 24
  %or23.i.i.i.i = or i32 %and20.i.i.i.i, %shl22.i.i.i.i
  store i32 %or23.i.i.i.i, ptr %add.ptr19.i.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  %match_value.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2
  %m_u.i274.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3
  %h_u.i275.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1
  %379 = ptrtoint ptr %m_u.i274.i.i.i to i32
  call void @__asan_load1_noabort(i32 %379)
  %380 = load i8, ptr %m_u.i274.i.i.i, align 1
  %381 = ptrtoint ptr %h_u.i275.i.i.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %h_u.i275.i.i.i, align 1
  %and8.i.i.i.i.i = and i8 %382, %380
  store i8 %and8.i.i.i.i.i, ptr %h_u.i275.i.i.i, align 1
  %incdec.ptr.i.i.i.i.i = getelementptr i8, ptr %m_u.i274.i.i.i, i32 1
  %incdec.ptr3.i.i.i.i.i = getelementptr i8, ptr %h_u.i275.i.i.i, i32 1
  %383 = ptrtoint ptr %incdec.ptr.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %383)
  %384 = load i8, ptr %incdec.ptr.i.i.i.i.i, align 1
  %385 = ptrtoint ptr %incdec.ptr3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %incdec.ptr3.i.i.i.i.i, align 1
  %and8.i.1.i.i.i.i = and i8 %386, %384
  store i8 %and8.i.1.i.i.i.i, ptr %incdec.ptr3.i.i.i.i.i, align 1
  %incdec.ptr.i.1.i.i.i.i = getelementptr i8, ptr %m_u.i274.i.i.i, i32 2
  %incdec.ptr3.i.1.i.i.i.i = getelementptr i8, ptr %h_u.i275.i.i.i, i32 2
  %387 = ptrtoint ptr %incdec.ptr.i.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %387)
  %388 = load i8, ptr %incdec.ptr.i.1.i.i.i.i, align 1
  %389 = ptrtoint ptr %incdec.ptr3.i.1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %incdec.ptr3.i.1.i.i.i.i, align 1
  %and8.i.2.i.i.i.i = and i8 %390, %388
  store i8 %and8.i.2.i.i.i.i, ptr %incdec.ptr3.i.1.i.i.i.i, align 1
  %incdec.ptr.i.2.i.i.i.i = getelementptr i8, ptr %m_u.i274.i.i.i, i32 3
  %incdec.ptr3.i.2.i.i.i.i = getelementptr i8, ptr %h_u.i275.i.i.i, i32 3
  %391 = ptrtoint ptr %incdec.ptr.i.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %391)
  %392 = load i8, ptr %incdec.ptr.i.2.i.i.i.i, align 1
  %393 = ptrtoint ptr %incdec.ptr3.i.2.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %393)
  %394 = load i8, ptr %incdec.ptr3.i.2.i.i.i.i, align 1
  %and8.i.3.i.i.i.i = and i8 %394, %392
  store i8 %and8.i.3.i.i.i.i, ptr %incdec.ptr3.i.2.i.i.i.i, align 1
  %incdec.ptr.i.3.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 1
  %incdec.ptr3.i.3.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 1
  %395 = ptrtoint ptr %incdec.ptr.i.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %incdec.ptr.i.3.i.i.i.i, align 1
  %397 = ptrtoint ptr %incdec.ptr3.i.3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %incdec.ptr3.i.3.i.i.i.i, align 1
  %and8.i.4.i.i.i.i = and i8 %398, %396
  store i8 %and8.i.4.i.i.i.i, ptr %incdec.ptr3.i.3.i.i.i.i, align 1
  %incdec.ptr.i.4.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.3.i.i.i.i, i32 1
  %incdec.ptr3.i.4.i.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.3.i.i.i.i, i32 1
  %399 = ptrtoint ptr %incdec.ptr.i.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %399)
  %400 = load i8, ptr %incdec.ptr.i.4.i.i.i.i, align 1
  %401 = ptrtoint ptr %incdec.ptr3.i.4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %incdec.ptr3.i.4.i.i.i.i, align 1
  %and8.i.5.i.i.i.i = and i8 %402, %400
  store i8 %and8.i.5.i.i.i.i, ptr %incdec.ptr3.i.4.i.i.i.i, align 1
  %incdec.ptr.i.5.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.3.i.i.i.i, i32 2
  %incdec.ptr3.i.5.i.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.3.i.i.i.i, i32 2
  %403 = ptrtoint ptr %incdec.ptr.i.5.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %incdec.ptr.i.5.i.i.i.i, align 1
  %405 = ptrtoint ptr %incdec.ptr3.i.5.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %incdec.ptr3.i.5.i.i.i.i, align 1
  %and8.i.6.i.i.i.i = and i8 %406, %404
  store i8 %and8.i.6.i.i.i.i, ptr %incdec.ptr3.i.5.i.i.i.i, align 1
  %incdec.ptr.i.6.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.3.i.i.i.i, i32 3
  %incdec.ptr3.i.6.i.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.3.i.i.i.i, i32 3
  %407 = ptrtoint ptr %incdec.ptr.i.6.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %incdec.ptr.i.6.i.i.i.i, align 1
  %409 = ptrtoint ptr %incdec.ptr3.i.6.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %incdec.ptr3.i.6.i.i.i.i, align 1
  %and8.i.7.i.i.i.i = and i8 %410, %408
  store i8 %and8.i.7.i.i.i.i, ptr %incdec.ptr3.i.6.i.i.i.i, align 1
  %incdec.ptr.i.7.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 2
  %incdec.ptr3.i.7.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 2
  %411 = ptrtoint ptr %incdec.ptr.i.7.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %incdec.ptr.i.7.i.i.i.i, align 1
  %413 = ptrtoint ptr %incdec.ptr3.i.7.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %incdec.ptr3.i.7.i.i.i.i, align 1
  %and8.i.8.i.i.i.i = and i8 %414, %412
  store i8 %and8.i.8.i.i.i.i, ptr %incdec.ptr3.i.7.i.i.i.i, align 1
  %incdec.ptr.i.8.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.7.i.i.i.i, i32 1
  %incdec.ptr3.i.8.i.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.7.i.i.i.i, i32 1
  %415 = ptrtoint ptr %incdec.ptr.i.8.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %incdec.ptr.i.8.i.i.i.i, align 1
  %417 = ptrtoint ptr %incdec.ptr3.i.8.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %incdec.ptr3.i.8.i.i.i.i, align 1
  %and8.i.9.i.i.i.i = and i8 %418, %416
  store i8 %and8.i.9.i.i.i.i, ptr %incdec.ptr3.i.8.i.i.i.i, align 1
  %incdec.ptr.i.9.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.7.i.i.i.i, i32 2
  %incdec.ptr3.i.9.i.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.7.i.i.i.i, i32 2
  %419 = ptrtoint ptr %incdec.ptr.i.9.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %419)
  %420 = load i8, ptr %incdec.ptr.i.9.i.i.i.i, align 1
  %421 = ptrtoint ptr %incdec.ptr3.i.9.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %incdec.ptr3.i.9.i.i.i.i, align 1
  %and8.i.10.i.i.i.i = and i8 %422, %420
  store i8 %and8.i.10.i.i.i.i, ptr %incdec.ptr3.i.9.i.i.i.i, align 1
  %incdec.ptr.i.10.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.7.i.i.i.i, i32 3
  %incdec.ptr3.i.10.i.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.7.i.i.i.i, i32 3
  %423 = ptrtoint ptr %incdec.ptr.i.10.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %incdec.ptr.i.10.i.i.i.i, align 1
  %425 = ptrtoint ptr %incdec.ptr3.i.10.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %incdec.ptr3.i.10.i.i.i.i, align 1
  %and8.i.11.i.i.i.i = and i8 %426, %424
  store i8 %and8.i.11.i.i.i.i, ptr %incdec.ptr3.i.10.i.i.i.i, align 1
  %incdec.ptr.i.11.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 3, i32 0, i32 0, i32 3
  %incdec.ptr3.i.11.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 1, i32 0, i32 0, i32 3
  %427 = ptrtoint ptr %incdec.ptr.i.11.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %427)
  %428 = load i8, ptr %incdec.ptr.i.11.i.i.i.i, align 1
  %429 = ptrtoint ptr %incdec.ptr3.i.11.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %incdec.ptr3.i.11.i.i.i.i, align 1
  %and8.i.12.i.i.i.i = and i8 %430, %428
  store i8 %and8.i.12.i.i.i.i, ptr %incdec.ptr3.i.11.i.i.i.i, align 1
  %incdec.ptr.i.12.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.11.i.i.i.i, i32 1
  %incdec.ptr3.i.12.i.i.i.i = getelementptr i8, ptr %incdec.ptr3.i.11.i.i.i.i, i32 1
  %431 = ptrtoint ptr %incdec.ptr.i.12.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %incdec.ptr.i.12.i.i.i.i, align 1
  %433 = ptrtoint ptr %incdec.ptr3.i.12.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %incdec.ptr3.i.12.i.i.i.i, align 1
  %and8.i.13.i.i.i.i = and i8 %434, %432
  store i8 %and8.i.13.i.i.i.i, ptr %incdec.ptr3.i.12.i.i.i.i, align 1
  %h_source.i.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %m_u.i274.i.i.i, i32 0, i32 1
  %435 = ptrtoint ptr %h_source.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %h_source.i.i.i.i, align 4
  %437 = ptrtoint ptr %match_criteria.i.i to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %436, ptr %match_criteria.i.i, align 4
  %add.ptr.i.i276.i.i.i = getelementptr %struct.ethhdr, ptr %m_u.i274.i.i.i, i32 0, i32 1, i32 4
  %438 = ptrtoint ptr %add.ptr.i.i276.i.i.i to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %add.ptr.i.i276.i.i.i, align 2
  %add.ptr1.i.i277.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 1
  %440 = ptrtoint ptr %add.ptr1.i.i277.i.i.i to i32
  call void @__asan_store2_noabort(i32 %440)
  store i16 %439, ptr %add.ptr1.i.i277.i.i.i, align 2
  %h_source2.i.i.i.i = getelementptr inbounds %struct.ethhdr, ptr %h_u.i275.i.i.i, i32 0, i32 1
  %441 = ptrtoint ptr %h_source2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %h_source2.i.i.i.i, align 4
  %443 = ptrtoint ptr %match_value.i.i to i32
  call void @__asan_store4_noabort(i32 %443)
  store i32 %442, ptr %match_value.i.i, align 4
  %add.ptr.i43.i.i.i.i = getelementptr %struct.ethhdr, ptr %h_u.i275.i.i.i, i32 0, i32 1, i32 4
  %444 = ptrtoint ptr %add.ptr.i43.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %add.ptr.i43.i.i.i.i, align 2
  %add.ptr1.i44.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %446 = ptrtoint ptr %add.ptr1.i44.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 %445, ptr %add.ptr1.i44.i.i.i.i, align 2
  %add.ptr4.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 2
  %447 = load i32, ptr %m_u.i274.i.i.i, align 4
  %448 = ptrtoint ptr %add.ptr4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 %447, ptr %add.ptr4.i.i.i.i, align 4
  %449 = load i16, ptr %incdec.ptr.i.3.i.i.i.i, align 2
  %add.ptr1.i46.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 3
  %450 = ptrtoint ptr %add.ptr1.i46.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %450)
  store i16 %449, ptr %add.ptr1.i46.i.i.i.i, align 2
  %add.ptr6.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %451 = load i32, ptr %h_u.i275.i.i.i, align 4
  %452 = ptrtoint ptr %add.ptr6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %451, ptr %add.ptr6.i.i.i.i, align 4
  %453 = load i16, ptr %incdec.ptr3.i.3.i.i.i.i, align 2
  %add.ptr1.i48.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %454 = ptrtoint ptr %add.ptr1.i48.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %454)
  store i16 %453, ptr %add.ptr1.i48.i.i.i.i, align 2
  %455 = load i16, ptr %incdec.ptr.i.11.i.i.i.i, align 1
  %conv.i278.i.i.i = zext i16 %455 to i32
  %456 = load i32, ptr %add.ptr1.i.i277.i.i.i, align 4
  %and.i279.i.i.i = and i32 %456, -65536
  %or.i280.i.i.i = or i32 %and.i279.i.i.i, %conv.i278.i.i.i
  store i32 %or.i280.i.i.i, ptr %add.ptr1.i.i277.i.i.i, align 4
  %457 = load i16, ptr %incdec.ptr3.i.11.i.i.i.i, align 1
  %conv18.i.i.i.i = zext i16 %457 to i32
  %458 = load i32, ptr %add.ptr1.i44.i.i.i.i, align 4
  %and23.i.i.i.i = and i32 %458, -65536
  %or26.i.i.i.i = or i32 %and23.i.i.i.i, %conv18.i.i.i.i
  store i32 %or26.i.i.i.i, ptr %add.ptr1.i44.i.i.i.i, align 4
  br label %sw.epilog.i.i.i

sw.epilog.i.i.i:                                  ; preds = %sw.bb8.i.i.i, %do.body.i273.i.i.i, %set_ip6.exit.i267.i.i.i.sw.epilog.i.i.i_crit_edge, %parse_udp6.exit.i.i.i, %parse_tcp6.exit.i.i.i, %do.body.i.i.i.i, %set_ip4.exit.i136.i.i.i.sw.epilog.i.i.i_crit_edge, %parse_udp4.exit.i.i.i, %parse_tcp4.exit.i.i.i
  %459 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %fs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %460)
  %tobool.not.i.i76.i = icmp sgt i32 %460, -1
  br i1 %tobool.not.i.i76.i, label %sw.epilog.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i78.i

sw.epilog.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %sw.epilog.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.lhs.true.i.i78.i:                            ; preds = %sw.epilog.i.i.i
  %vlan_tci.i.i77.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 3
  %461 = ptrtoint ptr %vlan_tci.i.i77.i to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %vlan_tci.i.i77.i, align 2
  %463 = and i16 %462, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %463)
  %tobool11.not.i.i.i = icmp eq i16 %463, 0
  br i1 %tobool11.not.i.i.i, label %land.lhs.true.i.i78.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i78.i.if.end.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  %vlan_tci12.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 3
  %464 = ptrtoint ptr %vlan_tci12.i.i.i to i32
  call void @__asan_load2_noabort(i32 %464)
  %465 = load i16, ptr %vlan_tci12.i.i.i, align 2
  %add.ptr.i281.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 4
  %466 = ptrtoint ptr %add.ptr.i281.i.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %add.ptr.i281.i.i.i, align 4
  %or.i282.i.i.i = or i32 %467, 32768
  store i32 %or.i282.i.i.i, ptr %add.ptr.i281.i.i.i, align 4
  %add.ptr11.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 4
  %468 = ptrtoint ptr %add.ptr11.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %add.ptr11.i.i.i.i, align 4
  %or15.i.i.i.i = or i32 %469, 32768
  store i32 %or15.i.i.i.i, ptr %add.ptr11.i.i.i.i, align 4
  %add.ptr24.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 3
  %470 = ptrtoint ptr %add.ptr24.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load i32, ptr %add.ptr24.i.i.i.i, align 4
  %or28.i.i.i.i = or i32 %471, 4095
  store i32 %or28.i.i.i.i, ptr %add.ptr24.i.i.i.i, align 4
  %add.ptr37.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %472 = ptrtoint ptr %add.ptr37.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %add.ptr37.i.i.i.i, align 4
  %and38.i.i.i.i = and i32 %473, -4096
  %474 = and i16 %465, 4095
  %and39.i.i.i.i = zext i16 %474 to i32
  %or41.i.i.i.i = or i32 %and38.i.i.i.i, %and39.i.i.i.i
  store i32 %or41.i.i.i.i, ptr %add.ptr37.i.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %land.lhs.true.i.i78.i.if.end.i.i.i_crit_edge, %sw.epilog.i.i.i.if.end.i.i.i_crit_edge
  %and14.i.i.i = and i32 %460, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %and14.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end.i.i.i.if.end6.i82.i_crit_edge, label %land.lhs.true16.i.i.i

if.end.i.i.i.if.end6.i82.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i82.i

land.lhs.true16.i.i.i:                            ; preds = %if.end.i.i.i
  %h_dest.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1
  %475 = ptrtoint ptr %h_dest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load i32, ptr %h_dest.i.i.i, align 4
  %add.ptr.i283.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 4
  %477 = ptrtoint ptr %add.ptr.i283.i.i.i to i32
  call void @__asan_load2_noabort(i32 %477)
  %478 = load i16, ptr %add.ptr.i283.i.i.i, align 2
  %conv.i284.i.i.i = zext i16 %478 to i32
  %or.i285.i.i.i = or i32 %476, %conv.i284.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i285.i.i.i)
  %cmp.i.i.i79.i = icmp eq i32 %or.i285.i.i.i, 0
  br i1 %cmp.i.i.i79.i, label %land.lhs.true16.i.i.i.if.end6.i82.i_crit_edge, label %if.then19.i.i.i

land.lhs.true16.i.i.i.if.end6.i82.i_crit_edge:    ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i82.i

if.then19.i.i.i:                                  ; preds = %land.lhs.true16.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %h_dest24.i.i.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1
  %479 = ptrtoint ptr %h_dest.i.i.i to i32
  call void @__asan_load1_noabort(i32 %479)
  %480 = load i8, ptr %h_dest.i.i.i, align 1
  %481 = ptrtoint ptr %h_dest24.i.i.i to i32
  call void @__asan_load1_noabort(i32 %481)
  %482 = load i8, ptr %h_dest24.i.i.i, align 1
  %and8.i.i.i.i = and i8 %482, %480
  store i8 %and8.i.i.i.i, ptr %h_dest24.i.i.i, align 1
  %incdec.ptr.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 1
  %incdec.ptr3.i.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 1
  %483 = ptrtoint ptr %incdec.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %483)
  %484 = load i8, ptr %incdec.ptr.i.i.i.i, align 1
  %485 = ptrtoint ptr %incdec.ptr3.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %485)
  %486 = load i8, ptr %incdec.ptr3.i.i.i.i, align 1
  %and8.i.1.i.i.i = and i8 %486, %484
  store i8 %and8.i.1.i.i.i, ptr %incdec.ptr3.i.i.i.i, align 1
  %incdec.ptr.i.1.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 2
  %incdec.ptr3.i.1.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 2
  %487 = ptrtoint ptr %incdec.ptr.i.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %487)
  %488 = load i8, ptr %incdec.ptr.i.1.i.i.i, align 1
  %489 = ptrtoint ptr %incdec.ptr3.i.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %incdec.ptr3.i.1.i.i.i, align 1
  %and8.i.2.i.i.i = and i8 %490, %488
  store i8 %and8.i.2.i.i.i, ptr %incdec.ptr3.i.1.i.i.i, align 1
  %incdec.ptr.i.2.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 3
  %incdec.ptr3.i.2.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 3
  %491 = ptrtoint ptr %incdec.ptr.i.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %491)
  %492 = load i8, ptr %incdec.ptr.i.2.i.i.i, align 1
  %493 = ptrtoint ptr %incdec.ptr3.i.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %incdec.ptr3.i.2.i.i.i, align 1
  %and8.i.3.i.i.i = and i8 %494, %492
  store i8 %and8.i.3.i.i.i, ptr %incdec.ptr3.i.2.i.i.i, align 1
  %incdec.ptr3.i.3.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 4
  %495 = ptrtoint ptr %add.ptr.i283.i.i.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %add.ptr.i283.i.i.i, align 1
  %497 = ptrtoint ptr %incdec.ptr3.i.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %incdec.ptr3.i.3.i.i.i, align 1
  %and8.i.4.i.i.i = and i8 %498, %496
  store i8 %and8.i.4.i.i.i, ptr %incdec.ptr3.i.3.i.i.i, align 1
  %incdec.ptr.i.4.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 4, i32 1, i32 5
  %incdec.ptr3.i.4.i.i.i = getelementptr %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 2, i32 1, i32 5
  %499 = ptrtoint ptr %incdec.ptr.i.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %incdec.ptr.i.4.i.i.i, align 1
  %501 = ptrtoint ptr %incdec.ptr3.i.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %incdec.ptr3.i.4.i.i.i, align 1
  %and8.i.5.i.i.i = and i8 %502, %500
  store i8 %and8.i.5.i.i.i, ptr %incdec.ptr3.i.4.i.i.i, align 1
  %add.ptr.i286.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 2
  %503 = load i32, ptr %h_dest.i.i.i, align 4
  %504 = ptrtoint ptr %add.ptr.i286.i.i.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %503, ptr %add.ptr.i286.i.i.i, align 4
  %505 = load i16, ptr %add.ptr.i283.i.i.i, align 2
  %add.ptr1.i.i288.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 1, i32 3
  %506 = ptrtoint ptr %add.ptr1.i.i288.i.i.i to i32
  call void @__asan_store2_noabort(i32 %506)
  store i16 %505, ptr %add.ptr1.i.i288.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %507 = load i32, ptr %h_dest24.i.i.i, align 4
  %508 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %507, ptr %add.ptr1.i.i.i.i, align 4
  %509 = load i16, ptr %incdec.ptr3.i.3.i.i.i, align 2
  %add.ptr1.i3.i.i.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %510 = ptrtoint ptr %add.ptr1.i3.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %510)
  store i16 %509, ptr %add.ptr1.i3.i.i.i.i, align 2
  br label %if.end6.i82.i

if.end6.i82.i:                                    ; preds = %if.then19.i.i.i, %land.lhs.true16.i.i.i.if.end6.i82.i_crit_edge, %if.end.i.i.i.if.end6.i82.i_crit_edge
  %511 = ptrtoint ptr %ring_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %511)
  %512 = load i64, ptr %ring_cookie.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %512)
  %cmp.i81.i = icmp eq i64 %512, -1
  br i1 %cmp.i81.i, label %if.end6.i82.i.if.end17.i.i_crit_edge, label %if.else.i.i

if.end6.i82.i.if.end17.i.i_crit_edge:             ; preds = %if.end6.i82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.else.i.i:                                      ; preds = %if.end6.i82.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %513 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i83.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %513, i32 noundef 3520, i32 noundef 16) #12
  %tobool9.not.i.i = icmp eq ptr %call7.i.i.i83.i, null
  br i1 %tobool9.not.i.i, label %if.else.i.i.free.i.i_crit_edge, label %if.end11.i.i

if.else.i.i.free.i.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free.i.i

if.end11.i.i:                                     ; preds = %if.else.i.i
  %514 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %call7.i.i.i83.i, i32 0, i32 1
  %515 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %fs, align 8
  %and.i.i84.i = and i32 %516, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i84.i)
  %tobool.not.i55.i.i = icmp eq i32 %and.i.i84.i, 0
  br i1 %tobool.not.i55.i.i, label %if.else.i.i.i, label %if.then.i56.i.i

if.then.i56.i.i:                                  ; preds = %if.end11.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pkt_merge_param.i.i.i) #8
  %rx_res.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %517 = ptrtoint ptr %rx_res.i.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %rx_res.i.i.i, align 4
  %call.i.i.i = call ptr @mlx5e_rx_res_rss_get(ptr noundef %518, i32 noundef %5) #8
  %tobool2.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.then.i56.i.i.flow_get_tirn.exit.i.i_crit_edge, label %if.end.i58.i.i

if.then.i56.i.i.flow_get_tirn.exit.i.i_crit_edge: ; preds = %if.then.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_get_tirn.exit.i.i

if.end.i58.i.i:                                   ; preds = %if.then.i56.i.i
  %519 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %fs, align 8
  %and.i.i57.i.i = and i32 %520, 536870911
  %switch.tableidx = add nsw i32 %and.i.i57.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %521 = icmp ult i32 %switch.tableidx, 17
  br i1 %521, label %switch.hole_check, label %if.end.i58.i.i.flow_get_tirn.exit.i.i_crit_edge

if.end.i58.i.i.flow_get_tirn.exit.i.i_crit_edge:  ; preds = %if.end.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_get_tirn.exit.i.i

switch.hole_check:                                ; preds = %if.end.i58.i.i
  %switch.shifted = lshr i32 102195, %switch.tableidx
  %522 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %switch.lobit.not = icmp eq i32 %522, 0
  br i1 %switch.lobit.not, label %switch.hole_check.flow_get_tirn.exit.i.i_crit_edge, label %switch.lookup

switch.hole_check.flow_get_tirn.exit.i.i_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_get_tirn.exit.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.mlx5e_ethtool_set_rxnfc, i32 0, i32 %switch.tableidx
  %523 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %523)
  %switch.load = load i32, ptr %switch.gep, align 4
  %packet_merge.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 9
  %524 = call ptr @memcpy(ptr %pkt_merge_param.i.i.i, ptr %packet_merge.i.i.i, i32 12)
  %call9.i.i.i = call i32 @mlx5e_rss_obtain_tirn(ptr noundef nonnull %call.i.i.i, i32 noundef %switch.load, ptr noundef nonnull %pkt_merge_param.i.i.i, i1 noundef zeroext false, ptr noundef %514) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %cleanup.i.i.i, label %switch.lookup.flow_get_tirn.exit.i.i_crit_edge

switch.lookup.flow_get_tirn.exit.i.i_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_get_tirn.exit.i.i

cleanup.i.i.i:                                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %rss13.i.i.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %call7.i.i.i.i, i32 0, i32 4
  %525 = ptrtoint ptr %rss13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store ptr %call.i.i.i, ptr %rss13.i.i.i, align 8
  call void @mlx5e_rss_refcnt_inc(ptr noundef nonnull %call.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt_merge_param.i.i.i) #8
  br label %if.end15.i.i

if.else.i.i.i:                                    ; preds = %if.end11.i.i
  %526 = ptrtoint ptr %ring_cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %526)
  %527 = load i64, ptr %ring_cookie.i.i, align 8
  %conv.i.i85.i = trunc i64 %527 to i16
  %num_channels.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 3
  %528 = ptrtoint ptr %num_channels.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %num_channels.i.i.i.i, align 4
  %conv.i.i85.i.frozen = freeze i16 %conv.i.i85.i
  %.frozen = freeze i16 %529
  %530 = udiv i16 %conv.i.i85.i.frozen, %.frozen
  %531 = mul i16 %530, %.frozen
  %rem.i.i.i.i.decomposed = sub i16 %conv.i.i85.i.frozen, %531
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %530)
  %cmp22.i.i.i = icmp eq i16 %530, 1
  %rx_res24.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %532 = ptrtoint ptr %rx_res24.i.i.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %rx_res24.i.i.i, align 4
  %conv25.i.i.i = zext i16 %rem.i.i.i.i.decomposed to i32
  br i1 %cmp22.i.i.i, label %cond.true.i.i.i, label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i.i.i = call i32 @mlx5e_rx_res_get_tirn_xsk(ptr noundef %533, i32 noundef %conv25.i.i.i) #8
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call29.i.i.i = call i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef %533, i32 noundef %conv25.i.i.i) #8
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi i32 [ %call26.i.i.i, %cond.true.i.i.i ], [ %call29.i.i.i, %cond.false.i.i.i ]
  %534 = ptrtoint ptr %514 to i32
  call void @__asan_store4_noabort(i32 %534)
  store i32 %cond.i.i.i, ptr %514, align 4
  br label %if.end15.i.i

flow_get_tirn.exit.i.i:                           ; preds = %switch.lookup.flow_get_tirn.exit.i.i_crit_edge, %switch.hole_check.flow_get_tirn.exit.i.i_crit_edge, %if.end.i58.i.i.flow_get_tirn.exit.i.i_crit_edge, %if.then.i56.i.i.flow_get_tirn.exit.i.i_crit_edge
  %retval.0.ph.i.i.i = phi i32 [ -22, %if.end.i58.i.i.flow_get_tirn.exit.i.i_crit_edge ], [ %call9.i.i.i, %switch.lookup.flow_get_tirn.exit.i.i_crit_edge ], [ -2, %if.then.i56.i.i.flow_get_tirn.exit.i.i_crit_edge ], [ -22, %switch.hole_check.flow_get_tirn.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pkt_merge_param.i.i.i) #8
  br label %free.i.i

if.end15.i.i:                                     ; preds = %cond.end.i.i.i, %cleanup.i.i.i
  %535 = ptrtoint ptr %call7.i.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %535)
  store i32 2, ptr %call7.i.i.i83.i, align 8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end15.i.i, %if.end6.i82.i.if.end17.i.i_crit_edge
  %storemerge.i.i = phi i32 [ 4, %if.end15.i.i ], [ 2, %if.end6.i82.i.if.end17.i.i_crit_edge ]
  %dst.0.i.i = phi ptr [ %call7.i.i.i83.i, %if.end15.i.i ], [ null, %if.end6.i82.i.if.end17.i.i_crit_edge ]
  %536 = ptrtoint ptr %flow_act.i.i to i32
  call void @__asan_store4_noabort(i32 %536)
  store i32 %storemerge.i.i, ptr %flow_act.i.i, align 4
  %537 = ptrtoint ptr %match_criteria.i.i to i32
  call void @__asan_load1_noabort(i32 %537)
  %538 = load i8, ptr %match_criteria.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %538)
  %cmp.i.i86.i = icmp eq i8 %538, 0
  br i1 %cmp.i.i86.i, label %land.rhs.i.i.i, label %if.end17.i.i.outer_header_zero.exit.i.i_crit_edge

if.end17.i.i.outer_header_zero.exit.i.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %outer_header_zero.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2.i.i.i = getelementptr i8, ptr %match_criteria.i.i, i32 1
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(63) %match_criteria.i.i, ptr noundef dereferenceable(63) %add.ptr2.i.i.i, i32 63) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i59.i.i = icmp ne i32 %bcmp.i.i.i, 0
  br label %outer_header_zero.exit.i.i

outer_header_zero.exit.i.i:                       ; preds = %land.rhs.i.i.i, %if.end17.i.i.outer_header_zero.exit.i.i_crit_edge
  %539 = phi i1 [ true, %if.end17.i.i.outer_header_zero.exit.i.i_crit_edge ], [ %tobool.not.i59.i.i, %land.rhs.i.i.i ]
  %conv.i.i = zext i1 %539 to i8
  %540 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %conv.i.i, ptr %call.i.i.i.i, align 4
  %flow_tag.i.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i.i, i32 0, i32 3, i32 1
  %541 = ptrtoint ptr %flow_tag.i.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 0, ptr %flow_tag.i.i, align 4
  %tobool21.not.i.i = icmp ne ptr %dst.0.i.i, null
  %cond.i87.i = zext i1 %tobool21.not.i.i to i32
  %call22.i.i = call ptr @mlx5_add_flow_rules(ptr noundef nonnull %156, ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %flow_act.i.i, ptr noundef %dst.0.i.i, i32 noundef %cond.i87.i) #8
  %cmp.i60.i.i = icmp ugt ptr %call22.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i.i, label %if.then24.i.i, label %outer_header_zero.exit.i.i.free.i.i_crit_edge

outer_header_zero.exit.i.i.free.i.i_crit_edge:    ; preds = %outer_header_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free.i.i

if.then24.i.i:                                    ; preds = %outer_header_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %542 = ptrtoint ptr %call22.i.i to i32
  %netdev.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %543 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %netdev.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %544, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.add_ethtool_flow_rule, i32 noundef %542) #11
  br label %free.i.i

free.i.i:                                         ; preds = %if.then24.i.i, %outer_header_zero.exit.i.i.free.i.i_crit_edge, %flow_get_tirn.exit.i.i, %if.else.i.i.free.i.i_crit_edge, %if.end.i71.i.free.i.i_crit_edge
  %dst.1.i.i = phi ptr [ %dst.0.i.i, %if.then24.i.i ], [ %dst.0.i.i, %outer_header_zero.exit.i.i.free.i.i_crit_edge ], [ %call7.i.i.i83.i, %flow_get_tirn.exit.i.i ], [ null, %if.else.i.i.free.i.i_crit_edge ], [ null, %if.end.i71.i.free.i.i_crit_edge ]
  %rule.0.i.i = phi ptr [ %call22.i.i, %if.then24.i.i ], [ %call22.i.i, %outer_header_zero.exit.i.i.free.i.i_crit_edge ], [ inttoptr (i32 -1 to ptr), %flow_get_tirn.exit.i.i ], [ inttoptr (i32 -1 to ptr), %if.else.i.i.free.i.i_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end.i71.i.free.i.i_crit_edge ]
  %err.1.i.i = phi i32 [ %542, %if.then24.i.i ], [ 0, %outer_header_zero.exit.i.i.free.i.i_crit_edge ], [ %retval.0.ph.i.i.i, %flow_get_tirn.exit.i.i ], [ -12, %if.else.i.i.free.i.i_crit_edge ], [ -22, %if.end.i71.i.free.i.i_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #8
  call void @kfree(ptr noundef %dst.1.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i.i)
  %tobool27.not.i.i = icmp eq i32 %err.1.i.i, 0
  %545 = inttoptr i32 %err.1.i.i to ptr
  %spec.select = select i1 %tobool27.not.i.i, ptr %rule.0.i.i, ptr %545
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #8
  %cmp.i90.i = icmp ugt ptr %spec.select, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90.i, label %free.i.i.if.then17.i_crit_edge, label %if.end19.i

free.i.i.if.then17.i_crit_edge:                   ; preds = %free.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17.i

if.then17.i:                                      ; preds = %free.i.i.if.then17.i_crit_edge, %add_ethtool_flow_rule.exit.thread.i
  %retval.0.i89103.i = phi ptr [ inttoptr (i32 -12 to ptr), %add_ethtool_flow_rule.exit.thread.i ], [ %spec.select, %free.i.i.if.then17.i_crit_edge ]
  %546 = ptrtoint ptr %retval.0.i89103.i to i32
  br label %del_ethtool_rule.i

if.end19.i:                                       ; preds = %free.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rule20.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %call7.i.i.i.i, i32 0, i32 2
  %547 = ptrtoint ptr %rule20.i to i32
  call void @__asan_store4_noabort(i32 %547)
  store ptr %spec.select, ptr %rule20.i, align 8
  br label %sw.epilog

del_ethtool_rule.i:                               ; preds = %if.then17.i, %if.end10.i.del_ethtool_rule.i_crit_edge
  %err.0.i = phi i32 [ %546, %if.then17.i ], [ -22, %if.end10.i.del_ethtool_rule.i_crit_edge ]
  call fastcc void @del_ethtool_rule(ptr noundef %priv, ptr noundef nonnull %call7.i.i.i.i) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 3, i32 6
  %548 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %549)
  %cmp.i13 = icmp ugt i32 %549, 1023
  br i1 %cmp.i13, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i14

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i14:                                       ; preds = %sw.bb2
  %rules.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i14
  %iter.0.in.i.i = phi ptr [ %rules.i.i, %if.end.i14 ], [ %iter.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %550 = ptrtoint ptr %iter.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %iter.0.i.i = load ptr, ptr %iter.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %iter.0.i.i, %rules.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.sw.epilog_crit_edge, label %for.body.i.i

for.cond.i.i.sw.epilog_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i.i:                                     ; preds = %for.cond.i.i
  %location4.i.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %iter.0.i.i, i32 0, i32 1, i32 6
  %551 = ptrtoint ptr %location4.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %location4.i.i, align 8
  %cmp5.i.i = icmp eq i32 %552, %549
  br i1 %cmp5.i.i, label %find_ethtool_rule.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

find_ethtool_rule.exit.i:                         ; preds = %for.body.i.i
  %tobool.not.i15 = icmp eq ptr %iter.0.i.i, null
  br i1 %tobool.not.i15, label %find_ethtool_rule.exit.i.sw.epilog_crit_edge, label %if.end2.i

find_ethtool_rule.exit.i.sw.epilog_crit_edge:     ; preds = %find_ethtool_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end2.i:                                        ; preds = %find_ethtool_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @del_ethtool_rule(ptr noundef %priv, ptr noundef nonnull %iter.0.i.i) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 1
  %553 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %flow_type.i, align 4
  %555 = zext i32 %554 to i64
  call void @__sanitizer_cov_trace_switch(i64 %555, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %554, label %sw.bb5.sw.epilog_crit_edge [
    i32 1, label %sw.bb5.if.end12.i_crit_edge
    i32 5, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i17
    i32 6, label %sw.bb3.i.i
    i32 9, label %sw.bb5.if.end.thread.i_crit_edge
    i32 11, label %sw.bb5.if.end.thread.i_crit_edge38
    i32 10, label %sw.bb5.if.end.thread.i_crit_edge39
    i32 12, label %sw.bb5.if.end.thread.i_crit_edge40
    i32 16, label %sw.bb5.if.end.thread.i_crit_edge41
    i32 17, label %sw.bb5.if.end.thread.i_crit_edge42
  ]

sw.bb5.if.end.thread.i_crit_edge42:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i

sw.bb5.if.end.thread.i_crit_edge41:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i

sw.bb5.if.end.thread.i_crit_edge40:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i

sw.bb5.if.end.thread.i_crit_edge39:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i

sw.bb5.if.end.thread.i_crit_edge38:               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i

sw.bb5.if.end.thread.i_crit_edge:                 ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i

sw.bb5.if.end12.i_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb1.i.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

sw.bb2.i.i17:                                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

sw.bb3.i.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.end.thread.i:                                  ; preds = %sw.bb5.if.end.thread.i_crit_edge, %sw.bb5.if.end.thread.i_crit_edge38, %sw.bb5.if.end.thread.i_crit_edge39, %sw.bb5.if.end.thread.i_crit_edge40, %sw.bb5.if.end.thread.i_crit_edge41, %sw.bb5.if.end.thread.i_crit_edge42
  br label %sw.epilog

if.end12.i:                                       ; preds = %sw.bb3.i.i, %sw.bb2.i.i17, %sw.bb1.i.i, %sw.bb5.if.end12.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 0, %sw.bb5.if.end12.i_crit_edge ], [ 1, %sw.bb1.i.i ], [ 2, %sw.bb2.i.i17 ], [ 3, %sw.bb3.i.i ]
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %cmd, i32 0, i32 2
  %556 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %556)
  %557 = load i64, ptr %data.i, align 8
  %and.i = and i64 %557, -241
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i18 = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i18, label %if.end14.i, label %if.end12.i.sw.epilog_crit_edge

if.end12.i.sw.epilog_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end14.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %558 = trunc i64 %557 to i8
  %559 = lshr i8 %558, 4
  %state_lock.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock.i, i32 noundef 0) #8
  %rx_res.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %560 = ptrtoint ptr %rx_res.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %rx_res.i, align 4
  %call45.i = tail call i32 @mlx5e_rx_res_rss_set_hash_fields(ptr noundef %561, i32 noundef %retval.0.i.ph.i, i8 noundef zeroext %559) #8
  tail call void @mutex_unlock(ptr noundef %state_lock.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end14.i, %if.end12.i.sw.epilog_crit_edge, %if.end.thread.i, %sw.bb5.sw.epilog_crit_edge, %if.end2.i, %find_ethtool_rule.exit.i.sw.epilog_crit_edge, %for.cond.i.i.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %del_ethtool_rule.i, %if.end19.i, %put_flow_table.exit.i, %if.then3.i, %if.then.i, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %retval.0.i93.i, %if.then.i ], [ %127, %if.then3.i ], [ %152, %put_flow_table.exit.i ], [ %err.0.i, %del_ethtool_rule.i ], [ 0, %if.end19.i ], [ -28, %sw.bb2.sw.epilog_crit_edge ], [ 0, %if.end2.i ], [ -2, %find_ethtool_rule.exit.i.sw.epilog_crit_edge ], [ %call45.i, %if.end14.i ], [ -95, %if.end12.i.sw.epilog_crit_edge ], [ -22, %sw.bb5.sw.epilog_crit_edge ], [ -95, %if.end.thread.i ], [ -2, %for.cond.i.i.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_ethtool_get_rxnfc(ptr noundef readonly %priv, ptr noundef %info, ptr nocapture noundef writeonly %rule_locs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 46, label %sw.bb
    i32 47, label %sw.bb1
    i32 48, label %sw.bb3
    i32 41, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tot_num_rules = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 3
  %3 = ptrtoint ptr %tot_num_rules to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tot_num_rules, align 4
  %5 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %5, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %location = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %location to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %location, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %8)
  %cmp1.i = icmp ugt i32 %8, 1023
  br i1 %cmp1.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb1
  %rules.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %eth_rule.0.in.i = phi ptr [ %rules.i, %if.end.i ], [ %eth_rule.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %eth_rule.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %eth_rule.0.i = load ptr, ptr %eth_rule.0.in.i, align 4
  %cmp5.not.i = icmp eq ptr %eth_rule.0.i, %rules.i
  br i1 %cmp5.not.i, label %for.cond.i.sw.epilog_crit_edge, label %for.body.i

for.cond.i.sw.epilog_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.body.i:                                       ; preds = %for.cond.i
  %location6.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %eth_rule.0.i, i32 0, i32 1, i32 6
  %10 = ptrtoint ptr %location6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %location6.i, align 8
  %cmp7.not.i = icmp eq i32 %11, %8
  br i1 %cmp7.not.i, label %if.end9.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.end9.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %info, null
  br i1 %tobool.not.i, label %if.end9.i.sw.epilog_crit_edge, label %if.end11.i

if.end9.i.sw.epilog_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end9.i
  %flow_spec.le.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %eth_rule.0.i, i32 0, i32 1
  %fs12.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %fs12.i, ptr %flow_spec.le.i, i32 168)
  %rss.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %eth_rule.0.i, i32 0, i32 4
  %13 = ptrtoint ptr %rss.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rss.i, align 8
  %tobool14.not.i = icmp eq ptr %14, null
  br i1 %tobool14.not.i, label %if.end11.i.sw.epilog_crit_edge, label %if.end16.i

if.end11.i.sw.epilog_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end11.i
  %rx_res.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %15 = ptrtoint ptr %rx_res.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_res.i, align 4
  %call.i = tail call i32 @mlx5e_rx_res_rss_index(ptr noundef %16, ptr noundef nonnull %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  br i1 %cmp18.i, label %if.end16.i.sw.epilog_crit_edge, label %if.end20.i

if.end16.i.sw.epilog_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %17, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1024, ptr %data.i, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 4
  %rules.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 2, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i16, %sw.bb3
  %location.0.i = phi i32 [ 0, %sw.bb3 ], [ %inc3.i, %if.end.i16 ]
  %idx.0.i = phi i32 [ 0, %sw.bb3 ], [ %idx.1.i, %if.end.i16 ]
  %err.0.i = phi i32 [ 0, %sw.bb3 ], [ %retval.2.i13.i, %if.end.i16 ]
  %21 = zext i32 %err.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %err.0.i, label %while.cond.i.sw.epilog_crit_edge [
    i32 0, label %while.cond.i.land.rhs.i_crit_edge
    i32 -2, label %while.cond.i.land.rhs.i_crit_edge32
  ]

while.cond.i.land.rhs.i_crit_edge32:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.cond.i.sw.epilog_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %while.cond.i.land.rhs.i_crit_edge32
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0.i, i32 %23)
  %cmp1.i15 = icmp ult i32 %idx.0.i, %23
  br i1 %cmp1.i15, label %while.body.i, label %land.rhs.i.sw.epilog_crit_edge

land.rhs.i.sw.epilog_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

while.body.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %location.0.i)
  %cmp1.i.i = icmp ugt i32 %location.0.i, 1023
  br i1 %cmp1.i.i, label %while.body.i.if.end.i16_crit_edge, label %while.body.i.for.cond.i.i_crit_edge

while.body.i.for.cond.i.i_crit_edge:              ; preds = %while.body.i
  br label %for.cond.i.i

while.body.i.if.end.i16_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i16

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %while.body.i.for.cond.i.i_crit_edge
  %eth_rule.0.in.i.i = phi ptr [ %eth_rule.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %rules.i.i, %while.body.i.for.cond.i.i_crit_edge ]
  %24 = ptrtoint ptr %eth_rule.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %eth_rule.0.i.i = load ptr, ptr %eth_rule.0.in.i.i, align 4
  %cmp5.not.i.i = icmp eq ptr %eth_rule.0.i.i, %rules.i.i
  br i1 %cmp5.not.i.i, label %for.cond.i.i.if.end.i16_crit_edge, label %for.body.i.i

for.cond.i.i.if.end.i16_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i16

for.body.i.i:                                     ; preds = %for.cond.i.i
  %location6.i.i = getelementptr inbounds %struct.mlx5e_ethtool_rule, ptr %eth_rule.0.i.i, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %location6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %location6.i.i, align 8
  %cmp7.not.i.i = icmp eq i32 %26, %location.0.i
  br i1 %cmp7.not.i.i, label %if.then.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.then.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i = add i32 %idx.0.i, 1
  %arrayidx.i = getelementptr i32, ptr %rule_locs, i32 %idx.0.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %location.0.i, ptr %arrayidx.i, align 4
  br label %if.end.i16

if.end.i16:                                       ; preds = %if.then.i, %for.cond.i.i.if.end.i16_crit_edge, %while.body.i.if.end.i16_crit_edge
  %retval.2.i13.i = phi i32 [ 0, %if.then.i ], [ -22, %while.body.i.if.end.i16_crit_edge ], [ -2, %for.cond.i.i.if.end.i16_crit_edge ]
  %idx.1.i = phi i32 [ %inc.i, %if.then.i ], [ %idx.0.i, %while.body.i.if.end.i16_crit_edge ], [ %idx.0.i, %for.cond.i.i.if.end.i16_crit_edge ]
  %inc3.i = add i32 %location.0.i, 1
  br label %while.cond.i

sw.bb5:                                           ; preds = %entry
  %flow_type.i = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 1
  %28 = ptrtoint ptr %flow_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flow_type.i, align 4
  %switch.tableidx = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %30 = icmp ult i32 %switch.tableidx, 17
  br i1 %30, label %switch.hole_check, label %sw.bb5.sw.epilog_crit_edge

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.hole_check:                                ; preds = %sw.bb5
  %switch.shifted = lshr i32 102195, %switch.tableidx
  %31 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %switch.lobit.not = icmp eq i32 %31, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.mlx5e_ethtool_get_rxnfc, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load = load i32, ptr %switch.gep, align 4
  %rx_res.i17 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %33 = ptrtoint ptr %rx_res.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_res.i17, align 4
  %call1.i = tail call zeroext i8 @mlx5e_rx_res_rss_get_hash_fields(ptr noundef %34, i32 noundef %switch.load) #8
  %conv.i = zext i8 %call1.i to i32
  %data.i18 = getelementptr inbounds %struct.ethtool_rxnfc, ptr %info, i32 0, i32 2
  %and.i = shl nuw nsw i32 %conv.i, 4
  %35 = and i32 %and.i, 112
  %36 = zext i32 %35 to i64
  %37 = ptrtoint ptr %data.i18 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %data.i18, align 8
  %and17.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %switch.lookup.sw.epilog_crit_edge, label %if.then19.i

switch.lookup.sw.epilog_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then19.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %data.i18 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %data.i18, align 8
  %or21.i = or i64 %39, 128
  store i64 %or21.i, ptr %data.i18, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then19.i, %switch.lookup.sw.epilog_crit_edge, %switch.hole_check.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %land.rhs.i.sw.epilog_crit_edge, %while.cond.i.sw.epilog_crit_edge, %if.end20.i, %if.end16.i.sw.epilog_crit_edge, %if.end11.i.sw.epilog_crit_edge, %if.end9.i.sw.epilog_crit_edge, %for.cond.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ], [ -22, %sw.bb1.sw.epilog_crit_edge ], [ %call.i, %if.end16.i.sw.epilog_crit_edge ], [ 0, %if.end11.i.sw.epilog_crit_edge ], [ 0, %if.end9.i.sw.epilog_crit_edge ], [ 0, %if.end20.i ], [ 0, %if.then19.i ], [ 0, %switch.lookup.sw.epilog_crit_edge ], [ -22, %sw.bb5.sw.epilog_crit_edge ], [ -22, %switch.hole_check.sw.epilog_crit_edge ], [ -2, %for.cond.i.sw.epilog_crit_edge ], [ %err.0.i, %while.cond.i.sw.epilog_crit_edge ], [ %err.0.i, %land.rhs.i.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_refcnt_dec(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5e_rx_res_rss_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rss_obtain_tirn(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_rss_refcnt_inc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_xsk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_rss_set_hash_fields(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_rss_index(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5e_rx_res_rss_get_hash_fields(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs_ethtool.c", i32 728, i32 29}
!2 = !{ptr @__func__.mlx5e_ethtool_flow_replace, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs_ethtool.c", i32 729, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs_ethtool.c", i32 492, i32 28}
!6 = !{ptr @__func__.add_ethtool_flow_rule, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs_ethtool.c", i32 493, i32 7}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
