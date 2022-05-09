; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_st = type { [32 x i8], ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_test = type { i32, i32, i32, i32, [0 x i64] }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mlx5e_rq = type { %union.anon.190, %struct.anon.204, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.190 = type { %struct.anon.197 }
%struct.anon.197 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.199 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.166 }
%union.anon.166 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.198, i64, i32, [28 x i8] }
%union.anon.198 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { %struct.anon.201, [0 x %struct.mlx5_mtt] }
%struct.anon.201 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.204 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.187, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.187 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.193, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.196, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.193 = type { %struct.anon.194 }
%struct.anon.194 = type { i8, i8, i16, i32 }
%union.anon.196 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.205, i32 }
%union.anon.205 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.188, i32, i32 }
%union.anon.188 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.192 }
%union.anon.192 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.219, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.219 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.220 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.220 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.221 }
%struct.anon.221 = type { i8, i8 }
%struct.mlx5e_flow_steering = type { ptr, ptr, %struct.mlx5e_ethtool_steering, %struct.mlx5e_tc_table, %struct.mlx5e_promisc_table, ptr, %struct.mlx5e_l2_table, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5e_ethtool_steering = type { [7 x %struct.mlx5e_ethtool_table], [4 x %struct.mlx5e_ethtool_table], %struct.list_head, i32 }
%struct.mlx5e_ethtool_table = type { ptr, i32 }
%struct.mlx5e_tc_table = type { %struct.mutex, ptr, ptr, ptr, %struct.rhashtable, %struct.mod_hdr_tbl, %struct.mutex, [256 x %struct.hlist_head], %struct.notifier_block, %struct.netdev_net_notifier, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.160, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.160 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.171, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.177, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.171 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.176] }
%struct.anon.176 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.145 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.145 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.177 = type { %struct.mlx5_rsvd_gids, i32 }
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
%struct.mlx5e_lbt_priv = type { %struct.packet_type, %struct.completion, i8, i8 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.mlx5ehdr = type { i32, i64 }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Self test begin..\0A\00", [45 x i8] zeroinitializer }, align 32
@mlx5e_sts = internal constant { [4 x %struct.mlx5e_st], [32 x i8] } { [4 x %struct.mlx5e_st] [%struct.mlx5e_st { [32 x i8] c"Link Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlx5e_test_link_state, ptr null }, %struct.mlx5e_st { [32 x i8] c"Speed Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlx5e_test_link_speed, ptr null }, %struct.mlx5e_st { [32 x i8] c"Health Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlx5e_test_health_info, ptr null }, %struct.mlx5e_st { [32 x i8] c"Loopback Test\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mlx5e_test_loopback, ptr @mlx5e_cond_loopback }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09[%d] %s start..\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09[%d] %s end: result(%lld)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Self test out: status flags(0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\09Can't perform loopback test while device is down\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\09Failed to xmit loopback packet err(%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09Failed to alloc loopback skb\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 327, i32 20 }
@___asan_gen_.11 = private unnamed_addr constant [10 x i8] c"mlx5e_sts\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 309, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 334, i32 21 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 336, i32 21 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 348, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 262, i32 7 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 285, i32 7 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 87, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [57 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 90, i32 28 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @mlx5e_sts, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_sts to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_self_test(ptr noundef %ndev, ptr nocapture noundef %etest, ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
land.lhs.true.3:
  %st = alloca %struct.mlx5e_st, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %state_lock = getelementptr i8, ptr %ndev, i32 2420
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str) #11
  %st_func = getelementptr inbounds %struct.mlx5e_st, ptr %st, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %0 = call ptr @memcpy(ptr %st, ptr @mlx5e_sts, i32 40)
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef nonnull %st) #11
  %1 = ptrtoint ptr %st_func to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %st_func, align 4
  %call4 = call i32 %2(ptr noundef %add.ptr.i) #8
  %conv = sext i32 %call4 to i64
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %buf, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %st, i64 noundef %conv) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %4 = call ptr @memcpy(ptr %st, ptr getelementptr inbounds ([4 x %struct.mlx5e_st], ptr @mlx5e_sts, i32 0, i32 1), i32 40)
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull %st) #11
  %5 = ptrtoint ptr %st_func to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %st_func, align 4
  %call4.1 = call i32 %6(ptr noundef %add.ptr.i) #8
  %conv.1 = sext i32 %call4.1 to i64
  %arrayidx5.1 = getelementptr i64, ptr %buf, i32 1
  %7 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv.1, ptr %arrayidx5.1, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %st, i64 noundef %conv.1) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %8 = call ptr @memcpy(ptr %st, ptr getelementptr inbounds ([4 x %struct.mlx5e_st], ptr @mlx5e_sts, i32 0, i32 2), i32 40)
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef nonnull %st) #11
  %9 = ptrtoint ptr %st_func to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st_func, align 4
  %call4.2 = call i32 %10(ptr noundef %add.ptr.i) #8
  %conv.2 = sext i32 %call4.2 to i64
  %arrayidx5.2 = getelementptr i64, ptr %buf, i32 2
  %11 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.2, ptr %arrayidx5.2, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull %st, i64 noundef %conv.2) #11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %12 = call ptr @memcpy(ptr %st, ptr getelementptr inbounds ([4 x %struct.mlx5e_st], ptr @mlx5e_sts, i32 0, i32 3), i32 40)
  %call2.3 = call i32 @mlx5e_cond_loopback(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.3)
  %tobool3.not.3 = icmp eq i32 %call2.3, 0
  br i1 %tobool3.not.3, label %if.end.3, label %land.lhs.true.3.for.body14.preheader_crit_edge

