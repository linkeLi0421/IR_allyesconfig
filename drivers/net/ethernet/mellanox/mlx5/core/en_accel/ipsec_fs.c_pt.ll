; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.250 }
%struct.anon.250 = type { i32, i32 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.226, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.226 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
%struct.mlx5_flow_destination = type { i32, %union.anon.166 }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { i16, i16, ptr, i8 }
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
%struct.mlx5e_rq = type { %union.anon.188, %struct.anon.202, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.188 = type { %struct.anon.195 }
%struct.anon.195 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.197 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.196, i64, i32, [28 x i8] }
%union.anon.196 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { %struct.anon.199, [0 x %struct.mlx5_mtt] }
%struct.anon.199 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.202 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.185, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.185 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.191, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.194, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.191 = type { %struct.anon.192 }
%struct.anon.192 = type { i8, i8, i16, i32 }
%union.anon.194 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.203, i32 }
%union.anon.203 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.186, i32, i32 }
%union.anon.186 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.190 }
%union.anon.190 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.217, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.217 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.218 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.218 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.219 }
%struct.anon.219 = type { i8, i8 }
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
%struct.mlx5e_ipsec = type { ptr, [1024 x %struct.hlist_head], i8, %struct.spinlock, %struct.ida, %struct.mlx5e_ipsec_sw_stats, %struct.mlx5e_ipsec_stats, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5e_ipsec_sw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.mlx5e_ipsec_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlx5_accel_esp_xfrm_attrs = type { i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.171, i32, %union.anon.173, %union.anon.174, %union.anon.175, i8 }
%union.anon.171 = type { %struct.anon.172 }
%struct.anon.172 = type { i32 }
%union.anon.173 = type { %struct.aes_gcm_keymat }
%struct.aes_gcm_keymat = type { i64, i32, i32, i32, i32, [8 x i32] }
%union.anon.174 = type { [4 x i32] }
%union.anon.175 = type { [4 x i32] }
%struct.mlx5e_accel_fs_esp_prot = type { ptr, ptr, ptr, %struct.mlx5_flow_destination, %struct.mlx5e_ipsec_rx_err, i32, %struct.mutex }
%struct.mlx5e_ipsec_rx_err = type { ptr, ptr, ptr }
%struct.mlx5_flow_table = type { %struct.fs_node, %struct.mlx5_fs_dr_table, i32, i16, i32, i32, i32, i32, %struct.anon.165, %struct.mutex, %struct.list_head, i32, %struct.rhltable, i32, ptr }
%struct.fs_node = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, %struct.rw_semaphore, %struct.refcount_struct, i8, ptr, ptr, %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx5_fs_dr_table = type { ptr, ptr }
%struct.anon.165 = type { i8, i32, i32, i32, i32 }
%struct.rhltable = type { %struct.rhashtable }
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.mlx5e_ipsec_rule = type { ptr, ptr }
%struct.mlx5e_ipsec_tx = type { ptr, %struct.mutex, i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.164, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.170, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.164 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.169] }
%struct.anon.169 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.151 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.151 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.170 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fail to alloc ipsec set modify_header_id err=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fail to add ipsec rule attrs->action=0x%x, err=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fail to create ipsec rx inline ft err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"fail to alloc ipsec copy modify_header_id err=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fail to add ipsec rx err copy rule err=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail to create ipsec rx ft err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fail to create ipsec rx miss_group err=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fail to create ipsec rx miss_rule err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fail to create ipsec tx ft err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c\00", [36 x i8] zeroinitializer }, align 32
@fs_init_tx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&priv->ipsec->tx_fs->mutex\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fs_init_rx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&fs_prot->prot_mutex\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 505, i32 7 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 519, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 147, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 81, i32 7 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 93, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 211, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 222, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 231, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 352, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 638, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 666, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [63 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 684, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fs_init_tx.__key, ptr @.str.10, ptr @fs_init_rx.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_init_tx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_init_rx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_accel_ipsec_fs_add_rule(ptr noundef %priv, ptr nocapture noundef readonly %attrs, i32 noundef %ipsec_obj_id, ptr nocapture noundef writeonly %ipsec_rule) local_unnamed_addr #0 align 64 {
entry:
  %ft_attr.i.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  %flow_act.i9 = alloca %struct.mlx5_flow_act, align 4
  %ft_attr.i22.i.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  %flow_act.i.i.i.i = alloca %struct.mlx5_flow_act, align 4
  %action.i.i.i.i.i = alloca [8 x i8], align 8
  %flow_act.i.i.i.i.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr.i.i.i.i = alloca %struct.mlx5_flow_table_attr, align 4
  %tmp.i.i.i = alloca %struct.mlx5_flow_destination, align 4
  %dest.i.i = alloca %struct.mlx5_flow_destination, align 4
  %action.i = alloca [8 x i8], align 8
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %rx_fs = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rx_fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_fs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %action.i) #6
  %6 = ptrtoint ptr %action.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %action.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #6
  %7 = call ptr @memset(ptr %dest.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #6
  %8 = call ptr @memset(ptr %flow_act.i, i32 0, i32 36)
  %is_ipv6.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 13
  %9 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_ipv6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp ne i8 %10, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %arrayidx.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %cond.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i.i) #6
  %11 = call ptr @memset(ptr %dest.i.i, i32 0, i32 16)
  %prot_mutex.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %cond.i, i32 6
  tail call void @mutex_lock_nested(ptr noundef %prot_mutex.i.i, i32 noundef 0) #6
  %refcnt.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %cond.i, i32 5
  %12 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcnt.i.i, align 4
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then1.rx_ft_get.exit.thread.i_crit_edge

if.then1.rx_ft_get.exit.thread.i_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_ft_get.exit.thread.i

if.end.i.i:                                       ; preds = %if.then1
  %14 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipsec, align 4
  %rx_fs.i.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %rx_fs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_fs.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %17, i32 0, i32 %cond.i
  %default_dest.i.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %17, i32 0, i32 %cond.i, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i.i) #6
  %ttc.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %18 = ptrtoint ptr %ttc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ttc.i.i.i, align 4
  %..i.i.i.i = select i1 %tobool.not.i, i32 7, i32 6
  call void @mlx5_ttc_get_default_dest(ptr nonnull sret(%struct.mlx5_flow_destination) align 4 %tmp.i.i.i, ptr noundef %19, i32 noundef %..i.i.i.i) #6
  %20 = call ptr @memcpy(ptr %default_dest.i.i.i, ptr %tmp.i.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i.i) #6
  %rx_err.i.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %17, i32 0, i32 %cond.i, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i.i.i.i) #6
  %21 = getelementptr inbounds i8, ptr %ft_attr.i.i.i.i, i32 12
  %22 = call ptr @memset(ptr %21, i32 0, i32 16)
  %max_fte.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %max_fte.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %max_fte.i.i.i.i, align 4
  %autogroup.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %autogroup.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %autogroup.i.i.i.i, align 4
  %level.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %level.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 6, ptr %level.i.i.i.i, align 4
  %26 = ptrtoint ptr %ft_attr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %ft_attr.i.i.i.i, align 4
  %fs.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %27 = ptrtoint ptr %fs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %fs.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef %28, ptr noundef nonnull %ft_attr.i.i.i.i) #6
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i, label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call.i.i.i.i to i32
  %netdev.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %30 = ptrtoint ptr %netdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.2, i32 noundef %29) #9
  br label %rx_create.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  %32 = ptrtoint ptr %rx_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i.i.i.i, ptr %rx_err.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %action.i.i.i.i.i) #6
  %33 = ptrtoint ptr %action.i.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %action.i.i.i.i.i, align 8
  %mdev1.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %34 = ptrtoint ptr %mdev1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev1.i.i.i.i.i, align 64
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i.i.i.i) #6
  %36 = call ptr @memset(ptr %flow_act.i.i.i.i.i, i32 0, i32 36)
  %call.i.i.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #10
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %rx_err_add_rule.exit.thread.i.i.i.i, label %do.body.i.i.i.i.i

