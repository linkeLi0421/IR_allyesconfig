; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.167, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.169, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.167 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.145 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.145 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.169 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.156, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.156 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.dcb_app = type { i8, i8, i16 }
%struct.mlx5e_priv = type { ptr, ptr, [8 x i32], %struct.mlx5e_dcbx_dp, i32, i32, %struct.mutex, [48 x i8], %struct.mlx5e_rq, %struct.mlx5e_channels, [2 x [8 x i32]], ptr, ptr, %struct.mlx5e_flow_steering, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.mlx5_nb, ptr, ptr, ptr, %struct.mlx5e_stats, ptr, [12 x i8], %struct.mlx5e_channel_stats, %struct.mlx5e_ptp_stats, i16, i16, i8, i8, i8, %struct.hwtstamp_config, i16, i16, %struct.notifier_block, %struct.notifier_block, i32, %struct.udp_tunnel_nic_info, %struct.mlx5e_dcbx, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mlx5e_xsk, %struct.mlx5e_scratchpad, %struct.mlx5e_htb, ptr, [16 x i8] }
%struct.mlx5e_dcbx_dp = type { [64 x i8], i8 }
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
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.211, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.211 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.212 }
%struct.anon.212 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.213 }
%struct.anon.213 = type { i8, i8 }
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
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.mlx5e_dcbx = type { i32, %struct.mlx5e_cee_config, i8, [8 x i8], i8, i8, i32, i32, i16 }
%struct.mlx5e_cee_config = type { [8 x i8], [8 x i8], [8 x i8], i8 }
%struct.mlx5e_xsk = type { ptr, i16, i8 }
%struct.mlx5e_scratchpad = type { ptr }
%struct.mlx5e_htb = type { [256 x %struct.hlist_head], [8 x i32], ptr, i16, i16, i16 }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.mlx5e_port_buffer = type { i32, i32, [8 x %struct.mlx5e_bufferx_reg] }
%struct.mlx5e_bufferx_reg = type { i8, i8, i32, i32, i32 }
%struct.dcbnl_buffer = type { [8 x i8], [8 x i32], i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.81, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.22 }
%struct.llist_node = type { ptr }
%union.anon.22 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.81 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@mlx5e_dcbnl_ops = internal constant { %struct.dcbnl_rtnl_ops, [60 x i8] } { %struct.dcbnl_rtnl_ops { ptr @mlx5e_dcbnl_ieee_getets, ptr @mlx5e_dcbnl_ieee_setets, ptr @mlx5e_dcbnl_ieee_getmaxrate, ptr @mlx5e_dcbnl_ieee_setmaxrate, ptr null, ptr null, ptr null, ptr @mlx5e_dcbnl_ieee_getpfc, ptr @mlx5e_dcbnl_ieee_setpfc, ptr null, ptr @mlx5e_dcbnl_ieee_setapp, ptr @mlx5e_dcbnl_ieee_delapp, ptr null, ptr null, ptr @mlx5e_dcbnl_getstate, ptr null, ptr @mlx5e_dcbnl_getpermhwaddr, ptr @mlx5e_dcbnl_setpgtccfgtx, ptr @mlx5e_dcbnl_setpgbwgcfgtx, ptr null, ptr null, ptr @mlx5e_dcbnl_getpgtccfgtx, ptr @mlx5e_dcbnl_getpgbwgcfgtx, ptr null, ptr null, ptr @mlx5e_dcbnl_setpfccfg, ptr @mlx5e_dcbnl_getpfccfg, ptr @mlx5e_dcbnl_setall, ptr @mlx5e_dcbnl_getcap, ptr @mlx5e_dcbnl_getnumtcs, ptr null, ptr @mlx5e_dcbnl_getpfcstate, ptr @mlx5e_dcbnl_setpfcstate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_dcbnl_getdcbx, ptr @mlx5e_dcbnl_setdcbx, ptr null, ptr null, ptr null, ptr null, ptr @mlx5e_dcbnl_getbuffer, ptr @mlx5e_dcbnl_setbuffer }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Failed to validate ETS: priority value greater than max(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to validate ETS: BW sum is illegal\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: prio_%d <=> tc_%d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.mlx5e_dcbnl_ieee_setets_core = private unnamed_addr constant [29 x i8] c"mlx5e_dcbnl_ieee_setets_core\00", align 1
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: tc_%d <=> tx_bw_%d%%, group_%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"non-supported BW unit\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: tc_%d <=> max_bw %d Gbps\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.mlx5e_dcbnl_ieee_setmaxrate = private unnamed_addr constant [28 x i8] c"mlx5e_dcbnl_ieee_setmaxrate\00", align 1
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: PFC per priority bit mask: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.mlx5e_dcbnl_ieee_setpfc = private unnamed_addr constant [24 x i8] c"mlx5e_dcbnl_ieee_setpfc\00", align 1
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s, priority is out of range\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.mlx5e_dcbnl_setpgtccfgtx = private unnamed_addr constant [25 x i8] c"mlx5e_dcbnl_setpgtccfgtx\00", align 1
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s, priority group is out of range\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.mlx5e_dcbnl_setpgbwgcfgtx = private unnamed_addr constant [26 x i8] c"mlx5e_dcbnl_setpgbwgcfgtx\00", align 1
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s, ets is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.mlx5e_dcbnl_getpgtccfgtx = private unnamed_addr constant [25 x i8] c"mlx5e_dcbnl_getpgtccfgtx\00", align 1
@__func__.mlx5e_dcbnl_getpgbwgcfgtx = private unnamed_addr constant [26 x i8] c"mlx5e_dcbnl_getpgbwgcfgtx\00", align 1
@__func__.mlx5e_dcbnl_setpfccfg = private unnamed_addr constant [22 x i8] c"mlx5e_dcbnl_setpfccfg\00", align 1
@__func__.mlx5e_dcbnl_getpfccfg = private unnamed_addr constant [22 x i8] c"mlx5e_dcbnl_getpfccfg\00", align 1
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: Priority group %d: tx_bw %d, rx_bw %d, prio_tc %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.mlx5e_dcbnl_setall = private unnamed_addr constant [19 x i8] c"mlx5e_dcbnl_setall\00", align 1
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, Failed to set ETS: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, Failed to set PFC: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug636 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlx5_core\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mlx5e_dcbnl_setbuffer\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s:%d:(pid %d): buffer[%d]=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug637 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.4, ptr @.str.17, i8 0, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s:%d:(pid %d): priority %d buffer%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s, Failed to init ETS: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.mlx5e_ets_init = private unnamed_addr constant [15 x i8] c"mlx5e_ets_init\00", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 3, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 255]
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"mlx5e_dcbnl_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 988, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 297, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 314, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 276, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 278, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 573, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 612, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 400, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 703, i32 7 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 709, i32 7 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 739, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 641, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 654, i32 7 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 669, i32 7 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 950, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 953, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 1081, i32 7 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mlx5e_dcbnl_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_dcbnl_ops to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_dcbnl_build_netdev(ptr nocapture noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr7 = getelementptr i32, ptr %3, i32 16
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr7, align 4
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 139
  %9 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mlx5e_dcbnl_ops, ptr %dcbnl_ops, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_dcbnl_build_rep_netdev(ptr nocapture noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 16
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dcbnl_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 139
  %7 = ptrtoint ptr %dcbnl_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mlx5e_dcbnl_ops, ptr %dcbnl_ops, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_dcbnl_init_app(ptr nocapture noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %temp.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #9
  %0 = getelementptr inbounds %struct.dcb_app, ptr %temp.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %temp.i, i32 0, i32 2
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not.i = icmp sgt i32 %7, -1
  br i1 %tobool.not.i, label %entry.mlx5e_dcbnl_dscp_app.exit_crit_edge, label %if.end.i

entry.mlx5e_dcbnl_dscp_app.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

if.end.i:                                         ; preds = %entry
  %add.ptr7.i = getelementptr i32, ptr %5, i32 11
  %8 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr7.i, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %if.end.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, label %land.lhs.true.i

if.end.i.mlx5e_dcbnl_dscp_app.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr14.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 4, i32 5
  %11 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr14.i, align 4
  %13 = and i32 %12, 524292
  call void @__sanitizer_cov_trace_const_cmp4(i32 524292, i32 %13)
  %.not.i = icmp eq i32 %13, 524292
  br i1 %.not.i, label %if.end28.i, label %land.lhs.true.i.mlx5e_dcbnl_dscp_app.exit_crit_edge

land.lhs.true.i.mlx5e_dcbnl_dscp_app.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

if.end28.i:                                       ; preds = %land.lhs.true.i
  %dcbx_dp.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 3
  %trust_state.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %trust_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %trust_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 2
  br i1 %cmp.not.i, label %if.end31.i, label %if.end28.i.mlx5e_dcbnl_dscp_app.exit_crit_edge

if.end28.i.mlx5e_dcbnl_dscp_app.exit_crit_edge:   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

if.end31.i:                                       ; preds = %if.end28.i
  %16 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %temp.i, align 2
  %netdev40.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end31.i
  %i.059.i = phi i32 [ 0, %if.end31.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv34.i = trunc i32 %i.059.i to i16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv34.i, ptr %1, align 2
  %arrayidx36.i = getelementptr [64 x i8], ptr %dcbx_dp.i, i32 0, i32 %i.059.i
  %18 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx36.i, align 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %0, align 1
  %21 = ptrtoint ptr %netdev40.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev40.i, align 4
  %call.i = call i32 @dcb_ieee_setapp(ptr noundef %22, ptr noundef nonnull %temp.i) #9
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dscp_app_cnt.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 2
  %23 = ptrtoint ptr %dscp_app_cnt.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %dscp_app_cnt.i, align 1
  br label %mlx5e_dcbnl_dscp_app.exit

mlx5e_dcbnl_dscp_app.exit:                        ; preds = %for.end.i, %if.end28.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, %land.lhs.true.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, %if.end.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, %entry.mlx5e_dcbnl_dscp_app.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_dcbnl_delete_app(ptr nocapture noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %temp.i = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #9
  %0 = getelementptr inbounds %struct.dcb_app, ptr %temp.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %temp.i, i32 0, i32 2
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not.i = icmp sgt i32 %7, -1
  br i1 %tobool.not.i, label %entry.mlx5e_dcbnl_dscp_app.exit_crit_edge, label %if.end.i

entry.mlx5e_dcbnl_dscp_app.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

if.end.i:                                         ; preds = %entry
  %add.ptr7.i = getelementptr i32, ptr %5, i32 11
  %8 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr7.i, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not.i = icmp eq i32 %10, 0
  br i1 %tobool10.not.i, label %if.end.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, label %land.lhs.true.i

if.end.i.mlx5e_dcbnl_dscp_app.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr14.i = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 4, i32 5
  %11 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr14.i, align 4
  %13 = and i32 %12, 524292
  call void @__sanitizer_cov_trace_const_cmp4(i32 524292, i32 %13)
  %.not.i = icmp eq i32 %13, 524292
  br i1 %.not.i, label %if.end28.i, label %land.lhs.true.i.mlx5e_dcbnl_dscp_app.exit_crit_edge

land.lhs.true.i.mlx5e_dcbnl_dscp_app.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

if.end28.i:                                       ; preds = %land.lhs.true.i
  %dcbx_dp.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 3
  %trust_state.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %trust_state.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %trust_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp.not.i = icmp eq i8 %15, 2
  br i1 %cmp.not.i, label %if.end31.i, label %if.end28.i.mlx5e_dcbnl_dscp_app.exit_crit_edge

if.end28.i.mlx5e_dcbnl_dscp_app.exit_crit_edge:   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_dscp_app.exit

if.end31.i:                                       ; preds = %if.end28.i
  %16 = ptrtoint ptr %temp.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %temp.i, align 2
  %netdev40.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end31.i
  %i.059.i = phi i32 [ 0, %if.end31.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv34.i = trunc i32 %i.059.i to i16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv34.i, ptr %1, align 2
  %arrayidx36.i = getelementptr [64 x i8], ptr %dcbx_dp.i, i32 0, i32 %i.059.i
  %18 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx36.i, align 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %0, align 1
  %21 = ptrtoint ptr %netdev40.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev40.i, align 4
  %call41.i = call i32 @dcb_ieee_delapp(ptr noundef %22, ptr noundef nonnull %temp.i) #9
  %inc.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dscp_app_cnt.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 2
  %23 = ptrtoint ptr %dscp_app_cnt.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %dscp_app_cnt.i, align 1
  br label %mlx5e_dcbnl_dscp_app.exit

mlx5e_dcbnl_dscp_app.exit:                        ; preds = %for.end.i, %if.end28.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, %land.lhs.true.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, %if.end.i.mlx5e_dcbnl_dscp_app.exit_crit_edge, %entry.mlx5e_dcbnl_dscp_app.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_dcbnl_initialize(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %ets.i = alloca %struct.ieee_ets, align 1
  %out.i42 = alloca [19 x i32], align 4
  %in.i = alloca [19 x i32], align 4
  %out.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41
  %mdev1.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1.i, align 64
  %dcbx_dp.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 3
  %trust_state.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %trust_state.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %trust_state.i, align 8
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps.i, align 8
  %add.ptr.i = getelementptr i32, ptr %4, i32 11
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %entry.mlx5e_trust_initialize.exit_crit_edge, label %land.lhs.true.i

entry.mlx5e_trust_initialize.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_trust_initialize.exit

land.lhs.true.i:                                  ; preds = %entry
  %add.ptr4.i = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 4, i32 5
  %8 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr4.i, align 4
  %10 = and i32 %9, 524292
  call void @__sanitizer_cov_trace_const_cmp4(i32 524292, i32 %10)
  %.not.i = icmp eq i32 %10, 524292
  br i1 %.not.i, label %if.end.i, label %land.lhs.true.i.mlx5e_trust_initialize.exit_crit_edge

land.lhs.true.i.mlx5e_trust_initialize.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_trust_initialize.exit

if.end.i:                                         ; preds = %land.lhs.true.i
  %call.i = tail call i32 @mlx5_query_trust_state(ptr noundef %1, ptr noundef %trust_state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end.i.mlx5e_trust_initialize.exit_crit_edge

if.end.i.mlx5e_trust_initialize.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_trust_initialize.exit

if.end21.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev1.i, align 64
  %13 = ptrtoint ptr %trust_state.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %trust_state.i, align 8
  %tx_min_inline_mode.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 10
  tail call void @mlx5_query_min_inline(ptr noundef %12, ptr noundef %tx_min_inline_mode.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i.i = icmp eq i8 %14, 2
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end21.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit.i_crit_edge

if.end21.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_params_calc_trust_tx_min_inline_mode.exit.i

land.lhs.true.i.i:                                ; preds = %if.end21.i
  %15 = ptrtoint ptr %tx_min_inline_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tx_min_inline_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp4.i.i = icmp eq i8 %16, 1
  br i1 %cmp4.i.i, label %if.then.i.i, label %land.lhs.true.i.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit.i_crit_edge

land.lhs.true.i.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_params_calc_trust_tx_min_inline_mode.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %tx_min_inline_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %tx_min_inline_mode.i.i, align 4
  br label %mlx5e_params_calc_trust_tx_min_inline_mode.exit.i

mlx5e_params_calc_trust_tx_min_inline_mode.exit.i: ; preds = %if.then.i.i, %land.lhs.true.i.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit.i_crit_edge, %if.end21.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit.i_crit_edge
  %18 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev1.i, align 64
  %call28.i = tail call i32 @mlx5_query_dscp2prio(ptr noundef %19, ptr noundef %dcbx_dp.i) #9
  br label %mlx5e_trust_initialize.exit

mlx5e_trust_initialize.exit:                      ; preds = %mlx5e_params_calc_trust_tx_min_inline_mode.exit.i, %if.end.i.mlx5e_trust_initialize.exit_crit_edge, %land.lhs.true.i.mlx5e_trust_initialize.exit_crit_edge, %entry.mlx5e_trust_initialize.exit_crit_edge
  %20 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev1.i, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %23, i32 16
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr, align 4
  %26 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %mlx5e_trust_initialize.exit.cleanup_crit_edge, label %if.end

mlx5e_trust_initialize.exit.cleanup_crit_edge:    ; preds = %mlx5e_trust_initialize.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5e_trust_initialize.exit
  %add.ptr8 = getelementptr i32, ptr %23, i32 14
  %27 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr8, align 4
  %29 = and i32 %28, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool11.not = icmp eq i32 %29, 0
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %out.i) #9
  %30 = call ptr @memset(ptr %out.i, i32 255, i32 64)
  %31 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %dcbx1, align 4
  %call.i38 = call i32 @mlx5_query_port_dcbx_param(ptr noundef %21, ptr noundef nonnull %out.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %if.then.i, label %if.endthread-pre-split.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i40 = getelementptr inbounds i32, ptr %out.i, i32 1
  %32 = ptrtoint ptr %add.ptr.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i40, align 4
  %shr.i = lshr i32 %33, 8
  %and.i = and i32 %shr.i, 7
  %34 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i, ptr %dcbx1, align 4
  br label %if.end.i41

if.endthread-pre-split.i:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr.i = load i32, ptr %dcbx1, align 4
  br label %if.end.i41

if.end.i41:                                       ; preds = %if.endthread-pre-split.i, %if.then.i
  %36 = phi i32 [ %.pr.i, %if.endthread-pre-split.i ], [ %and.i, %if.then.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %if.end.i41.mlx5e_dcbnl_query_dcbx_mode.exit_crit_edge, label %if.then2.i

if.end.i41.mlx5e_dcbnl_query_dcbx_mode.exit_crit_edge: ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_query_dcbx_mode.exit

if.then2.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %dcbx1, align 4
  br label %mlx5e_dcbnl_query_dcbx_mode.exit

mlx5e_dcbnl_query_dcbx_mode.exit:                 ; preds = %if.then2.i, %if.end.i41.mlx5e_dcbnl_query_dcbx_mode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %out.i) #9
  br label %if.end13

if.end13:                                         ; preds = %mlx5e_dcbnl_query_dcbx_mode.exit, %if.end.if.end13_crit_edge
  %cap = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 4
  %38 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dcbx1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp = icmp eq i32 %39, 0
  %spec.store.select = select i1 %cmp, i8 13, i8 12
  %40 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %spec.store.select, ptr %cap, align 2
  %41 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mdev1.i, align 64
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %out.i42) #9
  %43 = call ptr @memset(ptr %out.i42, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %in.i) #9
  %44 = call ptr @memset(ptr %in.i, i32 0, i32 76)
  %caps.i44 = getelementptr inbounds %struct.mlx5_core_dev, ptr %42, i32 0, i32 8
  %45 = ptrtoint ptr %caps.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %caps.i44, align 8
  %add.ptr.i45 = getelementptr i32, ptr %46, i32 11
  %47 = ptrtoint ptr %add.ptr.i45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i45, align 4
  %49 = and i32 %48, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i46 = icmp eq i32 %49, 0
  br i1 %tobool.not.i46, label %if.end13.mlx5e_query_port_buffers_cell_size.exit_crit_edge, label %if.end.i48

if.end13.mlx5e_query_port_buffers_cell_size.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_query_port_buffers_cell_size.exit

if.end.i48:                                       ; preds = %if.end13
  %call.i47 = call i32 @mlx5_core_access_reg(ptr noundef %42, ptr noundef nonnull %in.i, i32 noundef 76, ptr noundef nonnull %out.i42, i32 noundef 76, i16 noundef zeroext -20449, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool4.not.i = icmp eq i32 %call.i47, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i48.mlx5e_query_port_buffers_cell_size.exit_crit_edge

if.end.i48.mlx5e_query_port_buffers_cell_size.exit_crit_edge: ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_query_port_buffers_cell_size.exit

if.end6.i:                                        ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr8.i = getelementptr inbounds i32, ptr %out.i42, i32 17
  %50 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr8.i, align 4
  %shr9.i = lshr i32 %51, 16
  %conv.i = trunc i32 %shr9.i to i16
  br label %mlx5e_query_port_buffers_cell_size.exit

mlx5e_query_port_buffers_cell_size.exit:          ; preds = %if.end6.i, %if.end.i48.mlx5e_query_port_buffers_cell_size.exit_crit_edge, %if.end13.mlx5e_query_port_buffers_cell_size.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end6.i ], [ 128, %if.end13.mlx5e_query_port_buffers_cell_size.exit_crit_edge ], [ 128, %if.end.i48.mlx5e_query_port_buffers_cell_size.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %in.i) #9
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %out.i42) #9
  %port_buff_cell_sz = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 8
  %52 = ptrtoint ptr %port_buff_cell_sz to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %retval.0.i, ptr %port_buff_cell_sz, align 8
  %manual_buffer = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 5
  %53 = ptrtoint ptr %manual_buffer to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %manual_buffer, align 1
  %cable_len = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 6
  %54 = ptrtoint ptr %cable_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 7, ptr %cable_len, align 8
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %ets.i) #9
  %55 = ptrtoint ptr %mdev1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mdev1.i, align 64
  %caps.i50 = getelementptr inbounds %struct.mlx5_core_dev, ptr %56, i32 0, i32 8
  %57 = ptrtoint ptr %caps.i50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %caps.i50, align 8
  %add.ptr.i51 = getelementptr i32, ptr %58, i32 13
  %59 = ptrtoint ptr %add.ptr.i51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i51, align 4
  %61 = and i32 %60, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i52 = icmp eq i32 %61, 0
  br i1 %tobool.not.i52, label %mlx5e_query_port_buffers_cell_size.exit.mlx5e_ets_init.exit_crit_edge, label %if.end.i55

mlx5e_query_port_buffers_cell_size.exit.mlx5e_ets_init.exit_crit_edge: ; preds = %mlx5e_query_port_buffers_cell_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_ets_init.exit

if.end.i55:                                       ; preds = %mlx5e_query_port_buffers_cell_size.exit
  %62 = call ptr @memset(ptr %ets.i, i32 0, i32 59)
  %call.i53 = call i32 @mlx5_max_tc(ptr noundef %56) #9
  %63 = trunc i32 %call.i53 to i8
  %conv.i54 = add i8 %63, 1
  %ets_cap.i = getelementptr inbounds %struct.ieee_ets, ptr %ets.i, i32 0, i32 1
  %64 = ptrtoint ptr %ets_cap.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i54, ptr %ets_cap.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i54)
  %cmp35.not.i = icmp eq i8 %conv.i54, 0
  br i1 %cmp35.not.i, label %if.end.i55.if.end18.i_crit_edge, label %for.body.lr.ph.i

if.end.i55.if.end18.i_crit_edge:                  ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

for.body.lr.ph.i:                                 ; preds = %if.end.i55
  %umax.i = zext i8 %conv.i54 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.ieee_ets, ptr %ets.i, i32 0, i32 3, i32 %i.036.i
  %65 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 100, ptr %arrayidx5.i, align 1
  %arrayidx6.i = getelementptr %struct.ieee_ets, ptr %ets.i, i32 0, i32 5, i32 %i.036.i
  %66 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %arrayidx6.i, align 1
  %conv7.i = trunc i32 %i.036.i to i8
  %arrayidx8.i = getelementptr %struct.ieee_ets, ptr %ets.i, i32 0, i32 6, i32 %i.036.i
  %67 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv7.i, ptr %arrayidx8.i, align 1
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.i54)
  %phi.cmp.i = icmp ugt i8 %conv.i54, 1
  br i1 %phi.cmp.i, label %if.then13.i, label %for.end.i.if.end18.i_crit_edge

for.end.i.if.end18.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then13.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prio_tc14.i = getelementptr inbounds %struct.ieee_ets, ptr %ets.i, i32 0, i32 6
  %68 = ptrtoint ptr %prio_tc14.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %prio_tc14.i, align 1
  %arrayidx17.i = getelementptr inbounds %struct.ieee_ets, ptr %ets.i, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %arrayidx17.i, align 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %for.end.i.if.end18.i_crit_edge, %if.end.i55.if.end18.i_crit_edge
  %call19.i = call fastcc i32 @mlx5e_dcbnl_ieee_setets_core(ptr noundef %priv, ptr noundef nonnull %ets.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end18.i.mlx5e_ets_init.exit_crit_edge, label %if.then21.i

if.end18.i.mlx5e_ets_init.exit_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_ets_init.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %70 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.mlx5e_ets_init, i32 noundef %call19.i) #12
  br label %mlx5e_ets_init.exit

mlx5e_ets_init.exit:                              ; preds = %if.then21.i, %if.end18.i.mlx5e_ets_init.exit_crit_edge, %mlx5e_query_port_buffers_cell_size.exit.mlx5e_ets_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %ets.i) #9
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_ets_init.exit, %mlx5e_trust_initialize.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_getets(ptr nocapture noundef %netdev, ptr noundef %ets) #2 align 64 {
entry:
  %tc_group = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tc_group) #9
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %tc_group to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tc_group, align 8
  %3 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %4, i32 13
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %7 = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @mlx5_max_tc(ptr noundef %1) #9
  %8 = trunc i32 %call4 to i8
  %conv = add i8 %8, 1
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %9 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %ets_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp151.not = icmp eq i8 %conv, 0
  br i1 %cmp151.not, label %if.end.for.end90_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end90_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end90

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0154 = phi i32 [ %inc, %if.end36.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %is_zero_bw_ets_tc.0.off0153 = phi i1 [ %is_zero_bw_ets_tc.1.off0, %if.end36.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %is_tc_group_6_exist.0.off0152 = phi i1 [ %spec.select147, %if.end36.for.body_crit_edge ], [ false, %if.end.for.body_crit_edge ]
  %conv8 = trunc i32 %i.0154 to i8
  %arrayidx9 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.0154
  %call10 = call i32 @mlx5_query_port_prio_tc(ptr noundef %1, i8 noundef zeroext %conv8, ptr noundef %arrayidx9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %arrayidx15 = getelementptr [8 x i8], ptr %tc_group, i32 0, i32 %i.0154
  %call16 = call i32 @mlx5_query_port_tc_group(ptr noundef %1, i8 noundef zeroext %conv8, ptr noundef %arrayidx15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %arrayidx21 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.0154
  %call22 = call i32 @mlx5_query_port_tc_bw_alloc(ptr noundef %1, i8 noundef zeroext %conv8, ptr noundef %arrayidx21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %11)
  %cmp29 = icmp ult i8 %11, 100
  br i1 %cmp29, label %land.lhs.true, label %if.end25.if.end36_crit_edge

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp33 = icmp eq i8 %13, 1
  %spec.select = select i1 %cmp33, i1 true, i1 %is_zero_bw_ets_tc.0.off0153
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true, %if.end25.if.end36_crit_edge
  %is_zero_bw_ets_tc.1.off0 = phi i1 [ %is_zero_bw_ets_tc.0.off0153, %if.end25.if.end36_crit_edge ], [ %spec.select, %land.lhs.true ]
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp39 = icmp eq i8 %15, 6
  %spec.select147 = select i1 %cmp39, i1 true, i1 %is_tc_group_6_exist.0.off0152
  %inc = add nuw nsw i32 %i.0154, 1
  %16 = ptrtoint ptr %ets_cap to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ets_cap, align 1
  %conv6 = zext i8 %17 to i32
  %cmp = icmp ult i32 %inc, %conv6
  br i1 %cmp, label %if.end36.for.body_crit_edge, label %for.end

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end36
  br i1 %is_zero_bw_ets_tc.1.off0, label %for.cond45.preheader, label %for.end.if.end62_crit_edge

for.end.if.end62_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

for.cond45.preheader:                             ; preds = %for.end
  %18 = ptrtoint ptr %ets_cap to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ets_cap, align 1
  %conv47 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp48156.not = icmp eq i8 %19, 0
  br i1 %cmp48156.not, label %for.cond45.preheader.for.end90_crit_edge, label %for.cond45.preheader.for.body50_crit_edge

for.cond45.preheader.for.body50_crit_edge:        ; preds = %for.cond45.preheader
  br label %for.body50

for.cond45.preheader.for.end90_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end90

for.body50:                                       ; preds = %for.inc59.for.body50_crit_edge, %for.cond45.preheader.for.body50_crit_edge
  %i.1157 = phi i32 [ %inc60, %for.inc59.for.body50_crit_edge ], [ 0, %for.cond45.preheader.for.body50_crit_edge ]
  %arrayidx51 = getelementptr [8 x i8], ptr %tc_group, i32 0, i32 %i.1157
  %20 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx51, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp53 = icmp eq i8 %21, 0
  br i1 %cmp53, label %if.then55, label %for.body50.for.inc59_crit_edge

for.body50.for.inc59_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.then55:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx57 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.1157
  %22 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx57, align 1
  br label %for.inc59

for.inc59:                                        ; preds = %if.then55, %for.body50.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.1157, 1
  %exitcond.not = icmp eq i32 %inc60, %conv47
  br i1 %exitcond.not, label %for.inc59.if.end62_crit_edge, label %for.inc59.for.body50_crit_edge

for.inc59.for.body50_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body50

for.inc59.if.end62_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end62:                                         ; preds = %for.inc59.if.end62_crit_edge, %for.end.if.end62_crit_edge
  %23 = ptrtoint ptr %ets_cap to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr = load i8, ptr %ets_cap, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp66160.not = icmp eq i8 %.pr, 0
  br i1 %cmp66160.not, label %if.end62.for.end90_crit_edge, label %if.end62.for.body68_crit_edge

if.end62.for.body68_crit_edge:                    ; preds = %if.end62
  br label %for.body68

if.end62.for.end90_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end90

for.body68:                                       ; preds = %for.inc88.for.body68_crit_edge, %if.end62.for.body68_crit_edge
  %i.2161 = phi i32 [ %inc89, %for.inc88.for.body68_crit_edge ], [ 0, %if.end62.for.body68_crit_edge ]
  %arrayidx70 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.2161
  %24 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %25)
  %cmp72 = icmp ult i8 %25, 100
  br i1 %cmp72, label %for.body68.for.inc88.sink.split_crit_edge, label %if.else

for.body68.for.inc88.sink.split_crit_edge:        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc88.sink.split

if.else:                                          ; preds = %for.body68
  %arrayidx76 = getelementptr [8 x i8], ptr %tc_group, i32 0, i32 %i.2161
  %26 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx76, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %27)
  %cmp78 = icmp ne i8 %27, 7
  %brmerge = select i1 %cmp78, i1 true, i1 %spec.select147
  br i1 %brmerge, label %if.else.for.inc88_crit_edge, label %if.else.for.inc88.sink.split_crit_edge

if.else.for.inc88.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc88.sink.split

if.else.for.inc88_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc88

for.inc88.sink.split:                             ; preds = %if.else.for.inc88.sink.split_crit_edge, %for.body68.for.inc88.sink.split_crit_edge
  %.sink = phi i8 [ 2, %for.body68.for.inc88.sink.split_crit_edge ], [ -1, %if.else.for.inc88.sink.split_crit_edge ]
  %arrayidx75 = getelementptr %struct.mlx5e_priv, ptr %add.ptr.i, i32 0, i32 41, i32 3, i32 %i.2161
  %28 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %arrayidx75, align 1
  br label %for.inc88

for.inc88:                                        ; preds = %for.inc88.sink.split, %if.else.for.inc88_crit_edge
  %inc89 = add nuw nsw i32 %i.2161, 1
  %29 = ptrtoint ptr %ets_cap to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ets_cap, align 1
  %conv65 = zext i8 %30 to i32
  %cmp66 = icmp ult i32 %inc89, %conv65
  br i1 %cmp66, label %for.inc88.for.body68_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end90

for.inc88.for.body68_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %if.end62.for.end90_crit_edge, %for.cond45.preheader.for.end90_crit_edge, %if.end.for.end90_crit_edge
  %tc_tsa91 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %tc_tsa94 = getelementptr i8, ptr %netdev, i32 30214
  %31 = ptrtoint ptr %tc_tsa94 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %tc_tsa94, align 2
  %33 = ptrtoint ptr %tc_tsa91 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %tc_tsa91, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end90, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end90 ], [ -95, %entry.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ], [ %call10, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tc_group) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_setets(ptr noundef %netdev, ptr noundef %ets) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %mdev = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @mlx5e_dbcnl_validate_ets(ptr noundef %netdev, ptr noundef %ets, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call fastcc i32 @mlx5e_dcbnl_ieee_setets_core(ptr noundef %add.ptr.i, ptr noundef %ets)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_getmaxrate(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %maxrate) #2 align 64 {
entry:
  %max_bw_value = alloca [8 x i8], align 8
  %max_bw_unit = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_bw_value) #9
  %2 = ptrtoint ptr %max_bw_value to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %max_bw_value, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_bw_unit) #9
  %3 = ptrtoint ptr %max_bw_unit to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %max_bw_unit, align 8
  %call3 = call i32 @mlx5_query_port_ets_rate_limit(ptr noundef %1, ptr noundef nonnull %max_bw_value, ptr noundef nonnull %max_bw_unit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = call ptr @memset(ptr %maxrate, i32 0, i32 64)
  %call551 = call i32 @mlx5_max_tc(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call551)
  %cmp.not52 = icmp slt i32 %call551, 0
  br i1 %cmp.not52, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.053 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i8], ptr %max_bw_unit, i32 0, i32 %i.053
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end [
    i8 3, label %sw.bb
    i8 4, label %sw.bb11
    i8 0, label %for.body.for.inc_crit_edge
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6 = getelementptr [8 x i8], ptr %max_bw_value, i32 0, i32 %i.053
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %mul = mul nuw nsw i32 %conv7, 100000
  %10 = zext i32 %mul to i64
  %arrayidx10 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 %i.053
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx10, align 8
  br label %for.inc

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr [8 x i8], ptr %max_bw_value, i32 0, i32 %i.053
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %mul14 = mul nuw nsw i32 %conv13, 1000000
  %14 = zext i32 %mul14 to i64
  %arrayidx17 = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 %i.053
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx17, align 8
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 573, i32 noundef 9, ptr noundef nonnull @.str.5) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end, %sw.bb11, %sw.bb, %for.body.for.inc_crit_edge
  %inc = add i32 %i.053, 1
  %call5 = call i32 @mlx5_max_tc(ptr noundef %1) #9
  %cmp.not = icmp sgt i32 %inc, %call5
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_bw_unit) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_bw_value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_setmaxrate(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readonly %maxrate) #2 align 64 {
entry:
  %max_bw_value = alloca [8 x i8], align 8
  %max_bw_unit = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_bw_value) #9
  %2 = getelementptr inbounds [8 x i8], ptr %max_bw_value, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %max_bw_value, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %max_bw_value, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %max_bw_value, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %max_bw_value, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %max_bw_value, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %max_bw_value, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_bw_unit) #9
  %9 = ptrtoint ptr %max_bw_value to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %max_bw_value, align 8
  %10 = ptrtoint ptr %max_bw_unit to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %max_bw_unit, align 8
  %call376 = tail call i32 @mlx5_max_tc(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call376)
  %cmp.not77 = icmp slt i32 %call376, 0
  br i1 %cmp.not77, label %entry.for.cond31.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond31.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.inc.for.cond31.preheader_crit_edge, %entry.for.cond31.preheader_crit_edge
  %msglevel = getelementptr i8, ptr %netdev, i32 2412
  %netdev37 = getelementptr i8, ptr %netdev, i32 11332
  %11 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msglevel, align 4
  %and = and i32 %12, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  br i1 %tobool35.not, label %for.cond31.preheader.for.inc41_crit_edge, label %if.then36