land.lhs.true.3.for.body14.preheader_crit_edge:   ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.preheader

if.end.3:                                         ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef nonnull %st) #11
  %13 = ptrtoint ptr %st_func to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %st_func, align 4
  %call4.3 = call i32 %14(ptr noundef %add.ptr.i) #8
  %conv.3 = sext i32 %call4.3 to i64
  %arrayidx5.3 = getelementptr i64, ptr %buf, i32 3
  %15 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.3, ptr %arrayidx5.3, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef nonnull %st, i64 noundef %conv.3) #11
  br label %for.body14.preheader

for.body14.preheader:                             ; preds = %if.end.3, %land.lhs.true.3.for.body14.preheader_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @mutex_unlock(ptr noundef %state_lock) #8
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %buf, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool16.not = icmp eq i64 %17, 0
  br i1 %tobool16.not, label %for.body14.1, label %for.body14.preheader.if.then17_crit_edge

for.body14.preheader.if.then17_crit_edge:         ; preds = %for.body14.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.body14.1:                                     ; preds = %for.body14.preheader
  %arrayidx15.1 = getelementptr i64, ptr %buf, i32 1
  %18 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx15.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool16.not.1 = icmp eq i64 %19, 0
  br i1 %tobool16.not.1, label %for.body14.2, label %for.body14.1.if.then17_crit_edge

for.body14.1.if.then17_crit_edge:                 ; preds = %for.body14.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.body14.2:                                     ; preds = %for.body14.1
  %arrayidx15.2 = getelementptr i64, ptr %buf, i32 2
  %20 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx15.2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool16.not.2 = icmp eq i64 %21, 0
  br i1 %tobool16.not.2, label %for.cond11.2, label %for.body14.2.if.then17_crit_edge

for.body14.2.if.then17_crit_edge:                 ; preds = %for.body14.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.cond11.2:                                     ; preds = %for.body14.2
  br i1 %tobool3.not.3, label %for.body14.3, label %for.cond11.2.for.end21_crit_edge

for.cond11.2.for.end21_crit_edge:                 ; preds = %for.cond11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.body14.3:                                     ; preds = %for.cond11.2
  %arrayidx15.3 = getelementptr i64, ptr %buf, i32 3
  %22 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx15.3, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool16.not.3 = icmp eq i64 %23, 0
  br i1 %tobool16.not.3, label %for.body14.3.for.end21_crit_edge, label %for.body14.3.if.then17_crit_edge

for.body14.3.if.then17_crit_edge:                 ; preds = %for.body14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