rx_err_add_rule.exit.thread.i.i.i.i:              ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i.i.i.i.i) #6
  br label %out_err.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  %37 = ptrtoint ptr %action.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %action.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i32 %38, 57568
  %or48.i.i.i.i.i = or i32 %and.i.i.i.i.i, 811401223
  store i32 %or48.i.i.i.i.i, ptr %action.i.i.i.i.i, align 8
  %add.ptr59.i.i.i.i.i = getelementptr inbounds i32, ptr %action.i.i.i.i.i, i32 1
  %39 = ptrtoint ptr %add.ptr59.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr59.i.i.i.i.i, align 4
  %and60.i.i.i.i.i = and i32 %40, -268377857
  %or78.i.i.i.i.i = or i32 %and60.i.i.i.i.i, 5249024
  store i32 %or78.i.i.i.i.i, ptr %add.ptr59.i.i.i.i.i, align 4
  %call84.i.i.i.i.i = call ptr @mlx5_modify_header_alloc(ptr noundef %35, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %action.i.i.i.i.i) #6
  %cmp.i.i.i.i.i.i = icmp ugt ptr %call84.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i.i, label %if.then86.i.i.i.i.i, label %if.end88.i.i.i.i.i

if.then86.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call84.i.i.i.i.i to i32
  %netdev.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %42 = ptrtoint ptr %netdev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.3, i32 noundef %41) #9
  br label %rx_err_add_rule.exit.i.i.i.i

if.end88.i.i.i.i.i:                               ; preds = %do.body.i.i.i.i.i
  %44 = ptrtoint ptr %flow_act.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 68, ptr %flow_act.i.i.i.i.i, align 4
  %modify_hdr90.i.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i.i.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %modify_hdr90.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call84.i.i.i.i.i, ptr %modify_hdr90.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %rx_err.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_err.i.i.i, align 4
  %call91.i.i.i.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %47, ptr noundef nonnull %call.i.i.i.i.i.i.i, ptr noundef nonnull %flow_act.i.i.i.i.i, ptr noundef %default_dest.i.i.i, i32 noundef 1) #6
  %cmp.i122.i.i.i.i.i = icmp ugt ptr %call91.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122.i.i.i.i.i, label %out.i.i.i.i.i, label %rx_err_create_ft.exit.thread.i.i.i

rx_err_create_ft.exit.thread.i.i.i:               ; preds = %if.end88.i.i.i.i.i
  %rule.i.i.i.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %17, i32 0, i32 %cond.i, i32 4, i32 1
  %48 = ptrtoint ptr %rule.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call91.i.i.i.i.i, ptr %rule.i.i.i.i.i, align 4
  %copy_modify_hdr.i.i.i.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %17, i32 0, i32 %cond.i, i32 4, i32 2
  %49 = ptrtoint ptr %copy_modify_hdr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call84.i.i.i.i.i, ptr %copy_modify_hdr.i.i.i.i.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i22.i.i.i) #6
  %50 = call ptr @memset(ptr %ft_attr.i22.i.i.i, i32 0, i32 28)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i.i.i) #6
  %51 = getelementptr inbounds i8, ptr %flow_act.i.i.i.i, i32 4
  %52 = call ptr @memset(ptr %51, i32 0, i32 32)
  %53 = ptrtoint ptr %flow_act.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %flow_act.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #10
  %call.i.i72.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #10
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  %tobool2.not.i.i.i.i = icmp eq ptr %call.i.i72.i.i.i.i, null
  %or.cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i1 true, i1 %tobool2.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %rx_err_create_ft.exit.thread.i.i.i.rx_fs_create.exit.i.i.i_crit_edge, label %if.end.i28.i.i.i

rx_err_create_ft.exit.thread.i.i.i.rx_fs_create.exit.i.i.i_crit_edge: ; preds = %rx_err_create_ft.exit.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_fs_create.exit.i.i.i

out.i.i.i.i.i:                                    ; preds = %if.end88.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %call91.i.i.i.i.i to i32
  %netdev95.i.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %55 = ptrtoint ptr %netdev95.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev95.i.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %56, ptr noundef nonnull @.str.4, i32 noundef %54) #9
  call void @mlx5_modify_header_dealloc(ptr noundef %35, ptr noundef %call84.i.i.i.i.i) #6
  br label %rx_err_add_rule.exit.i.i.i.i

rx_err_add_rule.exit.i.i.i.i:                     ; preds = %out.i.i.i.i.i, %if.then86.i.i.i.i.i
  %err.1.i.i.i.i.i = phi i32 [ %41, %if.then86.i.i.i.i.i ], [ %54, %out.i.i.i.i.i ]
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i.i.i.i.i) #6
  br label %out_err.i.i.i.i

out_err.i.i.i.i:                                  ; preds = %rx_err_add_rule.exit.i.i.i.i, %rx_err_add_rule.exit.thread.i.i.i.i
  %retval.0.i23.i.i.i.i = phi i32 [ -12, %rx_err_add_rule.exit.thread.i.i.i.i ], [ %err.1.i.i.i.i.i, %rx_err_add_rule.exit.i.i.i.i ]
  %call7.i.i.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef %call.i.i.i.i) #6
  %57 = ptrtoint ptr %rx_err.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %rx_err.i.i.i, align 4
  br label %rx_create.exit.i.i

if.end.i28.i.i.i:                                 ; preds = %rx_err_create_ft.exit.thread.i.i.i
  %max_fte.i23.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i22.i.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %max_fte.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32768, ptr %max_fte.i23.i.i.i, align 4
  %level.i24.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i22.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %level.i24.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %level.i24.i.i.i, align 4
  %60 = ptrtoint ptr %ft_attr.i22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %ft_attr.i22.i.i.i, align 4
  %autogroup.i25.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i22.i.i.i, i32 0, i32 5
  %num_reserved_entries.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i22.i.i.i, i32 0, i32 5, i32 1
  %61 = ptrtoint ptr %num_reserved_entries.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %num_reserved_entries.i.i.i.i, align 4
  %62 = ptrtoint ptr %autogroup.i25.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %autogroup.i25.i.i.i, align 4
  %63 = ptrtoint ptr %fs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fs.i.i.i.i, align 4
  %call4.i.i.i.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef %64, ptr noundef nonnull %ft_attr.i22.i.i.i) #6
  %cmp.i.i27.i.i.i = icmp ugt ptr %call4.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i27.i.i.i, label %if.then6.i.i.i.i, label %if.end8.i.i.i.i