for.cond31.preheader.for.inc41_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [8 x i64], ptr %maxrate, i32 0, i32 %i.078
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool.not = icmp eq i64 %14, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 26000000, i64 %14)
  %cmp8 = icmp ult i64 %14, 26000000
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6357485877563259869, i64 %14, i32 0) #13, !srcloc !67
  %asmresult.i.i.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6357485877563259869, i64 %14, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !68
  %asmresult10.i.i.i = extractvalue { i64, i32 } %16, 0
  %arrayidx15 = getelementptr [8 x i8], ptr %max_bw_value, i32 0, i32 %i.078
  %17 = and i64 %asmresult10.i.i.i, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool18.not = icmp eq i64 %17, 0
  %18 = lshr i64 %asmresult10.i.i.i, 16
  %19 = trunc i64 %18 to i8
  %conv21 = select i1 %tobool18.not, i8 1, i8 %19
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv21, ptr %arrayidx15, align 1
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %14) #13, !srcloc !69
  %22 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %14, i64 %21, i32 0) #13, !srcloc !68
  %asmresult10.i.i.i72 = extractvalue { i64, i32 } %22, 0
  %div158.i.i7374 = lshr i64 %asmresult10.i.i.i72, 18
  %conv27 = trunc i64 %div158.i.i7374 to i8
  %arrayidx28 = getelementptr [8 x i8], ptr %max_bw_value, i32 0, i32 %i.078
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv27, ptr %arrayidx28, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then10, %for.body.for.inc_crit_edge
  %.sink = phi i8 [ 3, %if.then10 ], [ 4, %if.else ], [ 0, %for.body.for.inc_crit_edge ]
  %arrayidx23 = getelementptr [8 x i8], ptr %max_bw_unit, i32 0, i32 %i.078
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %arrayidx23, align 1
  %inc = add i32 %i.078, 1
  %call3 = tail call i32 @mlx5_max_tc(ptr noundef %1) #9
  %cmp.not = icmp sgt i32 %inc, %call3
  br i1 %cmp.not, label %for.inc.for.cond31.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond31.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond31.preheader