for.body14.3.for.end21_crit_edge:                 ; preds = %for.body14.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

if.then17:                                        ; preds = %for.body14.3.if.then17_crit_edge, %for.body14.2.if.then17_crit_edge, %for.body14.1.if.then17_crit_edge, %for.body14.preheader.if.then17_crit_edge
  %flags = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %or = or i32 %25, 2
  store i32 %or, ptr %flags, align 4
  br label %for.end21

for.end21:                                        ; preds = %if.then17, %for.body14.3.for.end21_crit_edge, %for.cond11.2.for.end21_crit_edge
  %flags22 = getelementptr inbounds %struct.ethtool_test, ptr %etest, i32 0, i32 1
  %26 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags22, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.3, i32 noundef %27) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_self_test_fill_strings(ptr nocapture noundef readonly %priv, ptr noundef %data) local_unnamed_addr #0 align 64 {
if.end:
  %st = alloca %struct.mlx5e_st, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool3.not = icmp eq ptr %data, null
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %0 = call ptr @memcpy(ptr %st, ptr @mlx5e_sts, i32 40)
  br i1 %tobool3.not, label %if.end.2.thread, label %if.then4.2

if.end.2.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  br label %land.lhs.true.3

if.then4.2:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call ptr @strcpy(ptr noundef nonnull %data, ptr noundef nonnull %st) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %1 = call ptr @memcpy(ptr %st, ptr getelementptr inbounds ([4 x %struct.mlx5e_st], ptr @mlx5e_sts, i32 0, i32 1), i32 40)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call5.1 = call ptr @strcpy(ptr noundef %add.ptr.1, ptr noundef nonnull %st) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %2 = call ptr @memcpy(ptr %st, ptr getelementptr inbounds ([4 x %struct.mlx5e_st], ptr @mlx5e_sts, i32 0, i32 2), i32 40)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 64
  %call5.2 = call ptr @strcpy(ptr noundef %add.ptr.2, ptr noundef nonnull %st) #12
  br label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %if.then4.2, %if.end.2.thread
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #8
  %3 = call ptr @memcpy(ptr %st, ptr getelementptr inbounds ([4 x %struct.mlx5e_st], ptr @mlx5e_sts, i32 0, i32 3), i32 40)
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %4 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev.i, align 64
  %call.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i)
  %cmp.i.i = icmp eq i8 %call.i.i, 2
  %brmerge = or i1 %tobool3.not, %cmp.i.i
  %.mux = select i1 %cmp.i.i, i32 3, i32 4
  br i1 %brmerge, label %land.lhs.true.3.cleanup.3_crit_edge, label %if.then4.3