if.then6.i.i.i.i:                                 ; preds = %if.end.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %call4.i.i.i.i to i32
  %netdev.i29.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %66 = ptrtoint ptr %netdev.i29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %netdev.i29.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.5, i32 noundef %65) #9
  br label %rx_fs_create.exit.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end.i28.i.i.i
  %68 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call4.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %max_fte10.i.i.i.i = getelementptr inbounds %struct.mlx5_flow_table, ptr %call4.i.i.i.i, i32 0, i32 4
  %69 = ptrtoint ptr %max_fte10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_fte10.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %70, -1
  %add.ptr.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i.i, i32 7
  %71 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %sub.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %72 = load i32, ptr %max_fte10.i.i.i.i, align 4
  %sub19.i.i.i.i = add i32 %72, -1
  %add.ptr23.i.i.i.i = getelementptr i32, ptr %call.i.i.i.i.i.i, i32 9
  %73 = ptrtoint ptr %add.ptr23.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %sub19.i.i.i.i, ptr %add.ptr23.i.i.i.i, align 4
  %call31.i.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %call4.i.i.i.i, ptr noundef nonnull %call.i.i.i.i.i.i) #6
  %cmp.i73.i.i.i.i = icmp ugt ptr %call31.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73.i.i.i.i, label %if.then33.i.i.i.i, label %if.end36.i.i.i.i

if.then33.i.i.i.i:                                ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %call31.i.i.i.i to i32
  %netdev35.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %75 = ptrtoint ptr %netdev35.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %netdev35.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %76, ptr noundef nonnull @.str.6, i32 noundef %74) #9
  br label %rx_fs_create.exit.i.i.i

if.end36.i.i.i.i:                                 ; preds = %if.end8.i.i.i.i
  %miss_group37.i.i.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %17, i32 0, i32 %cond.i, i32 1
  %77 = ptrtoint ptr %miss_group37.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call31.i.i.i.i, ptr %miss_group37.i.i.i.i, align 4
  %call38.i.i.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %call4.i.i.i.i, ptr noundef nonnull %call.i.i72.i.i.i.i, ptr noundef nonnull %flow_act.i.i.i.i, ptr noundef %default_dest.i.i.i, i32 noundef 1) #6
  %cmp.i74.i.i.i.i = icmp ugt ptr %call38.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i.i.i.i, label %if.then40.i.i.i.i, label %if.end43.i.i.i.i

if.then40.i.i.i.i:                                ; preds = %if.end36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %call38.i.i.i.i to i32
  %netdev42.i.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %79 = ptrtoint ptr %netdev42.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %netdev42.i.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.7, i32 noundef %78) #9
  br label %rx_fs_create.exit.i.i.i

if.end43.i.i.i.i:                                 ; preds = %if.end36.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %miss_rule44.i.i.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %17, i32 0, i32 %cond.i, i32 2
  %81 = ptrtoint ptr %miss_rule44.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call38.i.i.i.i, ptr %miss_rule44.i.i.i.i, align 4
  br label %rx_fs_create.exit.i.i.i

rx_fs_create.exit.i.i.i:                          ; preds = %if.end43.i.i.i.i, %if.then40.i.i.i.i, %if.then33.i.i.i.i, %if.then6.i.i.i.i, %rx_err_create_ft.exit.thread.i.i.i.rx_fs_create.exit.i.i.i_crit_edge
  %err.0.i.i.i.i = phi i32 [ %65, %if.then6.i.i.i.i ], [ %74, %if.then33.i.i.i.i ], [ %78, %if.then40.i.i.i.i ], [ 0, %if.end43.i.i.i.i ], [ -12, %rx_err_create_ft.exit.thread.i.i.i.rx_fs_create.exit.i.i.i_crit_edge ]
  call void @kvfree(ptr noundef %call.i.i.i.i.i.i) #6
  call void @kvfree(ptr noundef %call.i.i72.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i22.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %err.0.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end5.i.i, label %rx_create.exit.thread21.i.i

rx_create.exit.thread21.i.i:                      ; preds = %rx_fs_create.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @rx_destroy(ptr noundef %priv, i32 noundef %cond.i) #6
  br label %rx_ft_get.exit.i

rx_create.exit.i.i:                               ; preds = %out_err.i.i.i.i, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %29, %if.then.i.i.i.i ], [ %retval.0.i23.i.i.i.i, %out_err.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i.i) #6
  br label %rx_ft_get.exit.i

if.end5.i.i:                                      ; preds = %rx_fs_create.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %dest.i.i, align 4
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx.i, align 4
  %85 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %84, ptr %85, align 4
  %87 = ptrtoint ptr %ttc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ttc.i.i.i, align 4
  %call8.i.i = call i32 @mlx5_ttc_fwd_dest(ptr noundef %88, i32 noundef %..i.i.i.i, ptr noundef nonnull %dest.i.i) #6
  br label %rx_ft_get.exit.thread.i

rx_ft_get.exit.thread.i:                          ; preds = %if.end5.i.i, %if.then1.rx_ft_get.exit.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %prot_mutex.i.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #6
  br label %if.end.i

rx_ft_get.exit.i:                                 ; preds = %rx_create.exit.i.i, %rx_create.exit.thread21.i.i
  %retval.0.i24.i.i = phi i32 [ %err.0.i.i.i.i, %rx_create.exit.thread21.i.i ], [ %retval.0.i.i.i.i, %rx_create.exit.i.i ]
  %89 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %refcnt.i.i, align 4
  %dec.i.i = add i32 %90, -1
  store i32 %dec.i.i, ptr %refcnt.i.i, align 4
  call void @mutex_unlock(ptr noundef %prot_mutex.i.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i24.i.i)
  %tobool2.not.i = icmp eq i32 %retval.0.i24.i.i, 0
  br i1 %tobool2.not.i, label %rx_ft_get.exit.i.if.end.i_crit_edge, label %rx_ft_get.exit.i.rx_add_rule.exit_crit_edge

rx_ft_get.exit.i.rx_add_rule.exit_crit_edge:      ; preds = %rx_ft_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_add_rule.exit

rx_ft_get.exit.i.if.end.i_crit_edge:              ; preds = %rx_ft_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %rx_ft_get.exit.i.if.end.i_crit_edge, %rx_ft_get.exit.thread.i
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #10
  %tobool4.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.end95.i_crit_edge, label %if.end6.i