if.then36:                                        ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev37, align 4
  %27 = ptrtoint ptr %max_bw_value to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %max_bw_value, align 8
  %conv39 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %26, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 0, i32 noundef %conv39) #12
  br label %for.inc41

for.inc41:                                        ; preds = %if.then36, %for.cond31.preheader.for.inc41_crit_edge
  %29 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msglevel, align 4
  %and.1 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool35.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool35.not.1, label %for.inc41.for.inc41.1_crit_edge, label %if.then36.1

for.inc41.for.inc41.1_crit_edge:                  ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.1

if.then36.1:                                      ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netdev37, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %2, align 1
  %conv39.1 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 1, i32 noundef %conv39.1) #12
  br label %for.inc41.1

for.inc41.1:                                      ; preds = %if.then36.1, %for.inc41.for.inc41.1_crit_edge
  %35 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msglevel, align 4
  %and.2 = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool35.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool35.not.2, label %for.inc41.1.for.inc41.2_crit_edge, label %if.then36.2

for.inc41.1.for.inc41.2_crit_edge:                ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.2

if.then36.2:                                      ; preds = %for.inc41.1
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev37, align 4
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %3, align 2
  %conv39.2 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %38, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 2, i32 noundef %conv39.2) #12
  br label %for.inc41.2

for.inc41.2:                                      ; preds = %if.then36.2, %for.inc41.1.for.inc41.2_crit_edge
  %41 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msglevel, align 4
  %and.3 = and i32 %42, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool35.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool35.not.3, label %for.inc41.2.for.inc41.3_crit_edge, label %if.then36.3

for.inc41.2.for.inc41.3_crit_edge:                ; preds = %for.inc41.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.3

if.then36.3:                                      ; preds = %for.inc41.2
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netdev37, align 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %4, align 1
  %conv39.3 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %44, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 3, i32 noundef %conv39.3) #12
  br label %for.inc41.3

for.inc41.3:                                      ; preds = %if.then36.3, %for.inc41.2.for.inc41.3_crit_edge
  %47 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msglevel, align 4
  %and.4 = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool35.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool35.not.4, label %for.inc41.3.for.inc41.4_crit_edge, label %if.then36.4

for.inc41.3.for.inc41.4_crit_edge:                ; preds = %for.inc41.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.4

if.then36.4:                                      ; preds = %for.inc41.3
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %netdev37, align 4
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %5, align 4
  %conv39.4 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %50, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 4, i32 noundef %conv39.4) #12
  br label %for.inc41.4

for.inc41.4:                                      ; preds = %if.then36.4, %for.inc41.3.for.inc41.4_crit_edge
  %53 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msglevel, align 4
  %and.5 = and i32 %54, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool35.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool35.not.5, label %for.inc41.4.for.inc41.5_crit_edge, label %if.then36.5

for.inc41.4.for.inc41.5_crit_edge:                ; preds = %for.inc41.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.5

if.then36.5:                                      ; preds = %for.inc41.4
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev37, align 4
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %6, align 1
  %conv39.5 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 5, i32 noundef %conv39.5) #12
  br label %for.inc41.5

for.inc41.5:                                      ; preds = %if.then36.5, %for.inc41.4.for.inc41.5_crit_edge
  %59 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msglevel, align 4
  %and.6 = and i32 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool35.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool35.not.6, label %for.inc41.5.for.inc41.6_crit_edge, label %if.then36.6

for.inc41.5.for.inc41.6_crit_edge:                ; preds = %for.inc41.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.6

if.then36.6:                                      ; preds = %for.inc41.5
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %netdev37, align 4
  %63 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %7, align 2
  %conv39.6 = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 6, i32 noundef %conv39.6) #12
  br label %for.inc41.6

for.inc41.6:                                      ; preds = %if.then36.6, %for.inc41.5.for.inc41.6_crit_edge
  %65 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msglevel, align 4
  %and.7 = and i32 %66, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool35.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool35.not.7, label %for.inc41.6.for.inc41.7_crit_edge, label %if.then36.7

for.inc41.6.for.inc41.7_crit_edge:                ; preds = %for.inc41.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc41.7

if.then36.7:                                      ; preds = %for.inc41.6
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %netdev37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %netdev37, align 4
  %69 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %8, align 1
  %conv39.7 = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %68, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setmaxrate, i32 noundef 7, i32 noundef %conv39.7) #12
  br label %for.inc41.7

for.inc41.7:                                      ; preds = %if.then36.7, %for.inc41.6.for.inc41.7_crit_edge
  %call46 = call i32 @mlx5_modify_port_ets_rate_limit(ptr noundef %1, ptr noundef nonnull %max_bw_value, ptr noundef nonnull %max_bw_unit) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_bw_unit) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_bw_value) #9
  ret i32 %call46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_getpfc(ptr nocapture noundef readonly %dev, ptr noundef %pfc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %call2 = tail call i32 @mlx5_max_tc(ptr noundef %1) #9
  %2 = trunc i32 %call2 to i8
  %conv = add i8 %2, 1
  %3 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %pfc, align 8
  %add.ptr = getelementptr i8, ptr %dev, i32 14232
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr, align 8
  %arrayidx4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 0
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx4, align 8
  %add.ptr8 = getelementptr i8, ptr %dev, i32 14216
  %7 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr8, align 8
  %arrayidx9 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 0
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %arrayidx9, align 8
  %add.ptr.1 = getelementptr i8, ptr %dev, i32 14488
  %10 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr.1, align 8
  %arrayidx4.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %arrayidx4.1, align 8
  %add.ptr8.1 = getelementptr i8, ptr %dev, i32 14472
  %13 = ptrtoint ptr %add.ptr8.1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %add.ptr8.1, align 8
  %arrayidx9.1 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx9.1, align 8
  %add.ptr.2 = getelementptr i8, ptr %dev, i32 14744
  %16 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.2, align 8
  %arrayidx4.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %arrayidx4.2, align 8
  %add.ptr8.2 = getelementptr i8, ptr %dev, i32 14728
  %19 = ptrtoint ptr %add.ptr8.2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr8.2, align 8
  %arrayidx9.2 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %arrayidx9.2, align 8
  %add.ptr.3 = getelementptr i8, ptr %dev, i32 15000
  %22 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.3, align 8
  %arrayidx4.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx4.3, align 8
  %add.ptr8.3 = getelementptr i8, ptr %dev, i32 14984
  %25 = ptrtoint ptr %add.ptr8.3 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %add.ptr8.3, align 8
  %arrayidx9.3 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx9.3, align 8
  %add.ptr.4 = getelementptr i8, ptr %dev, i32 15256
  %28 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.4, align 8
  %arrayidx4.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %arrayidx4.4, align 8
  %add.ptr8.4 = getelementptr i8, ptr %dev, i32 15240
  %31 = ptrtoint ptr %add.ptr8.4 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr8.4, align 8
  %arrayidx9.4 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 4
  %33 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %arrayidx9.4, align 8
  %add.ptr.5 = getelementptr i8, ptr %dev, i32 15512
  %34 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.5, align 8
  %arrayidx4.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 5
  %36 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx4.5, align 8
  %add.ptr8.5 = getelementptr i8, ptr %dev, i32 15496
  %37 = ptrtoint ptr %add.ptr8.5 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %add.ptr8.5, align 8
  %arrayidx9.5 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 5
  %39 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx9.5, align 8
  %add.ptr.6 = getelementptr i8, ptr %dev, i32 15768
  %40 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr.6, align 8
  %arrayidx4.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 6
  %42 = ptrtoint ptr %arrayidx4.6 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %arrayidx4.6, align 8
  %add.ptr8.6 = getelementptr i8, ptr %dev, i32 15752
  %43 = ptrtoint ptr %add.ptr8.6 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %add.ptr8.6, align 8
  %arrayidx9.6 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 6
  %45 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %arrayidx9.6, align 8
  %add.ptr.7 = getelementptr i8, ptr %dev, i32 16024
  %46 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.7, align 8
  %arrayidx4.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 4, i32 7
  %48 = ptrtoint ptr %arrayidx4.7 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx4.7, align 8
  %add.ptr8.7 = getelementptr i8, ptr %dev, i32 16008
  %49 = ptrtoint ptr %add.ptr8.7 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr8.7, align 8
  %arrayidx9.7 = getelementptr %struct.ieee_pfc, ptr %pfc, i32 0, i32 5, i32 7
  %51 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx9.7, align 8
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %52 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %caps, align 8
  %add.ptr12 = getelementptr i32, ptr %53, i32 13
  %54 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr12, align 4
  %56 = and i32 %55, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not = icmp eq i32 %56, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add.ptr15 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %57 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr15, align 4
  %59 = and i32 %58, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %59)
  %.not = icmp eq i32 %59, 6144
  br i1 %.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %cable_len = getelementptr i8, ptr %dev, i32 30224
  %60 = ptrtoint ptr %cable_len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cable_len, align 8
  %conv27 = trunc i32 %61 to i16
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %62 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv27, ptr %delay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %call28 = tail call i32 @mlx5_query_port_pfc(ptr noundef %1, ptr noundef %pfc_en, ptr noundef null) #9
  ret i32 %call28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_setpfc(ptr noundef %dev, ptr nocapture noundef readonly %pfc) #2 align 64 {
entry:
  %pfc_new = alloca %struct.ieee_pfc, align 8
  %curr_pfc_en = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mdev1 = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %cable_len = getelementptr i8, ptr %dev, i32 30224
  %2 = ptrtoint ptr %cable_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cable_len, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pfc_new) #9
  %4 = call ptr @memset(ptr %pfc_new, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %curr_pfc_en) #9
  %5 = ptrtoint ptr %curr_pfc_en to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %curr_pfc_en, align 1, !annotation !70
  %call2 = call i32 @mlx5_query_port_pfc(ptr noundef %1, ptr noundef nonnull %curr_pfc_en, ptr noundef null) #9
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %6 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc_en, align 1
  %8 = ptrtoint ptr %curr_pfc_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %curr_pfc_en, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp.not = icmp eq i8 %7, %9
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  %call7 = call i32 @mlx5_set_port_pfc(ptr noundef %1, i8 noundef zeroext %7, i8 noundef zeroext %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @mlx5_toggle_port_link(ptr noundef %1) #9
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %changed.0 = phi i32 [ 2, %if.end ], [ 0, %entry.if.end9_crit_edge ]
  %delay = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 3
  %10 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %delay, align 4
  %conv10 = zext i16 %11 to i32
  %12 = add i16 %11, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 999, i16 %12)
  %13 = icmp ult i16 %12, 999
  br i1 %13, label %land.lhs.true16, label %if.end9.if.end29_crit_edge

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