land.lhs.true.3.cleanup.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.then4.3:                                       ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.3 = getelementptr i8, ptr %data, i32 96
  %call5.3 = call ptr @strcpy(ptr noundef %add.ptr.3, ptr noundef nonnull %st) #12
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.then4.3, %land.lhs.true.3.cleanup.3_crit_edge
  %count.1.3 = phi i32 [ %.mux, %land.lhs.true.3.cleanup.3_crit_edge ], [ 4, %if.then4.3 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #8
  ret i32 %count.1.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_self_test_num(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i.i, align 64
  %call.i.i.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i.i.i)
  %cmp.i.i.i = icmp eq i8 %call.i.i.i, 2
  %.mux.i = select i1 %cmp.i.i.i, i32 3, i32 4
  ret i32 %.mux.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_test_link_state(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %5 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev, align 64
  %call1 = tail call zeroext i8 @mlx5_query_vport_state(ptr noundef %6, i8 noundef zeroext 0, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %call1)
  %cmp = icmp ne i8 %call1, 1
  %cond = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_test_link_speed(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %speed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed) #8
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %speed, align 4, !annotation !28
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %1 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 64
  %call1 = call i32 @mlx5e_port_linkspeed(ptr noundef %7, ptr noundef nonnull %speed) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx5e_test_health_info(ptr nocapture noundef readonly %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %fatal_error = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 17, i32 10, i32 6
  %2 = ptrtoint ptr %fatal_error to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fatal_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_test_loopback(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #11
  br label %cleanup22

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 100) #13
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup22_crit_edge, label %if.end4

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup22

if.end4:                                          ; preds = %if.end
  %loopback_ok = getelementptr inbounds %struct.mlx5e_lbt_priv, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %loopback_ok to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %loopback_ok, align 8
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 64
  %local_lb.i = getelementptr inbounds %struct.mlx5e_lbt_priv, ptr %call7.i.i, i32 0, i32 3
  %call.i = tail call i32 @mlx5_nic_vport_query_local_lb(ptr noundef %7, ptr noundef %local_lb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %local_lb.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %local_lb.i, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i, align 64
  %call5.i = tail call i32 @mlx5_nic_vport_update_local_lb(ptr noundef %11, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.then3.i.if.end9.i_crit_edge, label %if.then3.i.out_crit_edge

if.then3.i.out_crit_edge:                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then3.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %call10.i = tail call i32 @mlx5e_refresh_tirs(ptr noundef %priv, i1 noundef zeroext true, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end8, label %out.i

out.i:                                            ; preds = %if.end9.i
  %12 = ptrtoint ptr %local_lb.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %local_lb.i, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not.i = icmp eq i8 %13, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %out.i.out_crit_edge

out.i.out_crit_edge:                              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then20.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev.i, align 64
  %call22.i = tail call i32 @mlx5_nic_vport_update_local_lb(ptr noundef %15, i1 noundef zeroext false) #8
  br label %out

if.end8:                                          ; preds = %if.end9.i
  %16 = ptrtoint ptr %loopback_ok to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %loopback_ok, align 8
  %comp.i = getelementptr inbounds %struct.mlx5e_lbt_priv, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %comp.i, align 8
  %wait.i.i = getelementptr inbounds %struct.mlx5e_lbt_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #8
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2048, ptr %call7.i.i, align 8
  %func.i = getelementptr inbounds %struct.packet_type, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mlx5e_test_loopback_validate, ptr %func.i, align 4
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %20 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev.i, align 4
  %dev.i = getelementptr inbounds %struct.packet_type, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev.i, align 4
  %af_packet_priv.i = getelementptr inbounds %struct.packet_type, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %af_packet_priv.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %af_packet_priv.i, align 4
  tail call void @dev_add_pack(ptr noundef nonnull %call7.i.i) #8
  %24 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %netdev.i, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %25, i32 noundef 58, i32 noundef 2592) #8
  %tobool.not.i42 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i42, label %mlx5e_test_get_udp_skb.exit.thread, label %if.end12

mlx5e_test_get_udp_skb.exit.thread:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i, align 4
  tail call void @llvm.prefetch.p0(ptr %29, i32 1, i32 3, i32 1) #8
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 2
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %32, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call2.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 14) #8
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %35 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %37 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len.i, align 4
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %40 = trunc i32 %39 to i16
  %conv1.i.i = add i16 %conv.i.i, %40
  %41 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv1.i.i, ptr %network_header.i.i.i, align 4
  %call3.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 20) #8
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i, align 4
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i, align 4
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i70.i = ptrtoint ptr %45 to i32
  %sub.ptr.rhs.cast.i.i71.i = ptrtoint ptr %47 to i32
  %sub.ptr.sub.i.i72.i = sub i32 %sub.ptr.lhs.cast.i.i70.i, %sub.ptr.rhs.cast.i.i71.i
  %conv.i.i73.i = trunc i32 %sub.ptr.sub.i.i72.i to i16
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %48 = trunc i32 %43 to i16
  %conv1.i74.i = add i16 %conv.i.i73.i, %48
  %49 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv1.i74.i, ptr %transport_header.i.i.i, align 2
  %call5.i43 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 8) #8
  %50 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %netdev.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 86
  %52 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_addr.i, align 64
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %call2.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %53, i32 4
  %57 = ptrtoint ptr %add.ptr.i75.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i75.i, align 2
  %add.ptr1.i76.i = getelementptr i8, ptr %call2.i, i32 4
  %59 = ptrtoint ptr %add.ptr1.i76.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %add.ptr1.i76.i, align 2
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %call2.i, i32 0, i32 1
  %60 = call ptr @memset(ptr %h_source.i, i32 0, i32 6)
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %call2.i, i32 0, i32 2
  %61 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 2048, ptr %h_proto.i, align 1
  %62 = ptrtoint ptr %call5.i43 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 9, ptr %call5.i43, align 2
  %dest.i = getelementptr inbounds %struct.udphdr, ptr %call5.i43, i32 0, i32 1
  %63 = ptrtoint ptr %dest.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 9, ptr %dest.i, align 2
  %len8.i = getelementptr inbounds %struct.udphdr, ptr %call5.i43, i32 0, i32 2
  %64 = ptrtoint ptr %len8.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 24, ptr %len8.i, align 2
  %check.i = getelementptr inbounds %struct.udphdr, ptr %call5.i43, i32 0, i32 3
  %65 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %check.i, align 2
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 5
  %66 = ptrtoint ptr %ttl.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 32, ptr %ttl.i, align 4
  %67 = ptrtoint ptr %call3.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 69, ptr %call3.i, align 4
  %protocol.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 6
  %68 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 17, ptr %protocol.i, align 1
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 2
  %69 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 44, ptr %tot_len.i, align 2
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 4
  %70 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %frag_off.i, align 2
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 8
  %71 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 9
  %72 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %daddr.i, align 4
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 1
  %73 = ptrtoint ptr %tos.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %tos.i, align 1
  %id.i = getelementptr inbounds %struct.iphdr, ptr %call3.i, i32 0, i32 3
  %74 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %id.i, align 4
  tail call void @ip_send_check(ptr noundef %call3.i) #8
  %call12.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #8
  %75 = ptrtoint ptr %call12.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %call12.i, align 8
  %magic.i = getelementptr inbounds %struct.mlx5ehdr, ptr %call12.i, i32 0, i32 1
  %76 = ptrtoint ptr %magic.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 6248860073985, ptr %magic.i, align 8
  %77 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 5
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %77, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %79 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %bf.load13.i = load i16, ptr %ip_summed.i, align 8
  %bf.set15.i = or i16 %bf.load13.i, 1536
  store i16 %bf.set15.i, ptr %ip_summed.i, align 8
  %80 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %saddr.i, align 4
  %82 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %daddr.i, align 4
  tail call void @udp4_hwcsum(ptr noundef nonnull %call.i.i, i32 noundef %81, i32 noundef %83) #8
  %protocol18.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %84 = ptrtoint ptr %protocol18.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 2048, ptr %protocol18.i, align 8
  %85 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %bf.load19.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear20.i = and i16 %bf.load19.i, 8191
  store i16 %bf.clear20.i, ptr %ip_summed.i, align 8
  %86 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %netdev.i, align 4
  %88 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %87, ptr %88, align 8
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %90 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 0, ptr %queue_mapping1.i, align 8
  %call13 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %netdev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.5, i32 noundef %call13) #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @wait_for_completion_timeout(ptr noundef %comp.i, i32 noundef 20) #8
  %93 = ptrtoint ptr %loopback_ok to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %loopback_ok, align 8, !range !29
  %95 = xor i8 %94, 1
  %96 = zext i8 %95 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15, %mlx5e_test_get_udp_skb.exit.thread
  %err.0 = phi i32 [ %call13, %if.then15 ], [ %96, %if.end17 ], [ -12, %mlx5e_test_get_udp_skb.exit.thread ]
  %97 = ptrtoint ptr %local_lb.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %local_lb.i, align 1, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i46 = icmp eq i8 %98, 0
  br i1 %tobool.not.i46, label %if.then.i49, label %cleanup.mlx5e_test_loopback_cleanup.exit_crit_edge

cleanup.mlx5e_test_loopback_cleanup.exit_crit_edge: ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %mlx5e_test_loopback_cleanup.exit

if.then.i49:                                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mdev.i, align 64
  %call.i48 = tail call i32 @mlx5_nic_vport_update_local_lb(ptr noundef %100, i1 noundef zeroext false) #8
  br label %mlx5e_test_loopback_cleanup.exit

mlx5e_test_loopback_cleanup.exit:                 ; preds = %if.then.i49, %cleanup.mlx5e_test_loopback_cleanup.exit_crit_edge
  tail call void @dev_remove_pack(ptr noundef nonnull %call7.i.i) #8
  %call1.i = tail call i32 @mlx5e_refresh_tirs(ptr noundef %priv, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %out

out:                                              ; preds = %mlx5e_test_loopback_cleanup.exit, %if.then20.i, %out.i.out_crit_edge, %if.then3.i.out_crit_edge, %if.end4.out_crit_edge
  %err.1 = phi i32 [ %err.0, %mlx5e_test_loopback_cleanup.exit ], [ %call10.i, %out.i.out_crit_edge ], [ %call10.i, %if.then20.i ], [ %call5.i, %if.then3.i.out_crit_edge ], [ %call.i, %if.end4.out_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup22

cleanup22:                                        ; preds = %out, %if.end.cleanup22_crit_edge, %if.then
  %retval.0 = phi i32 [ %err.1, %out ], [ -19, %if.then ], [ -12, %if.end.cleanup22_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_cond_loopback(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %call.i = tail call zeroext i8 @mlx5_eswitch_mode(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %call.i)
  %cmp.i = icmp eq i8 %call.i, 2
  %. = select i1 %cmp.i, i32 -95, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_query_vport_state(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_linkspeed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_nic_vport_query_local_lb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_nic_vport_update_local_lb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_refresh_tirs(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_test_loopback_validate(ptr noundef %skb, ptr nocapture noundef readnone %ndev, ptr nocapture noundef readonly %pt, ptr nocapture noundef readonly %orig_ndev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %af_packet_priv = getelementptr inbounds %struct.packet_type, ptr %pt, i32 0, i32 8
  %0 = ptrtoint ptr %af_packet_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %af_packet_priv, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %sub.i)
  %cmp = icmp ult i32 %sub.i, 44
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %8 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %orig_ndev, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr, align 64
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %xor.i = xor i32 %15, %13
  %add.ptr.i28 = getelementptr i8, ptr %add.ptr.i, i32 4
  %16 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i28, align 2
  %add.ptr1.i = getelementptr i8, ptr %11, i32 4
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %19, %17
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %21 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %23)
  %cmp6.not = icmp eq i8 %23, 17
  br i1 %cmp6.not, label %if.end9, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load, 2
  %25 = and i8 %bf.clear, 60
  %mul = zext i8 %25 to i32
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 %mul
  %dest = getelementptr inbounds %struct.udphdr, ptr %add.ptr, i32 0, i32 1
  %26 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dest, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %27)
  %cmp12.not = icmp eq i16 %27, 9
  br i1 %cmp12.not, label %if.end15, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %if.end9
  %add.ptr16 = getelementptr i8, ptr %add.ptr, i32 8
  %magic = getelementptr inbounds %struct.mlx5ehdr, ptr %add.ptr16, i32 0, i32 1
  %28 = ptrtoint ptr %magic to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %magic, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 6248860073985, i64 %29)
  %cmp17.not = icmp eq i64 %29, 6248860073985
  br i1 %cmp17.not, label %if.end20, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %loopback_ok = getelementptr inbounds %struct.mlx5e_lbt_priv, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %loopback_ok to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %loopback_ok, align 4
  %comp = getelementptr inbounds %struct.mlx5e_lbt_priv, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %comp) #8
  br label %out

out:                                              ; preds = %if.end20, %if.end15.out_crit_edge, %if.end9.out_crit_edge, %if.end4.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @udp4_hwcsum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @mlx5_eswitch_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 327, i32 20}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 334, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 336, i32 21}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 348, i32 20}
!8 = !{ptr @mlx5e_sts, !9, !"mlx5e_sts", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 309, i32 24}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 262, i32 7}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 285, i32 7}
!14 = !{ptr @init_completion.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../include/linux/completion.h", i32 87, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_selftest.c", i32 90, i32 28}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{i8 0, i8 2}