if.end.i.if.end95.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.end6.i:                                        ; preds = %if.end.i
  %91 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %is_ipv6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i132.i = icmp eq i8 %92, 0
  %93 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 3, ptr %call.i.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 4
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr14.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %96 = ptrtoint ptr %add.ptr14.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr14.i.i, align 4
  %and15.i.i = and i32 %97, 16761343
  %or62.i.i = or i32 %95, -16761344
  store i32 %or62.i.i, ptr %add.ptr.i.i, align 4
  %or17.i.i = select i1 %tobool.not.i132.i, i32 838862848, i32 838863872
  %or79.i.i = or i32 %and15.i.i, %or17.i.i
  store i32 %or79.i.i, ptr %add.ptr14.i.i, align 4
  %add.ptr91.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 28
  %98 = ptrtoint ptr %add.ptr91.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %add.ptr91.i.i, align 4
  %spi.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 2
  %99 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %spi.i.i, align 8
  %add.ptr106.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 28
  %101 = ptrtoint ptr %add.ptr106.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %add.ptr106.i.i, align 4
  br i1 %tobool.not.i132.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr120.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 11
  %saddr.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 11
  %102 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %saddr.i.i, align 8
  %104 = ptrtoint ptr %add.ptr120.i.i to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 %103, ptr %add.ptr120.i.i, align 1
  %add.ptr123.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 15
  %daddr.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 12
  %105 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %daddr.i.i, align 8
  %107 = ptrtoint ptr %add.ptr123.i.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 4)
  store i32 %106, ptr %add.ptr123.i.i, align 1
  %add.ptr130.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 11
  %108 = ptrtoint ptr %add.ptr130.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -1, ptr %add.ptr130.i.i, align 4
  %add.ptr144.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 15
  %109 = ptrtoint ptr %add.ptr144.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -1, ptr %add.ptr144.i.i, align 4
  br label %setup_fte_common.exit.i

if.else.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr154.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 8
  %saddr155.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 11
  %110 = call ptr @memcpy(ptr %add.ptr154.i.i, ptr %saddr155.i.i, i32 16)
  %add.ptr158.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 2, i32 12
  %daddr159.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 12
  %111 = call ptr @memcpy(ptr %add.ptr158.i.i, ptr %daddr159.i.i, i32 16)
  %add.ptr162.i.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 1, i32 8
  %112 = call ptr @memset(ptr %add.ptr162.i.i, i32 255, i32 32)
  br label %setup_fte_common.exit.i

setup_fte_common.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %113 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i, i32 0, i32 3
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %ipsec_obj_id, ptr %113, align 4
  %flags.i.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i, i32 0, i32 4
  %115 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags.i.i, align 4
  %or166.i.i = or i32 %116, 1
  store i32 %or166.i.i, ptr %flags.i.i, align 4
  %117 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %action.i, align 8
  %or30.i = or i32 %ipsec_obj_id, -2147483648
  %add.ptr35.i = getelementptr inbounds i32, ptr %action.i, i32 1
  %119 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %or30.i, ptr %add.ptr35.i, align 4
  %or23.i = and i32 %118, 57568
  %and66.i = or i32 %or23.i, 273678336
  store i32 %and66.i, ptr %action.i, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %120 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mdev.i, align 64
  %call75.i = call ptr @mlx5_modify_header_alloc(ptr noundef %121, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull %action.i) #6
  %cmp.i.i = icmp ugt ptr %call75.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then77.i, label %if.end79.i

if.then77.i:                                      ; preds = %setup_fte_common.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %122 = ptrtoint ptr %call75.i to i32
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %123 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %124, ptr noundef nonnull @.str, i32 noundef %122) #9
  br label %if.end95.i

if.end79.i:                                       ; preds = %setup_fte_common.exit.i
  %125 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 4164, ptr %flow_act.i, align 4
  %126 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %dest.i, align 4
  %modify_hdr82.i = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i, i32 0, i32 1
  %127 = ptrtoint ptr %modify_hdr82.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call75.i, ptr %modify_hdr82.i, align 4
  %rx_err.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %cond.i, i32 4
  %128 = ptrtoint ptr %rx_err.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rx_err.i, align 4
  %130 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %129, ptr %130, align 4
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i, align 4
  %call84.i = call ptr @mlx5_add_flow_rules(ptr noundef %133, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #6
  %cmp.i134.i = icmp ugt ptr %call84.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134.i, label %out_err.i, label %if.end90.i

if.end90.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %ipsec_rule to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call84.i, ptr %ipsec_rule, align 4
  %set_modify_hdr.i = getelementptr inbounds %struct.mlx5e_ipsec_rule, ptr %ipsec_rule, i32 0, i32 1
  %135 = ptrtoint ptr %set_modify_hdr.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call75.i, ptr %set_modify_hdr.i, align 4
  br label %out.i

out_err.i:                                        ; preds = %if.end79.i
  %136 = ptrtoint ptr %call84.i to i32
  %netdev88.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %137 = ptrtoint ptr %netdev88.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %netdev88.i, align 4
  %139 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %attrs, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %138, ptr noundef nonnull @.str.1, i32 noundef %140, i32 noundef %136) #9
  %tobool92.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool92.not.i, label %out_err.i.if.end95.i_crit_edge, label %if.then93.i

out_err.i.if.end95.i_crit_edge:                   ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95.i

if.then93.i:                                      ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mdev.i, align 64
  call void @mlx5_modify_header_dealloc(ptr noundef %142, ptr noundef nonnull %call75.i) #6
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then93.i, %out_err.i.if.end95.i_crit_edge, %if.then77.i, %if.end.i.if.end95.i_crit_edge
  %err.0147.i = phi i32 [ %136, %if.then93.i ], [ %136, %out_err.i.if.end95.i_crit_edge ], [ -12, %if.end.i.if.end95.i_crit_edge ], [ %122, %if.then77.i ]
  %143 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ipsec, align 4
  %rx_fs.i136.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %144, i32 0, i32 8
  %145 = ptrtoint ptr %rx_fs.i136.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rx_fs.i136.i, align 4
  %prot_mutex.i137.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %146, i32 0, i32 %cond.i, i32 6
  call void @mutex_lock_nested(ptr noundef %prot_mutex.i137.i, i32 noundef 0) #6
  %refcnt.i138.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %146, i32 0, i32 %cond.i, i32 5
  %147 = ptrtoint ptr %refcnt.i138.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %refcnt.i138.i, align 4
  %dec.i139.i = add i32 %148, -1
  store i32 %dec.i139.i, ptr %refcnt.i138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i139.i)
  %tobool.not.i140.i = icmp eq i32 %dec.i139.i, 0
  br i1 %tobool.not.i140.i, label %if.end.i141.i, label %if.end95.i.rx_ft_put.exit.i_crit_edge

if.end95.i.rx_ft_put.exit.i_crit_edge:            ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_ft_put.exit.i

if.end.i141.i:                                    ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #8
  %ttc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %149 = ptrtoint ptr %ttc.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %ttc.i.i, align 4
  %..i.i.i = select i1 %tobool.not.i, i32 7, i32 6
  %call2.i.i = call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %150, i32 noundef %..i.i.i) #6
  call fastcc void @rx_destroy(ptr noundef %priv, i32 noundef %cond.i) #6
  br label %rx_ft_put.exit.i

rx_ft_put.exit.i:                                 ; preds = %if.end.i141.i, %if.end95.i.rx_ft_put.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %prot_mutex.i137.i) #6
  br label %out.i