land.lhs.true16:                                  ; preds = %if.end9
  %14 = ptrtoint ptr %cable_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cable_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv10)
  %cmp21.not = icmp eq i32 %15, %conv10
  br i1 %cmp21.not, label %land.lhs.true16.if.end29_crit_edge, label %if.then23

land.lhs.true16.if.end29_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then23:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %cable_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv10, ptr %cable_len, align 8
  %or28 = or i32 %changed.0, 1
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %land.lhs.true16.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %changed.1 = phi i32 [ %or28, %if.then23 ], [ %changed.0, %land.lhs.true16.if.end29_crit_edge ], [ %changed.0, %if.end9.if.end29_crit_edge ]
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %18, i32 13
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %21 = and i32 %20, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool30.not = icmp eq i32 %21, 0
  br i1 %tobool30.not, label %if.end29.do.body_crit_edge, label %land.lhs.true31

if.end29.do.body_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true31:                                  ; preds = %if.end29
  %add.ptr34 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %22 = ptrtoint ptr %add.ptr34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr34, align 4
  %24 = and i32 %23, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %24)
  %.not = icmp eq i32 %24, 6144
  br i1 %.not, label %if.then46, label %land.lhs.true31.do.body_crit_edge

land.lhs.true31.do.body_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then46:                                        ; preds = %land.lhs.true31
  %and47 = and i32 %changed.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %curr_pfc_en.pfc_en = select i1 %tobool48.not, ptr %curr_pfc_en, ptr %pfc_en
  %25 = ptrtoint ptr %curr_pfc_en.pfc_en to i32
  call void @__asan_load1_noabort(i32 %25)
  %cond.in113 = load i8, ptr %curr_pfc_en.pfc_en, align 1
  %pfc_en53 = getelementptr inbounds %struct.ieee_pfc, ptr %pfc_new, i32 0, i32 1
  %26 = ptrtoint ptr %pfc_en53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cond.in113, ptr %pfc_en53, align 1
  %manual_buffer = getelementptr i8, ptr %dev, i32 30223
  %27 = ptrtoint ptr %manual_buffer to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %manual_buffer, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool55.not = icmp eq i8 %28, 0
  br i1 %tobool55.not, label %if.then46.do.body_crit_edge, label %if.end58

if.then46.do.body_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end58:                                         ; preds = %if.then46
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %29 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mtu, align 4
  %call57 = call i32 @mlx5e_port_manual_buffer_config(ptr noundef %add.ptr.i, i32 noundef %changed.1, i32 noundef %30, ptr noundef nonnull %pfc_new, ptr noundef null, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  br i1 %tobool59.not, label %if.end58.do.body_crit_edge, label %land.lhs.true60

if.end58.do.body_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

land.lhs.true60:                                  ; preds = %if.end58
  %and61 = and i32 %changed.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %land.lhs.true60.cleanup_crit_edge, label %if.then63

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %cable_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %3, ptr %cable_len, align 8
  br label %cleanup

do.body:                                          ; preds = %if.end58.do.body_crit_edge, %if.then46.do.body_crit_edge, %land.lhs.true31.do.body_crit_edge, %if.end29.do.body_crit_edge
  %msglevel = getelementptr i8, ptr %dev, i32 2412
  %32 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msglevel, align 4
  %and70 = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %do.body.cleanup_crit_edge, label %if.then72

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then72:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %netdev = getelementptr i8, ptr %dev, i32 11332
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %36 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pfc_en, align 1
  %conv74 = zext i8 %37 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setpfc, i32 noundef %conv74) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %do.body.cleanup_crit_edge, %if.then63, %land.lhs.true60.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %if.then72 ], [ %call57, %if.then63 ], [ %call57, %land.lhs.true60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %curr_pfc_en) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pfc_new) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_setapp(ptr noundef %dev, ptr noundef %app) #2 align 64 {
entry:
  %temp = alloca %struct.dcb_app, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %0 = getelementptr inbounds %struct.dcb_app, ptr %temp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dcb_app, ptr %temp, i32 0, i32 2
  %mdev = getelementptr i8, ptr %dev, i32 11328
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %tobool.not = icmp sgt i32 %7, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr7 = getelementptr i32, ptr %5, i32 11
  %8 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr7, align 4
  %10 = and i32 %9, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %add.ptr14 = getelementptr %struct.mlx5_core_dev, ptr %3, i32 0, i32 8, i32 4, i32 5
  %11 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr14, align 4
  %13 = and i32 %12, 524292
  call void @__sanitizer_cov_trace_const_cmp4(i32 524292, i32 %13)
  %.not = icmp eq i32 %13, 524292
  br i1 %.not, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %14 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp.not = icmp eq i8 %15, 5
  br i1 %cmp.not, label %lor.lhs.false28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.end
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %17)
  %cmp30 = icmp ugt i16 %17, 63
  br i1 %cmp30, label %lor.lhs.false28.cleanup_crit_edge, label %if.end33

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false28
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %temp, align 2
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %17, ptr %1, align 2
  %dcbx_dp = getelementptr i8, ptr %dev, i32 2344
  %idxprom = zext i16 %17 to i32
  %arrayidx38 = getelementptr [64 x i8], ptr %dcbx_dp, i32 0, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38, align 1
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %0, align 1
  %dscp_app_cnt = getelementptr i8, ptr %dev, i32 30213
  %23 = ptrtoint ptr %dscp_app_cnt to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dscp_app_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool39.not = icmp eq i8 %24, 0
  br i1 %tobool39.not, label %if.then40, label %if.end33.if.end45_crit_edge

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then40:                                        ; preds = %if.end33
  %call41 = tail call fastcc i32 @mlx5e_set_trust_state(ptr noundef %add.ptr.i, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end45_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %if.end33.if.end45_crit_edge
  %priority46 = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %25 = ptrtoint ptr %priority46 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %priority46, align 1
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %protocol, align 2
  %idxprom51 = zext i16 %28 to i32
  %arrayidx52 = getelementptr [64 x i8], ptr %dcbx_dp, i32 0, i32 %idxprom51
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx52, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %30)
  %cmp54.not = icmp eq i8 %26, %30
  br i1 %cmp54.not, label %if.end45.if.end64_crit_edge, label %if.then56

if.end45.if.end64_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then56:                                        ; preds = %if.end45
  %conv58 = trunc i16 %28 to i8
  %31 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev, align 64
  %call.i = tail call i32 @mlx5_set_dscp2prio(ptr noundef %32, i8 noundef zeroext %conv58, i8 noundef zeroext %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlx5e_set_dscp2prio.exit.thread, label %fw_err

mlx5e_set_dscp2prio.exit.thread:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %conv58.mask = and i16 %28, 255
  %idxprom.i = zext i16 %conv58.mask to i32
  %arrayidx.i = getelementptr [64 x i8], ptr %dcbx_dp, i32 0, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %26, ptr %arrayidx.i, align 1
  br label %if.end64

if.end64:                                         ; preds = %mlx5e_set_dscp2prio.exit.thread, %if.end45.if.end64_crit_edge
  %call65 = call i32 @dcb_ieee_delapp(ptr noundef %dev, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  %call69 = call i32 @dcb_ieee_setapp(ptr noundef %dev, ptr noundef %app) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp ne i32 %call69, 0
  %brmerge = select i1 %tobool70.not, i1 true, i1 %tobool66.not
  br i1 %brmerge, label %if.end64.cleanup_crit_edge, label %if.then74

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %dscp_app_cnt to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dscp_app_cnt, align 1
  %inc = add i8 %35, 1
  store i8 %inc, ptr %dscp_app_cnt, align 1
  br label %cleanup

fw_err:                                           ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %call78 = tail call fastcc i32 @mlx5e_set_trust_state(ptr noundef %add.ptr.i, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %fw_err, %if.then74, %if.end64.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %fw_err ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false28.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call41, %if.then40.cleanup_crit_edge ], [ %call69, %if.end64.cleanup_crit_edge ], [ 0, %if.then74 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_ieee_delapp(ptr noundef %dev, ptr noundef %app) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mdev = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
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
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %add.ptr7 = getelementptr i32, ptr %3, i32 11
  %6 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr7, align 4
  %8 = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %add.ptr14 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 4, i32 5
  %9 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr14, align 4
  %11 = and i32 %10, 524292
  call void @__sanitizer_cov_trace_const_cmp4(i32 524292, i32 %11)
  %.not = icmp eq i32 %11, 524292
  br i1 %.not, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %12 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %app, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %13)
  %cmp.not = icmp eq i8 %13, 5
  br i1 %cmp.not, label %lor.lhs.false28, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false28:                                  ; preds = %if.end
  %protocol = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 2
  %14 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol, align 2
  %conv29 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %15)
  %cmp30 = icmp ugt i16 %15, 63
  br i1 %cmp30, label %lor.lhs.false28.cleanup_crit_edge, label %if.end33

lor.lhs.false28.cleanup_crit_edge:                ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %lor.lhs.false28
  %dscp_app_cnt = getelementptr i8, ptr %dev, i32 30213
  %16 = ptrtoint ptr %dscp_app_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %dscp_app_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool34.not = icmp eq i8 %17, 0
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.end36

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end33
  %priority = getelementptr inbounds %struct.dcb_app, ptr %app, i32 0, i32 1
  %18 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %priority, align 1
  %dcbx_dp = getelementptr i8, ptr %dev, i32 2344
  %arrayidx39 = getelementptr [64 x i8], ptr %dcbx_dp, i32 0, i32 %conv29
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp41.not = icmp eq i8 %19, %21
  br i1 %cmp41.not, label %if.end44, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %call45 = tail call i32 @dcb_ieee_delapp(ptr noundef %dev, ptr noundef %app) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end44
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %protocol, align 2
  %conv50 = trunc i16 %23 to i8
  %24 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdev, align 64
  %call.i = tail call i32 @mlx5_set_dscp2prio(ptr noundef %25, i8 noundef zeroext %conv50, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end54, label %fw_err

if.end54:                                         ; preds = %if.end48
  %conv50.mask = and i16 %23, 255
  %idxprom.i = zext i16 %conv50.mask to i32
  %arrayidx.i = getelementptr [64 x i8], ptr %dcbx_dp, i32 0, i32 %idxprom.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx.i, align 1
  %27 = ptrtoint ptr %dscp_app_cnt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dscp_app_cnt, align 1
  %dec = add i8 %28, -1
  store i8 %dec, ptr %dscp_app_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool59.not = icmp eq i8 %dec, 0
  br i1 %tobool59.not, label %if.then60, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then60:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call fastcc i32 @mlx5e_set_trust_state(ptr noundef %add.ptr.i, i8 noundef zeroext 1)
  br label %cleanup

fw_err:                                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call fastcc i32 @mlx5e_set_trust_state(ptr noundef %add.ptr.i, i8 noundef zeroext 1)
  br label %cleanup

cleanup:                                          ; preds = %fw_err, %if.then60, %if.end54.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %lor.lhs.false28.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %fw_err ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false28.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %if.end33.cleanup_crit_edge ], [ -2, %if.end36.cleanup_crit_edge ], [ %call45, %if.end44.cleanup_crit_edge ], [ 0, %if.end54.cleanup_crit_edge ], [ %call61, %if.then60 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlx5e_dcbnl_getstate(ptr nocapture noundef readnone %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dcbnl_getpermhwaddr(ptr nocapture noundef readonly %netdev, ptr noundef %perm_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %perm_addr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = call ptr @memset(ptr %perm_addr, i32 255, i32 32)
  %mdev = getelementptr i8, ptr %netdev, i32 11328
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %call1 = tail call i32 @mlx5_query_mac_address(ptr noundef %2, ptr noundef nonnull %perm_addr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dcbnl_setpgtccfgtx(ptr noundef %netdev, i32 noundef %priority, i8 noundef zeroext %prio_type, i8 noundef zeroext %pgid, i8 noundef zeroext %bw_pct, i8 noundef zeroext %up_map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %cmp = icmp sgt i32 %priority, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mlx5e_dcbnl_setpgtccfgtx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %pgid)
  %cmp2 = icmp ugt i8 %pgid, 7
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mlx5e_dcbnl_setpgtccfgtx) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.mlx5e_priv, ptr %add.ptr.i, i32 0, i32 41, i32 1, i32 1, i32 %priority
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %pgid, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dcbnl_setpgbwgcfgtx(ptr noundef %netdev, i32 noundef %pgid, i8 noundef zeroext %bw_pct) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mlx5e_dcbnl_setpgbwgcfgtx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cee_cfg1 = getelementptr i8, ptr %netdev, i32 30188
  %arrayidx = getelementptr [8 x i8], ptr %cee_cfg1, i32 0, i32 %pgid
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %bw_pct, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dcbnl_getpgtccfgtx(ptr noundef %netdev, i32 noundef %priority, ptr nocapture noundef writeonly %prio_type, ptr noundef %pgid, ptr nocapture noundef writeonly %bw_pct, ptr nocapture noundef writeonly %up_map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
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
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.mlx5e_dcbnl_getpgtccfgtx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %cmp = icmp sgt i32 %priority, 7
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mlx5e_dcbnl_getpgtccfgtx) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %prio_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %prio_type, align 1
  %8 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %bw_pct, align 1
  %9 = ptrtoint ptr %up_map to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %up_map, align 1
  %conv = trunc i32 %priority to i8
  %call5 = tail call i32 @mlx5_query_port_prio_tc(ptr noundef %1, i8 noundef zeroext %conv, ptr noundef %pgid) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pgid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pgid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dcbnl_getpgbwgcfgtx(ptr noundef %netdev, i32 noundef %pgid, ptr nocapture noundef writeonly %bw_pct) #2 align 64 {
entry:
  %ets = alloca %struct.ieee_ets, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %ets) #9
  %0 = call ptr @memset(ptr %ets, i32 255, i32 59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %pgid)
  %cmp = icmp sgt i32 %pgid, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mlx5e_dcbnl_getpgbwgcfgtx) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = call i32 @mlx5e_dcbnl_ieee_getets(ptr noundef %netdev, ptr noundef nonnull %ets)
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %pgid
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %3 = ptrtoint ptr %bw_pct to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %bw_pct, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %ets) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dcbnl_setpfccfg(ptr noundef %netdev, i32 noundef %priority, i8 noundef zeroext %setting) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %cmp = icmp sgt i32 %priority, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mlx5e_dcbnl_setpfccfg) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %setting)
  %cmp2 = icmp ugt i8 %setting, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %setting)
  %tobool = icmp ne i8 %setting, 0
  %arrayidx = getelementptr %struct.mlx5e_priv, ptr %add.ptr.i, i32 0, i32 41, i32 1, i32 2, i32 %priority
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx5e_dcbnl_getpfccfg(ptr noundef %netdev, i32 noundef %priority, ptr noundef writeonly %setting) #2 align 64 {
entry:
  %pfc.i = alloca %struct.ieee_pfc, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %priority)
  %cmp = icmp sgt i32 %priority, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mlx5e_dcbnl_getpfccfg) #12
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %setting, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pfc.i) #9
  %0 = call ptr @memset(ptr %pfc.i, i32 255, i32 136)
  %call.i = call i32 @mlx5e_dcbnl_ieee_getpfc(ptr noundef %netdev, ptr noundef nonnull %pfc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end2.mlx5e_dcbnl_get_priority_pfc.exit_crit_edge

if.end2.mlx5e_dcbnl_get_priority_pfc.exit_crit_edge: ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_dcbnl_get_priority_pfc.exit

if.else.i:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  %pfc_en.i = getelementptr inbounds %struct.ieee_pfc, ptr %pfc.i, i32 0, i32 1
  %1 = ptrtoint ptr %pfc_en.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pfc_en.i, align 1
  %conv.i = zext i8 %2 to i32
  %shr.i = lshr i32 %conv.i, %priority
  %3 = trunc i32 %shr.i to i8
  %conv1.i = and i8 %3, 1
  br label %mlx5e_dcbnl_get_priority_pfc.exit

mlx5e_dcbnl_get_priority_pfc.exit:                ; preds = %if.else.i, %if.end2.mlx5e_dcbnl_get_priority_pfc.exit_crit_edge
  %storemerge.i = phi i8 [ %conv1.i, %if.else.i ], [ 0, %if.end2.mlx5e_dcbnl_get_priority_pfc.exit_crit_edge ]
  %4 = ptrtoint ptr %setting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %storemerge.i, ptr %setting, align 1
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pfc.i) #9
  br label %return