out.i:                                            ; preds = %rx_ft_put.exit.i, %if.end90.i
  %err.1.i = phi i32 [ %err.0147.i, %rx_ft_put.exit.i ], [ 0, %if.end90.i ]
  call void @kvfree(ptr noundef %call.i.i.i) #6
  br label %rx_add_rule.exit

rx_add_rule.exit:                                 ; preds = %out.i, %rx_ft_get.exit.i.rx_add_rule.exit_crit_edge
  %retval.0.i = phi i32 [ %err.1.i, %out.i ], [ %retval.0.i24.i.i, %rx_ft_get.exit.i.rx_add_rule.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %action.i) #6
  br label %return

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i9) #6
  %151 = call ptr @memset(ptr %flow_act.i9, i32 0, i32 36)
  %tx_fs1.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 9
  %152 = ptrtoint ptr %tx_fs1.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %tx_fs1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %153, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #6
  %refcnt.i.i10 = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %153, i32 0, i32 2
  %154 = ptrtoint ptr %refcnt.i.i10 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %refcnt.i.i10, align 4
  %inc.i.i11 = add i32 %155, 1
  store i32 %inc.i.i11, ptr %refcnt.i.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i.i12 = icmp eq i32 %155, 0
  br i1 %tobool.not.i.i12, label %if.end.i.i14, label %if.else.tx_ft_get.exit.thread.i_crit_edge

if.else.tx_ft_get.exit.thread.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %tx_ft_get.exit.thread.i

if.end.i.i14:                                     ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #6
  %156 = call ptr @memset(ptr %ft_attr.i.i.i, i32 0, i32 28)
  %157 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ipsec, align 4
  %mdev.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %159 = ptrtoint ptr %mdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mdev.i.i.i, align 64
  %call.i.i.i13 = tail call ptr @mlx5_get_flow_namespace(ptr noundef %160, i32 noundef 14) #6
  %egress_ns.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 1
  %161 = ptrtoint ptr %egress_ns.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i.i.i13, ptr %egress_ns.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i13, null
  br i1 %tobool.not.i.i.i, label %tx_create.exit.thread14.i.i, label %if.end.i.i.i

tx_create.exit.thread14.i.i:                      ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #6
  br label %tx_ft_get.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i14
  %max_fte.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %max_fte.i.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 32768, ptr %max_fte.i.i.i, align 4
  %autogroup.i.i.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i.i.i, i32 0, i32 5
  %163 = ptrtoint ptr %autogroup.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 1, ptr %autogroup.i.i.i, align 4
  %call6.i.i.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef nonnull %call.i.i.i13, ptr noundef nonnull %ft_attr.i.i.i) #6
  %cmp.i.i.i.i = icmp ugt ptr %call6.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %tx_create.exit.i.i, label %tx_create.exit.thread.i.i

tx_create.exit.thread.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_fs.i.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %158, i32 0, i32 9
  %164 = ptrtoint ptr %tx_fs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %tx_fs.i.i.i, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %call6.i.i.i, ptr %165, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #6
  br label %tx_ft_get.exit.thread.i

tx_create.exit.i.i:                               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %call6.i.i.i to i32
  %netdev.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %168 = ptrtoint ptr %netdev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %netdev.i.i.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %169, ptr noundef nonnull @.str.8, i32 noundef %167) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i.i.i) #6
  br label %tx_ft_get.exit.i

tx_ft_get.exit.thread.i:                          ; preds = %tx_create.exit.thread.i.i, %if.else.tx_ft_get.exit.thread.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i.i) #6
  %call.i.i61.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #10
  %tobool2.not.i15 = icmp eq ptr %call.i.i61.i, null
  br i1 %tobool2.not.i15, label %out.thread78.i, label %if.end4.i

tx_ft_get.exit.i:                                 ; preds = %tx_create.exit.i.i, %tx_create.exit.thread14.i.i
  %retval.0.i17.i.i = phi i32 [ -95, %tx_create.exit.thread14.i.i ], [ %167, %tx_create.exit.i.i ]
  %170 = ptrtoint ptr %refcnt.i.i10 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %refcnt.i.i10, align 4
  %dec.i.i16 = add i32 %171, -1
  store i32 %dec.i.i16, ptr %refcnt.i.i10, align 4
  call void @mutex_unlock(ptr noundef %mutex.i.i) #6
  br label %tx_add_rule.exit

out.thread78.i:                                   ; preds = %tx_ft_get.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef null) #6
  br label %if.then38.i

if.end4.i:                                        ; preds = %tx_ft_get.exit.thread.i
  %is_ipv6.i.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 13
  %172 = ptrtoint ptr %is_ipv6.i.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %is_ipv6.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i62.i = icmp eq i8 %173, 0
  %174 = ptrtoint ptr %call.i.i61.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 3, ptr %call.i.i61.i, align 4
  %add.ptr.i.i17 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 1, i32 4
  %175 = ptrtoint ptr %add.ptr.i.i17 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %add.ptr.i.i17, align 4
  %add.ptr14.i.i18 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 2, i32 4
  %177 = ptrtoint ptr %add.ptr14.i.i18 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %add.ptr14.i.i18, align 4
  %and15.i.i19 = and i32 %178, 16761343
  %or62.i.i20 = or i32 %176, -16761344
  store i32 %or62.i.i20, ptr %add.ptr.i.i17, align 4
  %or17.i.i21 = select i1 %tobool.not.i62.i, i32 838862848, i32 838863872
  %or79.i.i22 = or i32 %and15.i.i19, %or17.i.i21
  store i32 %or79.i.i22, ptr %add.ptr14.i.i18, align 4
  %add.ptr91.i.i23 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 1, i32 28
  %179 = ptrtoint ptr %add.ptr91.i.i23 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %add.ptr91.i.i23, align 4
  %spi.i.i24 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 2
  %180 = ptrtoint ptr %spi.i.i24 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %spi.i.i24, align 8
  %add.ptr106.i.i25 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 2, i32 28
  %182 = ptrtoint ptr %add.ptr106.i.i25 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %add.ptr106.i.i25, align 4
  br i1 %tobool.not.i62.i, label %if.then.i.i32, label %if.else.i.i38

if.then.i.i32:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr120.i.i26 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 2, i32 11
  %saddr.i.i27 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 11
  %183 = ptrtoint ptr %saddr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %saddr.i.i27, align 8
  %185 = ptrtoint ptr %add.ptr120.i.i26 to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 %184, ptr %add.ptr120.i.i26, align 1
  %add.ptr123.i.i28 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 2, i32 15
  %daddr.i.i29 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 12
  %186 = ptrtoint ptr %daddr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %daddr.i.i29, align 8
  %188 = ptrtoint ptr %add.ptr123.i.i28 to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 %187, ptr %add.ptr123.i.i28, align 1
  %add.ptr130.i.i30 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 1, i32 11
  %189 = ptrtoint ptr %add.ptr130.i.i30 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 -1, ptr %add.ptr130.i.i30, align 4
  %add.ptr144.i.i31 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 1, i32 15
  %190 = ptrtoint ptr %add.ptr144.i.i31 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %add.ptr144.i.i31, align 4
  br label %setup_fte_common.exit.i42