return:                                           ; preds = %mlx5e_dcbnl_get_priority_pfc.exit, %if.end.return_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx5e_dcbnl_setall(ptr noundef %netdev) #2 align 64 {
entry:
  %ets = alloca %struct.ieee_ets, align 1
  %pfc = alloca %struct.ieee_pfc, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %cee_cfg1 = getelementptr i8, ptr %netdev, i32 30188
  %mdev2 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev2, align 64
  call void @llvm.lifetime.start.p0(i64 59, ptr nonnull %ets) #9
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pfc) #9
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 13
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %7 = call ptr @memset(ptr %ets, i32 0, i32 59)
  %8 = call ptr @memset(ptr %pfc, i32 0, i32 136)
  %ets_cap = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 1
  %9 = ptrtoint ptr %ets_cap to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %ets_cap, align 1
  %msglevel = getelementptr i8, ptr %netdev, i32 2412
  %netdev14 = getelementptr i8, ptr %netdev, i32 11332
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.090 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr [8 x i8], ptr %cee_cfg1, i32 0, i32 %i.090
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.090
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx4, align 1
  %arrayidx7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 4, i32 %i.090
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %11, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.090
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr %struct.mlx5e_priv, ptr %add.ptr.i, i32 0, i32 41, i32 1, i32 1, i32 %i.090
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.090
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx10, align 1
  %18 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msglevel, align 4
  %and11 = and i32 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.then13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %netdev14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %netdev14, align 4
  %conv = zext i8 %11 to i32
  %conv22 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.mlx5e_dcbnl_setall, i32 noundef %i.090, i32 noundef %conv, i32 noundef %conv, i32 noundef %conv22) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call24 = call fastcc i32 @mlx5e_dbcnl_validate_ets(ptr noundef %netdev, ptr noundef nonnull %ets, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27:                                         ; preds = %for.end
  %call28 = call fastcc i32 @mlx5e_dcbnl_ieee_setets_core(ptr noundef %add.ptr.i, ptr noundef nonnull %ets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.mlx5e_dcbnl_setall, i32 noundef %call28) #12
  br label %out

if.end31:                                         ; preds = %if.end27
  %call32 = call i32 @mlx5_max_tc(ptr noundef %1) #9
  %22 = trunc i32 %call32 to i8
  %conv33 = add i8 %22, 1
  %23 = ptrtoint ptr %pfc to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv33, ptr %pfc, align 8
  %pfc_enable = getelementptr i8, ptr %netdev, i32 30212
  %24 = ptrtoint ptr %pfc_enable to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pfc_enable, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not = icmp eq i8 %25, 0
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  br i1 %tobool34.not, label %if.end31.if.end49_crit_edge, label %for.cond36.preheader

if.end31.if.end49_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

for.cond36.preheader:                             ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %26)
  %pfc_en43.promoted = load i8, ptr %pfc_en, align 1
  %arrayidx40 = getelementptr i8, ptr %netdev, i32 30204
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx40, align 1, !range !71
  %conv45 = or i8 %pfc_en43.promoted, %28
  %arrayidx40.1 = getelementptr i8, ptr %netdev, i32 30205
  %29 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx40.1, align 1, !range !71
  %31 = shl nuw nsw i8 %30, 1
  %conv45.1 = or i8 %conv45, %31
  %arrayidx40.2 = getelementptr i8, ptr %netdev, i32 30206
  %32 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40.2, align 1, !range !71
  %34 = shl nuw nsw i8 %33, 2
  %conv45.2 = or i8 %conv45.1, %34
  %arrayidx40.3 = getelementptr i8, ptr %netdev, i32 30207
  %35 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx40.3, align 1, !range !71
  %37 = shl nuw nsw i8 %36, 3
  %conv45.3 = or i8 %conv45.2, %37
  %arrayidx40.4 = getelementptr i8, ptr %netdev, i32 30208
  %38 = ptrtoint ptr %arrayidx40.4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx40.4, align 1, !range !71
  %40 = shl nuw nsw i8 %39, 4
  %conv45.4 = or i8 %conv45.3, %40
  %arrayidx40.5 = getelementptr i8, ptr %netdev, i32 30209
  %41 = ptrtoint ptr %arrayidx40.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx40.5, align 1, !range !71
  %43 = shl nuw nsw i8 %42, 5
  %conv45.5 = or i8 %conv45.4, %43
  %arrayidx40.6 = getelementptr i8, ptr %netdev, i32 30210
  %44 = ptrtoint ptr %arrayidx40.6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx40.6, align 1, !range !71
  %46 = shl nuw nsw i8 %45, 6
  %conv45.6 = or i8 %conv45.5, %46
  %arrayidx40.7 = getelementptr i8, ptr %netdev, i32 30211
  %47 = ptrtoint ptr %arrayidx40.7 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx40.7, align 1, !range !71
  %49 = shl nuw i8 %48, 7
  %conv45.7 = or i8 %conv45.6, %49
  br label %if.end49

if.end49:                                         ; preds = %for.cond36.preheader, %if.end31.if.end49_crit_edge
  %conv45.7.sink = phi i8 [ %conv45.7, %for.cond36.preheader ], [ 0, %if.end31.if.end49_crit_edge ]
  %50 = ptrtoint ptr %pfc_en to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv45.7.sink, ptr %pfc_en, align 1
  %call50 = call i32 @mlx5e_dcbnl_ieee_setpfc(ptr noundef %netdev, ptr noundef nonnull %pfc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.out_crit_edge, label %if.then52

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.mlx5e_dcbnl_setall, i32 noundef %call50) #12
  br label %out

out:                                              ; preds = %if.then52, %if.end49.out_crit_edge, %if.then30, %for.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call24, %for.end.out_crit_edge ], [ -95, %if.then30 ], [ -95, %if.then52 ], [ 0, %if.end49.out_crit_edge ], [ -95, %entry.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool54.not = icmp ne i32 %err.0, 0
  %conv55 = zext i1 %tobool54.not to i8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pfc) #9
  call void @llvm.lifetime.end.p0(i64 59, ptr nonnull %ets) #9
  ret i8 %conv55
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx5e_dcbnl_getcap(ptr nocapture noundef readonly %netdev, i32 noundef %capid, ptr nocapture noundef writeonly %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  %2 = zext i32 %capid to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %capid, label %sw.default [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge27
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 7, label %sw.bb10
    i32 8, label %sw.bb11
    i32 9, label %sw.bb12
  ]

entry.sw.epilog_crit_edge27:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @mlx5_max_tc(ptr noundef %1) #9
  %shl = shl nuw i32 1, %call5
  %conv = trunc i32 %shl to i8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 @mlx5_max_tc(ptr noundef %1) #9
  %shl8 = shl nuw i32 1, %call7
  %conv9 = trunc i32 %shl8 to i8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cap13 = getelementptr i8, ptr %netdev, i32 30222
  %3 = ptrtoint ptr %cap13 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cap13, align 2
  %5 = or i8 %4, 12
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge27
  %.sink = phi i8 [ 0, %sw.default ], [ %5, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %sw.bb10 ], [ %conv9, %sw.bb6 ], [ %conv, %sw.bb4 ], [ 0, %sw.bb3 ], [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge27 ]
  %rval.0 = phi i8 [ 1, %sw.default ], [ 0, %sw.bb12 ], [ 0, %sw.bb11 ], [ 0, %sw.bb10 ], [ 0, %sw.bb6 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge27 ]
  %6 = ptrtoint ptr %cap to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %.sink, ptr %cap, align 1
  ret i8 %rval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_getnumtcs(ptr nocapture noundef readonly %netdev, i32 noundef %tcs_id, ptr nocapture noundef writeonly %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %tcs_id, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mdev1 = getelementptr i8, ptr %netdev, i32 11328
  %1 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev1, align 64
  %call2 = tail call i32 @mlx5_max_tc(ptr noundef %2) #9
  %3 = trunc i32 %call2 to i8
  %conv = add i8 %3, 1
  %4 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %num, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx5e_dcbnl_getpfcstate(ptr nocapture noundef readonly %netdev) #2 align 64 {
entry:
  %pfc = alloca %struct.ieee_pfc, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pfc) #9
  %0 = call ptr @memset(ptr %pfc, i32 255, i32 136)
  %call = call i32 @mlx5e_dcbnl_ieee_getpfc(ptr noundef %netdev, ptr noundef nonnull %pfc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %pfc, i32 0, i32 1
  %1 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp ne i8 %2, 0
  %conv2 = zext i1 %tobool1.not to i8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pfc) #9
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlx5e_dcbnl_setpfcstate(ptr nocapture noundef writeonly %netdev, i8 noundef zeroext %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %state)
  %switch = icmp ult i8 %state, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool = icmp ne i8 %state, 0
  %pfc_enable = getelementptr i8, ptr %netdev, i32 30212
  %frombool = zext i1 %tobool to i8
  %0 = ptrtoint ptr %pfc_enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %pfc_enable, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @mlx5e_dcbnl_getdcbx(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cap = getelementptr i8, ptr %dev, i32 30222
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cap, align 2
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mlx5e_dcbnl_setdcbx(ptr nocapture noundef %dev, i8 noundef zeroext %mode) #2 align 64 {
entry:
  %param.i.i = alloca [16 x i32], align 4
  %param.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dcbx1 = getelementptr i8, ptr %dev, i32 30184
  %conv = zext i8 %mode to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %mode)
  %tobool2.not = icmp eq i8 %mode, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end
  %mdev = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 14
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  %6 = and i32 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dcbx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then5.cleanup_crit_edge, label %if.end9

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %param.i) #9
  %9 = call ptr @memset(ptr %param.i, i32 255, i32 64)
  %call.i = call i32 @mlx5_query_port_dcbx_param(ptr noundef %1, ptr noundef nonnull %param.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlx5e_dcbnl_set_dcbx_mode.exit, label %mlx5e_dcbnl_set_dcbx_mode.exit.thread

mlx5e_dcbnl_set_dcbx_mode.exit.thread:            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %param.i) #9
  br label %cleanup

mlx5e_dcbnl_set_dcbx_mode.exit:                   ; preds = %if.end9
  %add.ptr.i40 = getelementptr inbounds i32, ptr %param.i, i32 1
  %10 = ptrtoint ptr %add.ptr.i40 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i40, align 4
  %and.i = and i32 %11, -8
  %or.i = or i32 %and.i, 3
  store i32 %or.i, ptr %add.ptr.i40, align 4
  %add.ptr16.i = getelementptr inbounds i32, ptr %param.i, i32 2
  %12 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr16.i, align 4
  %or20.i = or i32 %13, -2147483648
  store i32 %or20.i, ptr %add.ptr16.i, align 4
  %call27.i = call i32 @mlx5_set_port_dcbx_param(ptr noundef %1, ptr noundef nonnull %param.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %param.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool11.not = icmp eq i32 %call27.i, 0
  br i1 %tobool11.not, label %if.then12, label %mlx5e_dcbnl_set_dcbx_mode.exit.cleanup_crit_edge

mlx5e_dcbnl_set_dcbx_mode.exit.cleanup_crit_edge: ; preds = %mlx5e_dcbnl_set_dcbx_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %mlx5e_dcbnl_set_dcbx_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %dcbx1, align 4
  %cap = getelementptr i8, ptr %dev, i32 30222
  %15 = ptrtoint ptr %cap to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cap, align 2
  %17 = and i8 %16, -2
  store i8 %17, ptr %cap, align 2
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %and20 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %mdev.i = getelementptr i8, ptr %dev, i32 11328
  %18 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdev.i, align 64
  %caps.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %caps.i, align 8
  %add.ptr.i42 = getelementptr i32, ptr %21, i32 14
  %22 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i42, align 4
  %24 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i43 = icmp eq i32 %24, 0
  br i1 %tobool.not.i43, label %if.end23.if.end28_crit_edge, label %if.end.i

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end.i:                                         ; preds = %if.end23
  %25 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dcbx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp eq i32 %26, 0
  br i1 %cmp.i, label %if.end.i.if.end28_crit_edge, label %if.end3.i

if.end.i.if.end28_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.end3.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %param.i.i) #9
  %27 = call ptr @memset(ptr %param.i.i, i32 255, i32 64)
  %call.i.i = call i32 @mlx5_query_port_dcbx_param(ptr noundef %19, ptr noundef nonnull %param.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %mlx5e_dcbnl_set_dcbx_mode.exit.i, label %mlx5e_dcbnl_set_dcbx_mode.exit.thread.i

mlx5e_dcbnl_set_dcbx_mode.exit.thread.i:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %param.i.i) #9
  br label %cleanup

mlx5e_dcbnl_set_dcbx_mode.exit.i:                 ; preds = %if.end3.i
  %add.ptr.i.i = getelementptr inbounds i32, ptr %param.i.i, i32 1
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %29, -8
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %call27.i.i = call i32 @mlx5_set_port_dcbx_param(ptr noundef %19, ptr noundef nonnull %param.i.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %param.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool4.not.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %mlx5e_dcbnl_set_dcbx_mode.exit.i.cleanup_crit_edge

mlx5e_dcbnl_set_dcbx_mode.exit.i.cleanup_crit_edge: ; preds = %mlx5e_dcbnl_set_dcbx_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %mlx5e_dcbnl_set_dcbx_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dcbx1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dcbx1, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end6.i, %if.end.i.if.end28_crit_edge, %if.end23.if.end28_crit_edge
  %cap29 = getelementptr i8, ptr %dev, i32 30222
  %31 = ptrtoint ptr %cap29 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %mode, ptr %cap29, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %mlx5e_dcbnl_set_dcbx_mode.exit.i.cleanup_crit_edge, %mlx5e_dcbnl_set_dcbx_mode.exit.thread.i, %if.end18.cleanup_crit_edge, %if.then12, %mlx5e_dcbnl_set_dcbx_mode.exit.cleanup_crit_edge, %mlx5e_dcbnl_set_dcbx_mode.exit.thread, %if.then5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ 0, %if.end28 ], [ 0, %if.then12 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then5.cleanup_crit_edge ], [ 1, %mlx5e_dcbnl_set_dcbx_mode.exit.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ 1, %mlx5e_dcbnl_set_dcbx_mode.exit.thread ], [ 1, %mlx5e_dcbnl_set_dcbx_mode.exit.thread.i ], [ 1, %mlx5e_dcbnl_set_dcbx_mode.exit.i.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_getbuffer(ptr noundef %dev, ptr nocapture noundef writeonly %dcb_buffer) #2 align 64 {
entry:
  %port_buffer = alloca %struct.mlx5e_port_buffer, align 4
  %buffer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mdev1 = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %port_buffer) #9
  %2 = call ptr @memset(ptr %port_buffer, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer) #9
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %buffer, align 8
  %4 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %5, i32 13
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %8 = and i32 %7, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %add.ptr4 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr4, align 4
  %11 = and i32 %10, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %11)
  %.not = icmp eq i32 %11, 6144
  br i1 %.not, label %if.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  %call17 = call i32 @mlx5e_port_query_priority2buffer(ptr noundef %1, ptr noundef nonnull %buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %buffer, align 8
  %14 = ptrtoint ptr %dcb_buffer to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %dcb_buffer, align 1
  %call23 = call i32 @mlx5e_port_query_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull %port_buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %for.body29.preheader, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body29.preheader:                             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %arrayidx32 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx32, align 4
  %size.1 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 2
  %18 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size.1, align 4
  %arrayidx32.1 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx32.1, align 4
  %size.2 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 2
  %21 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.2, align 4
  %arrayidx32.2 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx32.2, align 4
  %size.3 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 2
  %24 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.3, align 4
  %arrayidx32.3 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx32.3, align 4
  %size.4 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 2
  %27 = ptrtoint ptr %size.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size.4, align 4
  %arrayidx32.4 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx32.4, align 4
  %size.5 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 2
  %30 = ptrtoint ptr %size.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.5, align 4
  %arrayidx32.5 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx32.5, align 4
  %size.6 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 2
  %33 = ptrtoint ptr %size.6 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size.6, align 4
  %arrayidx32.6 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx32.6, align 4
  %size.7 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 2
  %36 = ptrtoint ptr %size.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %size.7, align 4
  %arrayidx32.7 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 7
  %38 = ptrtoint ptr %arrayidx32.7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx32.7, align 4
  %39 = ptrtoint ptr %port_buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port_buffer, align 4
  %total_size = getelementptr inbounds %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 2
  %41 = ptrtoint ptr %total_size to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %total_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.body29.preheader, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body29.preheader ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call17, %if.end.cleanup_crit_edge ], [ %call23, %for.body.preheader.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %port_buffer) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_dcbnl_setbuffer(ptr noundef %dev, ptr noundef %dcb_buffer) #2 align 64 {