if.else.i.i38:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr154.i.i33 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 2, i32 8
  %saddr155.i.i34 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 11
  %191 = call ptr @memcpy(ptr %add.ptr154.i.i33, ptr %saddr155.i.i34, i32 16)
  %add.ptr158.i.i35 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 2, i32 12
  %daddr159.i.i36 = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 12
  %192 = call ptr @memcpy(ptr %add.ptr158.i.i35, ptr %daddr159.i.i36, i32 16)
  %add.ptr162.i.i37 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 1, i32 8
  %193 = call ptr @memset(ptr %add.ptr162.i.i37, i32 255, i32 32)
  br label %setup_fte_common.exit.i42

setup_fte_common.exit.i42:                        ; preds = %if.else.i.i38, %if.then.i.i32
  %194 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i9, i32 0, i32 3
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %ipsec_obj_id, ptr %194, align 4
  %flags.i.i39 = getelementptr inbounds %struct.mlx5_flow_act, ptr %flow_act.i9, i32 0, i32 4
  %196 = ptrtoint ptr %flags.i.i39 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %flags.i.i39, align 4
  %or166.i.i40 = or i32 %197, 1
  store i32 %or166.i.i40, ptr %flags.i.i39, align 4
  %198 = ptrtoint ptr %call.i.i61.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %call.i.i61.i, align 4
  %200 = or i8 %199, 8
  store i8 %200, ptr %call.i.i61.i, align 4
  %add.ptr.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 1, i32 60
  %201 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1, ptr %add.ptr.i, align 4
  %add.ptr20.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i61.i, i32 0, i32 2, i32 60
  %202 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %add.ptr20.i, align 4
  %203 = ptrtoint ptr %flow_act.i9 to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 8193, ptr %flow_act.i9, align 4
  %204 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %ipsec, align 4
  %tx_fs.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %205, i32 0, i32 9
  %206 = ptrtoint ptr %tx_fs.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %tx_fs.i, align 8
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %call30.i = call ptr @mlx5_add_flow_rules(ptr noundef %209, ptr noundef nonnull %call.i.i61.i, ptr noundef nonnull %flow_act.i9, ptr noundef null, i32 noundef 0) #6
  %cmp.i.i41 = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i41, label %out.i44, label %out.thread.i

out.thread.i:                                     ; preds = %setup_fte_common.exit.i42
  call void @__sanitizer_cov_trace_pc() #8
  %210 = ptrtoint ptr %ipsec_rule to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call30.i, ptr %ipsec_rule, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i61.i) #6
  br label %tx_add_rule.exit

out.i44:                                          ; preds = %setup_fte_common.exit.i42
  call void @__sanitizer_cov_trace_pc() #8
  %211 = ptrtoint ptr %call30.i to i32
  %netdev.i43 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %212 = ptrtoint ptr %netdev.i43 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %netdev.i43, align 4
  %214 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %attrs, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %213, ptr noundef nonnull @.str.1, i32 noundef %215, i32 noundef %211) #9
  call void @kvfree(ptr noundef nonnull %call.i.i61.i) #6
  br label %if.then38.i

if.then38.i:                                      ; preds = %out.i44, %out.thread78.i
  %err.081.i = phi i32 [ -12, %out.thread78.i ], [ %211, %out.i44 ]
  %216 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ipsec, align 4
  %tx_fs1.i65.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %217, i32 0, i32 9
  %218 = ptrtoint ptr %tx_fs1.i65.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %tx_fs1.i65.i, align 8
  %mutex.i66.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %219, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %mutex.i66.i, i32 noundef 0) #6
  %refcnt.i67.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %refcnt.i67.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %refcnt.i67.i, align 4
  %dec.i68.i = add i32 %221, -1
  store i32 %dec.i68.i, ptr %refcnt.i67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i68.i)
  %tobool.not.i69.i = icmp eq i32 %dec.i68.i, 0
  br i1 %tobool.not.i69.i, label %if.end.i72.i, label %if.then38.i.tx_ft_put.exit.i_crit_edge

if.then38.i.tx_ft_put.exit.i_crit_edge:           ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tx_ft_put.exit.i

if.end.i72.i:                                     ; preds = %if.then38.i
  %222 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %ipsec, align 4
  %tx_fs.i.i70.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %223, i32 0, i32 9
  %224 = ptrtoint ptr %tx_fs.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %tx_fs.i.i70.i, align 8
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %225, align 4
  %tobool.not.i.i.i.i45 = icmp eq ptr %227, null
  %cmp.i.i.i71.i = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i45, %cmp.i.i.i71.i
  br i1 %spec.select.i.i.i.i, label %if.end.i72.i.tx_ft_put.exit.i_crit_edge, label %if.end.i.i73.i

if.end.i72.i.tx_ft_put.exit.i_crit_edge:          ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tx_ft_put.exit.i

if.end.i.i73.i:                                   ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i.i = call i32 @mlx5_destroy_flow_table(ptr noundef nonnull %227) #6
  %228 = ptrtoint ptr %tx_fs.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %tx_fs.i.i70.i, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %229, align 4
  br label %tx_ft_put.exit.i

tx_ft_put.exit.i:                                 ; preds = %if.end.i.i73.i, %if.end.i72.i.tx_ft_put.exit.i_crit_edge, %if.then38.i.tx_ft_put.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i66.i) #6
  br label %tx_add_rule.exit

tx_add_rule.exit:                                 ; preds = %tx_ft_put.exit.i, %out.thread.i, %tx_ft_get.exit.i
  %retval.0.i46 = phi i32 [ %retval.0.i17.i.i, %tx_ft_get.exit.i ], [ %err.081.i, %tx_ft_put.exit.i ], [ 0, %out.thread.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i9) #6
  br label %return

return:                                           ; preds = %tx_add_rule.exit, %rx_add_rule.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rx_add_rule.exit ], [ %retval.0.i46, %tx_add_rule.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_accel_ipsec_fs_del_rule(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %attrs, ptr nocapture noundef %ipsec_rule) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %rx_fs = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rx_fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_fs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.end

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %attrs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %ipsec_rule to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipsec_rule, align 4
  tail call void @mlx5_del_flow_rules(ptr noundef %7) #6
  %8 = ptrtoint ptr %ipsec_rule to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %ipsec_rule, align 4
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 64
  %set_modify_hdr.i = getelementptr inbounds %struct.mlx5e_ipsec_rule, ptr %ipsec_rule, i32 0, i32 1
  %11 = ptrtoint ptr %set_modify_hdr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_modify_hdr.i, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %10, ptr noundef %12) #6
  %13 = ptrtoint ptr %set_modify_hdr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %set_modify_hdr.i, align 4
  %is_ipv6.i = getelementptr inbounds %struct.mlx5_accel_esp_xfrm_attrs, ptr %attrs, i32 0, i32 13
  %14 = ptrtoint ptr %is_ipv6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_ipv6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp ne i8 %15, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %16 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipsec, align 4
  %rx_fs.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %rx_fs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_fs.i.i, align 4
  %prot_mutex.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %19, i32 0, i32 %cond.i, i32 6
  tail call void @mutex_lock_nested(ptr noundef %prot_mutex.i.i, i32 noundef 0) #6
  %refcnt.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %19, i32 0, i32 %cond.i, i32 5
  %20 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refcnt.i.i, align 4
  %dec.i.i = add i32 %21, -1
  store i32 %dec.i.i, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then1.if.end2.sink.split_crit_edge