entry:
  %port_buffer = alloca %struct.mlx5e_port_buffer, align 4
  %old_prio2buffer = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mdev1 = getelementptr i8, ptr %dev, i32 11328
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %port_buffer) #9
  %2 = call ptr @memset(ptr %port_buffer, i32 255, i32 136)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %old_prio2buffer) #9
  %3 = getelementptr inbounds [8 x i8], ptr %old_prio2buffer, i32 0, i32 1
  %4 = getelementptr inbounds [8 x i8], ptr %old_prio2buffer, i32 0, i32 2
  %5 = getelementptr inbounds [8 x i8], ptr %old_prio2buffer, i32 0, i32 3
  %6 = getelementptr inbounds [8 x i8], ptr %old_prio2buffer, i32 0, i32 4
  %7 = getelementptr inbounds [8 x i8], ptr %old_prio2buffer, i32 0, i32 5
  %8 = getelementptr inbounds [8 x i8], ptr %old_prio2buffer, i32 0, i32 6
  %9 = getelementptr inbounds [8 x i8], ptr %old_prio2buffer, i32 0, i32 7
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %old_prio2buffer to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %old_prio2buffer, align 8
  %11 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %12, i32 13
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 4
  %15 = and i32 %14, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %add.ptr4 = getelementptr %struct.mlx5_core_dev, ptr %1, i32 0, i32 8, i32 1, i32 5
  %16 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr4, align 4
  %18 = and i32 %17, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144, i32 %18)
  %.not = icmp eq i32 %18, 6144
  br i1 %.not, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %land.lhs.true.do.body_crit_edge
  %i.0156 = phi i32 [ %inc, %for.inc.do.body_crit_edge ], [ 0, %land.lhs.true.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug636, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_dcbnl_setbuffer, %if.then20)) #9
          to label %for.inc [label %if.then20], !srcloc !72

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !57) #9
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %pid = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 68
  %25 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pid, align 8
  %arrayidx23 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 %i.0156
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug636, ptr noundef %20, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef 950, i32 noundef %26, i32 noundef %i.0156, i32 noundef %28) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %do.body
  %inc = add nuw nsw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.do.body28_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.do.body28_crit_edge:                      ; preds = %for.inc
  br label %do.body28

do.body28:                                        ; preds = %for.inc50.do.body28_crit_edge, %for.inc.do.body28_crit_edge
  %i.1158 = phi i32 [ %inc51, %for.inc50.do.body28_crit_edge ], [ 0, %for.inc.do.body28_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug637, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx5e_dcbnl_setbuffer, %if.then40)) #9
          to label %for.inc50 [label %if.then40], !srcloc !72

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !57) #9
  %and.i148 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i148 to ptr
  %task43 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task43, align 8
  %pid44 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 68
  %35 = ptrtoint ptr %pid44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pid44, align 8
  %arrayidx46 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 %i.1158
  %37 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx46, align 1
  %conv = zext i8 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug637, ptr noundef %30, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, i32 noundef 953, i32 noundef %36, i32 noundef %i.1158, i32 noundef %conv) #9
  br label %for.inc50

for.inc50:                                        ; preds = %if.then40, %do.body28
  %inc51 = add nuw nsw i32 %i.1158, 1
  %exitcond163.not = icmp eq i32 %inc51, 8
  br i1 %exitcond163.not, label %for.end52, label %for.inc50.do.body28_crit_edge

for.inc50.do.body28_crit_edge:                    ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body28

for.end52:                                        ; preds = %for.inc50
  %call54 = call i32 @mlx5e_port_query_priority2buffer(ptr noundef %1, ptr noundef nonnull %old_prio2buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.body61.preheader, label %for.end52.cleanup_crit_edge

for.end52.cleanup_crit_edge:                      ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body61.preheader:                             ; preds = %for.end52
  %39 = ptrtoint ptr %dcb_buffer to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dcb_buffer, align 1
  %41 = ptrtoint ptr %old_prio2buffer to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %old_prio2buffer, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %42)
  %cmp67.not = icmp eq i8 %40, %42
  br i1 %cmp67.not, label %for.cond58, label %for.body61.preheader.for.end75_crit_edge

for.body61.preheader.for.end75_crit_edge:         ; preds = %for.body61.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58:                                       ; preds = %for.body61.preheader
  %arrayidx63.1 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx63.1, align 1
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %46)
  %cmp67.not.1 = icmp eq i8 %44, %46
  br i1 %cmp67.not.1, label %for.cond58.1, label %for.cond58.for.end75_crit_edge

for.cond58.for.end75_crit_edge:                   ; preds = %for.cond58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58.1:                                     ; preds = %for.cond58
  %arrayidx63.2 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 2
  %47 = ptrtoint ptr %arrayidx63.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx63.2, align 1
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %4, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %48, i8 %50)
  %cmp67.not.2 = icmp eq i8 %48, %50
  br i1 %cmp67.not.2, label %for.cond58.2, label %for.cond58.1.for.end75_crit_edge

for.cond58.1.for.end75_crit_edge:                 ; preds = %for.cond58.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58.2:                                     ; preds = %for.cond58.1
  %arrayidx63.3 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx63.3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx63.3, align 1
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %54)
  %cmp67.not.3 = icmp eq i8 %52, %54
  br i1 %cmp67.not.3, label %for.cond58.3, label %for.cond58.2.for.end75_crit_edge

for.cond58.2.for.end75_crit_edge:                 ; preds = %for.cond58.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58.3:                                     ; preds = %for.cond58.2
  %arrayidx63.4 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx63.4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx63.4, align 1
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %58)
  %cmp67.not.4 = icmp eq i8 %56, %58
  br i1 %cmp67.not.4, label %for.cond58.4, label %for.cond58.3.for.end75_crit_edge

for.cond58.3.for.end75_crit_edge:                 ; preds = %for.cond58.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58.4:                                     ; preds = %for.cond58.3
  %arrayidx63.5 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx63.5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx63.5, align 1
  %61 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %62)
  %cmp67.not.5 = icmp eq i8 %60, %62
  br i1 %cmp67.not.5, label %for.cond58.5, label %for.cond58.4.for.end75_crit_edge

for.cond58.4.for.end75_crit_edge:                 ; preds = %for.cond58.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58.5:                                     ; preds = %for.cond58.4
  %arrayidx63.6 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 6
  %63 = ptrtoint ptr %arrayidx63.6 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx63.6, align 1
  %65 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %8, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp67.not.6 = icmp eq i8 %64, %66
  br i1 %cmp67.not.6, label %for.cond58.6, label %for.cond58.5.for.end75_crit_edge

for.cond58.5.for.end75_crit_edge:                 ; preds = %for.cond58.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58.6:                                     ; preds = %for.cond58.5
  %arrayidx63.7 = getelementptr [8 x i8], ptr %dcb_buffer, i32 0, i32 7
  %67 = ptrtoint ptr %arrayidx63.7 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx63.7, align 1
  %69 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %70)
  %cmp67.not.7 = icmp eq i8 %68, %70
  br i1 %cmp67.not.7, label %for.cond58.7, label %for.cond58.6.for.end75_crit_edge

for.cond58.6.for.end75_crit_edge:                 ; preds = %for.cond58.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.cond58.7:                                     ; preds = %for.cond58.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.end75:                                        ; preds = %for.cond58.7, %for.cond58.6.for.end75_crit_edge, %for.cond58.5.for.end75_crit_edge, %for.cond58.4.for.end75_crit_edge, %for.cond58.3.for.end75_crit_edge, %for.cond58.2.for.end75_crit_edge, %for.cond58.1.for.end75_crit_edge, %for.cond58.for.end75_crit_edge, %for.body61.preheader.for.end75_crit_edge
  %cmp59.lcssa = phi i1 [ true, %for.body61.preheader.for.end75_crit_edge ], [ true, %for.cond58.for.end75_crit_edge ], [ true, %for.cond58.1.for.end75_crit_edge ], [ true, %for.cond58.2.for.end75_crit_edge ], [ true, %for.cond58.3.for.end75_crit_edge ], [ true, %for.cond58.4.for.end75_crit_edge ], [ true, %for.cond58.5.for.end75_crit_edge ], [ true, %for.cond58.6.for.end75_crit_edge ], [ false, %for.cond58.7 ]
  %prio2buffer.0 = phi ptr [ %dcb_buffer, %for.body61.preheader.for.end75_crit_edge ], [ %dcb_buffer, %for.cond58.for.end75_crit_edge ], [ %dcb_buffer, %for.cond58.1.for.end75_crit_edge ], [ %dcb_buffer, %for.cond58.2.for.end75_crit_edge ], [ %dcb_buffer, %for.cond58.3.for.end75_crit_edge ], [ %dcb_buffer, %for.cond58.4.for.end75_crit_edge ], [ %dcb_buffer, %for.cond58.5.for.end75_crit_edge ], [ %dcb_buffer, %for.cond58.6.for.end75_crit_edge ], [ null, %for.cond58.7 ]
  %changed.0 = phi i32 [ 4, %for.body61.preheader.for.end75_crit_edge ], [ 4, %for.cond58.for.end75_crit_edge ], [ 4, %for.cond58.1.for.end75_crit_edge ], [ 4, %for.cond58.2.for.end75_crit_edge ], [ 4, %for.cond58.3.for.end75_crit_edge ], [ 4, %for.cond58.4.for.end75_crit_edge ], [ 4, %for.cond58.5.for.end75_crit_edge ], [ 4, %for.cond58.6.for.end75_crit_edge ], [ 0, %for.cond58.7 ]
  %call76 = call i32 @mlx5e_port_query_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull %port_buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %for.body83.preheader, label %for.end75.cleanup_crit_edge

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body83.preheader:                             ; preds = %for.end75
  %size = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 0, i32 2
  %71 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size, align 4
  %arrayidx86 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 0
  %73 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx86, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp87.not = icmp eq i32 %72, %74
  br i1 %cmp87.not, label %for.cond80, label %for.body83.preheader.for.end96.thread_crit_edge

for.body83.preheader.for.end96.thread_crit_edge:  ; preds = %for.body83.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80:                                       ; preds = %for.body83.preheader
  %size.1 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 1, i32 2
  %75 = ptrtoint ptr %size.1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.1, align 4
  %arrayidx86.1 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 1
  %77 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx86.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp87.not.1 = icmp eq i32 %76, %78
  br i1 %cmp87.not.1, label %for.cond80.1, label %for.cond80.for.end96.thread_crit_edge

for.cond80.for.end96.thread_crit_edge:            ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80.1:                                     ; preds = %for.cond80
  %size.2 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 2, i32 2
  %79 = ptrtoint ptr %size.2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %size.2, align 4
  %arrayidx86.2 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 2
  %81 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx86.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %82)
  %cmp87.not.2 = icmp eq i32 %80, %82
  br i1 %cmp87.not.2, label %for.cond80.2, label %for.cond80.1.for.end96.thread_crit_edge

for.cond80.1.for.end96.thread_crit_edge:          ; preds = %for.cond80.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80.2:                                     ; preds = %for.cond80.1
  %size.3 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 3, i32 2
  %83 = ptrtoint ptr %size.3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.3, align 4
  %arrayidx86.3 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 3
  %85 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx86.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp87.not.3 = icmp eq i32 %84, %86
  br i1 %cmp87.not.3, label %for.cond80.3, label %for.cond80.2.for.end96.thread_crit_edge

for.cond80.2.for.end96.thread_crit_edge:          ; preds = %for.cond80.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80.3:                                     ; preds = %for.cond80.2
  %size.4 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 4, i32 2
  %87 = ptrtoint ptr %size.4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %size.4, align 4
  %arrayidx86.4 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 4
  %89 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx86.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp87.not.4 = icmp eq i32 %88, %90
  br i1 %cmp87.not.4, label %for.cond80.4, label %for.cond80.3.for.end96.thread_crit_edge

for.cond80.3.for.end96.thread_crit_edge:          ; preds = %for.cond80.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80.4:                                     ; preds = %for.cond80.3
  %size.5 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 5, i32 2
  %91 = ptrtoint ptr %size.5 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %size.5, align 4
  %arrayidx86.5 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 5
  %93 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx86.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp87.not.5 = icmp eq i32 %92, %94
  br i1 %cmp87.not.5, label %for.cond80.5, label %for.cond80.4.for.end96.thread_crit_edge

for.cond80.4.for.end96.thread_crit_edge:          ; preds = %for.cond80.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80.5:                                     ; preds = %for.cond80.4
  %size.6 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 6, i32 2
  %95 = ptrtoint ptr %size.6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %size.6, align 4
  %arrayidx86.6 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 6
  %97 = ptrtoint ptr %arrayidx86.6 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx86.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp87.not.6 = icmp eq i32 %96, %98
  br i1 %cmp87.not.6, label %for.cond80.6, label %for.cond80.5.for.end96.thread_crit_edge

for.cond80.5.for.end96.thread_crit_edge:          ; preds = %for.cond80.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80.6:                                     ; preds = %for.cond80.5
  %size.7 = getelementptr inbounds %struct.mlx5e_port_buffer, ptr %port_buffer, i32 0, i32 2, i32 7, i32 2
  %99 = ptrtoint ptr %size.7 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size.7, align 4
  %arrayidx86.7 = getelementptr %struct.dcbnl_buffer, ptr %dcb_buffer, i32 0, i32 1, i32 7
  %101 = ptrtoint ptr %arrayidx86.7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx86.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %102)
  %cmp87.not.7 = icmp eq i32 %100, %102
  br i1 %cmp87.not.7, label %for.cond80.7, label %for.cond80.6.for.end96.thread_crit_edge

for.cond80.6.for.end96.thread_crit_edge:          ; preds = %for.cond80.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end96.thread

for.cond80.7:                                     ; preds = %for.cond80.6
  br i1 %cmp59.lcssa, label %for.cond80.7.if.end99_crit_edge, label %for.cond80.7.cleanup_crit_edge

for.cond80.7.cleanup_crit_edge:                   ; preds = %for.cond80.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond80.7.if.end99_crit_edge:                  ; preds = %for.cond80.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