if.then1.if.end2.sink.split_crit_edge:            ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.sink.split

if.end.i.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %ttc.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %22 = ptrtoint ptr %ttc.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ttc.i.i, align 4
  %..i.i.i = select i1 %tobool.not.i, i32 7, i32 6
  %call2.i.i = tail call i32 @mlx5_ttc_fwd_default_dest(ptr noundef %23, i32 noundef %..i.i.i) #6
  tail call fastcc void @rx_destroy(ptr noundef %priv, i32 noundef %cond.i) #6
  br label %if.end2.sink.split

if.else:                                          ; preds = %if.end
  %24 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipsec, align 4
  %tx_fs1.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %tx_fs1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_fs1.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %27, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #6
  %refcnt.i.i8 = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %refcnt.i.i8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %refcnt.i.i8, align 4
  %dec.i.i9 = add i32 %29, -1
  store i32 %dec.i.i9, ptr %refcnt.i.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %dec.i.i9, 0
  br i1 %tobool.not.i.i10, label %if.end.i.i11, label %if.else.if.end2.sink.split_crit_edge

if.else.if.end2.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.sink.split

if.end.i.i11:                                     ; preds = %if.else
  %30 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ipsec, align 4
  %tx_fs.i.i.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %tx_fs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_fs.i.i.i, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %35, null
  %cmp.i.i.i.i = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %if.end.i.i11.if.end2.sink.split_crit_edge, label %if.end.i.i.i

if.end.i.i11.if.end2.sink.split_crit_edge:        ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2.sink.split

if.end.i.i.i:                                     ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef nonnull %35) #6
  %36 = ptrtoint ptr %tx_fs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_fs.i.i.i, align 8
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %37, align 4
  br label %if.end2.sink.split

if.end2.sink.split:                               ; preds = %if.end.i.i.i, %if.end.i.i11.if.end2.sink.split_crit_edge, %if.else.if.end2.sink.split_crit_edge, %if.end.i.i, %if.then1.if.end2.sink.split_crit_edge
  %mutex.i.i.sink = phi ptr [ %prot_mutex.i.i, %if.then1.if.end2.sink.split_crit_edge ], [ %prot_mutex.i.i, %if.end.i.i ], [ %mutex.i.i, %if.else.if.end2.sink.split_crit_edge ], [ %mutex.i.i, %if.end.i.i11.if.end2.sink.split_crit_edge ], [ %mutex.i.i, %if.end.i.i.i ]
  tail call void @mutex_unlock(ptr noundef %mutex.i.i.sink) #6
  br label %if.end2

if.end2:                                          ; preds = %if.end2.sink.split, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_accel_ipsec_fs_cleanup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %rx_fs = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rx_fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_fs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %tx_fs.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %tx_fs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_fs.i, align 8
  %mutex.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %5, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %mutex.i) #6
  %6 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ipsec, align 4
  %tx_fs2.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %tx_fs2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_fs2.i, align 8
  %refcnt.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.fs_cleanup_tx.exit_crit_edge, label %do.end.i, !prof !35

if.end.fs_cleanup_tx.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_cleanup_tx.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 638, i32 noundef 9, ptr noundef null) #6
  br label %fs_cleanup_tx.exit

fs_cleanup_tx.exit:                               ; preds = %do.end.i, %if.end.fs_cleanup_tx.exit_crit_edge
  %12 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ipsec, align 4
  %tx_fs23.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %tx_fs23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_fs23.i, align 8
  tail call void @kfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipsec, align 4
  %tx_fs25.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %tx_fs25.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx_fs25.i, align 8
  %19 = load ptr, ptr %ipsec, align 4
  %rx_fs.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %rx_fs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_fs.i, align 4
  %prot_mutex.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %21, i32 0, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %prot_mutex.i) #6
  %refcnt.i4 = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %21, i32 0, i32 0, i32 5
  %22 = ptrtoint ptr %refcnt.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %refcnt.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i5 = icmp eq i32 %23, 0
  br i1 %tobool.not.i5, label %fs_cleanup_tx.exit.if.end.i_crit_edge, label %do.end.i6, !prof !35

fs_cleanup_tx.exit.if.end.i_crit_edge:            ; preds = %fs_cleanup_tx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i6:                                        ; preds = %fs_cleanup_tx.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 653, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i6, %fs_cleanup_tx.exit.if.end.i_crit_edge
  %prot_mutex.1.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %21, i32 0, i32 1, i32 6
  tail call void @mutex_destroy(ptr noundef %prot_mutex.1.i) #6
  %refcnt.1.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %21, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %refcnt.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %refcnt.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1.i = icmp eq i32 %25, 0
  br i1 %tobool.not.1.i, label %if.end.i.fs_cleanup_rx.exit_crit_edge, label %do.end.1.i, !prof !35

if.end.i.fs_cleanup_rx.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_cleanup_rx.exit

do.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 653, i32 noundef 9, ptr noundef null) #6
  br label %fs_cleanup_rx.exit

fs_cleanup_rx.exit:                               ; preds = %do.end.1.i, %if.end.i.fs_cleanup_rx.exit_crit_edge
  %26 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ipsec, align 4
  %rx_fs22.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %rx_fs22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_fs22.i, align 4
  tail call void @kfree(ptr noundef %29) #6
  %30 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ipsec, align 4
  %rx_fs24.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %rx_fs24.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %rx_fs24.i, align 4
  br label %return

return:                                           ; preds = %fs_cleanup_rx.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_accel_ipsec_fs_init(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %3, i32 35
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %add.ptr6.i = getelementptr i32, ptr %3, i32 45
  %7 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr6.i, align 4
  %9 = and i32 %8, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not.i = icmp eq i32 %9, 0
  br i1 %tobool9.not.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %add.ptr17.i = getelementptr i64, ptr %3, i32 16
  %10 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr17.i, align 8
  %and18.i = and i64 %11, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18.i)
  %tobool19.not.i = icmp eq i64 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end21.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end11.i
  %arrayidx24.i = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 21
  %12 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx24.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool30.not.i = icmp eq i32 %16, 0
  br i1 %tobool30.not.i, label %if.end21.i.cleanup_crit_edge, label %mlx5_is_ipsec_device.exit

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

mlx5_is_ipsec_device.exit:                        ; preds = %if.end21.i
  %arrayidx33.i = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx33.i, align 4
  %add.ptr36.i = getelementptr i32, ptr %18, i32 1
  %19 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr36.i, align 4
  %21 = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool39.i.not = icmp eq i32 %21, 0
  br i1 %tobool39.i.not, label %mlx5_is_ipsec_device.exit.cleanup_crit_edge, label %lor.lhs.false

mlx5_is_ipsec_device.exit.cleanup_crit_edge:      ; preds = %mlx5_is_ipsec_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %mlx5_is_ipsec_device.exit
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %22 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ipsec, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 100) #11
  %25 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ipsec, align 4
  %tx_fs.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %tx_fs.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i, ptr %tx_fs.i, align 8
  %28 = load ptr, ptr %ipsec, align 4
  %tx_fs2.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %tx_fs2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_fs2.i, align 8
  %tobool.not.i16 = icmp eq ptr %30, null
  br i1 %tobool.not.i16, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %30, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @fs_init_tx.__key) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 272) #11
  %32 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ipsec, align 4
  %rx_fs.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %rx_fs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i.i18, ptr %rx_fs.i, align 4
  %35 = load ptr, ptr %ipsec, align 4
  %rx_fs2.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %rx_fs2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_fs2.i, align 4
  %tobool.not.i20 = icmp eq ptr %37, null
  br i1 %tobool.not.i20, label %if.then7, label %fs_init_rx.exit.thread

fs_init_rx.exit.thread:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %prot_mutex.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %37, i32 0, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %prot_mutex.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @fs_init_rx.__key) #6
  %prot_mutex.1.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %37, i32 0, i32 1, i32 6
  tail call void @__mutex_init(ptr noundef %prot_mutex.1.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @fs_init_rx.__key) #6
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %38 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipsec, align 4
  %tx_fs.i23 = getelementptr inbounds %struct.mlx5e_ipsec, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %tx_fs.i23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_fs.i23, align 8
  %mutex.i24 = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %41, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %mutex.i24) #6
  %42 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipsec, align 4
  %tx_fs2.i25 = getelementptr inbounds %struct.mlx5e_ipsec, ptr %43, i32 0, i32 9
  %44 = ptrtoint ptr %tx_fs2.i25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_fs2.i25, align 8
  %refcnt.i = getelementptr inbounds %struct.mlx5e_ipsec_tx, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i26 = icmp eq i32 %47, 0
  br i1 %tobool.not.i26, label %if.then7.fs_cleanup_tx.exit_crit_edge, label %do.end.i, !prof !35

if.then7.fs_cleanup_tx.exit_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fs_cleanup_tx.exit

do.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 638, i32 noundef 9, ptr noundef null) #6
  br label %fs_cleanup_tx.exit

fs_cleanup_tx.exit:                               ; preds = %do.end.i, %if.then7.fs_cleanup_tx.exit_crit_edge
  %48 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ipsec, align 4
  %tx_fs23.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %tx_fs23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_fs23.i, align 8
  tail call void @kfree(ptr noundef %51) #6
  %52 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ipsec, align 4
  %tx_fs25.i = getelementptr inbounds %struct.mlx5e_ipsec, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %tx_fs25.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %tx_fs25.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %fs_cleanup_tx.exit, %fs_init_rx.exit.thread, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %mlx5_is_ipsec_device.exit.cleanup_crit_edge, %if.end21.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %mlx5_is_ipsec_device.exit.cleanup_crit_edge ], [ -12, %fs_cleanup_tx.exit ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %fs_init_rx.exit.thread ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.i.cleanup_crit_edge ], [ -95, %if.end11.i.cleanup_crit_edge ], [ -95, %if.end21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_dest(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_ttc_get_default_dest(ptr sret(%struct.mlx5_flow_destination) align 4, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_destroy(ptr nocapture noundef readonly %priv, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipsec = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 44
  %0 = ptrtoint ptr %ipsec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipsec, align 4
  %rx_fs = getelementptr inbounds %struct.mlx5e_ipsec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %rx_fs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_fs, align 4
  %arrayidx = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %type
  %miss_rule.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %type, i32 2
  %4 = ptrtoint ptr %miss_rule.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %miss_rule.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %5) #6
  %6 = ptrtoint ptr %miss_rule.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %miss_rule.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %miss_group.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %type, i32 1
  %7 = ptrtoint ptr %miss_group.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %miss_group.i, align 4
  %tobool3.not.i = icmp eq ptr %8, null
  br i1 %tobool3.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then4.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %8) #6
  %9 = ptrtoint ptr %miss_group.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %miss_group.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end.i.if.end7.i_crit_edge
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool8.not.i = icmp eq ptr %11, null
  br i1 %tobool8.not.i, label %if.end7.i.rx_fs_destroy.exit_crit_edge, label %if.then9.i

if.end7.i.rx_fs_destroy.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_fs_destroy.exit

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef nonnull %11) #6
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  br label %rx_fs_destroy.exit

rx_fs_destroy.exit:                               ; preds = %if.then9.i, %if.end7.i.rx_fs_destroy.exit_crit_edge
  %rx_err = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %type, i32 4
  %rule.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %type, i32 4, i32 1
  %13 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %rx_fs_destroy.exit.if.end.i.i_crit_edge, label %if.then.i.i

rx_fs_destroy.exit.if.end.i.i_crit_edge:          ; preds = %rx_fs_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %rx_fs_destroy.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %14) #6
  %15 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rule.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %rx_fs_destroy.exit.if.end.i.i_crit_edge
  %copy_modify_hdr.i.i = getelementptr [2 x %struct.mlx5e_accel_fs_esp_prot], ptr %3, i32 0, i32 %type, i32 4, i32 2
  %16 = ptrtoint ptr %copy_modify_hdr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %copy_modify_hdr.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.rx_err_del_rule.exit.i_crit_edge, label %if.then4.i.i

if.end.i.i.rx_err_del_rule.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_err_del_rule.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mdev.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %18 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev.i.i, align 64
  tail call void @mlx5_modify_header_dealloc(ptr noundef %19, ptr noundef nonnull %17) #6
  %20 = ptrtoint ptr %copy_modify_hdr.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %copy_modify_hdr.i.i, align 4
  br label %rx_err_del_rule.exit.i

rx_err_del_rule.exit.i:                           ; preds = %if.then4.i.i, %if.end.i.i.rx_err_del_rule.exit.i_crit_edge
  %21 = ptrtoint ptr %rx_err to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_err, align 4
  %tobool.not.i1 = icmp eq ptr %22, null
  br i1 %tobool.not.i1, label %rx_err_del_rule.exit.i.rx_err_destroy_ft.exit_crit_edge, label %if.then.i3

rx_err_del_rule.exit.i.rx_err_destroy_ft.exit_crit_edge: ; preds = %rx_err_del_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_err_destroy_ft.exit

if.then.i3:                                       ; preds = %rx_err_del_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i2 = tail call i32 @mlx5_destroy_flow_table(ptr noundef nonnull %22) #6
  %23 = ptrtoint ptr %rx_err to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %rx_err, align 4
  br label %rx_err_destroy_ft.exit

rx_err_destroy_ft.exit:                           ; preds = %if.then.i3, %rx_err_del_rule.exit.i.rx_err_destroy_ft.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_ttc_fwd_default_dest(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 505, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 519, i32 28}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 147, i32 28}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 81, i32 7}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 93, i32 28}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 211, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 222, i32 28}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 231, i32 28}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 352, i32 28}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 638, i32 2}
!20 = !{ptr @fs_init_tx.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 666, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fs_init_rx.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec_fs.c", i32 684, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