for.end96.thread:                                 ; preds = %for.cond80.6.for.end96.thread_crit_edge, %for.cond80.5.for.end96.thread_crit_edge, %for.cond80.4.for.end96.thread_crit_edge, %for.cond80.3.for.end96.thread_crit_edge, %for.cond80.2.for.end96.thread_crit_edge, %for.cond80.1.for.end96.thread_crit_edge, %for.cond80.for.end96.thread_crit_edge, %for.body83.preheader.for.end96.thread_crit_edge
  %or90 = or i32 %changed.0, 8
  br label %if.end99

if.end99:                                         ; preds = %for.end96.thread, %for.cond80.7.if.end99_crit_edge
  %buffer_size.0155 = phi ptr [ %arrayidx86, %for.end96.thread ], [ null, %for.cond80.7.if.end99_crit_edge ]
  %changed.1154 = phi i32 [ %or90, %for.end96.thread ], [ %changed.0, %for.cond80.7.if.end99_crit_edge ]
  %manual_buffer = getelementptr i8, ptr %dev, i32 30223
  %103 = ptrtoint ptr %manual_buffer to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %manual_buffer, align 1
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %104 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %mtu, align 4
  %call100 = call i32 @mlx5e_port_manual_buffer_config(ptr noundef %add.ptr.i, i32 noundef %changed.1154, i32 noundef %105, ptr noundef null, ptr noundef %buffer_size.0155, ptr noundef %prio2buffer.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %for.cond80.7.cleanup_crit_edge, %for.end75.cleanup_crit_edge, %for.end52.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call100, %if.end99 ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %call54, %for.end52.cleanup_crit_edge ], [ %call76, %for.end75.cleanup_crit_edge ], [ 0, %for.cond80.7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %old_prio2buffer) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %port_buffer) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_max_tc(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_prio_tc(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_tc_group(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_tc_bw_alloc(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_dbcnl_validate_ets(ptr noundef %netdev, ptr nocapture noundef readonly %ets, i1 noundef zeroext %zero_sum_allowed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %1)
  %cmp1 = icmp ugt i8 %1, 7
  br i1 %cmp1, label %entry.if.then_crit_edge, label %for.cond

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %3)
  %cmp1.1 = icmp ugt i8 %3, 7
  br i1 %cmp1.1, label %for.cond.if.then_crit_edge, label %for.cond.1

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %cmp1.2 = icmp ugt i8 %5, 7
  br i1 %cmp1.2, label %for.cond.1.if.then_crit_edge, label %for.cond.2

for.cond.1.if.then_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp1.3 = icmp ugt i8 %7, 7
  br i1 %cmp1.3, label %for.cond.2.if.then_crit_edge, label %for.cond.3

for.cond.2.if.then_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %9)
  %cmp1.4 = icmp ugt i8 %9, 7
  br i1 %cmp1.4, label %for.cond.3.if.then_crit_edge, label %for.cond.4

for.cond.3.if.then_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %11)
  %cmp1.5 = icmp ugt i8 %11, 7
  br i1 %cmp1.5, label %for.cond.4.if.then_crit_edge, label %for.cond.5

for.cond.4.if.then_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %13)
  %cmp1.6 = icmp ugt i8 %13, 7
  br i1 %cmp1.6, label %for.cond.5.if.then_crit_edge, label %for.cond.6

for.cond.5.if.then_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp1.7 = icmp ugt i8 %15, 7
  br i1 %cmp1.7, label %for.cond.6.if.then_crit_edge, label %for.cond.7

for.cond.6.if.then_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 0
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp9 = icmp eq i8 %17, 2
  br i1 %cmp9, label %if.then11, label %for.cond.7.for.inc15_crit_edge

for.cond.7.for.inc15_crit_edge:                   ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15

if.then:                                          ; preds = %for.cond.6.if.then_crit_edge, %for.cond.5.if.then_crit_edge, %for.cond.4.if.then_crit_edge, %for.cond.3.if.then_crit_edge, %for.cond.2.if.then_crit_edge, %for.cond.1.if.then_crit_edge, %for.cond.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str, i32 noundef 8) #12
  br label %cleanup

if.then11:                                        ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  br label %for.inc15

for.inc15:                                        ; preds = %if.then11, %for.cond.7.for.inc15_crit_edge
  %bw_sum.1 = phi i32 [ %conv13, %if.then11 ], [ 0, %for.cond.7.for.inc15_crit_edge ]
  %arrayidx7.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp9.1 = icmp eq i8 %21, 2
  br i1 %cmp9.1, label %if.then11.1, label %for.inc15.for.inc15.1_crit_edge

for.inc15.for.inc15.1_crit_edge:                  ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.1

if.then11.1:                                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.1 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx12.1, align 1
  %conv13.1 = zext i8 %23 to i32
  %add.1 = add nuw nsw i32 %bw_sum.1, %conv13.1
  br label %for.inc15.1

for.inc15.1:                                      ; preds = %if.then11.1, %for.inc15.for.inc15.1_crit_edge
  %have_ets_tc.1.off0.1 = phi i1 [ true, %if.then11.1 ], [ %cmp9, %for.inc15.for.inc15.1_crit_edge ]
  %bw_sum.1.1 = phi i32 [ %add.1, %if.then11.1 ], [ %bw_sum.1, %for.inc15.for.inc15.1_crit_edge ]
  %arrayidx7.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 2
  %24 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx7.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp9.2 = icmp eq i8 %25, 2
  br i1 %cmp9.2, label %if.then11.2, label %for.inc15.1.for.inc15.2_crit_edge

for.inc15.1.for.inc15.2_crit_edge:                ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.2

if.then11.2:                                      ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.2 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12.2, align 1
  %conv13.2 = zext i8 %27 to i32
  %add.2 = add nuw nsw i32 %bw_sum.1.1, %conv13.2
  br label %for.inc15.2

for.inc15.2:                                      ; preds = %if.then11.2, %for.inc15.1.for.inc15.2_crit_edge
  %have_ets_tc.1.off0.2 = phi i1 [ true, %if.then11.2 ], [ %have_ets_tc.1.off0.1, %for.inc15.1.for.inc15.2_crit_edge ]
  %bw_sum.1.2 = phi i32 [ %add.2, %if.then11.2 ], [ %bw_sum.1.1, %for.inc15.1.for.inc15.2_crit_edge ]
  %arrayidx7.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx7.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp9.3 = icmp eq i8 %29, 2
  br i1 %cmp9.3, label %if.then11.3, label %for.inc15.2.for.inc15.3_crit_edge

for.inc15.2.for.inc15.3_crit_edge:                ; preds = %for.inc15.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.3

if.then11.3:                                      ; preds = %for.inc15.2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.3 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12.3, align 1
  %conv13.3 = zext i8 %31 to i32
  %add.3 = add nuw nsw i32 %bw_sum.1.2, %conv13.3
  br label %for.inc15.3

for.inc15.3:                                      ; preds = %if.then11.3, %for.inc15.2.for.inc15.3_crit_edge
  %have_ets_tc.1.off0.3 = phi i1 [ true, %if.then11.3 ], [ %have_ets_tc.1.off0.2, %for.inc15.2.for.inc15.3_crit_edge ]
  %bw_sum.1.3 = phi i32 [ %add.3, %if.then11.3 ], [ %bw_sum.1.2, %for.inc15.2.for.inc15.3_crit_edge ]
  %arrayidx7.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 4
  %32 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx7.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp9.4 = icmp eq i8 %33, 2
  br i1 %cmp9.4, label %if.then11.4, label %for.inc15.3.for.inc15.4_crit_edge

for.inc15.3.for.inc15.4_crit_edge:                ; preds = %for.inc15.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.4

if.then11.4:                                      ; preds = %for.inc15.3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.4 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx12.4, align 1
  %conv13.4 = zext i8 %35 to i32
  %add.4 = add nuw nsw i32 %bw_sum.1.3, %conv13.4
  br label %for.inc15.4

for.inc15.4:                                      ; preds = %if.then11.4, %for.inc15.3.for.inc15.4_crit_edge
  %have_ets_tc.1.off0.4 = phi i1 [ true, %if.then11.4 ], [ %have_ets_tc.1.off0.3, %for.inc15.3.for.inc15.4_crit_edge ]
  %bw_sum.1.4 = phi i32 [ %add.4, %if.then11.4 ], [ %bw_sum.1.3, %for.inc15.3.for.inc15.4_crit_edge ]
  %arrayidx7.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 5
  %36 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx7.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp9.5 = icmp eq i8 %37, 2
  br i1 %cmp9.5, label %if.then11.5, label %for.inc15.4.for.inc15.5_crit_edge

for.inc15.4.for.inc15.5_crit_edge:                ; preds = %for.inc15.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.5

if.then11.5:                                      ; preds = %for.inc15.4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.5 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx12.5, align 1
  %conv13.5 = zext i8 %39 to i32
  %add.5 = add nuw nsw i32 %bw_sum.1.4, %conv13.5
  br label %for.inc15.5

for.inc15.5:                                      ; preds = %if.then11.5, %for.inc15.4.for.inc15.5_crit_edge
  %have_ets_tc.1.off0.5 = phi i1 [ true, %if.then11.5 ], [ %have_ets_tc.1.off0.4, %for.inc15.4.for.inc15.5_crit_edge ]
  %bw_sum.1.5 = phi i32 [ %add.5, %if.then11.5 ], [ %bw_sum.1.4, %for.inc15.4.for.inc15.5_crit_edge ]
  %arrayidx7.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 6
  %40 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx7.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp9.6 = icmp eq i8 %41, 2
  br i1 %cmp9.6, label %if.then11.6, label %for.inc15.5.for.inc15.6_crit_edge

for.inc15.5.for.inc15.6_crit_edge:                ; preds = %for.inc15.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.6

if.then11.6:                                      ; preds = %for.inc15.5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.6 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 6
  %42 = ptrtoint ptr %arrayidx12.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx12.6, align 1
  %conv13.6 = zext i8 %43 to i32
  %add.6 = add nuw nsw i32 %bw_sum.1.5, %conv13.6
  br label %for.inc15.6

for.inc15.6:                                      ; preds = %if.then11.6, %for.inc15.5.for.inc15.6_crit_edge
  %have_ets_tc.1.off0.6 = phi i1 [ true, %if.then11.6 ], [ %have_ets_tc.1.off0.5, %for.inc15.5.for.inc15.6_crit_edge ]
  %bw_sum.1.6 = phi i32 [ %add.6, %if.then11.6 ], [ %bw_sum.1.5, %for.inc15.5.for.inc15.6_crit_edge ]
  %arrayidx7.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 7
  %44 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx7.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp9.7 = icmp eq i8 %45, 2
  br i1 %cmp9.7, label %if.then11.7, label %for.inc15.6.for.inc15.7_crit_edge

for.inc15.6.for.inc15.7_crit_edge:                ; preds = %for.inc15.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc15.7

if.then11.7:                                      ; preds = %for.inc15.6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12.7 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 7
  %46 = ptrtoint ptr %arrayidx12.7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx12.7, align 1
  %conv13.7 = zext i8 %47 to i32
  %add.7 = add nuw nsw i32 %bw_sum.1.6, %conv13.7
  br label %for.inc15.7

for.inc15.7:                                      ; preds = %if.then11.7, %for.inc15.6.for.inc15.7_crit_edge
  %have_ets_tc.1.off0.7 = phi i1 [ true, %if.then11.7 ], [ %have_ets_tc.1.off0.6, %for.inc15.6.for.inc15.7_crit_edge ]
  %bw_sum.1.7 = phi i32 [ %add.7, %if.then11.7 ], [ %bw_sum.1.6, %for.inc15.6.for.inc15.7_crit_edge ]
  %have_ets_tc.0.off0.not = xor i1 %have_ets_tc.1.off0.7, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %bw_sum.1.7)
  %cmp19.not = icmp eq i32 %bw_sum.1.7, 100
  %or.cond = select i1 %have_ets_tc.0.off0.not, i1 true, i1 %cmp19.not
  br i1 %or.cond, label %for.inc15.7.cleanup_crit_edge, label %if.then21

for.inc15.7.cleanup_crit_edge:                    ; preds = %for.inc15.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %for.inc15.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bw_sum.1.7)
  %tobool22.not = icmp eq i32 %bw_sum.1.7, 0
  %48 = and i1 %tobool22.not, %zero_sum_allowed
  br i1 %48, label %if.then21.cleanup_crit_edge, label %if.then26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then21.cleanup_crit_edge, %for.inc15.7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then21.cleanup_crit_edge ], [ -22, %if.then26 ], [ 0, %for.inc15.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_dcbnl_ieee_setets_core(ptr nocapture noundef %priv, ptr noundef %ets) unnamed_addr #2 align 64 {
entry:
  %tc_tx_bw = alloca [8 x i8], align 8
  %tc_group = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tc_tx_bw) #9
  %2 = ptrtoint ptr %tc_tx_bw to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %tc_tx_bw, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tc_group) #9
  %3 = ptrtoint ptr %tc_group to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %tc_group, align 8
  %call = tail call i32 @mlx5_max_tc(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not65.i = icmp slt i32 %call, 0
  br i1 %cmp.not65.i, label %entry.mlx5e_build_tc_tx_bw.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mlx5e_build_tc_tx_bw.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_build_tc_tx_bw.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.068.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %ets_zero_bw.0.off067.i = phi i1 [ %ets_zero_bw.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %entry.for.body.i_crit_edge ]
  %any_tc_mapped_to_ets.0.off066.i = phi i1 [ %any_tc_mapped_to_ets.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.068.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp1.i = icmp eq i8 %5, 2
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.068.i
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %spec.select.i = select i1 %tobool.not.i, i1 true, i1 %ets_zero_bw.0.off067.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %any_tc_mapped_to_ets.1.off0.i = phi i1 [ %any_tc_mapped_to_ets.0.off066.i, %for.body.i.for.inc.i_crit_edge ], [ true, %if.then.i ]
  %ets_zero_bw.1.off0.i = phi i1 [ %ets_zero_bw.0.off067.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then.i ]
  %inc.i = add i32 %i.068.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %call
  br i1 %cmp.not.i, label %for.body17.preheader.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body17.preheader.i:                           ; preds = %for.inc.i
  %inc12.i = select i1 %any_tc_mapped_to_ets.1.off0.i, i32 2, i32 1
  %spec.select64.i = zext i1 %any_tc_mapped_to_ets.1.off0.i to i32
  %strict_group.1.i = select i1 %ets_zero_bw.1.off0.i, i32 %inc12.i, i32 %spec.select64.i
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.inc37.i.for.body17.i_crit_edge, %for.body17.preheader.i
  %i.173.i = phi i32 [ %inc38.i, %for.inc37.i.for.body17.i_crit_edge ], [ 0, %for.body17.preheader.i ]
  %strict_group.272.i = phi i32 [ %strict_group.3.i, %for.inc37.i.for.body17.i_crit_edge ], [ %strict_group.1.i, %for.body17.preheader.i ]
  %arrayidx19.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.173.i
  %8 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %9, label %for.body17.i.for.inc37.i_crit_edge [
    i8 -1, label %sw.bb.i
    i8 0, label %sw.bb22.i
    i8 2, label %sw.bb26.i
  ]

for.body17.i.for.inc37.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37.i

sw.bb.i:                                          ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21.i = getelementptr i8, ptr %tc_group, i32 %i.173.i
  %11 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 7, ptr %arrayidx21.i, align 1
  br label %for.inc37.i

sw.bb22.i:                                        ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc23.i = add i32 %strict_group.272.i, 1
  %conv24.i = trunc i32 %strict_group.272.i to i8
  %arrayidx25.i = getelementptr i8, ptr %tc_group, i32 %i.173.i
  %12 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24.i, ptr %arrayidx25.i, align 1
  br label %for.inc37.i

sw.bb26.i:                                        ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx27.i = getelementptr i8, ptr %tc_group, i32 %i.173.i
  %arrayidx29.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.173.i
  %13 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool31.not.i = icmp ne i8 %14, 0
  %not.brmerge.i = select i1 %tobool31.not.i, i1 %ets_zero_bw.1.off0.i, i1 false
  %spec.store.select.i = zext i1 %not.brmerge.i to i8
  %15 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.store.select.i, ptr %arrayidx27.i, align 1
  br label %for.inc37.i

for.inc37.i:                                      ; preds = %sw.bb26.i, %sw.bb22.i, %sw.bb.i, %for.body17.i.for.inc37.i_crit_edge
  %strict_group.3.i = phi i32 [ %strict_group.272.i, %for.body17.i.for.inc37.i_crit_edge ], [ %inc23.i, %sw.bb22.i ], [ %strict_group.272.i, %sw.bb.i ], [ %strict_group.272.i, %sw.bb26.i ]
  %inc38.i = add i32 %i.173.i, 1
  %cmp15.not.i = icmp sgt i32 %inc38.i, %call
  br i1 %cmp15.not.i, label %for.inc37.i.for.body.i68_crit_edge, label %for.inc37.i.for.body17.i_crit_edge

for.inc37.i.for.body17.i_crit_edge:               ; preds = %for.inc37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17.i

for.inc37.i.for.body.i68_crit_edge:               ; preds = %for.inc37.i
  br label %for.body.i68

for.body.i68:                                     ; preds = %for.inc.i73.for.body.i68_crit_edge, %for.inc37.i.for.body.i68_crit_edge
  %i.05.i = phi i32 [ %inc5.i, %for.inc.i73.for.body.i68_crit_edge ], [ 0, %for.inc37.i.for.body.i68_crit_edge ]
  %num_ets_zero_bw.04.i = phi i32 [ %num_ets_zero_bw.1.i, %for.inc.i73.for.body.i68_crit_edge ], [ 0, %for.inc37.i.for.body.i68_crit_edge ]
  %last_ets_zero_bw_tc.03.i = phi i32 [ %last_ets_zero_bw_tc.1.i, %for.inc.i73.for.body.i68_crit_edge ], [ -1, %for.inc37.i.for.body.i68_crit_edge ]
  %arrayidx.i66 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.05.i
  %16 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp1.i67 = icmp eq i8 %17, 2
  br i1 %cmp1.i67, label %land.lhs.true.i, label %for.body.i68.for.inc.i73_crit_edge

for.body.i68.for.inc.i73_crit_edge:               ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i73

land.lhs.true.i:                                  ; preds = %for.body.i68
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.05.i
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i69 = icmp eq i8 %19, 0
  %spec.select.i70 = select i1 %tobool.not.i69, i32 %i.05.i, i32 %last_ets_zero_bw_tc.03.i
  %inc.i71 = zext i1 %tobool.not.i69 to i32
  %spec.select1.i = add i32 %num_ets_zero_bw.04.i, %inc.i71
  br label %for.inc.i73

for.inc.i73:                                      ; preds = %land.lhs.true.i, %for.body.i68.for.inc.i73_crit_edge
  %last_ets_zero_bw_tc.1.i = phi i32 [ %last_ets_zero_bw_tc.03.i, %for.body.i68.for.inc.i73_crit_edge ], [ %spec.select.i70, %land.lhs.true.i ]
  %num_ets_zero_bw.1.i = phi i32 [ %num_ets_zero_bw.04.i, %for.body.i68.for.inc.i73_crit_edge ], [ %spec.select1.i, %land.lhs.true.i ]
  %inc5.i = add i32 %i.05.i, 1
  %cmp.not.i72 = icmp sgt i32 %inc5.i, %call
  br i1 %cmp.not.i72, label %for.end.i74, label %for.inc.i73.for.body.i68_crit_edge

for.inc.i73.for.body.i68_crit_edge:               ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i68

for.end.i74:                                      ; preds = %for.inc.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_ets_zero_bw.1.i)
  %tobool6.not.i = icmp eq i32 %num_ets_zero_bw.1.i, 0
  br i1 %tobool6.not.i, label %for.end.i74.for.body12.i.preheader_crit_edge, label %if.then7.i

for.end.i74.for.body12.i.preheader_crit_edge:     ; preds = %for.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i.preheader

if.then7.i:                                       ; preds = %for.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  %div.i = sdiv i32 100, %num_ets_zero_bw.1.i
  br label %for.body12.i.preheader

for.body12.i.preheader:                           ; preds = %if.then7.i, %for.end.i74.for.body12.i.preheader_crit_edge
  %bw_for_ets_zero_bw_tc.0.i = phi i32 [ %div.i, %if.then7.i ], [ 0, %for.end.i74.for.body12.i.preheader_crit_edge ]
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc29.i.for.body12.i_crit_edge, %for.body12.i.preheader
  %i.19.i = phi i32 [ %inc30.i, %for.inc29.i.for.body12.i_crit_edge ], [ 0, %for.body12.i.preheader ]
  %arrayidx14.i = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 5, i32 %i.19.i
  %20 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx14.i, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %21, label %for.body12.i.for.inc29.i_crit_edge [
    i8 -1, label %for.body12.i.for.inc29.sink.split.i_crit_edge
    i8 0, label %for.body12.i.for.inc29.sink.split.i_crit_edge79
    i8 2, label %sw.bb19.i
  ]

for.body12.i.for.inc29.sink.split.i_crit_edge79:  ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.sink.split.i

for.body12.i.for.inc29.sink.split.i_crit_edge:    ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.sink.split.i

for.body12.i.for.inc29.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.i

sw.bb19.i:                                        ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21.i75 = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 3, i32 %i.19.i
  %23 = ptrtoint ptr %arrayidx21.i75 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx21.i75, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool23.not.i = icmp eq i8 %24, 0
  %conv22.i = zext i8 %24 to i32
  %cond.i = select i1 %tobool23.not.i, i32 %bw_for_ets_zero_bw_tc.0.i, i32 %conv22.i
  %conv27.i = trunc i32 %cond.i to i8
  br label %for.inc29.sink.split.i

for.inc29.sink.split.i:                           ; preds = %sw.bb19.i, %for.body12.i.for.inc29.sink.split.i_crit_edge, %for.body12.i.for.inc29.sink.split.i_crit_edge79
  %.sink.i = phi i8 [ %conv27.i, %sw.bb19.i ], [ 100, %for.body12.i.for.inc29.sink.split.i_crit_edge ], [ 100, %for.body12.i.for.inc29.sink.split.i_crit_edge79 ]
  %arrayidx16.i = getelementptr i8, ptr %tc_tx_bw, i32 %i.19.i
  %25 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink.i, ptr %arrayidx16.i, align 1
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.inc29.sink.split.i, %for.body12.i.for.inc29.i_crit_edge
  %inc30.i = add i32 %i.19.i, 1
  %cmp10.not.i = icmp sgt i32 %inc30.i, %call
  br i1 %cmp10.not.i, label %for.end31.i, label %for.inc29.i.for.body12.i_crit_edge

for.inc29.i.for.body12.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.end31.i:                                      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %last_ets_zero_bw_tc.1.i)
  %cmp32.not.i = icmp eq i32 %last_ets_zero_bw_tc.1.i, -1
  br i1 %cmp32.not.i, label %for.end31.i.mlx5e_build_tc_tx_bw.exit_crit_edge, label %if.then34.i

for.end31.i.mlx5e_build_tc_tx_bw.exit_crit_edge:  ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_build_tc_tx_bw.exit

if.then34.i:                                      ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i = srem i32 100, %num_ets_zero_bw.1.i
  %arrayidx35.i = getelementptr i8, ptr %tc_tx_bw, i32 %last_ets_zero_bw_tc.1.i
  %26 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx35.i, align 1
  %28 = trunc i32 %rem.i to i8
  %conv37.i = add i8 %27, %28
  store i8 %conv37.i, ptr %arrayidx35.i, align 1
  br label %mlx5e_build_tc_tx_bw.exit

mlx5e_build_tc_tx_bw.exit:                        ; preds = %if.then34.i, %for.end31.i.mlx5e_build_tc_tx_bw.exit_crit_edge, %entry.mlx5e_build_tc_tx_bw.exit_crit_edge
  %prio_tc = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 6
  %call5 = tail call i32 @mlx5_set_port_prio_tc(ptr noundef %1, ptr noundef %prio_tc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %mlx5e_build_tc_tx_bw.exit.cleanup_crit_edge

mlx5e_build_tc_tx_bw.exit.cleanup_crit_edge:      ; preds = %mlx5e_build_tc_tx_bw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %mlx5e_build_tc_tx_bw.exit
  %call7 = call i32 @mlx5_set_port_tc_group(ptr noundef %1, ptr noundef nonnull %tc_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = call i32 @mlx5_set_port_tc_bw_alloc(ptr noundef %1, ptr noundef nonnull %tc_tx_bw) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %tc_tsa = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 41, i32 3
  %tc_tsa17 = getelementptr inbounds %struct.ieee_ets, ptr %ets, i32 0, i32 5
  %29 = ptrtoint ptr %tc_tsa17 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %tc_tsa17, align 1
  %31 = ptrtoint ptr %tc_tsa to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %tc_tsa, align 2
  %msglevel = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end15
  %i.076 = phi i32 [ 0, %if.end15 ], [ %inc, %for.inc.do.body_crit_edge ]
  %32 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msglevel, align 4
  %and = and i32 %33, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body.do.body23_crit_edge, label %if.then20

do.body.do.body23_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body23

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netdev, align 4
  %arrayidx = getelementptr %struct.ieee_ets, ptr %ets, i32 0, i32 6, i32 %i.076
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %37 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %35, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setets_core, i32 noundef %i.076, i32 noundef %conv) #12
  br label %do.body23

do.body23:                                        ; preds = %if.then20, %do.body.do.body23_crit_edge
  %38 = ptrtoint ptr %msglevel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msglevel, align 4
  %and25 = and i32 %39, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.for.inc_crit_edge, label %if.then27

do.body23.for.inc_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev, align 4
  %arrayidx29 = getelementptr [8 x i8], ptr %tc_tx_bw, i32 0, i32 %i.076
  %42 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx29, align 1
  %conv30 = zext i8 %43 to i32
  %arrayidx31 = getelementptr [8 x i8], ptr %tc_group, i32 0, i32 %i.076
  %44 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %45 to i32
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mlx5e_dcbnl_ieee_setets_core, i32 noundef %i.076, i32 noundef %conv30, i32 noundef %conv32) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then27, %do.body23.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %mlx5e_build_tc_tx_bw.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %mlx5e_build_tc_tx_bw.exit.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tc_group) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tc_tx_bw) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_prio_tc(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_tc_group(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_tc_bw_alloc(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_ets_rate_limit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_port_ets_rate_limit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_pfc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_pfc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_toggle_port_link(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_manual_buffer_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_set_trust_state(ptr noundef %priv, i8 noundef zeroext %trust_state) unnamed_addr #2 align 64 {
entry:
  %trust_state.addr = alloca i8, align 1
  %new_params = alloca %struct.mlx5e_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trust_state.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %trust_state, ptr %trust_state.addr, align 1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %new_params) #9
  %state_lock = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %state_lock, i32 noundef 0) #9
  %params = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3
  %1 = call ptr @memcpy(ptr %new_params, ptr %params, i32 144)
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev, align 64
  %tx_min_inline_mode.i = getelementptr inbounds %struct.mlx5e_params, ptr %new_params, i32 0, i32 10
  call void @mlx5_query_min_inline(ptr noundef %3, ptr noundef %tx_min_inline_mode.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %trust_state)
  %cmp.i = icmp eq i8 %trust_state, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.mlx5e_params_calc_trust_tx_min_inline_mode.exit_crit_edge

entry.mlx5e_params_calc_trust_tx_min_inline_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_params_calc_trust_tx_min_inline_mode.exit

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %tx_min_inline_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_min_inline_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp4.i = icmp eq i8 %5, 1
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit_crit_edge

land.lhs.true.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mlx5e_params_calc_trust_tx_min_inline_mode.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %tx_min_inline_mode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %tx_min_inline_mode.i, align 4
  br label %mlx5e_params_calc_trust_tx_min_inline_mode.exit

mlx5e_params_calc_trust_tx_min_inline_mode.exit:  ; preds = %if.then.i, %land.lhs.true.i.mlx5e_params_calc_trust_tx_min_inline_mode.exit_crit_edge, %entry.mlx5e_params_calc_trust_tx_min_inline_mode.exit_crit_edge
  %7 = ptrtoint ptr %tx_min_inline_mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx_min_inline_mode.i, align 4
  %tx_min_inline_mode3 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 9, i32 3, i32 10
  %9 = ptrtoint ptr %tx_min_inline_mode3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx_min_inline_mode3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp = icmp ne i8 %8, %10
  %call = call i32 @mlx5e_safe_switch_params(ptr noundef %priv, ptr noundef nonnull %new_params, ptr noundef nonnull @mlx5e_update_trust_state_hw, ptr noundef nonnull %trust_state.addr, i1 noundef zeroext %cmp) #9
  call void @mutex_unlock(ptr noundef %state_lock) #9
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %new_params) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_delapp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dcb_ieee_setapp(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_safe_switch_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx5e_update_trust_state_hw(ptr nocapture noundef %priv, ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %context, align 1
  %call = tail call i32 @mlx5_set_trust_state(ptr noundef %1, i8 noundef zeroext %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %context, align 1
  %trust_state1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %trust_state1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %trust_state1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_query_min_inline(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_trust_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_dscp2prio(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_port_dcbx_param(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_set_port_dcbx_param(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_query_priority2buffer(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_port_query_buffer(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_trust_state(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_query_dscp2prio(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_core_access_reg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !43, !45, !47, !48, !49, !50, !52, !53, !55}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @mlx5e_dcbnl_ops, !1, !"mlx5e_dcbnl_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 988, i32 36}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 297, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 314, i32 8}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 276, i32 3}
!8 = !{ptr @__func__.mlx5e_dcbnl_ieee_setets_core, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 278, i32 3}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 573, i32 4}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 612, i32 3}
!16 = !{ptr @__func__.mlx5e_dcbnl_ieee_setmaxrate, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 400, i32 3}
!19 = !{ptr @__func__.mlx5e_dcbnl_ieee_setpfc, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 703, i32 7}
!22 = !{ptr @__func__.mlx5e_dcbnl_setpgtccfgtx, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 703, i32 41}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 709, i32 7}
!26 = !{ptr @__func__.mlx5e_dcbnl_setpgbwgcfgtx, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 724, i32 47}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 739, i32 22}
!30 = !{ptr @__func__.mlx5e_dcbnl_getpgtccfgtx, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 739, i32 52}
!32 = !{ptr @__func__.mlx5e_dcbnl_getpgbwgcfgtx, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 764, i32 47}
!34 = !{ptr @__func__.mlx5e_dcbnl_setpfccfg, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 780, i32 41}
!36 = !{ptr @__func__.mlx5e_dcbnl_getpfccfg, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 812, i32 41}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 641, i32 3}
!40 = !{ptr @__func__.mlx5e_dcbnl_setall, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 654, i32 7}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 669, i32 7}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 950, i32 3}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug636, !46, !"__UNIQUE_ID_ddebug636", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 953, i32 3}
!52 = !{ptr @mlx5e_dcbnl_setbuffer.__UNIQUE_ID_ddebug637, !51, !"__UNIQUE_ID_ddebug637", i1 false, i1 false}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 1081, i32 7}
!55 = !{ptr @__func__.mlx5e_ets_init, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_dcbnl.c", i32 1081, i32 39}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 846326, i64 846353, i64 846375, i64 846403}
!68 = !{i64 846734, i64 846761, i64 846794, i64 846815, i64 846842, i64 846868}
!69 = !{i64 846039, i64 846066}
!70 = !{!"auto-init"}
!71 = !{i8 0, i8 2}
!72 = !{i64 2148306683, i64 2148306688, i64 2148306701, i64 2148306745, i64 2148306779, i64 2148306800}
