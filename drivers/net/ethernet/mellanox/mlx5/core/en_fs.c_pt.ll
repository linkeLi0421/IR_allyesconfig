; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en_fs.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlx5e_vlan_table = type { %struct.mlx5e_flow_table, [128 x i32], [128 x i32], [4096 x ptr], [4096 x ptr], ptr, ptr, ptr, ptr, i8 }
%struct.mlx5e_flow_table = type { i32, ptr, ptr }
%struct.mlx5_flow_destination = type { i32, %union.anon.223 }
%union.anon.223 = type { %struct.anon.224 }
%struct.anon.224 = type { i16, i16, ptr, i8 }
%struct.mlx5_flow_act = type { i32, ptr, ptr, %union.anon.225, i32, [2 x %struct.mlx5_fs_vlan], ptr }
%union.anon.225 = type { i32 }
%struct.mlx5_fs_vlan = type { i16, i16, i8 }
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
%struct.mlx5e_rq = type { %union.anon.185, %struct.anon.199, ptr, ptr, ptr, [48 x i8], %struct.mlx5e_cq, %struct.mlx5e_cq_decomp, %struct.mlx5e_page_cache, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dim, ptr, ptr, [1 x i32], ptr, ptr, %struct.work_struct, %struct.mlx5_wq_ctrl, i32, i8, i32, ptr, i32, %struct.mlx5e_dma_info, [72 x i8], %struct.xdp_rxq_info, ptr, [124 x i8] }
%union.anon.185 = type { %struct.anon.192 }
%struct.anon.192 = type { %struct.mlx5_wq_ll, %struct.mlx5e_umr_wqe, ptr, ptr, i16, i16, i8, i8, i8, i8, ptr }
%struct.mlx5_wq_ll = type { %struct.mlx5_frag_buf_ctrl, ptr, ptr, i16, i16, i16 }
%struct.mlx5_frag_buf_ctrl = type { ptr, i32, i16, i16, i8, i8, i8 }
%struct.mlx5e_umr_wqe = type { %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_umr_ctrl_seg, %struct.mlx5_mkey_seg, %union.anon.194 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8, [2 x i8], i8, %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mlx5_wqe_umr_ctrl_seg = type { i8, [3 x i8], i16, %union.anon.193, i64, i32, [28 x i8] }
%union.anon.193 = type { i16 }
%struct.mlx5_mkey_seg = type { i8, i8, i8, i8, i32, [4 x i8], i32, i64, i64, i32, [16 x i8], i32, [3 x i8], i8, [4 x i8] }
%union.anon.194 = type { %struct.anon.195 }
%struct.anon.195 = type { %struct.anon.196, [0 x %struct.mlx5_mtt] }
%struct.anon.196 = type {}
%struct.mlx5_mtt = type { i64 }
%struct.anon.199 = type { i16, i32, i8 }
%struct.mlx5e_cq = type { %struct.mlx5_cqwq, i16, ptr, %struct.mlx5_core_cq, ptr, ptr, ptr, ptr, %struct.mlx5_wq_ctrl, [24 x i8] }
%struct.mlx5_cqwq = type { %struct.mlx5_frag_buf_ctrl, ptr, i32 }
%struct.mlx5_core_cq = type { i32, i32, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i32, ptr, ptr, i32, i32, ptr, i32, %struct.anon.182, i32, %struct.list_head, ptr, i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.182 = type { %struct.list_head, ptr, ptr }
%struct.mlx5e_cq_decomp = type { %struct.mlx5_cqe64, [8 x %struct.mlx5_mini_cqe8], i8, i16, i16, [122 x i8] }
%struct.mlx5_cqe64 = type { i8, i8, i16, %union.anon.188, i32, i8, i8, [2 x i8], i16, i16, i32, i8, i8, i16, i32, %union.anon.191, [4 x i8], i32, i32, i32, i32, i16, i8, i8 }
%union.anon.188 = type { %struct.anon.189 }
%struct.anon.189 = type { i8, i8, i16, i32 }
%union.anon.191 = type { i32 }
%struct.mlx5_mini_cqe8 = type { %union.anon.200, i32 }
%union.anon.200 = type { i32 }
%struct.mlx5e_page_cache = type { i32, i32, [256 x %struct.mlx5e_dma_info] }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.mlx5_wq_ctrl = type { ptr, %struct.mlx5_frag_buf, %struct.mlx5_db }
%struct.mlx5_frag_buf = type { ptr, i32, i32, i8 }
%struct.mlx5_db = type { ptr, %union.anon.183, i32, i32 }
%union.anon.183 = type { ptr }
%struct.mlx5e_dma_info = type { i32, %union.anon.187 }
%union.anon.187 = type { ptr }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.mlx5e_channels = type { ptr, ptr, i32, %struct.mlx5e_params }
%struct.mlx5e_params = type { i8, i8, i8, i16, %struct.anon.214, i8, i8, %struct.dim_cq_moder, %struct.dim_cq_moder, %struct.mlx5e_packet_merge_param, i8, i8, i8, i8, i8, i32, ptr, ptr, i32, i32, i8 }
%struct.anon.214 = type { i16, i8, [16 x %struct.netdev_tc_txq], %struct.anon.215 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.anon.215 = type { ptr }
%struct.dim_cq_moder = type { i16, i16, i16, i8 }
%struct.mlx5e_packet_merge_param = type { i32, i32, %struct.anon.216 }
%struct.anon.216 = type { i8, i8 }
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
%struct.mlx5_flow_spec = type { i8, [128 x i32], [128 x i32], %struct.mlx5_flow_context }
%struct.mlx5_flow_context = type { i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.3, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.164, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.3 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.164 = type { ptr }
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
%struct.mlx5_flow_table_attr = type { i32, i32, i32, i32, ptr, %struct.anon.222 }
%struct.anon.222 = type { i32, i32 }
%struct.mlx5e_l2_hash_node = type { %struct.hlist_node, i8, %struct.mlx5e_l2_rule, i8 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.ttc_params = type { ptr, %struct.mlx5_flow_table_attr, [11 x %struct.mlx5_flow_destination], [1 x i32], i8, [1 x i32], [6 x %struct.mlx5_flow_destination] }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.166, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.172, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.166 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.171] }
%struct.anon.171 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.149 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.149 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.172 = type { %struct.mlx5_rsvd_gids, i32 }
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

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: add VLAN trap rule failed, err %d\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.mlx5e_add_vlan_trap = private unnamed_addr constant [20 x i8] c"mlx5e_add_vlan_trap\00", align 1
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: add MAC trap rule failed, err %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.mlx5e_add_mac_trap = private unnamed_addr constant [19 x i8] c"mlx5e_add_mac_trap\00", align 1
@mlx5e_set_rx_mode_work.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"S-tagged traffic will be dropped while C-tag vlan stripping is enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create arfs tables, err=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to create inner ttc table, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to create ttc table, err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to create l2 table, err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create vlan table, err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"netdev vlans list size (%d) > (%d) max vport list size, some vlans will be dropped\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to modify vport vlans list err(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__mlx5e_add_vlan_rule.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/en_fs.c\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"VLAN rule already exists type %d\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: add rule failed\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.__mlx5e_add_vlan_rule = private unnamed_addr constant [22 x i8] c"__mlx5e_add_vlan_rule\00", align 1
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fail to create promisc table err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: add promiscuous rule failed\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.mlx5e_add_promisc_rule = private unnamed_addr constant [23 x i8] c"mlx5e_add_promisc_rule\00", align 1
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"MPFS, failed to %s mac %pM, err(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"del\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Trying to remove non-existing promiscuous table\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Trying to remove non-existing promiscuous rule\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"netdev %s list size (%d) > (%d) max vport list size, some addresses will be dropped\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UC\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to modify vport %s list err(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: add l2 rule(mac:%pM) failed\0A\00", [63 x i8] zeroinitializer }, align 32
@__func__.mlx5e_add_l2_flow_rule = private unnamed_addr constant [23 x i8] c"mlx5e_add_l2_flow_rule\00", align 1
@mlx5e_del_vlan_rules.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 365, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 391, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 808, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1278, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1286, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1293, i32 28 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1300, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1307, i32 28 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 153, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 171, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 245, i32 6 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 253, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 748, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 728, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 567, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 568, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 568, i32 45 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 775, i32 6 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 767, i32 6 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 641, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 642, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 642, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 659, i32 7 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [51 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 960, i32 28 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_vlan_get_active_svlans(ptr noundef readnone %vlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %active_svlans = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %vlan, i32 0, i32 2
  ret ptr %active_svlans
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_vlan_get_flowtable(ptr nocapture noundef readonly %vlan) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t = getelementptr inbounds %struct.mlx5e_flow_table, ptr %vlan, i32 0, i32 1
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_add_vlan_trap(ptr nocapture noundef readonly %priv, i32 noundef %trap_id, i32 noundef %tir_num) local_unnamed_addr #2 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan, align 4
  %t = getelementptr inbounds %struct.mlx5e_flow_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #11
  %4 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #11
  %6 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 32)
  %8 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %flow_act.i, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %mlx5e_add_trap_rule.exit.thread, label %mlx5e_add_trap_rule.exit

mlx5e_add_trap_rule.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #11
  br label %if.then

mlx5e_add_trap_rule.exit:                         ; preds = %entry
  %flow_context.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %flow_context.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_context.i, align 4
  %or.i = or i32 %10, 1
  store i32 %or.i, ptr %flow_context.i, align 4
  %flow_tag.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %flow_tag.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %trap_id, ptr %flow_tag.i, align 4
  %12 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %dest.i, align 4
  %13 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %tir_num, ptr %13, align 4
  %call3.i = call ptr @mlx5_add_flow_rules(ptr noundef %3, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #11
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #11
  %cmp.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5e_add_trap_rule.exit.if.then_crit_edge, label %if.end

mlx5e_add_trap_rule.exit.if.then_crit_edge:       ; preds = %mlx5e_add_trap_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %mlx5e_add_trap_rule.exit.if.then_crit_edge, %mlx5e_add_trap_rule.exit.thread
  %retval.0.i19 = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5e_add_trap_rule.exit.thread ], [ %call3.i, %mlx5e_add_trap_rule.exit.if.then_crit_edge ]
  %15 = ptrtoint ptr %retval.0.i19 to i32
  %16 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vlan, align 4
  %trap_rule = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %trap_rule to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %trap_rule, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %19 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mlx5e_add_vlan_trap, i32 noundef %15) #15
  br label %cleanup

if.end:                                           ; preds = %mlx5e_add_trap_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vlan, align 4
  %trap_rule8 = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %trap_rule8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call3.i, ptr %trap_rule8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %15, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_remove_vlan_trap(ptr nocapture noundef readonly %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan, align 4
  %trap_rule = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %trap_rule to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trap_rule, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %3) #11
  %4 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vlan, align 4
  %trap_rule6 = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %trap_rule6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %trap_rule6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_del_flow_rules(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_add_mac_trap(ptr nocapture noundef %priv, i32 noundef %trap_id, i32 noundef %tir_num) local_unnamed_addr #2 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #11
  %2 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #11
  %4 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  %6 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flow_act.i, align 4
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %mlx5e_add_trap_rule.exit.thread, label %mlx5e_add_trap_rule.exit

mlx5e_add_trap_rule.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #11
  br label %if.then

mlx5e_add_trap_rule.exit:                         ; preds = %entry
  %flow_context.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %flow_context.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flow_context.i, align 4
  %or.i = or i32 %8, 1
  store i32 %or.i, ptr %flow_context.i, align 4
  %flow_tag.i = getelementptr inbounds %struct.mlx5_flow_spec, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %flow_tag.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %trap_id, ptr %flow_tag.i, align 4
  %10 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %dest.i, align 4
  %11 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %tir_num, ptr %11, align 4
  %call3.i = call ptr @mlx5_add_flow_rules(ptr noundef %1, ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #11
  call void @kvfree(ptr noundef nonnull %call.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #11
  %cmp.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlx5e_add_trap_rule.exit.if.then_crit_edge, label %if.end

mlx5e_add_trap_rule.exit.if.then_crit_edge:       ; preds = %mlx5e_add_trap_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %mlx5e_add_trap_rule.exit.if.then_crit_edge, %mlx5e_add_trap_rule.exit.thread
  %retval.0.i19 = phi ptr [ inttoptr (i32 -12 to ptr), %mlx5e_add_trap_rule.exit.thread ], [ %call3.i, %mlx5e_add_trap_rule.exit.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i19 to i32
  %trap_rule = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 5
  %14 = ptrtoint ptr %trap_rule to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %trap_rule, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %15 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mlx5e_add_mac_trap, i32 noundef %13) #15
  br label %cleanup

if.end:                                           ; preds = %mlx5e_add_trap_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %trap_rule8 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 5
  %17 = ptrtoint ptr %trap_rule8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3.i, ptr %trap_rule8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_remove_mac_trap(ptr nocapture noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %trap_rule = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 5
  %0 = ptrtoint ptr %trap_rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trap_rule, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %1) #11
  %2 = ptrtoint ptr %trap_rule to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %trap_rule, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_enable_cvlan_filter(ptr nocapture noundef readonly %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan, align 4
  %cvlan_filter_disabled = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cvlan_filter_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cvlan_filter_disabled, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cvlan_filter_disabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cvlan_filter_disabled, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vlan, align 4
  %any_cvlan_rule.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %any_cvlan_rule.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %any_cvlan_rule.i, align 4
  %tobool10.not.i = icmp eq ptr %12, null
  br i1 %tobool10.not.i, label %if.end6.return_crit_edge, label %if.then11.i

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.then11.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %12) #11
  %13 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vlan, align 4
  %any_cvlan_rule17.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %any_cvlan_rule17.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %any_cvlan_rule17.i, align 4
  br label %return

return:                                           ; preds = %if.then11.i, %if.end6.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_disable_cvlan_filter(ptr nocapture noundef readonly %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan, align 4
  %cvlan_filter_disabled = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cvlan_filter_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cvlan_filter_disabled, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cvlan_filter_disabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cvlan_filter_disabled, align 4
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %priv, i32 noundef 1, i16 noundef zeroext 0)
  br label %return

return:                                           ; preds = %if.end6, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx5e_add_vlan_rule(ptr nocapture noundef readonly %priv, i32 noundef %rule_type, i16 noundef zeroext %vid) unnamed_addr #2 align 64 {
entry:
  %dest.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rule_type)
  %cmp = icmp eq i32 %rule_type, 3
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlx5e_vport_context_update_vlans(ptr noundef %priv)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %vlan.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan.i, align 4
  %t.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i) #11
  %4 = getelementptr inbounds i8, ptr %dest.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i) #11
  %6 = getelementptr inbounds i8, ptr %flow_act.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 32)
  %8 = ptrtoint ptr %flow_act.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %flow_act.i, align 4
  %9 = ptrtoint ptr %dest.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dest.i, align 4
  %t4.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %t4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t4.i, align 4
  %12 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %12, align 4
  %14 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %call.i.i, align 4
  %15 = zext i32 %rule_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rule_type, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb13.i
    i32 2, label %sw.bb44.i
    i32 4, label %sw.bb78.i
  ]

sw.bb.i:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %untagged_rule.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 5
  %add.ptr.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %17, 32768
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %any_cvlan_rule.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 6
  %add.ptr22.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr22.i, align 4
  %or24.i = or i32 %19, 32768
  store i32 %or24.i, ptr %add.ptr22.i, align 4
  %add.ptr35.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %20 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr35.i, align 4
  %or38.i = or i32 %21, 32768
  store i32 %or38.i, ptr %add.ptr35.i, align 4
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %any_svlan_rule.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 7
  %add.ptr53.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr53.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr53.i, align 4
  %or55.i = or i32 %23, 16384
  store i32 %or55.i, ptr %add.ptr53.i, align 4
  %add.ptr68.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %add.ptr68.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr68.i, align 4
  %or72.i = or i32 %25, 16384
  store i32 %or72.i, ptr %add.ptr68.i, align 4
  br label %sw.epilog.i

sw.bb78.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom.i = zext i16 %vid to i32
  %arrayidx.i = getelementptr %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 4, i32 %idxprom.i
  %add.ptr87.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr87.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr87.i, align 4
  %or89.i = or i32 %27, 16384
  store i32 %or89.i, ptr %add.ptr87.i, align 4
  %add.ptr102.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %28 = ptrtoint ptr %add.ptr102.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr102.i, align 4
  %or106.i = or i32 %29, 16384
  store i32 %or106.i, ptr %add.ptr102.i, align 4
  %add.ptr118.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %add.ptr118.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr118.i, align 4
  %or120.i = or i32 %31, 4095
  store i32 %or120.i, ptr %add.ptr118.i, align 4
  %add.ptr133.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 3
  %32 = ptrtoint ptr %add.ptr133.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr133.i, align 4
  %and134.i = and i32 %33, -4096
  %and135.i = and i32 %idxprom.i, 4095
  %or137.i = or i32 %and134.i, %and135.i
  store i32 %or137.i, ptr %add.ptr133.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %idxprom145.i = zext i16 %vid to i32
  %arrayidx146.i = getelementptr %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 3, i32 %idxprom145.i
  %add.ptr153.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %add.ptr153.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr153.i, align 4
  %or155.i = or i32 %35, 32768
  store i32 %or155.i, ptr %add.ptr153.i, align 4
  %add.ptr168.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %add.ptr168.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr168.i, align 4
  %or172.i = or i32 %37, 32768
  store i32 %or172.i, ptr %add.ptr168.i, align 4
  %add.ptr184.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %add.ptr184.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr184.i, align 4
  %or186.i = or i32 %39, 4095
  store i32 %or186.i, ptr %add.ptr184.i, align 4
  %add.ptr200.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 3
  %40 = ptrtoint ptr %add.ptr200.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr200.i, align 4
  %and201.i = and i32 %41, -4096
  %and202.i = and i32 %idxprom145.i, 4095
  %or204.i = or i32 %and201.i, %and202.i
  store i32 %or204.i, ptr %add.ptr200.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb78.i, %sw.bb44.i, %sw.bb13.i, %sw.bb.i
  %rule_p.0.i = phi ptr [ %arrayidx146.i, %sw.default.i ], [ %arrayidx.i, %sw.bb78.i ], [ %any_svlan_rule.i, %sw.bb44.i ], [ %any_cvlan_rule.i, %sw.bb13.i ], [ %untagged_rule.i, %sw.bb.i ]
  %42 = ptrtoint ptr %rule_p.0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rule_p.0.i, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end251.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %sw.epilog.i
  %.b304.i = load i1, ptr @__mlx5e_add_vlan_rule.__already_done, align 1
  br i1 %.b304.i, label %land.rhs.i.__mlx5e_add_vlan_rule.exit_crit_edge, label %if.then.i, !prof !74

land.rhs.i.__mlx5e_add_vlan_rule.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mlx5e_add_vlan_rule.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__mlx5e_add_vlan_rule.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 245, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %rule_type) #11
  br label %__mlx5e_add_vlan_rule.exit

if.end251.i:                                      ; preds = %sw.epilog.i
  %call.i = call ptr @mlx5_add_flow_rules(ptr noundef %3, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act.i, ptr noundef nonnull %dest.i, i32 noundef 1) #11
  %44 = ptrtoint ptr %rule_p.0.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %rule_p.0.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then253.i, label %if.end251.i.__mlx5e_add_vlan_rule.exit_crit_edge

if.end251.i.__mlx5e_add_vlan_rule.exit_crit_edge: ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__mlx5e_add_vlan_rule.exit

if.then253.i:                                     ; preds = %if.end251.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %call.i to i32
  %46 = ptrtoint ptr %rule_p.0.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rule_p.0.i, align 4
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %47 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %netdev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %48, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.__mlx5e_add_vlan_rule) #15
  br label %__mlx5e_add_vlan_rule.exit

__mlx5e_add_vlan_rule.exit:                       ; preds = %if.then253.i, %if.end251.i.__mlx5e_add_vlan_rule.exit_crit_edge, %if.then.i, %land.rhs.i.__mlx5e_add_vlan_rule.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ %45, %if.then253.i ], [ 0, %if.end251.i.__mlx5e_add_vlan_rule.exit_crit_edge ], [ 0, %land.rhs.i.__mlx5e_add_vlan_rule.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i) #11
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %__mlx5e_add_vlan_rule.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__mlx5e_add_vlan_rule.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @mlx5e_is_uplink_rep(ptr noundef %add.ptr.i) #11
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %proto, label %if.end.cleanup_crit_edge [
    i16 -32512, label %if.then3
    i16 -30552, label %if.then8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %conv.i = zext i16 %vid to i32
  %vlan.i = getelementptr i8, ptr %dev, i32 8964
  %1 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vlan.i, align 4
  %active_cvlans.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %2, i32 0, i32 1
  tail call void @_set_bit(i32 noundef %conv.i, ptr noundef %active_cvlans.i) #11
  %call.i = tail call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %add.ptr.i, i32 noundef 3, i16 noundef zeroext %vid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %if.then.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vlan.i, align 4
  %active_cvlans4.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %4, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %conv.i, ptr noundef %active_cvlans4.i) #11
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %netdev1.i = getelementptr i8, ptr %dev, i32 11332
  %5 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev1.i, align 4
  %conv.i16 = zext i16 %vid to i32
  %vlan.i17 = getelementptr i8, ptr %dev, i32 8964
  %7 = ptrtoint ptr %vlan.i17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vlan.i17, align 4
  %active_svlans.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %8, i32 0, i32 2
  tail call void @_set_bit(i32 noundef %conv.i16, ptr noundef %active_svlans.i) #11
  %call.i18 = tail call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %add.ptr.i, i32 noundef 4, i16 noundef zeroext %vid) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i, label %if.then.i20

if.then.i20:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %vlan.i17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vlan.i17, align 4
  %active_svlans5.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %10, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %conv.i16, ptr noundef %active_svlans5.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netdev_update_features(ptr noundef %6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i20, %if.then.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ %call.i, %if.then.i ], [ %call.i18, %if.then.i20 ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5e_is_uplink_rep(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_vlan_rx_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call zeroext i1 @mlx5e_is_uplink_rep(ptr noundef %add.ptr.i) #11
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i16 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %proto, label %if.end.cleanup_crit_edge [
    i16 -32512, label %if.then3
    i16 -30552, label %if.then8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %conv4 = zext i16 %vid to i32
  %vlan = getelementptr i8, ptr %dev, i32 8964
  %1 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vlan, align 4
  %active_cvlans = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %2, i32 0, i32 1
  tail call void @_clear_bit(i32 noundef %conv4, ptr noundef %active_cvlans) #11
  %3 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vlan, align 4
  %arrayidx51.i = getelementptr %struct.mlx5e_vlan_table, ptr %4, i32 0, i32 3, i32 %conv4
  %5 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx51.i, align 4
  %tobool52.not.i = icmp eq ptr %6, null
  br i1 %tobool52.not.i, label %if.then3.mlx5e_del_vlan_rule.exit_crit_edge, label %if.then53.i

if.then3.mlx5e_del_vlan_rule.exit_crit_edge:      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rule.exit

if.then53.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %6) #11
  %7 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vlan, align 4
  %arrayidx63.i = getelementptr %struct.mlx5e_vlan_table, ptr %8, i32 0, i32 3, i32 %conv4
  %9 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx63.i, align 4
  br label %mlx5e_del_vlan_rule.exit

mlx5e_del_vlan_rule.exit:                         ; preds = %if.then53.i, %if.then3.mlx5e_del_vlan_rule.exit_crit_edge
  tail call fastcc void @mlx5e_vport_context_update_vlans(ptr noundef %add.ptr.i) #11
  br label %cleanup

if.then8:                                         ; preds = %if.end
  %conv9 = zext i16 %vid to i32
  %vlan11 = getelementptr i8, ptr %dev, i32 8964
  %10 = ptrtoint ptr %vlan11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vlan11, align 4
  %active_svlans = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %11, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef %conv9, ptr noundef %active_svlans) #11
  %12 = ptrtoint ptr %vlan11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vlan11, align 4
  %arrayidx.i = getelementptr %struct.mlx5e_vlan_table, ptr %13, i32 0, i32 4, i32 %conv9
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool34.not.i = icmp eq ptr %15, null
  br i1 %tobool34.not.i, label %if.then8.mlx5e_del_vlan_rule.exit24_crit_edge, label %if.then35.i

if.then8.mlx5e_del_vlan_rule.exit24_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rule.exit24

if.then35.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %15) #11
  %16 = ptrtoint ptr %vlan11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vlan11, align 4
  %arrayidx45.i = getelementptr %struct.mlx5e_vlan_table, ptr %17, i32 0, i32 4, i32 %conv9
  %18 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %arrayidx45.i, align 4
  br label %mlx5e_del_vlan_rule.exit24

mlx5e_del_vlan_rule.exit24:                       ; preds = %if.then35.i, %if.then8.mlx5e_del_vlan_rule.exit24_crit_edge
  tail call void @netdev_update_features(ptr noundef %dev) #11
  br label %cleanup

cleanup:                                          ; preds = %mlx5e_del_vlan_rule.exit24, %mlx5e_del_vlan_rule.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_set_rx_mode_work(ptr noundef %work) local_unnamed_addr #2 align 64 {
entry:
  %dest.i.i = alloca %struct.mlx5_flow_destination, align 4
  %flow_act.i.i = alloca %struct.mlx5_flow_act, align 4
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8832
  %netdev = getelementptr i8, ptr %work, i32 196
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %state = getelementptr i8, ptr %work, i32 -8720
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br i1 %tobool, label %entry.land.end9_crit_edge, label %land.rhs5

entry.land.end9_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end9

land.rhs5:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  %and7 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8 = icmp ne i32 %and7, 0
  br label %land.end9

land.end9:                                        ; preds = %land.rhs5, %entry.land.end9_crit_edge
  %7 = phi i1 [ %tobool2, %land.rhs5 ], [ false, %entry.land.end9_crit_edge ]
  %8 = phi i1 [ %tobool8, %land.rhs5 ], [ false, %entry.land.end9_crit_edge ]
  %promisc_enabled13 = getelementptr i8, ptr %work, i32 -78
  %9 = ptrtoint ptr %promisc_enabled13 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %promisc_enabled13, align 2, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  %spec.select = select i1 %tobool14.not, i1 %7, i1 false
  %11 = select i1 %tobool14.not, i1 true, i1 %7
  %allmulti_enabled26 = getelementptr i8, ptr %work, i32 -79
  %12 = ptrtoint ptr %allmulti_enabled26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %allmulti_enabled26, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool27.not = icmp eq i8 %13, 0
  %14 = select i1 %tobool27.not, i1 %8, i1 false
  %15 = select i1 %tobool27.not, i1 true, i1 %8
  %broadcast_enabled39 = getelementptr i8, ptr %work, i32 -80
  %16 = ptrtoint ptr %broadcast_enabled39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %broadcast_enabled39, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  %18 = select i1 %tobool40.not, i1 %lnot, i1 false
  %not.tobool40.not = xor i1 %tobool40.not, true
  %19 = select i1 %not.tobool40.not, i1 %tobool, i1 false
  br i1 %spec.select, label %if.then, label %land.end9.if.end63_crit_edge

land.end9.if.end63_crit_edge:                     ; preds = %land.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then:                                          ; preds = %land.end9
  %fs.i = getelementptr i8, ptr %work, i32 -4892
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #11
  %20 = getelementptr inbounds i8, ptr %ft_attr.i, i32 12
  %21 = call ptr @memset(ptr %20, i32 0, i32 16)
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %22 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %max_fte.i, align 4
  %autogroup.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 5
  %23 = ptrtoint ptr %autogroup.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %autogroup.i, align 4
  %level.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %24 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %level.i, align 4
  %25 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %ft_attr.i, align 4
  %26 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs.i, align 4
  %call.i = call ptr @mlx5_create_auto_grouped_flow_table(ptr noundef %27, ptr noundef nonnull %ft_attr.i) #11
  %t.i = getelementptr i8, ptr %work, i32 -2184
  %28 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %t.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5e_create_promisc_table.exit.thread, label %if.end.i

mlx5e_create_promisc_table.exit.thread:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call.i to i32
  %30 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.14, i32 noundef %29) #15
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #11
  br label %if.end63

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest.i.i) #11
  %32 = getelementptr inbounds i8, ptr %dest.i.i, i32 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 0, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act.i.i) #11
  %34 = getelementptr inbounds i8, ptr %flow_act.i.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 32)
  %36 = ptrtoint ptr %flow_act.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %flow_act.i.i, align 4
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %mlx5e_add_promisc_rule.exit.thread.i, label %if.end.i.i

mlx5e_add_promisc_rule.exit.thread.i:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #11
  br label %err_destroy_promisc_table.i

if.end.i.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %dest.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %dest.i.i, align 4
  %ttc.i.i = getelementptr i8, ptr %work, i32 -76
  %38 = ptrtoint ptr %ttc.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ttc.i.i, align 4
  %call3.i.i = call ptr @mlx5_get_ttc_flow_table(ptr noundef %39) #11
  %40 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call3.i.i, ptr %40, align 4
  %rule.i.i = getelementptr i8, ptr %work, i32 -2176
  %call6.i.i = call ptr @mlx5_add_flow_rules(ptr noundef %call.i, ptr noundef nonnull %call.i.i.i.i, ptr noundef nonnull %flow_act.i.i, ptr noundef nonnull %dest.i.i, i32 noundef 1) #11
  %42 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call6.i.i, ptr %rule.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlx5e_add_promisc_rule.exit.i, label %mlx5e_add_promisc_rule.exit.thread28.i

mlx5e_add_promisc_rule.exit.thread28.i:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #11
  br label %mlx5e_create_promisc_table.exit

mlx5e_add_promisc_rule.exit.i:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %call6.i.i to i32
  %44 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %rule.i.i, align 4
  %45 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.mlx5e_add_promisc_rule) #15
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act.i.i) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest.i.i) #11
  br label %err_destroy_promisc_table.i

err_destroy_promisc_table.i:                      ; preds = %mlx5e_add_promisc_rule.exit.i, %mlx5e_add_promisc_rule.exit.thread.i
  %retval.0.i27.i = phi i32 [ -12, %mlx5e_add_promisc_rule.exit.thread.i ], [ %43, %mlx5e_add_promisc_rule.exit.i ]
  %47 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %t.i, align 4
  %call11.i = call i32 @mlx5_destroy_flow_table(ptr noundef %48) #11
  %49 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %t.i, align 4
  br label %mlx5e_create_promisc_table.exit

mlx5e_create_promisc_table.exit:                  ; preds = %err_destroy_promisc_table.i, %mlx5e_add_promisc_rule.exit.thread28.i
  %retval.0.i = phi i32 [ %retval.0.i27.i, %err_destroy_promisc_table.i ], [ 0, %mlx5e_add_promisc_rule.exit.thread28.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool54.not = icmp ne i32 %retval.0.i, 0
  %vlan_strip_disable = getelementptr i8, ptr %work, i32 -4995
  %50 = ptrtoint ptr %vlan_strip_disable to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %vlan_strip_disable, align 1, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool56.not = icmp ne i8 %51, 0
  %brmerge = select i1 %tobool56.not, i1 true, i1 %tobool54.not
  br i1 %brmerge, label %mlx5e_create_promisc_table.exit.if.end63_crit_edge, label %do.body

mlx5e_create_promisc_table.exit.if.end63_crit_edge: ; preds = %mlx5e_create_promisc_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

do.body:                                          ; preds = %mlx5e_create_promisc_table.exit
  %.b126 = load i1, ptr @mlx5e_set_rx_mode_work.__print_once, align 1
  br i1 %.b126, label %do.body.if.end63_crit_edge, label %if.then60

do.body.if.end63_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.then60:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx5e_set_rx_mode_work.__print_once, align 1
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef nonnull @.str.3) #15
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %do.body.if.end63_crit_edge, %mlx5e_create_promisc_table.exit.if.end63_crit_edge, %mlx5e_create_promisc_table.exit.thread, %land.end9.if.end63_crit_edge
  br i1 %14, label %if.then65, label %if.end63.if.end67_crit_edge

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then65:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  %allmulti = getelementptr i8, ptr %work, i32 -96
  call fastcc void @mlx5e_add_l2_flow_rule(ptr noundef %add.ptr, ptr noundef %allmulti, i32 noundef 1)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end63.if.end67_crit_edge
  br i1 %18, label %if.then69, label %if.end67.for.body.i.preheader_crit_edge

if.end67.for.body.i.preheader_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #13
  %broadcast = getelementptr i8, ptr %work, i32 -108
  call fastcc void @mlx5e_add_l2_flow_rule(ptr noundef %add.ptr, ptr noundef %broadcast, i32 noundef 0)
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then69, %if.end67.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc18.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.092.i = phi i32 [ %inc.i, %for.inc18.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.mlx5e_priv, ptr %add.ptr, i32 0, i32 13, i32 6, i32 1, i32 %i.092.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not90.i = icmp eq ptr %53, null
  br i1 %tobool4.not90.i, label %for.body.i.for.inc18.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc18.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc18.i

land.rhs.i:                                       ; preds = %land.rhs.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %hn.091.i = phi ptr [ %55, %land.rhs.i.land.rhs.i_crit_edge ], [ %53, %for.body.i.land.rhs.i_crit_edge ]
  %54 = ptrtoint ptr %hn.091.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hn.091.i, align 4
  %action.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.091.i, i32 0, i32 1
  %56 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 2, ptr %action.i, align 4
  %tobool4.not.i = icmp eq ptr %55, null
  br i1 %tobool4.not.i, label %land.rhs.i.for.inc18.i_crit_edge, label %land.rhs.i.land.rhs.i_crit_edge

land.rhs.i.land.rhs.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

land.rhs.i.for.inc18.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %land.rhs.i.for.inc18.i_crit_edge, %for.body.i.for.inc18.i_crit_edge
  %inc.i = add nuw nsw i32 %i.092.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.inc18.i.for.body22.i_crit_edge, label %for.inc18.i.for.body.i_crit_edge

for.inc18.i.for.body.i_crit_edge:                 ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc18.i.for.body22.i_crit_edge:               ; preds = %for.inc18.i
  br label %for.body22.i

for.body22.i:                                     ; preds = %for.inc59.i.for.body22.i_crit_edge, %for.inc18.i.for.body22.i_crit_edge
  %i.195.i = phi i32 [ %inc60.i, %for.inc59.i.for.body22.i_crit_edge ], [ 0, %for.inc18.i.for.body22.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.mlx5e_priv, ptr %add.ptr, i32 0, i32 13, i32 6, i32 2, i32 %i.195.i
  %57 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx26.i, align 4
  %tobool38.not93.i = icmp eq ptr %58, null
  br i1 %tobool38.not93.i, label %for.body22.i.for.inc59.i_crit_edge, label %for.body22.i.land.rhs39.i_crit_edge

for.body22.i.land.rhs39.i_crit_edge:              ; preds = %for.body22.i
  br label %land.rhs39.i

for.body22.i.for.inc59.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59.i

land.rhs39.i:                                     ; preds = %land.rhs39.i.land.rhs39.i_crit_edge, %for.body22.i.land.rhs39.i_crit_edge
  %hn.194.i = phi ptr [ %60, %land.rhs39.i.land.rhs39.i_crit_edge ], [ %58, %for.body22.i.land.rhs39.i_crit_edge ]
  %59 = ptrtoint ptr %hn.194.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hn.194.i, align 4
  %action46.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.194.i, i32 0, i32 1
  %61 = ptrtoint ptr %action46.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %action46.i, align 4
  %tobool38.not.i = icmp eq ptr %60, null
  br i1 %tobool38.not.i, label %land.rhs39.i.for.inc59.i_crit_edge, label %land.rhs39.i.land.rhs39.i_crit_edge

land.rhs39.i.land.rhs39.i_crit_edge:              ; preds = %land.rhs39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs39.i

land.rhs39.i.for.inc59.i_crit_edge:               ; preds = %land.rhs39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc59.i

for.inc59.i:                                      ; preds = %land.rhs39.i.for.inc59.i_crit_edge, %for.body22.i.for.inc59.i_crit_edge
  %inc60.i = add nuw nsw i32 %i.195.i, 1
  %exitcond99.not.i = icmp eq i32 %inc60.i, 256
  br i1 %exitcond99.not.i, label %for.end61.i, label %for.inc59.i.for.body22.i_crit_edge

for.inc59.i.for.body22.i_crit_edge:               ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i

for.end61.i:                                      ; preds = %for.inc59.i
  %62 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %state, align 4
  %64 = and i32 %63, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool62.not.i = icmp eq i32 %64, 0
  br i1 %tobool62.not.i, label %if.then.i127, label %for.end61.i.for.body.i86.i.preheader_crit_edge

for.end61.i.for.body.i86.i.preheader_crit_edge:   ; preds = %for.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i86.i.preheader

if.then.i127:                                     ; preds = %for.end61.i
  %65 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev, align 4
  %nested_level.i.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 73
  %67 = ptrtoint ptr %nested_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nested_level.i.i.i, align 1
  call fastcc void @local_bh_disable() #11
  %addr_list_lock.i.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 63
  %conv.i.i.i = zext i8 %68 to i32
  call void @_raw_spin_lock_nested(ptr noundef %addr_list_lock.i.i.i, i32 noundef %conv.i.i.i) #11
  %netdev_uc.i.i = getelementptr i8, ptr %work, i32 -2156
  %69 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 86
  %71 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_addr.i.i, align 64
  %arrayidx.i.i.i.i = getelementptr i8, ptr %72, i32 5
  %73 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %74 to i32
  %arrayidx.i.i.i = getelementptr %struct.hlist_head, ptr %netdev_uc.i.i, i32 %conv.i.i.i.i
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %72, i32 4
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i127
  %hn.0.in.i.i.i = phi ptr [ %arrayidx.i.i.i, %if.then.i127 ], [ %hn.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %75 = ptrtoint ptr %hn.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %hn.0.i.i.i = load ptr, ptr %hn.0.in.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %hn.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end17.i.i.i, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %ai.i.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.0.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %ai.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ai.i.i.i, align 4
  %78 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %72, align 4
  %xor.i.i.i.i.i = xor i32 %79, %77
  %add.ptr.i.i.i.i.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %hn.0.i.i.i, i32 0, i32 2, i32 0, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i.i.i, align 2
  %82 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %xor37.i.i.i.i.i = xor i16 %83, %81
  %xor3.i.i.i.i.i = zext i16 %xor37.i.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %xor.i.i.i.i.i, %xor3.i.i.i.i.i
  %cmp.i.i.i.i.i = icmp eq i32 %or.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then16.critedge.i.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i.i

if.then16.critedge.i.i.i:                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %action.i.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.0.i.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %action.i.i.i, align 4
  br label %mlx5e_add_l2_to_hash.exit.i.i

if.end17.i.i.i:                                   ; preds = %for.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef 2848, i32 noundef 28) #16
  %tobool19.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool19.not.i.i.i, label %if.end17.i.i.i.mlx5e_add_l2_to_hash.exit.i.i_crit_edge, label %if.end21.i.i.i

if.end17.i.i.i.mlx5e_add_l2_to_hash.exit.i.i_crit_edge: ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_add_l2_to_hash.exit.i.i

if.end21.i.i.i:                                   ; preds = %if.end17.i.i.i
  %ai22.i.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %72, align 4
  %88 = ptrtoint ptr %ai22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %ai22.i.i.i, align 4
  %89 = ptrtoint ptr %add.ptr1.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr1.i.i.i.i.i, align 2
  %add.ptr1.i.i.i.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 0, i32 4
  %91 = ptrtoint ptr %add.ptr1.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %90, ptr %add.ptr1.i.i.i.i, align 8
  %action25.i.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %92 = ptrtoint ptr %action25.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %action25.i.i.i, align 8
  %93 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i.i, align 4
  %95 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %94, ptr %call7.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %94, null
  br i1 %tobool.not.i.i.i.i, label %if.end21.i.i.i.hlist_add_head.exit.i.i.i_crit_edge, label %do.body12.i.i.i.i

if.end21.i.i.i.hlist_add_head.exit.i.i.i_crit_edge: ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit.i.i.i

do.body12.i.i.i.i:                                ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %94, i32 0, i32 1
  %96 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %call7.i.i.i.i.i, ptr %pprev.i.i.i.i, align 4
  br label %hlist_add_head.exit.i.i.i

hlist_add_head.exit.i.i.i:                        ; preds = %do.body12.i.i.i.i, %if.end21.i.i.i.hlist_add_head.exit.i.i.i_crit_edge
  %97 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %call7.i.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %arrayidx.i.i.i, ptr %pprev34.i.i.i.i, align 4
  br label %mlx5e_add_l2_to_hash.exit.i.i

mlx5e_add_l2_to_hash.exit.i.i:                    ; preds = %hlist_add_head.exit.i.i.i, %if.end17.i.i.i.mlx5e_add_l2_to_hash.exit.i.i_crit_edge, %if.then16.critedge.i.i.i
  %uc.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 65
  %99 = ptrtoint ptr %uc.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %ha.0120.i.i = load ptr, ptr %uc.i.i, align 4
  %cmp.not121.i.i = icmp eq ptr %ha.0120.i.i, %uc.i.i
  br i1 %cmp.not121.i.i, label %mlx5e_add_l2_to_hash.exit.i.i.for.end.i.i_crit_edge, label %mlx5e_add_l2_to_hash.exit.i.i.for.body.i.i_crit_edge

mlx5e_add_l2_to_hash.exit.i.i.for.body.i.i_crit_edge: ; preds = %mlx5e_add_l2_to_hash.exit.i.i
  br label %for.body.i.i

mlx5e_add_l2_to_hash.exit.i.i.for.end.i.i_crit_edge: ; preds = %mlx5e_add_l2_to_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %mlx5e_add_l2_to_hash.exit84.i.i.for.body.i.i_crit_edge, %mlx5e_add_l2_to_hash.exit.i.i.for.body.i.i_crit_edge
  %ha.0122.i.i = phi ptr [ %ha.0.i.i, %mlx5e_add_l2_to_hash.exit84.i.i.for.body.i.i_crit_edge ], [ %ha.0120.i.i, %mlx5e_add_l2_to_hash.exit.i.i.for.body.i.i_crit_edge ]
  %addr.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0122.i.i, i32 0, i32 2
  %arrayidx.i.i54.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0122.i.i, i32 0, i32 2, i32 5
  %100 = ptrtoint ptr %arrayidx.i.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx.i.i54.i.i, align 1
  %conv.i.i55.i.i = zext i8 %101 to i32
  %arrayidx.i56.i.i = getelementptr %struct.hlist_head, ptr %netdev_uc.i.i, i32 %conv.i.i55.i.i
  %add.ptr1.i.i.i57.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0122.i.i, i32 0, i32 2, i32 4
  br label %for.cond.i61.i.i

for.cond.i61.i.i:                                 ; preds = %for.body.i69.i.i.for.cond.i61.i.i_crit_edge, %for.body.i.i
  %hn.0.in.i58.i.i = phi ptr [ %arrayidx.i56.i.i, %for.body.i.i ], [ %hn.0.i59.i.i, %for.body.i69.i.i.for.cond.i61.i.i_crit_edge ]
  %102 = ptrtoint ptr %hn.0.in.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %hn.0.i59.i.i = load ptr, ptr %hn.0.in.i58.i.i, align 4
  %tobool2.not.i60.i.i = icmp eq ptr %hn.0.i59.i.i, null
  br i1 %tobool2.not.i60.i.i, label %if.end17.i74.i.i, label %for.body.i69.i.i

for.body.i69.i.i:                                 ; preds = %for.cond.i61.i.i
  %ai.i62.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.0.i59.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %ai.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ai.i62.i.i, align 4
  %105 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %addr.i.i, align 4
  %xor.i.i.i63.i.i = xor i32 %106, %104
  %add.ptr.i.i.i64.i.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %hn.0.i59.i.i, i32 0, i32 2, i32 0, i32 4
  %107 = ptrtoint ptr %add.ptr.i.i.i64.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %add.ptr.i.i.i64.i.i, align 2
  %109 = ptrtoint ptr %add.ptr1.i.i.i57.i.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %add.ptr1.i.i.i57.i.i, align 2
  %xor37.i.i.i65.i.i = xor i16 %110, %108
  %xor3.i.i.i66.i.i = zext i16 %xor37.i.i.i65.i.i to i32
  %or.i.i.i67.i.i = or i32 %xor.i.i.i63.i.i, %xor3.i.i.i66.i.i
  %cmp.i.i.i68.i.i = icmp eq i32 %or.i.i.i67.i.i, 0
  br i1 %cmp.i.i.i68.i.i, label %if.then16.critedge.i71.i.i, label %for.body.i69.i.i.for.cond.i61.i.i_crit_edge

for.body.i69.i.i.for.cond.i61.i.i_crit_edge:      ; preds = %for.body.i69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i61.i.i

if.then16.critedge.i71.i.i:                       ; preds = %for.body.i69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %action.i70.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.0.i59.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %action.i70.i.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %action.i70.i.i, align 4
  br label %mlx5e_add_l2_to_hash.exit84.i.i

if.end17.i74.i.i:                                 ; preds = %for.cond.i61.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %112 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i72.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %112, i32 noundef 2848, i32 noundef 28) #16
  %tobool19.not.i73.i.i = icmp eq ptr %call7.i.i.i72.i.i, null
  br i1 %tobool19.not.i73.i.i, label %if.end17.i74.i.i.mlx5e_add_l2_to_hash.exit84.i.i_crit_edge, label %if.end21.i79.i.i

if.end17.i74.i.i.mlx5e_add_l2_to_hash.exit84.i.i_crit_edge: ; preds = %if.end17.i74.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_add_l2_to_hash.exit84.i.i

if.end21.i79.i.i:                                 ; preds = %if.end17.i74.i.i
  %ai22.i75.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i72.i.i, i32 0, i32 2
  %113 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %addr.i.i, align 4
  %115 = ptrtoint ptr %ai22.i75.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %ai22.i75.i.i, align 4
  %116 = ptrtoint ptr %add.ptr1.i.i.i57.i.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr1.i.i.i57.i.i, align 2
  %add.ptr1.i.i76.i.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i72.i.i, i32 0, i32 2, i32 0, i32 4
  %118 = ptrtoint ptr %add.ptr1.i.i76.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %add.ptr1.i.i76.i.i, align 8
  %action25.i77.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i72.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %action25.i77.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %action25.i77.i.i, align 8
  %120 = ptrtoint ptr %arrayidx.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i56.i.i, align 4
  %122 = ptrtoint ptr %call7.i.i.i72.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %121, ptr %call7.i.i.i72.i.i, align 8
  %tobool.not.i.i78.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i78.i.i, label %if.end21.i79.i.i.hlist_add_head.exit.i83.i.i_crit_edge, label %do.body12.i.i81.i.i

if.end21.i79.i.i.hlist_add_head.exit.i83.i.i_crit_edge: ; preds = %if.end21.i79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit.i83.i.i

do.body12.i.i81.i.i:                              ; preds = %if.end21.i79.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i80.i.i = getelementptr inbounds %struct.hlist_node, ptr %121, i32 0, i32 1
  %123 = ptrtoint ptr %pprev.i.i80.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %call7.i.i.i72.i.i, ptr %pprev.i.i80.i.i, align 4
  br label %hlist_add_head.exit.i83.i.i

hlist_add_head.exit.i83.i.i:                      ; preds = %do.body12.i.i81.i.i, %if.end21.i79.i.i.hlist_add_head.exit.i83.i.i_crit_edge
  %124 = ptrtoint ptr %arrayidx.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %call7.i.i.i72.i.i, ptr %arrayidx.i56.i.i, align 4
  %pprev34.i.i82.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i72.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %pprev34.i.i82.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %arrayidx.i56.i.i, ptr %pprev34.i.i82.i.i, align 4
  br label %mlx5e_add_l2_to_hash.exit84.i.i

mlx5e_add_l2_to_hash.exit84.i.i:                  ; preds = %hlist_add_head.exit.i83.i.i, %if.end17.i74.i.i.mlx5e_add_l2_to_hash.exit84.i.i_crit_edge, %if.then16.critedge.i71.i.i
  %126 = ptrtoint ptr %ha.0122.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %ha.0.i.i = load ptr, ptr %ha.0122.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ha.0.i.i, %uc.i.i
  br i1 %cmp.not.i.i, label %mlx5e_add_l2_to_hash.exit84.i.i.for.end.i.i_crit_edge, label %mlx5e_add_l2_to_hash.exit84.i.i.for.body.i.i_crit_edge

mlx5e_add_l2_to_hash.exit84.i.i.for.body.i.i_crit_edge: ; preds = %mlx5e_add_l2_to_hash.exit84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

mlx5e_add_l2_to_hash.exit84.i.i.for.end.i.i_crit_edge: ; preds = %mlx5e_add_l2_to_hash.exit84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %mlx5e_add_l2_to_hash.exit84.i.i.for.end.i.i_crit_edge, %mlx5e_add_l2_to_hash.exit.i.i.for.end.i.i_crit_edge
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 66
  %127 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %ha.1123.i.i = load ptr, ptr %mc.i.i, align 4
  %cmp25.not124.i.i = icmp eq ptr %ha.1123.i.i, %mc.i.i
  br i1 %cmp25.not124.i.i, label %for.end.i.i.mlx5e_sync_netdev_addr.exit.i_crit_edge, label %for.body27.lr.ph.i.i

for.end.i.i.mlx5e_sync_netdev_addr.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_sync_netdev_addr.exit.i

for.body27.lr.ph.i.i:                             ; preds = %for.end.i.i
  %netdev_mc.i.i = getelementptr i8, ptr %work, i32 -1132
  br label %for.body27.i.i

for.body27.i.i:                                   ; preds = %mlx5e_add_l2_to_hash.exit115.i.i.for.body27.i.i_crit_edge, %for.body27.lr.ph.i.i
  %ha.1125.i.i = phi ptr [ %ha.1123.i.i, %for.body27.lr.ph.i.i ], [ %ha.1.i.i, %mlx5e_add_l2_to_hash.exit115.i.i.for.body27.i.i_crit_edge ]
  %addr31.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1125.i.i, i32 0, i32 2
  %arrayidx.i.i85.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1125.i.i, i32 0, i32 2, i32 5
  %128 = ptrtoint ptr %arrayidx.i.i85.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx.i.i85.i.i, align 1
  %conv.i.i86.i.i = zext i8 %129 to i32
  %arrayidx.i87.i.i = getelementptr %struct.hlist_head, ptr %netdev_mc.i.i, i32 %conv.i.i86.i.i
  %add.ptr1.i.i.i88.i.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1125.i.i, i32 0, i32 2, i32 4
  br label %for.cond.i92.i.i

for.cond.i92.i.i:                                 ; preds = %for.body.i100.i.i.for.cond.i92.i.i_crit_edge, %for.body27.i.i
  %hn.0.in.i89.i.i = phi ptr [ %arrayidx.i87.i.i, %for.body27.i.i ], [ %hn.0.i90.i.i, %for.body.i100.i.i.for.cond.i92.i.i_crit_edge ]
  %130 = ptrtoint ptr %hn.0.in.i89.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %hn.0.i90.i.i = load ptr, ptr %hn.0.in.i89.i.i, align 4
  %tobool2.not.i91.i.i = icmp eq ptr %hn.0.i90.i.i, null
  br i1 %tobool2.not.i91.i.i, label %if.end17.i105.i.i, label %for.body.i100.i.i

for.body.i100.i.i:                                ; preds = %for.cond.i92.i.i
  %ai.i93.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.0.i90.i.i, i32 0, i32 2
  %131 = ptrtoint ptr %ai.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %ai.i93.i.i, align 4
  %133 = ptrtoint ptr %addr31.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %addr31.i.i, align 4
  %xor.i.i.i94.i.i = xor i32 %134, %132
  %add.ptr.i.i.i95.i.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %hn.0.i90.i.i, i32 0, i32 2, i32 0, i32 4
  %135 = ptrtoint ptr %add.ptr.i.i.i95.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %add.ptr.i.i.i95.i.i, align 2
  %137 = ptrtoint ptr %add.ptr1.i.i.i88.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr1.i.i.i88.i.i, align 2
  %xor37.i.i.i96.i.i = xor i16 %138, %136
  %xor3.i.i.i97.i.i = zext i16 %xor37.i.i.i96.i.i to i32
  %or.i.i.i98.i.i = or i32 %xor.i.i.i94.i.i, %xor3.i.i.i97.i.i
  %cmp.i.i.i99.i.i = icmp eq i32 %or.i.i.i98.i.i, 0
  br i1 %cmp.i.i.i99.i.i, label %if.then16.critedge.i102.i.i, label %for.body.i100.i.i.for.cond.i92.i.i_crit_edge

for.body.i100.i.i.for.cond.i92.i.i_crit_edge:     ; preds = %for.body.i100.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i92.i.i

if.then16.critedge.i102.i.i:                      ; preds = %for.body.i100.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %action.i101.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.0.i90.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %action.i101.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %action.i101.i.i, align 4
  br label %mlx5e_add_l2_to_hash.exit115.i.i

if.end17.i105.i.i:                                ; preds = %for.cond.i92.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %140 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i103.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %140, i32 noundef 2848, i32 noundef 28) #16
  %tobool19.not.i104.i.i = icmp eq ptr %call7.i.i.i103.i.i, null
  br i1 %tobool19.not.i104.i.i, label %if.end17.i105.i.i.mlx5e_add_l2_to_hash.exit115.i.i_crit_edge, label %if.end21.i110.i.i

if.end17.i105.i.i.mlx5e_add_l2_to_hash.exit115.i.i_crit_edge: ; preds = %if.end17.i105.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_add_l2_to_hash.exit115.i.i

if.end21.i110.i.i:                                ; preds = %if.end17.i105.i.i
  %ai22.i106.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i103.i.i, i32 0, i32 2
  %141 = ptrtoint ptr %addr31.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %addr31.i.i, align 4
  %143 = ptrtoint ptr %ai22.i106.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %ai22.i106.i.i, align 4
  %144 = ptrtoint ptr %add.ptr1.i.i.i88.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %add.ptr1.i.i.i88.i.i, align 2
  %add.ptr1.i.i107.i.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i103.i.i, i32 0, i32 2, i32 0, i32 4
  %146 = ptrtoint ptr %add.ptr1.i.i107.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 %145, ptr %add.ptr1.i.i107.i.i, align 8
  %action25.i108.i.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %call7.i.i.i103.i.i, i32 0, i32 1
  %147 = ptrtoint ptr %action25.i108.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 1, ptr %action25.i108.i.i, align 8
  %148 = ptrtoint ptr %arrayidx.i87.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i87.i.i, align 4
  %150 = ptrtoint ptr %call7.i.i.i103.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %149, ptr %call7.i.i.i103.i.i, align 8
  %tobool.not.i.i109.i.i = icmp eq ptr %149, null
  br i1 %tobool.not.i.i109.i.i, label %if.end21.i110.i.i.hlist_add_head.exit.i114.i.i_crit_edge, label %do.body12.i.i112.i.i

if.end21.i110.i.i.hlist_add_head.exit.i114.i.i_crit_edge: ; preds = %if.end21.i110.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head.exit.i114.i.i

do.body12.i.i112.i.i:                             ; preds = %if.end21.i110.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i111.i.i = getelementptr inbounds %struct.hlist_node, ptr %149, i32 0, i32 1
  %151 = ptrtoint ptr %pprev.i.i111.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile ptr %call7.i.i.i103.i.i, ptr %pprev.i.i111.i.i, align 4
  br label %hlist_add_head.exit.i114.i.i

hlist_add_head.exit.i114.i.i:                     ; preds = %do.body12.i.i112.i.i, %if.end21.i110.i.i.hlist_add_head.exit.i114.i.i_crit_edge
  %152 = ptrtoint ptr %arrayidx.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %call7.i.i.i103.i.i, ptr %arrayidx.i87.i.i, align 4
  %pprev34.i.i113.i.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i.i103.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %pprev34.i.i113.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %arrayidx.i87.i.i, ptr %pprev34.i.i113.i.i, align 4
  br label %mlx5e_add_l2_to_hash.exit115.i.i

mlx5e_add_l2_to_hash.exit115.i.i:                 ; preds = %hlist_add_head.exit.i114.i.i, %if.end17.i105.i.i.mlx5e_add_l2_to_hash.exit115.i.i_crit_edge, %if.then16.critedge.i102.i.i
  %154 = ptrtoint ptr %ha.1125.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %ha.1.i.i = load ptr, ptr %ha.1125.i.i, align 4
  %cmp25.not.i.i = icmp eq ptr %ha.1.i.i, %mc.i.i
  br i1 %cmp25.not.i.i, label %mlx5e_add_l2_to_hash.exit115.i.i.mlx5e_sync_netdev_addr.exit.i_crit_edge, label %mlx5e_add_l2_to_hash.exit115.i.i.for.body27.i.i_crit_edge

mlx5e_add_l2_to_hash.exit115.i.i.for.body27.i.i_crit_edge: ; preds = %mlx5e_add_l2_to_hash.exit115.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body27.i.i

mlx5e_add_l2_to_hash.exit115.i.i.mlx5e_sync_netdev_addr.exit.i_crit_edge: ; preds = %mlx5e_add_l2_to_hash.exit115.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_sync_netdev_addr.exit.i

mlx5e_sync_netdev_addr.exit.i:                    ; preds = %mlx5e_add_l2_to_hash.exit115.i.i.mlx5e_sync_netdev_addr.exit.i_crit_edge, %for.end.i.i.mlx5e_sync_netdev_addr.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %addr_list_lock.i.i.i) #11
  br label %for.body.i86.i.preheader

for.body.i86.i.preheader:                         ; preds = %mlx5e_sync_netdev_addr.exit.i, %for.end61.i.for.body.i86.i.preheader_crit_edge
  br label %for.body.i86.i

for.body.i86.i:                                   ; preds = %for.inc18.i.i.for.body.i86.i_crit_edge, %for.body.i86.i.preheader
  %i.085.i.i = phi i32 [ %inc.i.i, %for.inc18.i.i.for.body.i86.i_crit_edge ], [ 0, %for.body.i86.i.preheader ]
  %arrayidx.i.i = getelementptr %struct.mlx5e_priv, ptr %add.ptr, i32 0, i32 13, i32 6, i32 1, i32 %i.085.i.i
  %155 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not83.i.i = icmp eq ptr %156, null
  br i1 %tobool4.not83.i.i, label %for.body.i86.i.for.inc18.i.i_crit_edge, label %for.body.i86.i.land.rhs.i.i_crit_edge

for.body.i86.i.land.rhs.i.i_crit_edge:            ; preds = %for.body.i86.i
  br label %land.rhs.i.i

for.body.i86.i.for.inc18.i.i_crit_edge:           ; preds = %for.body.i86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc18.i.i

land.rhs.i.i:                                     ; preds = %land.rhs.i.i.land.rhs.i.i_crit_edge, %for.body.i86.i.land.rhs.i.i_crit_edge
  %hn.084.i.i = phi ptr [ %158, %land.rhs.i.i.land.rhs.i.i_crit_edge ], [ %156, %for.body.i86.i.land.rhs.i.i_crit_edge ]
  %157 = ptrtoint ptr %hn.084.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hn.084.i.i, align 4
  call fastcc void @mlx5e_execute_l2_action(ptr noundef %add.ptr, ptr noundef nonnull %hn.084.i.i) #11
  %tobool4.not.i.i = icmp eq ptr %158, null
  br i1 %tobool4.not.i.i, label %land.rhs.i.i.for.inc18.i.i_crit_edge, label %land.rhs.i.i.land.rhs.i.i_crit_edge

land.rhs.i.i.land.rhs.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i.i

land.rhs.i.i.for.inc18.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc18.i.i

for.inc18.i.i:                                    ; preds = %land.rhs.i.i.for.inc18.i.i_crit_edge, %for.body.i86.i.for.inc18.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.085.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %for.inc18.i.i.for.body22.i.i_crit_edge, label %for.inc18.i.i.for.body.i86.i_crit_edge

for.inc18.i.i.for.body.i86.i_crit_edge:           ; preds = %for.inc18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i86.i

for.inc18.i.i.for.body22.i.i_crit_edge:           ; preds = %for.inc18.i.i
  br label %for.body22.i.i

for.body22.i.i:                                   ; preds = %for.inc58.i.i.for.body22.i.i_crit_edge, %for.inc18.i.i.for.body22.i.i_crit_edge
  %i.188.i.i = phi i32 [ %inc59.i.i, %for.inc58.i.i.for.body22.i.i_crit_edge ], [ 0, %for.inc18.i.i.for.body22.i.i_crit_edge ]
  %arrayidx26.i.i = getelementptr %struct.mlx5e_priv, ptr %add.ptr, i32 0, i32 13, i32 6, i32 2, i32 %i.188.i.i
  %159 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx26.i.i, align 4
  %tobool38.not86.i.i = icmp eq ptr %160, null
  br i1 %tobool38.not86.i.i, label %for.body22.i.i.for.inc58.i.i_crit_edge, label %for.body22.i.i.land.rhs39.i.i_crit_edge

for.body22.i.i.land.rhs39.i.i_crit_edge:          ; preds = %for.body22.i.i
  br label %land.rhs39.i.i

for.body22.i.i.for.inc58.i.i_crit_edge:           ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc58.i.i

land.rhs39.i.i:                                   ; preds = %land.rhs39.i.i.land.rhs39.i.i_crit_edge, %for.body22.i.i.land.rhs39.i.i_crit_edge
  %hn.187.i.i = phi ptr [ %162, %land.rhs39.i.i.land.rhs39.i.i_crit_edge ], [ %160, %for.body22.i.i.land.rhs39.i.i_crit_edge ]
  %161 = ptrtoint ptr %hn.187.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hn.187.i.i, align 4
  call fastcc void @mlx5e_execute_l2_action(ptr noundef %add.ptr, ptr noundef nonnull %hn.187.i.i) #11
  %tobool38.not.i.i = icmp eq ptr %162, null
  br i1 %tobool38.not.i.i, label %land.rhs39.i.i.for.inc58.i.i_crit_edge, label %land.rhs39.i.i.land.rhs39.i.i_crit_edge

land.rhs39.i.i.land.rhs39.i.i_crit_edge:          ; preds = %land.rhs39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs39.i.i

land.rhs39.i.i.for.inc58.i.i_crit_edge:           ; preds = %land.rhs39.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc58.i.i

for.inc58.i.i:                                    ; preds = %land.rhs39.i.i.for.inc58.i.i_crit_edge, %for.body22.i.i.for.inc58.i.i_crit_edge
  %inc59.i.i = add nuw nsw i32 %i.188.i.i, 1
  %exitcond89.not.i.i = icmp eq i32 %inc59.i.i, 256
  br i1 %exitcond89.not.i.i, label %mlx5e_handle_netdev_addr.exit, label %for.inc58.i.i.for.body22.i.i_crit_edge

for.inc58.i.i.for.body22.i.i_crit_edge:           ; preds = %for.inc58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i.i

mlx5e_handle_netdev_addr.exit:                    ; preds = %for.inc58.i.i
  br i1 %19, label %if.then73, label %mlx5e_handle_netdev_addr.exit.if.end75_crit_edge

mlx5e_handle_netdev_addr.exit.if.end75_crit_edge: ; preds = %mlx5e_handle_netdev_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then73:                                        ; preds = %mlx5e_handle_netdev_addr.exit
  %rule.i = getelementptr i8, ptr %work, i32 -100
  %163 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rule.i, align 4
  %tobool.not.i.i129 = icmp eq ptr %164, null
  %cmp.i.i130 = icmp ugt ptr %164, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i129, %cmp.i.i130
  br i1 %spec.select.i.i, label %if.then73.if.end75_crit_edge, label %if.then.i131

if.then73.if.end75_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then.i131:                                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5_del_flow_rules(ptr noundef nonnull %164) #11
  %165 = ptrtoint ptr %rule.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %rule.i, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then.i131, %if.then73.if.end75_crit_edge, %mlx5e_handle_netdev_addr.exit.if.end75_crit_edge
  br i1 %15, label %if.end75.if.end79_crit_edge, label %if.then77

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then77:                                        ; preds = %if.end75
  %rule.i133 = getelementptr i8, ptr %work, i32 -88
  %166 = ptrtoint ptr %rule.i133 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rule.i133, align 4
  %tobool.not.i.i134 = icmp eq ptr %167, null
  %cmp.i.i135 = icmp ugt ptr %167, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i136 = or i1 %tobool.not.i.i134, %cmp.i.i135
  br i1 %spec.select.i.i136, label %if.then77.if.end79_crit_edge, label %if.then.i137

if.then77.if.end79_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79

if.then.i137:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5_del_flow_rules(ptr noundef nonnull %167) #11
  %168 = ptrtoint ptr %rule.i133 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %rule.i133, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then.i137, %if.then77.if.end79_crit_edge, %if.end75.if.end79_crit_edge
  br i1 %11, label %if.end79.if.end82_crit_edge, label %if.then81

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then81:                                        ; preds = %if.end79
  %t.i140 = getelementptr i8, ptr %work, i32 -2184
  %169 = ptrtoint ptr %t.i140 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %t.i140, align 4
  %tobool.not.i = icmp eq ptr %170, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.critedge.i, !prof !75

do.end.i:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 775, i32 noundef 9, ptr noundef nonnull @.str.19) #11
  br label %if.end82

if.end23.critedge.i:                              ; preds = %if.then81
  %rule.i.i141 = getelementptr i8, ptr %work, i32 -2176
  %171 = ptrtoint ptr %rule.i.i141 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rule.i.i141, align 4
  %tobool.not.i.i142 = icmp eq ptr %172, null
  br i1 %tobool.not.i.i142, label %do.end.i.i, label %if.end23.critedge.i.i, !prof !75

do.end.i.i:                                       ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 767, i32 noundef 9, ptr noundef nonnull @.str.20) #11
  br label %mlx5e_del_promisc_rule.exit.i

if.end23.critedge.i.i:                            ; preds = %if.end23.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5_del_flow_rules(ptr noundef nonnull %172) #11
  %173 = ptrtoint ptr %rule.i.i141 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %rule.i.i141, align 4
  br label %mlx5e_del_promisc_rule.exit.i

mlx5e_del_promisc_rule.exit.i:                    ; preds = %if.end23.critedge.i.i, %do.end.i.i
  %174 = ptrtoint ptr %t.i140 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %t.i140, align 4
  %call.i143 = call i32 @mlx5_destroy_flow_table(ptr noundef %175) #11
  %176 = ptrtoint ptr %t.i140 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %t.i140, align 4
  br label %if.end82

if.end82:                                         ; preds = %mlx5e_del_promisc_rule.exit.i, %do.end.i, %if.end79.if.end82_crit_edge
  %frombool10 = zext i1 %8 to i8
  %frombool3 = zext i1 %7 to i8
  %frombool = zext i1 %lnot to i8
  %177 = ptrtoint ptr %promisc_enabled13 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %frombool3, ptr %promisc_enabled13, align 2
  %178 = ptrtoint ptr %allmulti_enabled26 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %frombool10, ptr %allmulti_enabled26, align 1
  %179 = ptrtoint ptr %broadcast_enabled39 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %frombool, ptr %broadcast_enabled39, align 4
  call fastcc void @mlx5e_vport_context_update_addr_list(ptr noundef %add.ptr, i32 noundef 0) #11
  call fastcc void @mlx5e_vport_context_update_addr_list(ptr noundef %add.ptr, i32 noundef 1) #11
  %mdev.i = getelementptr i8, ptr %work, i32 192
  %180 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mdev.i, align 64
  %182 = ptrtoint ptr %allmulti_enabled26 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %allmulti_enabled26, align 1, !range !73
  %184 = zext i8 %183 to i32
  %185 = ptrtoint ptr %promisc_enabled13 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %promisc_enabled13, align 2, !range !73
  %187 = zext i8 %186 to i32
  %call.i144 = call i32 @mlx5_modify_nic_vport_promisc(ptr noundef %181, i32 noundef 0, i32 noundef %184, i32 noundef %187) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_add_l2_flow_rule(ptr nocapture noundef readonly %priv, ptr nocapture noundef %ai, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %dest = alloca %struct.mlx5_flow_destination, align 4
  %flow_act = alloca %struct.mlx5_flow_act, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %t = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 1
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %dest) #11
  %2 = getelementptr inbounds i8, ptr %dest, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %flow_act) #11
  %4 = getelementptr inbounds i8, ptr %flow_act, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 32)
  %6 = ptrtoint ptr %flow_act to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flow_act, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 1040, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 1, i32 2
  %add.ptr3 = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dest, align 4
  %ttc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %8 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ttc, align 4
  %call6 = tail call ptr @mlx5_get_ttc_flow_table(ptr noundef %9) #11
  %10 = getelementptr inbounds %struct.mlx5_flow_destination, ptr %dest, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call6, ptr %10, align 4
  %12 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %type, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %call.i.i, align 4
  %14 = call ptr @memset(ptr %add.ptr, i32 255, i32 6)
  %15 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ai, align 4
  %17 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %add.ptr3, align 4
  %add.ptr.i = getelementptr i8, ptr %ai, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mlx5_flow_spec, ptr %call.i.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr1.i, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %call.i.i, align 4
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %add.ptr, align 1
  %23 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %add.ptr3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %if.end.sw.epilog_crit_edge
  %call11 = call ptr @mlx5_add_flow_rules(ptr noundef %1, ptr noundef nonnull %call.i.i, ptr noundef nonnull %flow_act, ptr noundef nonnull %dest, i32 noundef 1) #11
  %rule = getelementptr inbounds %struct.mlx5e_l2_rule, ptr %ai, i32 0, i32 1
  %24 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call11, ptr %rule, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %sw.epilog.if.end18_crit_edge

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %25 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.mlx5e_add_l2_flow_rule, ptr noundef %add.ptr3) #15
  %27 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rule, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %sw.epilog.if.end18_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %flow_act) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %dest) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlx5e_init_l2_addr(ptr nocapture noundef %priv) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %broadcast = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 3
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %broadcast1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 99
  %2 = ptrtoint ptr %broadcast1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %broadcast1, align 4
  %4 = ptrtoint ptr %broadcast to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %broadcast, align 4
  %add.ptr.i = getelementptr %struct.net_device, ptr %1, i32 0, i32 99, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 3, i32 0, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_destroy_flow_table(ptr nocapture noundef %ft) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ft to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ft, align 4
  %i.014.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.014.i)
  %cmp15.i = icmp sgt i32 %i.014.i, -1
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %entry.mlx5e_destroy_groups.exit_crit_edge

entry.mlx5e_destroy_groups.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_groups.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %g.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %ft, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ %i.014.i, %for.body.lr.ph.i ], [ %i.0.i, %if.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %g.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %i.016.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %5) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %6 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %g.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %7, i32 %i.016.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx4.i, align 4
  %i.0.i = add i32 %i.016.i, -1
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.mlx5e_destroy_groups.exit_crit_edge

if.end.i.mlx5e_destroy_groups.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_groups.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

mlx5e_destroy_groups.exit:                        ; preds = %if.end.i.mlx5e_destroy_groups.exit_crit_edge, %entry.mlx5e_destroy_groups.exit_crit_edge
  %9 = ptrtoint ptr %ft to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %ft, align 4
  %g = getelementptr inbounds %struct.mlx5e_flow_table, ptr %ft, i32 0, i32 2
  %10 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %g, align 4
  tail call void @kfree(ptr noundef %11) #11
  %t = getelementptr inbounds %struct.mlx5e_flow_table, ptr %ft, i32 0, i32 1
  %12 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t, align 4
  %call = tail call i32 @mlx5_destroy_flow_table(ptr noundef %13) #11
  %14 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %t, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_destroy_flow_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_set_ttc_params(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %ttc_params, i1 noundef zeroext %tunnel) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ft_attr1 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params, i32 0, i32 1
  %0 = call ptr @memset(ptr %ttc_params, i32 0, i32 316)
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %call = tail call ptr @mlx5_get_flow_namespace(ptr noundef %2, i32 noundef 4) #11
  %3 = ptrtoint ptr %ttc_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %ttc_params, align 4
  %level = getelementptr inbounds %struct.ttc_params, ptr %ttc_params, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %level, align 4
  %5 = ptrtoint ptr %ft_attr1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %ft_attr1, align 4
  %arrayidx53 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %arrayidx53, align 4
  %rx_res4 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %7 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_res4, align 4
  %call5 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %8, i32 noundef 0) #11
  %9 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call5, ptr %9, align 4
  %arrayidx = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_res4, align 4
  %call5.1 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %13, i32 noundef 1) #11
  %14 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 1, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call5.1, ptr %14, align 4
  %arrayidx.1 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %arrayidx.1, align 4
  %17 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_res4, align 4
  %call5.2 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %18, i32 noundef 2) #11
  %19 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 2, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call5.2, ptr %19, align 4
  %arrayidx.2 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %arrayidx.2, align 4
  %22 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_res4, align 4
  %call5.3 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %23, i32 noundef 3) #11
  %24 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 3, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call5.3, ptr %24, align 4
  %arrayidx.3 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %arrayidx.3, align 4
  %27 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_res4, align 4
  %call5.4 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %28, i32 noundef 4) #11
  %29 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 4, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call5.4, ptr %29, align 4
  %arrayidx.4 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %arrayidx.4, align 4
  %32 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_res4, align 4
  %call5.5 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %33, i32 noundef 5) #11
  %34 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 5, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call5.5, ptr %34, align 4
  %arrayidx.5 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 6
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %arrayidx.5, align 4
  %37 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_res4, align 4
  %call5.6 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %38, i32 noundef 6) #11
  %39 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 6, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call5.6, ptr %39, align 4
  %arrayidx.6 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 7
  %41 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %arrayidx.6, align 4
  %42 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_res4, align 4
  %call5.7 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %43, i32 noundef 7) #11
  %44 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 7, i32 1
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call5.7, ptr %44, align 4
  %arrayidx.7 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 8
  %46 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %arrayidx.7, align 4
  %47 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_res4, align 4
  %call5.8 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %48, i32 noundef 8) #11
  %49 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 8, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call5.8, ptr %49, align 4
  %arrayidx.8 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 9
  %51 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %arrayidx.8, align 4
  %52 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_res4, align 4
  %call5.9 = tail call i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef %53, i32 noundef 9) #11
  %54 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 9, i32 1
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call5.9, ptr %54, align 4
  %arrayidx.9 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 10
  %56 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %arrayidx.9, align 4
  %57 = ptrtoint ptr %rx_res4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_res4, align 4
  %call3 = tail call i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef %58, i32 noundef 0) #11
  %59 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 2, i32 10, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call3, ptr %59, align 4
  %frombool = zext i1 %tunnel to i8
  %inner_ttc = getelementptr inbounds %struct.ttc_params, ptr %ttc_params, i32 0, i32 4
  %61 = ptrtoint ptr %inner_ttc to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool, ptr %inner_ttc, align 4
  br i1 %tunnel, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %62 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mdev, align 64
  %call11 = tail call zeroext i1 @mlx5_tunnel_inner_ft_supported(ptr noundef %63) #11
  br i1 %call11, label %for.cond12.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond12.preheader:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %inner_ttc17 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 8
  %arrayidx15 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 0
  %64 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %arrayidx15, align 4
  %65 = ptrtoint ptr %inner_ttc17 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %inner_ttc17, align 4
  %call18 = tail call ptr @mlx5_get_ttc_flow_table(ptr noundef %66) #11
  %67 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call18, ptr %67, align 4
  %arrayidx15.1 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %arrayidx15.1, align 4
  %70 = ptrtoint ptr %inner_ttc17 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inner_ttc17, align 4
  %call18.1 = tail call ptr @mlx5_get_ttc_flow_table(ptr noundef %71) #11
  %72 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 1, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call18.1, ptr %72, align 4
  %arrayidx15.2 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 2
  %74 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %arrayidx15.2, align 4
  %75 = ptrtoint ptr %inner_ttc17 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %inner_ttc17, align 4
  %call18.2 = tail call ptr @mlx5_get_ttc_flow_table(ptr noundef %76) #11
  %77 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 2, i32 1
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call18.2, ptr %77, align 4
  %arrayidx15.3 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 3
  %79 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %arrayidx15.3, align 4
  %80 = ptrtoint ptr %inner_ttc17 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %inner_ttc17, align 4
  %call18.3 = tail call ptr @mlx5_get_ttc_flow_table(ptr noundef %81) #11
  %82 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 3, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call18.3, ptr %82, align 4
  %arrayidx15.4 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 4
  %84 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %arrayidx15.4, align 4
  %85 = ptrtoint ptr %inner_ttc17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %inner_ttc17, align 4
  %call18.4 = tail call ptr @mlx5_get_ttc_flow_table(ptr noundef %86) #11
  %87 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 4, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call18.4, ptr %87, align 4
  %arrayidx15.5 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 5
  %89 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %arrayidx15.5, align 4
  %90 = ptrtoint ptr %inner_ttc17 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %inner_ttc17, align 4
  %call18.5 = tail call ptr @mlx5_get_ttc_flow_table(ptr noundef %91) #11
  %92 = getelementptr %struct.ttc_params, ptr %ttc_params, i32 0, i32 6, i32 5, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call18.5, ptr %92, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.cond12.preheader, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_flow_namespace(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_rss(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlx5_tunnel_inner_ft_supported(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_get_ttc_flow_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_destroy_ttc_table(ptr nocapture noundef readonly %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ttc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %0 = ptrtoint ptr %ttc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ttc, align 4
  tail call void @mlx5_destroy_ttc_table(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_ttc_table(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_create_ttc_table(ptr nocapture noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %ttc_params = alloca %struct.ttc_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %ttc_params) #11
  %0 = call ptr @memset(ptr %ttc_params, i32 0, i32 316)
  call void @mlx5e_set_ttc_params(ptr noundef %priv, ptr noundef nonnull %ttc_params, i1 noundef zeroext true)
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdev, align 64
  %call = call ptr @mlx5_create_ttc_table(ptr noundef %2, ptr noundef nonnull %ttc_params) #11
  %ttc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %3 = ptrtoint ptr %ttc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %ttc, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %4, i32 0
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params) #11
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_ttc_table(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_create_flow_steering(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  %ft_attr.i73 = alloca %struct.mlx5_flow_table_attr, align 4
  %ft_attr.i = alloca %struct.mlx5_flow_table_attr, align 4
  %ttc_params.i63 = alloca %struct.ttc_params, align 4
  %ttc_params.i = alloca %struct.ttc_params, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %call = tail call ptr @mlx5_get_flow_namespace(ptr noundef %1, i32 noundef 4) #11
  %fs = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %fs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fs, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @mlx5e_arfs_create_tables(ptr noundef %priv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %3 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %call3) #15
  %5 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %netdev, align 4
  %hw_features = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %hw_features, align 8
  %and = and i64 %8, -274877906945
  store i64 %and, ptr %hw_features, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %ttc_params.i) #11
  %9 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev, align 64
  %call.i = tail call zeroext i1 @mlx5_tunnel_inner_ft_supported(ptr noundef %10) #11
  br i1 %call.i, label %if.end.i, label %if.end7.mlx5e_create_inner_ttc_table.exit.thread_crit_edge

if.end7.mlx5e_create_inner_ttc_table.exit.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_inner_ttc_table.exit.thread

if.end.i:                                         ; preds = %if.end7
  %ft_attr1.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %ttc_params.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 308)
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 64
  %call.i.i = tail call ptr @mlx5_get_flow_namespace(ptr noundef %14, i32 noundef 4) #11
  %15 = ptrtoint ptr %ttc_params.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %ttc_params.i, align 4
  %level.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %level.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %level.i.i, align 4
  %17 = ptrtoint ptr %ft_attr1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %ft_attr1.i.i, align 4
  %rx_res4.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 11
  %arrayidx.i16.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 0
  %18 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %arrayidx.i16.i, align 4
  %19 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %20, i32 noundef 0) #11
  %21 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call5.i.i, ptr %21, align 4
  %arrayidx.i.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %arrayidx.i.i, align 4
  %24 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.1.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %25, i32 noundef 1) #11
  %26 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 1, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call5.i.1.i, ptr %26, align 4
  %arrayidx.i.1.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %arrayidx.i.1.i, align 4
  %29 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.2.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %30, i32 noundef 2) #11
  %31 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 2, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call5.i.2.i, ptr %31, align 4
  %arrayidx.i.2.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %arrayidx.i.2.i, align 4
  %34 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.3.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %35, i32 noundef 3) #11
  %36 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 3, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call5.i.3.i, ptr %36, align 4
  %arrayidx.i.3.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %arrayidx.i.3.i, align 4
  %39 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.4.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %40, i32 noundef 4) #11
  %41 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 4, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call5.i.4.i, ptr %41, align 4
  %arrayidx.i.4.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %arrayidx.i.4.i, align 4
  %44 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.5.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %45, i32 noundef 5) #11
  %46 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 5, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call5.i.5.i, ptr %46, align 4
  %arrayidx.i.5.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 6
  %48 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %arrayidx.i.5.i, align 4
  %49 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.6.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %50, i32 noundef 6) #11
  %51 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 6, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call5.i.6.i, ptr %51, align 4
  %arrayidx.i.6.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 7
  %53 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %arrayidx.i.6.i, align 4
  %54 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.7.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %55, i32 noundef 7) #11
  %56 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 7, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call5.i.7.i, ptr %56, align 4
  %arrayidx.i.7.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 8
  %58 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %arrayidx.i.7.i, align 4
  %59 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.8.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %60, i32 noundef 8) #11
  %61 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 8, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call5.i.8.i, ptr %61, align 4
  %arrayidx.i.8.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 9
  %63 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 2, ptr %arrayidx.i.8.i, align 4
  %64 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_res4.i.i, align 4
  %call5.i.9.i = tail call i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef %65, i32 noundef 9) #11
  %66 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 9, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call5.i.9.i, ptr %66, align 4
  %arrayidx.i.9.i = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 10
  %68 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %arrayidx.i.9.i, align 4
  %69 = ptrtoint ptr %rx_res4.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx_res4.i.i, align 4
  %call3.i.i = tail call i32 @mlx5e_rx_res_get_tirn_direct(ptr noundef %70, i32 noundef 0) #11
  %71 = getelementptr inbounds %struct.ttc_params, ptr %ttc_params.i, i32 0, i32 2, i32 10, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call3.i.i, ptr %71, align 4
  %73 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mdev, align 64
  %call2.i = call ptr @mlx5_create_inner_ttc_table(ptr noundef %74, ptr noundef nonnull %ttc_params.i) #11
  %inner_ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 8
  %75 = ptrtoint ptr %inner_ttc.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call2.i, ptr %inner_ttc.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlx5e_create_inner_ttc_table.exit, label %if.end.i.mlx5e_create_inner_ttc_table.exit.thread_crit_edge

if.end.i.mlx5e_create_inner_ttc_table.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_inner_ttc_table.exit.thread

mlx5e_create_inner_ttc_table.exit.thread:         ; preds = %if.end.i.mlx5e_create_inner_ttc_table.exit.thread_crit_edge, %if.end7.mlx5e_create_inner_ttc_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params.i) #11
  call void @llvm.lifetime.start.p0(i64 316, ptr nonnull %ttc_params.i63) #11
  %76 = call ptr @memset(ptr %ttc_params.i63, i32 0, i32 316)
  call void @mlx5e_set_ttc_params(ptr noundef %priv, ptr noundef nonnull %ttc_params.i63, i1 noundef zeroext true) #11
  %77 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mdev, align 64
  %call.i65 = call ptr @mlx5_create_ttc_table(ptr noundef %78, ptr noundef nonnull %ttc_params.i63) #11
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %79 = ptrtoint ptr %ttc.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i65, ptr %ttc.i, align 4
  %cmp.i.i66.not = icmp ugt ptr %call.i65, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params.i63) #11
  br i1 %cmp.i.i66.not, label %if.then15, label %if.end17

mlx5e_create_inner_ttc_table.exit:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %call2.i to i32
  call void @llvm.lifetime.end.p0(i64 316, ptr nonnull %ttc_params.i) #11
  %netdev11 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %81 = ptrtoint ptr %netdev11 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev11, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %82, ptr noundef nonnull @.str.5, i32 noundef %80) #15
  br label %err_destroy_arfs_tables

if.then15:                                        ; preds = %mlx5e_create_inner_ttc_table.exit.thread
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %call.i65 to i32
  %netdev16 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %84 = ptrtoint ptr %netdev16 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %netdev16, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %85, ptr noundef nonnull @.str.6, i32 noundef %83) #15
  br label %err_destroy_inner_ttc_table

if.end17:                                         ; preds = %mlx5e_create_inner_ttc_table.exit.thread
  %l2.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i) #11
  %86 = getelementptr inbounds i8, ptr %ft_attr.i, i32 12
  %87 = call ptr @memset(ptr %86, i32 0, i32 16)
  %88 = ptrtoint ptr %l2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %l2.i, align 4
  %max_fte.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 1
  %89 = ptrtoint ptr %max_fte.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 32770, ptr %max_fte.i, align 4
  %level.i = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i, i32 0, i32 2
  %90 = ptrtoint ptr %level.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 2, ptr %level.i, align 4
  %91 = ptrtoint ptr %ft_attr.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %ft_attr.i, align 4
  %92 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fs, align 4
  %call.i68 = call ptr @mlx5_create_flow_table(ptr noundef %93, ptr noundef nonnull %ft_attr.i) #11
  %t.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 1
  %94 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call.i68, ptr %t.i, align 4
  %cmp.i.i69 = icmp ugt ptr %call.i68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i69, label %if.then.i, label %if.end.i70

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %95 = ptrtoint ptr %call.i68 to i32
  br label %mlx5e_create_l2_table.exit

if.end.i70:                                       ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %96 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3520, i32 noundef 12) #16
  %g.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 2
  %97 = ptrtoint ptr %g.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call7.i.i.i.i.i, ptr %g.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i70.err_destroy_flow_table.i_crit_edge, label %if.end.i.i

if.end.i70.err_destroy_flow_table.i_crit_edge:    ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_flow_table.i

if.end.i.i:                                       ; preds = %if.end.i70
  %call.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #14
  %tobool4.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %g.i.i, align 4
  call void @kfree(ptr noundef %99) #11
  br label %err_destroy_flow_table.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %call.i.i.i.i, i32 72
  %100 = call ptr @memset(ptr %add.ptr8.i.i, i32 255, i32 6)
  %add.ptr10.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 15
  %101 = ptrtoint ptr %add.ptr10.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %add.ptr10.i.i, align 4
  %and.i.i = and i32 %102, -256
  %or.i.i = or i32 %and.i.i, 1
  store i32 %or.i.i, ptr %add.ptr10.i.i, align 4
  %add.ptr20.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 7
  %103 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %add.ptr20.i.i, align 4
  %add.ptr33.i.i = getelementptr i32, ptr %call.i.i.i.i, i32 9
  %104 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 32767, ptr %add.ptr33.i.i, align 4
  %105 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %t.i, align 4
  %call41.i.i = call ptr @mlx5_create_flow_group(ptr noundef %106, ptr noundef nonnull %call.i.i.i.i) #11
  %107 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %g.i.i, align 4
  %109 = ptrtoint ptr %l2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %l2.i, align 4
  %arrayidx.i.i71 = getelementptr ptr, ptr %108, i32 %110
  %111 = ptrtoint ptr %arrayidx.i.i71 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call41.i.i, ptr %arrayidx.i.i71, align 4
  %112 = load ptr, ptr %g.i.i, align 4
  %113 = load i32, ptr %l2.i, align 4
  %arrayidx45.i.i = getelementptr ptr, ptr %112, i32 %113
  %114 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx45.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end7.i.i.err_destroy_groups.i.i_crit_edge, label %if.end48.i.i

if.end7.i.i.err_destroy_groups.i.i_crit_edge:     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i

if.end48.i.i:                                     ; preds = %if.end7.i.i
  %inc.i.i = add i32 %113, 1
  %116 = ptrtoint ptr %l2.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %inc.i.i, ptr %l2.i, align 4
  %117 = getelementptr i8, ptr %call.i.i.i.i, i32 73
  %118 = call ptr @memset(ptr %117, i32 0, i32 5)
  %119 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %add.ptr8.i.i, align 1
  %120 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 32768, ptr %add.ptr20.i.i, align 4
  %121 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 32768, ptr %add.ptr33.i.i, align 4
  %122 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %t.i, align 4
  %call80.i.i = call ptr @mlx5_create_flow_group(ptr noundef %123, ptr noundef nonnull %call.i.i.i.i) #11
  %124 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %g.i.i, align 4
  %126 = ptrtoint ptr %l2.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %l2.i, align 4
  %arrayidx83.i.i = getelementptr ptr, ptr %125, i32 %127
  %128 = ptrtoint ptr %arrayidx83.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call80.i.i, ptr %arrayidx83.i.i, align 4
  %129 = load ptr, ptr %g.i.i, align 4
  %130 = load i32, ptr %l2.i, align 4
  %arrayidx86.i.i = getelementptr ptr, ptr %129, i32 %130
  %131 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx86.i.i, align 4
  %cmp.i205.i.i = icmp ugt ptr %132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205.i.i, label %if.end48.i.i.err_destroy_groups.i.i_crit_edge, label %if.end89.i.i

if.end48.i.i.err_destroy_groups.i.i_crit_edge:    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i

if.end89.i.i:                                     ; preds = %if.end48.i.i
  %inc91.i.i = add i32 %130, 1
  %133 = ptrtoint ptr %l2.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %inc91.i.i, ptr %l2.i, align 4
  %134 = call ptr @memset(ptr %call.i.i.i.i, i32 0, i32 1024)
  %135 = ptrtoint ptr %add.ptr20.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 32769, ptr %add.ptr20.i.i, align 4
  %136 = ptrtoint ptr %add.ptr33.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 32769, ptr %add.ptr33.i.i, align 4
  %137 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %t.i, align 4
  %call121.i.i = call ptr @mlx5_create_flow_group(ptr noundef %138, ptr noundef nonnull %call.i.i.i.i) #11
  %139 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %g.i.i, align 4
  %141 = ptrtoint ptr %l2.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %l2.i, align 4
  %arrayidx124.i.i = getelementptr ptr, ptr %140, i32 %142
  %143 = ptrtoint ptr %arrayidx124.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call121.i.i, ptr %arrayidx124.i.i, align 4
  %144 = load ptr, ptr %g.i.i, align 4
  %145 = load i32, ptr %l2.i, align 4
  %arrayidx127.i.i = getelementptr ptr, ptr %144, i32 %145
  %146 = ptrtoint ptr %arrayidx127.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx127.i.i, align 4
  %cmp.i206.i.i = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206.i.i, label %if.end89.i.i.err_destroy_groups.i.i_crit_edge, label %mlx5e_create_l2_table_groups.exit.thread30.i

if.end89.i.i.err_destroy_groups.i.i_crit_edge:    ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i

mlx5e_create_l2_table_groups.exit.thread30.i:     ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc132.i.i = add i32 %145, 1
  %148 = ptrtoint ptr %l2.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %inc132.i.i, ptr %l2.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #11
  br label %mlx5e_create_l2_table.exit.thread

err_destroy_groups.i.i:                           ; preds = %if.end89.i.i.err_destroy_groups.i.i_crit_edge, %if.end48.i.i.err_destroy_groups.i.i_crit_edge, %if.end7.i.i.err_destroy_groups.i.i_crit_edge
  %149 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %g.i.i, align 4
  %151 = ptrtoint ptr %l2.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %l2.i, align 4
  %arrayidx135.i.i = getelementptr ptr, ptr %150, i32 %152
  %153 = ptrtoint ptr %arrayidx135.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx135.i.i, align 4
  %155 = ptrtoint ptr %154 to i32
  store ptr null, ptr %arrayidx135.i.i, align 4
  %156 = load i32, ptr %l2.i, align 4
  %i.014.i.i.i = add i32 %156, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.014.i.i.i)
  %cmp15.i.i.i = icmp sgt i32 %i.014.i.i.i, -1
  br i1 %cmp15.i.i.i, label %err_destroy_groups.i.i.for.body.i.i.i_crit_edge, label %err_destroy_groups.i.i.mlx5e_create_l2_table_groups.exit.i_crit_edge

err_destroy_groups.i.i.mlx5e_create_l2_table_groups.exit.i_crit_edge: ; preds = %err_destroy_groups.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_l2_table_groups.exit.i

err_destroy_groups.i.i.for.body.i.i.i_crit_edge:  ; preds = %err_destroy_groups.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %err_destroy_groups.i.i.for.body.i.i.i_crit_edge
  %i.016.i.i.i = phi i32 [ %i.0.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ], [ %i.014.i.i.i, %err_destroy_groups.i.i.for.body.i.i.i_crit_edge ]
  %157 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %g.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %158, i32 %i.016.i.i.i
  %159 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %160, null
  %cmp.i.i.i.i = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5_destroy_flow_group(ptr noundef nonnull %160) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %161 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %g.i.i, align 4
  %arrayidx4.i.i.i = getelementptr ptr, ptr %162, i32 %i.016.i.i.i
  %163 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr null, ptr %arrayidx4.i.i.i, align 4
  %i.0.i.i.i = add i32 %i.016.i.i.i, -1
  %cmp.i207.i.i = icmp sgt i32 %i.0.i.i.i, -1
  br i1 %cmp.i207.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i.i.mlx5e_create_l2_table_groups.exit.i_crit_edge

if.end.i.i.i.mlx5e_create_l2_table_groups.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_l2_table_groups.exit.i

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

mlx5e_create_l2_table_groups.exit.i:              ; preds = %if.end.i.i.i.mlx5e_create_l2_table_groups.exit.i_crit_edge, %err_destroy_groups.i.i.mlx5e_create_l2_table_groups.exit.i_crit_edge
  %164 = ptrtoint ptr %l2.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %l2.i, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i) #11
  %165 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %g.i.i, align 4
  call void @kfree(ptr noundef %166) #11
  %tobool.not.i = icmp eq ptr %154, null
  br i1 %tobool.not.i, label %mlx5e_create_l2_table_groups.exit.i.mlx5e_create_l2_table.exit.thread_crit_edge, label %mlx5e_create_l2_table_groups.exit.i.err_destroy_flow_table.i_crit_edge

mlx5e_create_l2_table_groups.exit.i.err_destroy_flow_table.i_crit_edge: ; preds = %mlx5e_create_l2_table_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_flow_table.i

mlx5e_create_l2_table_groups.exit.i.mlx5e_create_l2_table.exit.thread_crit_edge: ; preds = %mlx5e_create_l2_table_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_l2_table.exit.thread

err_destroy_flow_table.i:                         ; preds = %mlx5e_create_l2_table_groups.exit.i.err_destroy_flow_table.i_crit_edge, %if.then5.i.i, %if.end.i70.err_destroy_flow_table.i_crit_edge
  %retval.0.i29.i = phi i32 [ %155, %mlx5e_create_l2_table_groups.exit.i.err_destroy_flow_table.i_crit_edge ], [ -12, %if.then5.i.i ], [ -12, %if.end.i70.err_destroy_flow_table.i_crit_edge ]
  %167 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %t.i, align 4
  %call12.i = call i32 @mlx5_destroy_flow_table(ptr noundef %168) #11
  br label %mlx5e_create_l2_table.exit

mlx5e_create_l2_table.exit.thread:                ; preds = %mlx5e_create_l2_table_groups.exit.i.mlx5e_create_l2_table.exit.thread_crit_edge, %mlx5e_create_l2_table_groups.exit.thread30.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #11
  br label %if.end22

mlx5e_create_l2_table.exit:                       ; preds = %err_destroy_flow_table.i, %if.then.i
  %retval.0.i72 = phi i32 [ %95, %if.then.i ], [ %retval.0.i29.i, %err_destroy_flow_table.i ]
  %169 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %t.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i72)
  %tobool19.not = icmp eq i32 %retval.0.i72, 0
  br i1 %tobool19.not, label %mlx5e_create_l2_table.exit.if.end22_crit_edge, label %if.then20

mlx5e_create_l2_table.exit.if.end22_crit_edge:    ; preds = %mlx5e_create_l2_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %mlx5e_create_l2_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %netdev21 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %170 = ptrtoint ptr %netdev21 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %netdev21, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %171, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i72) #15
  br label %err_destroy_ttc_table

if.end22:                                         ; preds = %mlx5e_create_l2_table.exit.if.end22_crit_edge, %mlx5e_create_l2_table.exit.thread
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ft_attr.i73) #11
  %172 = getelementptr inbounds i8, ptr %ft_attr.i73, i32 12
  %173 = call ptr @memset(ptr %172, i32 0, i32 16)
  %vlan.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %174 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %vlan.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %175, align 4
  %max_fte.i75 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i73, i32 0, i32 1
  %177 = ptrtoint ptr %max_fte.i75 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 8196, ptr %max_fte.i75, align 4
  %level.i76 = getelementptr inbounds %struct.mlx5_flow_table_attr, ptr %ft_attr.i73, i32 0, i32 2
  %178 = ptrtoint ptr %level.i76 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %level.i76, align 4
  %179 = ptrtoint ptr %ft_attr.i73 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %ft_attr.i73, align 4
  %180 = ptrtoint ptr %fs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %fs, align 4
  %call.i77 = call ptr @mlx5_create_flow_table(ptr noundef %181, ptr noundef nonnull %ft_attr.i73) #11
  %t.i78 = getelementptr inbounds %struct.mlx5e_flow_table, ptr %175, i32 0, i32 1
  %182 = ptrtoint ptr %t.i78 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call.i77, ptr %t.i78, align 4
  %cmp.i.i79 = icmp ugt ptr %call.i77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i79, label %if.then.i80, label %if.end.i82

if.then.i80:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %183 = ptrtoint ptr %call.i77 to i32
  br label %mlx5e_create_vlan_table.exit

if.end.i82:                                       ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %184 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3520, i32 noundef 20) #16
  %g.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %175, i32 0, i32 2
  %185 = ptrtoint ptr %g.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call7.i.i.i.i, ptr %g.i, align 4
  %tobool.not.i81 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i81, label %if.end.i82.err_destroy_vlan_table.i_crit_edge, label %if.end10.i

if.end.i82.err_destroy_vlan_table.i_crit_edge:    ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_vlan_table.i

if.end10.i:                                       ; preds = %if.end.i82
  %call.i.i.i.i83 = call noalias ptr @kvmalloc_node(i32 noundef 1024, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not.i.i84 = icmp eq ptr %call.i.i.i.i83, null
  br i1 %tobool.not.i.i84, label %if.end10.i.err_free_g.i_crit_edge, label %if.end.i.i87

if.end10.i.err_free_g.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_g.i

if.end.i.i87:                                     ; preds = %if.end10.i
  %186 = call ptr @memset(ptr %call.i.i.i.i83, i32 0, i32 1024)
  %add.ptr2.i.i.i = getelementptr i32, ptr %call.i.i.i.i83, i32 15
  %187 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %add.ptr2.i.i.i, align 4
  %add.ptr11.i.i.i = getelementptr i8, ptr %call.i.i.i.i83, i32 80
  %188 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 32768, ptr %add.ptr11.i.i.i, align 4
  %add.ptr21.i.i.i = getelementptr i8, ptr %call.i.i.i.i83, i32 76
  %189 = ptrtoint ptr %add.ptr21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 4095, ptr %add.ptr21.i.i.i, align 4
  %add.ptr32.i.i.i = getelementptr i32, ptr %call.i.i.i.i83, i32 7
  %add.ptr45.i.i.i = getelementptr i32, ptr %call.i.i.i.i83, i32 9
  %190 = ptrtoint ptr %add.ptr45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 4095, ptr %add.ptr45.i.i.i, align 4
  %191 = ptrtoint ptr %t.i78 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %t.i78, align 4
  %call.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %192, ptr noundef nonnull %call.i.i.i.i83) #11
  %193 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %g.i, align 4
  %195 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %175, align 4
  %arrayidx.i.i.i85 = getelementptr ptr, ptr %194, i32 %196
  %197 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call.i.i.i, ptr %arrayidx.i.i.i85, align 4
  %198 = load ptr, ptr %g.i, align 4
  %199 = load i32, ptr %175, align 4
  %arrayidx55.i.i.i = getelementptr ptr, ptr %198, i32 %199
  %200 = ptrtoint ptr %arrayidx55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx55.i.i.i, align 4
  %cmp.i.i.i.i86 = icmp ugt ptr %201, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i86, label %if.end.i.i87.err_destroy_groups.i.i.i_crit_edge, label %if.end.i.i.i88

if.end.i.i87.err_destroy_groups.i.i.i_crit_edge:  ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i.i

if.end.i.i.i88:                                   ; preds = %if.end.i.i87
  %inc.i.i.i = add i32 %199, 1
  %202 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %inc.i.i.i, ptr %175, align 4
  %203 = call ptr @memset(ptr %call.i.i.i.i83, i32 0, i32 1024)
  %204 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 1, ptr %add.ptr2.i.i.i, align 4
  %205 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 16384, ptr %add.ptr11.i.i.i, align 4
  %206 = ptrtoint ptr %add.ptr21.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 4095, ptr %add.ptr21.i.i.i, align 4
  %207 = ptrtoint ptr %add.ptr32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 4096, ptr %add.ptr32.i.i.i, align 4
  %208 = ptrtoint ptr %add.ptr45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 8191, ptr %add.ptr45.i.i.i, align 4
  %209 = ptrtoint ptr %t.i78 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %t.i78, align 4
  %call120.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %210, ptr noundef nonnull %call.i.i.i.i83) #11
  %211 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %g.i, align 4
  %213 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %175, align 4
  %arrayidx123.i.i.i = getelementptr ptr, ptr %212, i32 %214
  %215 = ptrtoint ptr %arrayidx123.i.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call120.i.i.i, ptr %arrayidx123.i.i.i, align 4
  %216 = load ptr, ptr %g.i, align 4
  %217 = load i32, ptr %175, align 4
  %arrayidx126.i.i.i = getelementptr ptr, ptr %216, i32 %217
  %218 = ptrtoint ptr %arrayidx126.i.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx126.i.i.i, align 4
  %cmp.i1.i.i.i = icmp ugt ptr %219, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i88.err_destroy_groups.i.i.i_crit_edge, label %if.end129.i.i.i

if.end.i.i.i88.err_destroy_groups.i.i.i_crit_edge: ; preds = %if.end.i.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i.i

if.end129.i.i.i:                                  ; preds = %if.end.i.i.i88
  %inc131.i.i.i = add i32 %217, 1
  %220 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %inc131.i.i.i, ptr %175, align 4
  %221 = call ptr @memset(ptr %call.i.i.i.i83, i32 0, i32 1024)
  %222 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 1, ptr %add.ptr2.i.i.i, align 4
  %223 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 32768, ptr %add.ptr11.i.i.i, align 4
  %224 = ptrtoint ptr %add.ptr32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 8192, ptr %add.ptr32.i.i.i, align 4
  %225 = ptrtoint ptr %add.ptr45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 8193, ptr %add.ptr45.i.i.i, align 4
  %226 = ptrtoint ptr %t.i78 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %t.i78, align 4
  %call184.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %227, ptr noundef nonnull %call.i.i.i.i83) #11
  %228 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %g.i, align 4
  %230 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %175, align 4
  %arrayidx187.i.i.i = getelementptr ptr, ptr %229, i32 %231
  %232 = ptrtoint ptr %arrayidx187.i.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %call184.i.i.i, ptr %arrayidx187.i.i.i, align 4
  %233 = load ptr, ptr %g.i, align 4
  %234 = load i32, ptr %175, align 4
  %arrayidx190.i.i.i = getelementptr ptr, ptr %233, i32 %234
  %235 = ptrtoint ptr %arrayidx190.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx190.i.i.i, align 4
  %cmp.i2.i.i.i = icmp ugt ptr %236, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2.i.i.i, label %if.end129.i.i.i.err_destroy_groups.i.i.i_crit_edge, label %if.end193.i.i.i

if.end129.i.i.i.err_destroy_groups.i.i.i_crit_edge: ; preds = %if.end129.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i.i

if.end193.i.i.i:                                  ; preds = %if.end129.i.i.i
  %inc195.i.i.i = add i32 %234, 1
  %237 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %inc195.i.i.i, ptr %175, align 4
  %238 = call ptr @memset(ptr %call.i.i.i.i83, i32 0, i32 1024)
  %239 = ptrtoint ptr %add.ptr2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 1, ptr %add.ptr2.i.i.i, align 4
  %240 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 16384, ptr %add.ptr11.i.i.i, align 4
  %241 = ptrtoint ptr %add.ptr32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 8194, ptr %add.ptr32.i.i.i, align 4
  %242 = ptrtoint ptr %add.ptr45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 8194, ptr %add.ptr45.i.i.i, align 4
  %243 = ptrtoint ptr %t.i78 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %t.i78, align 4
  %call248.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %244, ptr noundef nonnull %call.i.i.i.i83) #11
  %245 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %g.i, align 4
  %247 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %175, align 4
  %arrayidx251.i.i.i = getelementptr ptr, ptr %246, i32 %248
  %249 = ptrtoint ptr %arrayidx251.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %call248.i.i.i, ptr %arrayidx251.i.i.i, align 4
  %250 = load ptr, ptr %g.i, align 4
  %251 = load i32, ptr %175, align 4
  %arrayidx254.i.i.i = getelementptr ptr, ptr %250, i32 %251
  %252 = ptrtoint ptr %arrayidx254.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %arrayidx254.i.i.i, align 4
  %cmp.i3.i.i.i = icmp ugt ptr %253, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3.i.i.i, label %if.end193.i.i.i.err_destroy_groups.i.i.i_crit_edge, label %if.end257.i.i.i

if.end193.i.i.i.err_destroy_groups.i.i.i_crit_edge: ; preds = %if.end193.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i.i

if.end257.i.i.i:                                  ; preds = %if.end193.i.i.i
  %inc259.i.i.i = add i32 %251, 1
  %254 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %inc259.i.i.i, ptr %175, align 4
  %255 = call ptr @memset(ptr %call.i.i.i.i83, i32 0, i32 1024)
  %256 = ptrtoint ptr %add.ptr32.i.i.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 8195, ptr %add.ptr32.i.i.i, align 4
  %257 = ptrtoint ptr %add.ptr45.i.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 8195, ptr %add.ptr45.i.i.i, align 4
  %258 = ptrtoint ptr %t.i78 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %t.i78, align 4
  %call289.i.i.i = call ptr @mlx5_create_flow_group(ptr noundef %259, ptr noundef nonnull %call.i.i.i.i83) #11
  %260 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %g.i, align 4
  %262 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %175, align 4
  %arrayidx292.i.i.i = getelementptr ptr, ptr %261, i32 %263
  %264 = ptrtoint ptr %arrayidx292.i.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %call289.i.i.i, ptr %arrayidx292.i.i.i, align 4
  %265 = load ptr, ptr %g.i, align 4
  %266 = load i32, ptr %175, align 4
  %arrayidx295.i.i.i = getelementptr ptr, ptr %265, i32 %266
  %267 = ptrtoint ptr %arrayidx295.i.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx295.i.i.i, align 4
  %cmp.i4.i.i.i = icmp ugt ptr %268, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4.i.i.i, label %if.end257.i.i.i.err_destroy_groups.i.i.i_crit_edge, label %mlx5e_create_vlan_table_groups.exit.thread39.i

if.end257.i.i.i.err_destroy_groups.i.i.i_crit_edge: ; preds = %if.end257.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_groups.i.i.i

mlx5e_create_vlan_table_groups.exit.thread39.i:   ; preds = %if.end257.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc300.i.i.i = add i32 %266, 1
  %269 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %inc300.i.i.i, ptr %175, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i83) #11
  br label %if.end14.i

err_destroy_groups.i.i.i:                         ; preds = %if.end257.i.i.i.err_destroy_groups.i.i.i_crit_edge, %if.end193.i.i.i.err_destroy_groups.i.i.i_crit_edge, %if.end129.i.i.i.err_destroy_groups.i.i.i_crit_edge, %if.end.i.i.i88.err_destroy_groups.i.i.i_crit_edge, %if.end.i.i87.err_destroy_groups.i.i.i_crit_edge
  %270 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %g.i, align 4
  %272 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %175, align 4
  %arrayidx303.i.i.i = getelementptr ptr, ptr %271, i32 %273
  %274 = ptrtoint ptr %arrayidx303.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %arrayidx303.i.i.i, align 4
  %276 = ptrtoint ptr %275 to i32
  store ptr null, ptr %arrayidx303.i.i.i, align 4
  %277 = load i32, ptr %175, align 4
  %i.014.i.i.i.i = add i32 %277, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.014.i.i.i.i)
  %cmp15.i.i.i.i = icmp sgt i32 %i.014.i.i.i.i, -1
  br i1 %cmp15.i.i.i.i, label %err_destroy_groups.i.i.i.for.body.i.i.i.i_crit_edge, label %err_destroy_groups.i.i.i.mlx5e_create_vlan_table_groups.exit.i_crit_edge

err_destroy_groups.i.i.i.mlx5e_create_vlan_table_groups.exit.i_crit_edge: ; preds = %err_destroy_groups.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_vlan_table_groups.exit.i

err_destroy_groups.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %err_destroy_groups.i.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, %err_destroy_groups.i.i.i.for.body.i.i.i.i_crit_edge
  %i.016.i.i.i.i = phi i32 [ %i.0.i.i.i.i, %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %i.014.i.i.i.i, %err_destroy_groups.i.i.i.for.body.i.i.i.i_crit_edge ]
  %278 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %g.i, align 4
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %279, i32 %i.016.i.i.i.i
  %280 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %281, null
  %cmp.i.i.i.i.i = icmp ugt ptr %281, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i.i = or i1 %tobool.not.i.i.i.i.i, %cmp.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i, label %for.body.i.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.i.i.i.if.end.i.i.i.i_crit_edge:        ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5_destroy_flow_group(ptr noundef nonnull %281) #11
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %for.body.i.i.i.i.if.end.i.i.i.i_crit_edge
  %282 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %g.i, align 4
  %arrayidx4.i.i.i.i = getelementptr ptr, ptr %283, i32 %i.016.i.i.i.i
  %284 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %arrayidx4.i.i.i.i, align 4
  %i.0.i.i.i.i = add i32 %i.016.i.i.i.i, -1
  %cmp.i5.i.i.i = icmp sgt i32 %i.0.i.i.i.i, -1
  br i1 %cmp.i5.i.i.i, label %if.end.i.i.i.i.for.body.i.i.i.i_crit_edge, label %if.end.i.i.i.i.mlx5e_create_vlan_table_groups.exit.i_crit_edge

if.end.i.i.i.i.mlx5e_create_vlan_table_groups.exit.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_vlan_table_groups.exit.i

if.end.i.i.i.i.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i.i

mlx5e_create_vlan_table_groups.exit.i:            ; preds = %if.end.i.i.i.i.mlx5e_create_vlan_table_groups.exit.i_crit_edge, %err_destroy_groups.i.i.i.mlx5e_create_vlan_table_groups.exit.i_crit_edge
  %285 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 0, ptr %175, align 4
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i83) #11
  %tobool12.not.i = icmp eq ptr %275, null
  br i1 %tobool12.not.i, label %mlx5e_create_vlan_table_groups.exit.i.if.end14.i_crit_edge, label %mlx5e_create_vlan_table_groups.exit.i.err_free_g.i_crit_edge

mlx5e_create_vlan_table_groups.exit.i.err_free_g.i_crit_edge: ; preds = %mlx5e_create_vlan_table_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_g.i

mlx5e_create_vlan_table_groups.exit.i.if.end14.i_crit_edge: ; preds = %mlx5e_create_vlan_table_groups.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %mlx5e_create_vlan_table_groups.exit.i.if.end14.i_crit_edge, %mlx5e_create_vlan_table_groups.exit.thread39.i
  %call.i.i89 = call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %priv, i32 noundef 0, i16 noundef zeroext 0) #11
  %286 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %vlan.i, align 4
  %active_cvlans.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %287, i32 0, i32 1
  %call1.i.i = call i32 @_find_next_bit_be(ptr noundef %active_cvlans.i.i, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call1.i.i)
  %cmp42.i.i = icmp slt i32 %call1.i.i, 4096
  br i1 %cmp42.i.i, label %if.end14.i.for.body.i.i_crit_edge, label %if.end14.i.for.end.i.i_crit_edge

if.end14.i.for.end.i.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.end14.i.for.body.i.i_crit_edge:                ; preds = %if.end14.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end14.i.for.body.i.i_crit_edge
  %i.043.i.i = phi i32 [ %call7.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call1.i.i, %if.end14.i.for.body.i.i_crit_edge ]
  %conv.i.i = trunc i32 %i.043.i.i to i16
  %call2.i.i = call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %priv, i32 noundef 3, i16 noundef zeroext %conv.i.i) #11
  %288 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %vlan.i, align 4
  %active_cvlans5.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %289, i32 0, i32 1
  %add.i.i = add nsw i32 %i.043.i.i, 1
  %call7.i.i = call i32 @_find_next_bit_be(ptr noundef %active_cvlans5.i.i, i32 noundef 4096, i32 noundef %add.i.i) #11
  %cmp.i31.i = icmp slt i32 %call7.i.i, 4096
  br i1 %cmp.i31.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end14.i.for.end.i.i_crit_edge
  %290 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %vlan.i, align 4
  %active_svlans.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %291, i32 0, i32 2
  %call11.i.i = call i32 @_find_next_bit_be(ptr noundef %active_svlans.i.i, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call11.i.i)
  %cmp1344.i.i = icmp slt i32 %call11.i.i, 4096
  br i1 %cmp1344.i.i, label %for.end.i.i.for.body15.i.i_crit_edge, label %for.end.i.i.for.end25.i.i_crit_edge

for.end.i.i.for.end25.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25.i.i

for.end.i.i.for.body15.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.body15.i.i.for.body15.i.i_crit_edge, %for.end.i.i.for.body15.i.i_crit_edge
  %i.145.i.i = phi i32 [ %call24.i.i, %for.body15.i.i.for.body15.i.i_crit_edge ], [ %call11.i.i, %for.end.i.i.for.body15.i.i_crit_edge ]
  %conv16.i.i = trunc i32 %i.145.i.i to i16
  %call17.i.i = call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %priv, i32 noundef 4, i16 noundef zeroext %conv16.i.i) #11
  %292 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %vlan.i, align 4
  %active_svlans21.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %293, i32 0, i32 2
  %add23.i.i = add nsw i32 %i.145.i.i, 1
  %call24.i.i = call i32 @_find_next_bit_be(ptr noundef %active_svlans21.i.i, i32 noundef 4096, i32 noundef %add23.i.i) #11
  %cmp13.i.i = icmp slt i32 %call24.i.i, 4096
  br i1 %cmp13.i.i, label %for.body15.i.i.for.body15.i.i_crit_edge, label %for.body15.i.i.for.end25.i.i_crit_edge

for.body15.i.i.for.end25.i.i_crit_edge:           ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25.i.i

for.body15.i.i.for.body15.i.i_crit_edge:          ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15.i.i

for.end25.i.i:                                    ; preds = %for.body15.i.i.for.end25.i.i_crit_edge, %for.end.i.i.for.end25.i.i_crit_edge
  %294 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %vlan.i, align 4
  %cvlan_filter_disabled.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %295, i32 0, i32 9
  %296 = ptrtoint ptr %cvlan_filter_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %296)
  %297 = load i8, ptr %cvlan_filter_disabled.i.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %297)
  %tobool.not.i32.i = icmp eq i8 %297, 0
  br i1 %tobool.not.i32.i, label %for.end25.i.i.mlx5e_create_vlan_table.exit.thread_crit_edge, label %if.then.i.i

for.end25.i.i.mlx5e_create_vlan_table.exit.thread_crit_edge: ; preds = %for.end25.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_vlan_table.exit.thread

if.then.i.i:                                      ; preds = %for.end25.i.i
  %call.i.i33.i = call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %priv, i32 noundef 1, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i33.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i34.i, label %if.then.i.i.mlx5e_create_vlan_table.exit.thread_crit_edge

if.then.i.i.mlx5e_create_vlan_table.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_create_vlan_table.exit.thread

if.end.i.i34.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call1.i.i.i = call fastcc i32 @mlx5e_add_vlan_rule(ptr noundef %priv, i32 noundef 2, i16 noundef zeroext 0) #11
  br label %mlx5e_create_vlan_table.exit.thread

err_free_g.i:                                     ; preds = %mlx5e_create_vlan_table_groups.exit.i.err_free_g.i_crit_edge, %if.end10.i.err_free_g.i_crit_edge
  %retval.0.i38.i = phi i32 [ %276, %mlx5e_create_vlan_table_groups.exit.i.err_free_g.i_crit_edge ], [ -12, %if.end10.i.err_free_g.i_crit_edge ]
  %298 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %g.i, align 4
  call void @kfree(ptr noundef %299) #11
  br label %err_destroy_vlan_table.i

err_destroy_vlan_table.i:                         ; preds = %err_free_g.i, %if.end.i82.err_destroy_vlan_table.i_crit_edge
  %err.0.i = phi i32 [ %retval.0.i38.i, %err_free_g.i ], [ -12, %if.end.i82.err_destroy_vlan_table.i_crit_edge ]
  %300 = ptrtoint ptr %t.i78 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %t.i78, align 4
  %call17.i = call i32 @mlx5_destroy_flow_table(ptr noundef %301) #11
  br label %mlx5e_create_vlan_table.exit

mlx5e_create_vlan_table.exit.thread:              ; preds = %if.end.i.i34.i, %if.then.i.i.mlx5e_create_vlan_table.exit.thread_crit_edge, %for.end25.i.i.mlx5e_create_vlan_table.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i73) #11
  br label %if.end27

mlx5e_create_vlan_table.exit:                     ; preds = %err_destroy_vlan_table.i, %if.then.i80
  %retval.0.i90 = phi i32 [ %183, %if.then.i80 ], [ %err.0.i, %err_destroy_vlan_table.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ft_attr.i73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i90)
  %tobool24.not = icmp eq i32 %retval.0.i90, 0
  br i1 %tobool24.not, label %mlx5e_create_vlan_table.exit.if.end27_crit_edge, label %if.then25

mlx5e_create_vlan_table.exit.if.end27_crit_edge:  ; preds = %mlx5e_create_vlan_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then25:                                        ; preds = %mlx5e_create_vlan_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %netdev26 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %302 = ptrtoint ptr %netdev26 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %netdev26, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %303, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i90) #15
  br label %err_destroy_l2_table

if.end27:                                         ; preds = %mlx5e_create_vlan_table.exit.if.end27_crit_edge, %mlx5e_create_vlan_table.exit.thread
  %call28 = call i32 @mlx5e_ptp_alloc_rx_fs(ptr noundef %priv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %err_destory_vlan_table

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5e_ethtool_init_steering(ptr noundef %priv) #11
  br label %cleanup

err_destory_vlan_table:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mlx5e_destroy_vlan_table(ptr noundef %priv)
  br label %err_destroy_l2_table

err_destroy_l2_table:                             ; preds = %err_destory_vlan_table, %if.then25
  %err.0 = phi i32 [ %retval.0.i90, %if.then25 ], [ %call28, %err_destory_vlan_table ]
  %304 = ptrtoint ptr %l2.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %l2.i, align 4
  %i.014.i.i.i92 = add i32 %305, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.014.i.i.i92)
  %cmp15.i.i.i93 = icmp sgt i32 %i.014.i.i.i92, -1
  br i1 %cmp15.i.i.i93, label %for.body.lr.ph.i.i.i, label %err_destroy_l2_table.mlx5e_destroy_l2_table.exit_crit_edge

err_destroy_l2_table.mlx5e_destroy_l2_table.exit_crit_edge: ; preds = %err_destroy_l2_table
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_l2_table.exit

for.body.lr.ph.i.i.i:                             ; preds = %err_destroy_l2_table
  %g.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 2
  br label %for.body.i.i.i99

for.body.i.i.i99:                                 ; preds = %if.end.i.i.i104.for.body.i.i.i99_crit_edge, %for.body.lr.ph.i.i.i
  %i.016.i.i.i94 = phi i32 [ %i.014.i.i.i92, %for.body.lr.ph.i.i.i ], [ %i.0.i.i.i102, %if.end.i.i.i104.for.body.i.i.i99_crit_edge ]
  %306 = ptrtoint ptr %g.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %g.i.i.i, align 4
  %arrayidx.i.i.i95 = getelementptr ptr, ptr %307, i32 %i.016.i.i.i94
  %308 = ptrtoint ptr %arrayidx.i.i.i95 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx.i.i.i95, align 4
  %tobool.not.i.i.i.i96 = icmp eq ptr %309, null
  %cmp.i.i.i.i97 = icmp ugt ptr %309, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i98 = or i1 %tobool.not.i.i.i.i96, %cmp.i.i.i.i97
  br i1 %spec.select.i.i.i.i98, label %for.body.i.i.i99.if.end.i.i.i104_crit_edge, label %if.then.i.i.i100

for.body.i.i.i99.if.end.i.i.i104_crit_edge:       ; preds = %for.body.i.i.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i104

if.then.i.i.i100:                                 ; preds = %for.body.i.i.i99
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5_destroy_flow_group(ptr noundef nonnull %309) #11
  br label %if.end.i.i.i104

if.end.i.i.i104:                                  ; preds = %if.then.i.i.i100, %for.body.i.i.i99.if.end.i.i.i104_crit_edge
  %310 = ptrtoint ptr %g.i.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %g.i.i.i, align 4
  %arrayidx4.i.i.i101 = getelementptr ptr, ptr %311, i32 %i.016.i.i.i94
  %312 = ptrtoint ptr %arrayidx4.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr null, ptr %arrayidx4.i.i.i101, align 4
  %i.0.i.i.i102 = add i32 %i.016.i.i.i94, -1
  %cmp.i.i.i103 = icmp sgt i32 %i.0.i.i.i102, -1
  br i1 %cmp.i.i.i103, label %if.end.i.i.i104.for.body.i.i.i99_crit_edge, label %if.end.i.i.i104.mlx5e_destroy_l2_table.exit_crit_edge

if.end.i.i.i104.mlx5e_destroy_l2_table.exit_crit_edge: ; preds = %if.end.i.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_l2_table.exit

if.end.i.i.i104.for.body.i.i.i99_crit_edge:       ; preds = %if.end.i.i.i104
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i99

mlx5e_destroy_l2_table.exit:                      ; preds = %if.end.i.i.i104.mlx5e_destroy_l2_table.exit_crit_edge, %err_destroy_l2_table.mlx5e_destroy_l2_table.exit_crit_edge
  %313 = ptrtoint ptr %l2.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 0, ptr %l2.i, align 4
  %g.i.i105 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 2
  %314 = ptrtoint ptr %g.i.i105 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %g.i.i105, align 4
  call void @kfree(ptr noundef %315) #11
  %316 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %t.i, align 4
  %call.i.i106 = call i32 @mlx5_destroy_flow_table(ptr noundef %317) #11
  %318 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr null, ptr %t.i, align 4
  br label %err_destroy_ttc_table

err_destroy_ttc_table:                            ; preds = %mlx5e_destroy_l2_table.exit, %if.then20
  %err.1 = phi i32 [ %retval.0.i72, %if.then20 ], [ %err.0, %mlx5e_destroy_l2_table.exit ]
  %319 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %ttc.i, align 4
  call void @mlx5_destroy_ttc_table(ptr noundef %320) #11
  br label %err_destroy_inner_ttc_table

err_destroy_inner_ttc_table:                      ; preds = %err_destroy_ttc_table, %if.then15
  %err.2 = phi i32 [ %83, %if.then15 ], [ %err.1, %err_destroy_ttc_table ]
  %321 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %mdev, align 64
  %call.i109 = call zeroext i1 @mlx5_tunnel_inner_ft_supported(ptr noundef %322) #11
  br i1 %call.i109, label %if.end.i111, label %err_destroy_inner_ttc_table.err_destroy_arfs_tables_crit_edge

err_destroy_inner_ttc_table.err_destroy_arfs_tables_crit_edge: ; preds = %err_destroy_inner_ttc_table
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_destroy_arfs_tables

if.end.i111:                                      ; preds = %err_destroy_inner_ttc_table
  call void @__sanitizer_cov_trace_pc() #13
  %inner_ttc.i110 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 8
  %323 = ptrtoint ptr %inner_ttc.i110 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %inner_ttc.i110, align 4
  call void @mlx5_destroy_ttc_table(ptr noundef %324) #11
  br label %err_destroy_arfs_tables

err_destroy_arfs_tables:                          ; preds = %if.end.i111, %err_destroy_inner_ttc_table.err_destroy_arfs_tables_crit_edge, %mlx5e_create_inner_ttc_table.exit
  %err.3 = phi i32 [ %80, %mlx5e_create_inner_ttc_table.exit ], [ %err.2, %err_destroy_inner_ttc_table.err_destroy_arfs_tables_crit_edge ], [ %err.2, %if.end.i111 ]
  call void @mlx5e_arfs_destroy_tables(ptr noundef %priv) #11
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_arfs_tables, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_destroy_arfs_tables ], [ 0, %if.end31 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_arfs_create_tables(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_ptp_alloc_rx_fs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_init_steering(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_destroy_vlan_table(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan.i.i, align 4
  %untagged_rule.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %untagged_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %untagged_rule.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.mlx5e_del_vlan_rule.exit.i_crit_edge, label %if.then.i.i

entry.mlx5e_del_vlan_rule.exit.i_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rule.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %3) #11
  %4 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vlan.i.i, align 4
  %untagged_rule6.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %untagged_rule6.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %untagged_rule6.i.i, align 4
  br label %mlx5e_del_vlan_rule.exit.i

mlx5e_del_vlan_rule.exit.i:                       ; preds = %if.then.i.i, %entry.mlx5e_del_vlan_rule.exit.i_crit_edge
  %7 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vlan.i.i, align 4
  %active_cvlans.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %8, i32 0, i32 1
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %active_cvlans.i, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call.i)
  %cmp89.i = icmp slt i32 %call.i, 4096
  br i1 %cmp89.i, label %mlx5e_del_vlan_rule.exit.i.for.body.i_crit_edge, label %mlx5e_del_vlan_rule.exit.i.for.end.i_crit_edge

mlx5e_del_vlan_rule.exit.i.for.end.i_crit_edge:   ; preds = %mlx5e_del_vlan_rule.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

mlx5e_del_vlan_rule.exit.i.for.body.i_crit_edge:  ; preds = %mlx5e_del_vlan_rule.exit.i
  br label %for.body.i

for.body.i:                                       ; preds = %mlx5e_del_vlan_rule.exit84.i.for.body.i_crit_edge, %mlx5e_del_vlan_rule.exit.i.for.body.i_crit_edge
  %i.090.i = phi i32 [ %call5.i, %mlx5e_del_vlan_rule.exit84.i.for.body.i_crit_edge ], [ %call.i, %mlx5e_del_vlan_rule.exit.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vlan.i.i, align 4
  %idxprom50.i.i = and i32 %i.090.i, 65535
  %arrayidx51.i.i = getelementptr %struct.mlx5e_vlan_table, ptr %10, i32 0, i32 3, i32 %idxprom50.i.i
  %11 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx51.i.i, align 4
  %tobool52.not.i.i = icmp eq ptr %12, null
  br i1 %tobool52.not.i.i, label %for.body.i.mlx5e_del_vlan_rule.exit84.i_crit_edge, label %if.then53.i.i

for.body.i.mlx5e_del_vlan_rule.exit84.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rule.exit84.i

if.then53.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %12) #11
  %13 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vlan.i.i, align 4
  %arrayidx63.i.i = getelementptr %struct.mlx5e_vlan_table, ptr %14, i32 0, i32 3, i32 %idxprom50.i.i
  %15 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx63.i.i, align 4
  br label %mlx5e_del_vlan_rule.exit84.i

mlx5e_del_vlan_rule.exit84.i:                     ; preds = %if.then53.i.i, %for.body.i.mlx5e_del_vlan_rule.exit84.i_crit_edge
  tail call fastcc void @mlx5e_vport_context_update_vlans(ptr noundef %priv) #11
  %16 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vlan.i.i, align 4
  %active_cvlans3.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %17, i32 0, i32 1
  %add.i = add nsw i32 %i.090.i, 1
  %call5.i = tail call i32 @_find_next_bit_be(ptr noundef %active_cvlans3.i, i32 noundef 4096, i32 noundef %add.i) #11
  %cmp.i = icmp slt i32 %call5.i, 4096
  br i1 %cmp.i, label %mlx5e_del_vlan_rule.exit84.i.for.body.i_crit_edge, label %mlx5e_del_vlan_rule.exit84.i.for.end.i_crit_edge

mlx5e_del_vlan_rule.exit84.i.for.end.i_crit_edge: ; preds = %mlx5e_del_vlan_rule.exit84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

mlx5e_del_vlan_rule.exit84.i.for.body.i_crit_edge: ; preds = %mlx5e_del_vlan_rule.exit84.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %mlx5e_del_vlan_rule.exit84.i.for.end.i_crit_edge, %mlx5e_del_vlan_rule.exit.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vlan.i.i, align 4
  %active_svlans.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %19, i32 0, i32 2
  %call9.i = tail call i32 @_find_next_bit_be(ptr noundef %active_svlans.i, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call9.i)
  %cmp1191.i = icmp slt i32 %call9.i, 4096
  br i1 %cmp1191.i, label %for.end.i.for.body13.i_crit_edge, label %for.end.i.for.end22.i_crit_edge

for.end.i.for.end22.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22.i

for.end.i.for.body13.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %mlx5e_del_vlan_rule.exit85.i.for.body13.i_crit_edge, %for.end.i.for.body13.i_crit_edge
  %i.192.i = phi i32 [ %call21.i, %mlx5e_del_vlan_rule.exit85.i.for.body13.i_crit_edge ], [ %call9.i, %for.end.i.for.body13.i_crit_edge ]
  %20 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vlan.i.i, align 4
  %idxprom.i.i = and i32 %i.192.i, 65535
  %arrayidx.i.i = getelementptr %struct.mlx5e_vlan_table, ptr %21, i32 0, i32 4, i32 %idxprom.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool34.not.i.i = icmp eq ptr %23, null
  br i1 %tobool34.not.i.i, label %for.body13.i.mlx5e_del_vlan_rule.exit85.i_crit_edge, label %if.then35.i.i

for.body13.i.mlx5e_del_vlan_rule.exit85.i_crit_edge: ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rule.exit85.i

if.then35.i.i:                                    ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %23) #11
  %24 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vlan.i.i, align 4
  %arrayidx45.i.i = getelementptr %struct.mlx5e_vlan_table, ptr %25, i32 0, i32 4, i32 %idxprom.i.i
  %26 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx45.i.i, align 4
  br label %mlx5e_del_vlan_rule.exit85.i

mlx5e_del_vlan_rule.exit85.i:                     ; preds = %if.then35.i.i, %for.body13.i.mlx5e_del_vlan_rule.exit85.i_crit_edge
  %27 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vlan.i.i, align 4
  %active_svlans18.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %28, i32 0, i32 2
  %add20.i = add nsw i32 %i.192.i, 1
  %call21.i = tail call i32 @_find_next_bit_be(ptr noundef %active_svlans18.i, i32 noundef 4096, i32 noundef %add20.i) #11
  %cmp11.i = icmp slt i32 %call21.i, 4096
  br i1 %cmp11.i, label %mlx5e_del_vlan_rule.exit85.i.for.body13.i_crit_edge, label %mlx5e_del_vlan_rule.exit85.i.for.end22.i_crit_edge

mlx5e_del_vlan_rule.exit85.i.for.end22.i_crit_edge: ; preds = %mlx5e_del_vlan_rule.exit85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end22.i

mlx5e_del_vlan_rule.exit85.i.for.body13.i_crit_edge: ; preds = %mlx5e_del_vlan_rule.exit85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

for.end22.i:                                      ; preds = %mlx5e_del_vlan_rule.exit85.i.for.end22.i_crit_edge, %for.end.i.for.end22.i_crit_edge
  %state.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 5
  %29 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %state.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %for.end22.i.if.end53.i_crit_edge

for.end22.i.if.end53.i_crit_edge:                 ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

land.rhs.i:                                       ; preds = %for.end22.i
  %.b83.i = load i1, ptr @mlx5e_del_vlan_rules.__already_done, align 1
  br i1 %.b83.i, label %land.rhs.i.if.end53.i_crit_edge, label %if.then.i, !prof !74

land.rhs.i.if.end53.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @mlx5e_del_vlan_rules.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 524, i32 noundef 9, ptr noundef null) #11
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end53.i_crit_edge, %for.end22.i.if.end53.i_crit_edge
  %32 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vlan.i.i, align 4
  %trap_rule.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %trap_rule.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %trap_rule.i.i, align 4
  %tobool.not.i87.i = icmp eq ptr %35, null
  br i1 %tobool.not.i87.i, label %if.end53.i.mlx5e_remove_vlan_trap.exit.i_crit_edge, label %if.then.i88.i

if.end53.i.mlx5e_remove_vlan_trap.exit.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_remove_vlan_trap.exit.i

if.then.i88.i:                                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %35) #11
  %36 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vlan.i.i, align 4
  %trap_rule6.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %trap_rule6.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %trap_rule6.i.i, align 4
  br label %mlx5e_remove_vlan_trap.exit.i

mlx5e_remove_vlan_trap.exit.i:                    ; preds = %if.then.i88.i, %if.end53.i.mlx5e_remove_vlan_trap.exit.i_crit_edge
  %39 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vlan.i.i, align 4
  %cvlan_filter_disabled.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %cvlan_filter_disabled.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cvlan_filter_disabled.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool63.not.i = icmp eq i8 %42, 0
  br i1 %tobool63.not.i, label %mlx5e_remove_vlan_trap.exit.i.mlx5e_del_vlan_rules.exit_crit_edge, label %if.then64.i

mlx5e_remove_vlan_trap.exit.i.mlx5e_del_vlan_rules.exit_crit_edge: ; preds = %mlx5e_remove_vlan_trap.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rules.exit

if.then64.i:                                      ; preds = %mlx5e_remove_vlan_trap.exit.i
  %any_cvlan_rule.i.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %40, i32 0, i32 6
  %43 = ptrtoint ptr %any_cvlan_rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %any_cvlan_rule.i.i.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool10.not.i.i.i, label %if.then64.i.mlx5e_del_vlan_rule.exit.i.i_crit_edge, label %if.then11.i.i.i

if.then64.i.mlx5e_del_vlan_rule.exit.i.i_crit_edge: ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rule.exit.i.i

if.then11.i.i.i:                                  ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %44) #11
  %45 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vlan.i.i, align 4
  %any_cvlan_rule17.i.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %any_cvlan_rule17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %any_cvlan_rule17.i.i.i, align 4
  br label %mlx5e_del_vlan_rule.exit.i.i

mlx5e_del_vlan_rule.exit.i.i:                     ; preds = %if.then11.i.i.i, %if.then64.i.mlx5e_del_vlan_rule.exit.i.i_crit_edge
  %48 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vlan.i.i, align 4
  %any_svlan_rule.i.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %any_svlan_rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %any_svlan_rule.i.i.i, align 4
  %tobool22.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool22.not.i.i.i, label %mlx5e_del_vlan_rule.exit.i.i.mlx5e_del_vlan_rules.exit_crit_edge, label %if.then23.i.i.i

mlx5e_del_vlan_rule.exit.i.i.mlx5e_del_vlan_rules.exit_crit_edge: ; preds = %mlx5e_del_vlan_rule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_vlan_rules.exit

if.then23.i.i.i:                                  ; preds = %mlx5e_del_vlan_rule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_del_flow_rules(ptr noundef nonnull %51) #11
  %52 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vlan.i.i, align 4
  %any_svlan_rule29.i.i.i = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %any_svlan_rule29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %any_svlan_rule29.i.i.i, align 4
  br label %mlx5e_del_vlan_rules.exit

mlx5e_del_vlan_rules.exit:                        ; preds = %if.then23.i.i.i, %mlx5e_del_vlan_rule.exit.i.i.mlx5e_del_vlan_rules.exit_crit_edge, %mlx5e_remove_vlan_trap.exit.i.mlx5e_del_vlan_rules.exit_crit_edge
  %55 = ptrtoint ptr %vlan.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vlan.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %56, align 4
  %i.014.i.i = add i32 %58, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.014.i.i)
  %cmp15.i.i = icmp sgt i32 %i.014.i.i, -1
  br i1 %cmp15.i.i, label %for.body.lr.ph.i.i, label %mlx5e_del_vlan_rules.exit.mlx5e_destroy_flow_table.exit_crit_edge

mlx5e_del_vlan_rules.exit.mlx5e_destroy_flow_table.exit_crit_edge: ; preds = %mlx5e_del_vlan_rules.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_flow_table.exit

for.body.lr.ph.i.i:                               ; preds = %mlx5e_del_vlan_rules.exit
  %g.i.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %56, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.016.i.i = phi i32 [ %i.014.i.i, %for.body.lr.ph.i.i ], [ %i.0.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %59 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %g.i.i, align 4
  %arrayidx.i.i2 = getelementptr ptr, ptr %60, i32 %i.016.i.i
  %61 = ptrtoint ptr %arrayidx.i.i2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i2, align 4
  %tobool.not.i.i.i = icmp eq ptr %62, null
  %cmp.i.i.i = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i3

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i3:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %62) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i3, %for.body.i.i.if.end.i.i_crit_edge
  %63 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %g.i.i, align 4
  %arrayidx4.i.i = getelementptr ptr, ptr %64, i32 %i.016.i.i
  %65 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx4.i.i, align 4
  %i.0.i.i = add i32 %i.016.i.i, -1
  %cmp.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.mlx5e_destroy_flow_table.exit_crit_edge

if.end.i.i.mlx5e_destroy_flow_table.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_flow_table.exit

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

mlx5e_destroy_flow_table.exit:                    ; preds = %if.end.i.i.mlx5e_destroy_flow_table.exit_crit_edge, %mlx5e_del_vlan_rules.exit.mlx5e_destroy_flow_table.exit_crit_edge
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %56, align 4
  %g.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %56, i32 0, i32 2
  %67 = ptrtoint ptr %g.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %g.i, align 4
  tail call void @kfree(ptr noundef %68) #11
  %t.i = getelementptr inbounds %struct.mlx5e_flow_table, ptr %56, i32 0, i32 1
  %69 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %t.i, align 4
  %call.i4 = tail call i32 @mlx5_destroy_flow_table(ptr noundef %70) #11
  %71 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %t.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_arfs_destroy_tables(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_destroy_flow_steering(ptr noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlx5e_ptp_free_rx_fs(ptr noundef %priv) #11
  tail call fastcc void @mlx5e_destroy_vlan_table(ptr noundef %priv)
  %l2.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6
  %0 = ptrtoint ptr %l2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l2.i, align 4
  %i.014.i.i.i = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.014.i.i.i)
  %cmp15.i.i.i = icmp sgt i32 %i.014.i.i.i, -1
  br i1 %cmp15.i.i.i, label %for.body.lr.ph.i.i.i, label %entry.mlx5e_destroy_l2_table.exit_crit_edge

entry.mlx5e_destroy_l2_table.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_l2_table.exit

for.body.lr.ph.i.i.i:                             ; preds = %entry
  %g.i.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 2
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.016.i.i.i = phi i32 [ %i.014.i.i.i, %for.body.lr.ph.i.i.i ], [ %i.0.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %2 = ptrtoint ptr %g.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %g.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %3, i32 %i.016.i.i.i
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %5, null
  %cmp.i.i.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %for.body.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

for.body.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mlx5_destroy_flow_group(ptr noundef nonnull %5) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %for.body.i.i.i.if.end.i.i.i_crit_edge
  %6 = ptrtoint ptr %g.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %g.i.i.i, align 4
  %arrayidx4.i.i.i = getelementptr ptr, ptr %7, i32 %i.016.i.i.i
  %8 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx4.i.i.i, align 4
  %i.0.i.i.i = add i32 %i.016.i.i.i, -1
  %cmp.i.i.i = icmp sgt i32 %i.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge, label %if.end.i.i.i.mlx5e_destroy_l2_table.exit_crit_edge

if.end.i.i.i.mlx5e_destroy_l2_table.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_l2_table.exit

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i.i

mlx5e_destroy_l2_table.exit:                      ; preds = %if.end.i.i.i.mlx5e_destroy_l2_table.exit_crit_edge, %entry.mlx5e_destroy_l2_table.exit_crit_edge
  %9 = ptrtoint ptr %l2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %l2.i, align 4
  %g.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 2
  %10 = ptrtoint ptr %g.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %g.i.i, align 4
  tail call void @kfree(ptr noundef %11) #11
  %t.i.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 0, i32 1
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t.i.i, align 4
  %call.i.i = tail call i32 @mlx5_destroy_flow_table(ptr noundef %13) #11
  %14 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %t.i.i, align 4
  %ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 7
  %15 = ptrtoint ptr %ttc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ttc.i, align 4
  tail call void @mlx5_destroy_ttc_table(ptr noundef %16) #11
  %mdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %17 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdev.i, align 64
  %call.i = tail call zeroext i1 @mlx5_tunnel_inner_ft_supported(ptr noundef %18) #11
  br i1 %call.i, label %if.end.i, label %mlx5e_destroy_l2_table.exit.mlx5e_destroy_inner_ttc_table.exit_crit_edge

mlx5e_destroy_l2_table.exit.mlx5e_destroy_inner_ttc_table.exit_crit_edge: ; preds = %mlx5e_destroy_l2_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_destroy_inner_ttc_table.exit

if.end.i:                                         ; preds = %mlx5e_destroy_l2_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %inner_ttc.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 8
  %19 = ptrtoint ptr %inner_ttc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inner_ttc.i, align 4
  tail call void @mlx5_destroy_ttc_table(ptr noundef %20) #11
  br label %mlx5e_destroy_inner_ttc_table.exit

mlx5e_destroy_inner_ttc_table.exit:               ; preds = %if.end.i, %mlx5e_destroy_l2_table.exit.mlx5e_destroy_inner_ttc_table.exit_crit_edge
  tail call void @mlx5e_arfs_destroy_tables(ptr noundef %priv) #11
  tail call void @mlx5e_ethtool_cleanup_steering(ptr noundef %priv) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ptp_free_rx_fs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5e_ethtool_cleanup_steering(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5e_fs_init(ptr nocapture noundef writeonly %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 33824, i32 noundef 3520, i32 noundef -1) #14
  %vlan = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i.i, ptr %vlan, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_fs_cleanup(ptr nocapture noundef %priv) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %0 = ptrtoint ptr %vlan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan, align 4
  tail call void @kvfree(ptr noundef %1) #11
  %2 = ptrtoint ptr %vlan to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vlan, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_add_flow_rules(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_vport_context_update_vlans(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %vlan1 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %vlan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vlan1, align 4
  %active_cvlans = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %3, i32 0, i32 1
  %call = tail call i32 @_find_next_bit_be(ptr noundef %active_cvlans, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call)
  %cmp7 = icmp slt i32 %call, 4096
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %vlan.09 = phi i32 [ %call6, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %list_size.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %list_size.08, 1
  %4 = ptrtoint ptr %vlan1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vlan1, align 4
  %active_cvlans4 = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %5, i32 0, i32 1
  %add = add nsw i32 %vlan.09, 1
  %call6 = tail call i32 @_find_next_bit_be(ptr noundef %active_cvlans4, i32 noundef 4096, i32 noundef %add) #11
  %cmp = icmp slt i32 %call6, 4096
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %list_size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %9, i32 31
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %11, 16
  %and = and i32 %shr, 31
  %shl = shl nuw i32 1, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %list_size.0.lcssa, i32 %shl)
  %cmp8 = icmp sgt i32 %list_size.0.lcssa, %shl
  br i1 %cmp8, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %list_size.0.lcssa, i32 noundef %shl) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %list_size.1 = phi i32 [ %shl, %if.then ], [ %list_size.0.lcssa, %for.end.if.end_crit_edge ]
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %list_size.1, i32 2) #11
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !75

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end11

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end7.i.i
  %15 = ptrtoint ptr %vlan1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vlan1, align 4
  %active_cvlans14 = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %16, i32 0, i32 1
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %active_cvlans14, i32 noundef 4096, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call16)
  %cmp1810 = icmp slt i32 %call16, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list_size.1)
  %cmp20.not11 = icmp ne i32 %list_size.1, 0
  %or.cond12 = select i1 %cmp1810, i1 %cmp20.not11, i1 false
  br i1 %or.cond12, label %if.end11.if.end22_crit_edge, label %if.end11.for.end32_crit_edge

if.end11.for.end32_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  br label %if.end22

if.end22:                                         ; preds = %if.end22.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %i.014 = phi i32 [ %inc23, %if.end22.if.end22_crit_edge ], [ 0, %if.end11.if.end22_crit_edge ]
  %vlan.113 = phi i32 [ %call31, %if.end22.if.end22_crit_edge ], [ %call16, %if.end11.if.end22_crit_edge ]
  %conv = trunc i32 %vlan.113 to i16
  %inc23 = add nuw nsw i32 %i.014, 1
  %arrayidx24 = getelementptr i16, ptr %call8.i.i, i32 %i.014
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %arrayidx24, align 2
  %18 = ptrtoint ptr %vlan1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vlan1, align 4
  %active_cvlans28 = getelementptr inbounds %struct.mlx5e_vlan_table, ptr %19, i32 0, i32 1
  %add30 = add nsw i32 %vlan.113, 1
  %call31 = tail call i32 @_find_next_bit_be(ptr noundef %active_cvlans28, i32 noundef 4096, i32 noundef %add30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call31)
  %cmp18 = icmp slt i32 %call31, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %inc23, i32 %list_size.1)
  %cmp20.not = icmp slt i32 %inc23, %list_size.1
  %or.cond = select i1 %cmp18, i1 %cmp20.not, i1 false
  br i1 %or.cond, label %if.end22.if.end22_crit_edge, label %if.end22.for.end32_crit_edge

if.end22.for.end32_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end32

if.end22.if.end22_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

for.end32:                                        ; preds = %if.end22.for.end32_crit_edge, %if.end11.for.end32_crit_edge
  %20 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev, align 64
  %call34 = tail call i32 @mlx5_modify_nic_vport_vlans(ptr noundef %21, ptr noundef nonnull %call8.i.i, i32 noundef %list_size.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.end32.if.end37_crit_edge, label %if.then36

for.end32.if.end37_crit_edge:                     ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then36:                                        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %call34) #15
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %for.end32.if.end37_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_nic_vport_vlans(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_auto_grouped_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_execute_l2_action(ptr nocapture noundef readonly %priv, ptr noundef %hn) unnamed_addr #2 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %action1 = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn, i32 0, i32 1
  %0 = ptrtoint ptr %action1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %action1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #11
  %2 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %ai = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn, i32 0, i32 2
  %3 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ai, align 4
  %5 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %hn, i32 0, i32 2, i32 0, i32 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %2, align 4
  %9 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %1, label %entry.if.end26_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb9
  ]

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

sw.bb:                                            ; preds = %entry
  tail call fastcc void @mlx5e_add_l2_flow_rule(ptr noundef %priv, ptr noundef %ai, i32 noundef 0)
  %10 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac_addr, align 4
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 64
  %call7 = call i32 @mlx5_mpfs_add_mac(ptr noundef %14, ptr noundef nonnull %mac_addr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %mpfs = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn, i32 0, i32 3
  %frombool = zext i1 %tobool.not to i8
  %15 = ptrtoint ptr %mpfs to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %mpfs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %l2_err.0 = phi i32 [ 0, %sw.bb.if.end_crit_edge ], [ %call7, %if.then ]
  %16 = ptrtoint ptr %action1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %action1, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %17 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i41.not = icmp eq i32 %17, 0
  br i1 %tobool.i41.not, label %land.lhs.true, label %sw.bb9.if.end19_crit_edge

sw.bb9.if.end19_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true:                                    ; preds = %sw.bb9
  %mpfs12 = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn, i32 0, i32 3
  %18 = ptrtoint ptr %mpfs12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mpfs12, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not = icmp eq i8 %19, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end19_crit_edge, label %if.then15

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %mdev16 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %20 = ptrtoint ptr %mdev16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev16, align 64
  %call18 = call i32 @mlx5_mpfs_del_mac(ptr noundef %21, ptr noundef nonnull %mac_addr) #11
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %land.lhs.true.if.end19_crit_edge, %sw.bb9.if.end19_crit_edge
  %l2_err.1 = phi i32 [ 0, %sw.bb9.if.end19_crit_edge ], [ %call18, %if.then15 ], [ 0, %land.lhs.true.if.end19_crit_edge ]
  %rule.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rule.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  %cmp.i.i = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end19.mlx5e_del_l2_flow_rule.exit_crit_edge, label %if.then.i

if.end19.mlx5e_del_l2_flow_rule.exit_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_l2_flow_rule.exit

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  call void @mlx5_del_flow_rules(ptr noundef nonnull %23) #11
  %24 = ptrtoint ptr %rule.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %rule.i, align 4
  br label %mlx5e_del_l2_flow_rule.exit

mlx5e_del_l2_flow_rule.exit:                      ; preds = %if.then.i, %if.end19.mlx5e_del_l2_flow_rule.exit_crit_edge
  %25 = ptrtoint ptr %hn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hn, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %hn, i32 0, i32 1
  %27 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev2.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %26, ptr %28, align 4
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %mlx5e_del_l2_flow_rule.exit.mlx5e_del_l2_from_hash.exit_crit_edge, label %do.body13.i.i.i

mlx5e_del_l2_flow_rule.exit.mlx5e_del_l2_from_hash.exit_crit_edge: ; preds = %mlx5e_del_l2_flow_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlx5e_del_l2_from_hash.exit

do.body13.i.i.i:                                  ; preds = %mlx5e_del_l2_flow_rule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %pprev14.i.i.i, align 4
  br label %mlx5e_del_l2_from_hash.exit

mlx5e_del_l2_from_hash.exit:                      ; preds = %do.body13.i.i.i, %mlx5e_del_l2_flow_rule.exit.mlx5e_del_l2_from_hash.exit_crit_edge
  %31 = ptrtoint ptr %hn to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %hn, align 4
  %32 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  call void @kfree(ptr noundef %hn) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %mlx5e_del_l2_from_hash.exit, %if.end
  %l2_err.2 = phi i32 [ %l2_err.1, %mlx5e_del_l2_from_hash.exit ], [ %l2_err.0, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l2_err.2)
  %tobool21.not = icmp eq i32 %l2_err.2, 0
  br i1 %tobool21.not, label %sw.epilog.if.end26_crit_edge, label %if.then22

sw.epilog.if.end26_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then22:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %33 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %netdev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %cond = select i1 %cmp, ptr @.str.17, ptr @.str.18
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %34, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond, ptr noundef nonnull %mac_addr, i32 noundef %l2_err.2) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %sw.epilog.if.end26_crit_edge, %entry.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_mpfs_add_mac(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_mpfs_del_mac(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx5e_vport_context_update_addr_list(ptr nocapture noundef readonly %priv, i32 noundef %list_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %list_type)
  %cmp = icmp eq i32 %list_type, 0
  br i1 %cmp, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 64
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i32, ptr %3, i32 31
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 4
  br label %cond.end16

cond.false5:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %broadcast_enabled = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 6
  %6 = ptrtoint ptr %broadcast_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %broadcast_enabled, align 4, !range !73
  %8 = zext i8 %7 to i32
  %mdev6 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %9 = ptrtoint ptr %mdev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev6, align 64
  %caps7 = getelementptr inbounds %struct.mlx5_core_dev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %caps7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %caps7, align 8
  %add.ptr12 = getelementptr i32, ptr %12, i32 31
  %13 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr12, align 4
  %shr13 = lshr i32 %14, 8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false5, %cond.true4
  %cond2107 = phi i32 [ 0, %cond.true4 ], [ %8, %cond.false5 ]
  %and.pn.in = phi i32 [ %5, %cond.true4 ], [ %shr13, %cond.false5 ]
  %and.pn = and i32 %and.pn.in, 31
  %netdev_uc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 1
  %netdev_mc = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 2
  %cond28 = select i1 %cmp, ptr %netdev_uc, ptr %netdev_mc
  br label %for.body

for.body:                                         ; preds = %for.inc54.for.body_crit_edge, %cond.end16
  %size.0126 = phi i32 [ %cond2107, %cond.end16 ], [ %size.1, %for.inc54.for.body_crit_edge ]
  %hi.0125 = phi i32 [ 0, %cond.end16 ], [ %inc55, %for.inc54.for.body_crit_edge ]
  %arrayidx30 = getelementptr %struct.hlist_head, ptr %cond28, i32 %hi.0125
  br label %for.cond39

for.cond39:                                       ; preds = %for.cond39.for.cond39_crit_edge, %for.body
  %size.1 = phi i32 [ %size.0126, %for.body ], [ %inc, %for.cond39.for.cond39_crit_edge ]
  %hn.0.in = phi ptr [ %arrayidx30, %for.body ], [ %hn.0, %for.cond39.for.cond39_crit_edge ]
  %15 = ptrtoint ptr %hn.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %hn.0 = load ptr, ptr %hn.0.in, align 4
  %tobool40.not = icmp eq ptr %hn.0, null
  %inc = add i32 %size.1, 1
  br i1 %tobool40.not, label %for.inc54, label %for.cond39.for.cond39_crit_edge

for.cond39.for.cond39_crit_edge:                  ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond39

for.inc54:                                        ; preds = %for.cond39
  %inc55 = add nuw nsw i32 %hi.0125, 1
  %exitcond.not = icmp eq i32 %inc55, 256
  br i1 %exitcond.not, label %for.end56, label %for.inc54.for.body_crit_edge

for.inc54.for.body_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end56:                                        ; preds = %for.inc54
  %cond17 = shl nuw i32 1, %and.pn
  call void @__sanitizer_cov_trace_cmp4(i32 %size.1, i32 %cond17)
  %cmp57 = icmp sgt i32 %size.1, %cond17
  br i1 %cmp57, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #13
  %netdev = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %16 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev, align 4
  %cond59 = select i1 %cmp, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %17, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond59, i32 noundef %size.1, i32 noundef %cond17) #15
  br label %if.then61

if.end:                                           ; preds = %for.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1)
  %tobool60.not = icmp eq i32 %size.1, 0
  br i1 %tobool60.not, label %if.end.out_crit_edge, label %if.end.if.then61_crit_edge

if.end.if.then61_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then61

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then61:                                        ; preds = %if.end.if.then61_crit_edge, %if.end.thread
  %size.2111 = phi i32 [ %cond17, %if.end.thread ], [ %size.1, %if.end.if.then61_crit_edge ]
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size.2111, i32 6) #11
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.then61.if.then69_crit_edge, label %if.end7.i.i, !prof !75

if.then61.if.then69_crit_edge:                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

if.end7.i.i:                                      ; preds = %if.then61
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #14
  %tobool62.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool62.not, label %if.end7.i.i.if.then69_crit_edge, label %if.end64

if.end7.i.i.if.then69_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

if.end64:                                         ; preds = %if.end7.i.i
  %netdev.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %21 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netdev.i, align 4
  br i1 %cmp, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr.i, align 64
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %call8.i.i, align 128
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4
  br label %if.end14.sink.split.i

if.else.i:                                        ; preds = %if.end64
  %broadcast_enabled.i = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 13, i32 6, i32 6
  %28 = ptrtoint ptr %broadcast_enabled.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %broadcast_enabled.i, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool8.not.i = icmp eq i8 %29, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.then9.i

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 99
  %30 = ptrtoint ptr %broadcast.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %broadcast.i, align 4
  %32 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %call8.i.i, align 128
  %add.ptr.i75.i = getelementptr %struct.net_device, ptr %22, i32 0, i32 99, i32 4
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %if.then9.i, %if.then.i
  %add.ptr.i75.sink.i = phi ptr [ %add.ptr.i75.i, %if.then9.i ], [ %add.ptr.i.i, %if.then.i ]
  %33 = ptrtoint ptr %add.ptr.i75.sink.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i75.sink.i, align 2
  %add.ptr1.i76.i = getelementptr i8, ptr %call8.i.i, i32 4
  %35 = ptrtoint ptr %add.ptr1.i76.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %add.ptr1.i76.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.sink.split.i, %if.else.i.if.end14.i_crit_edge
  %i.0.i = phi i32 [ 0, %if.else.i.if.end14.i_crit_edge ], [ 1, %if.end14.sink.split.i ]
  %dev_addr29.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc52.i.for.body.i_crit_edge, %if.end14.i
  %i.186.i = phi i32 [ %i.0.i, %if.end14.i ], [ %i.2.lcssa.i, %for.inc52.i.for.body.i_crit_edge ]
  %hi.085.i = phi i32 [ 0, %if.end14.i ], [ %inc53.i, %for.inc52.i.for.body.i_crit_edge ]
  %arrayidx16.i = getelementptr %struct.hlist_head, ptr %cond28, i32 %hi.085.i
  %36 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx16.i, align 4
  %tobool25.not81.i = icmp eq ptr %37, null
  br i1 %tobool25.not81.i, label %for.body.i.for.inc52.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.inc52.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc52.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %hn.083.i = phi ptr [ %39, %for.inc.i.land.rhs.i_crit_edge ], [ %37, %for.body.i.land.rhs.i_crit_edge ]
  %i.282.i = phi i32 [ %i.3.i, %for.inc.i.land.rhs.i_crit_edge ], [ %i.186.i, %for.body.i.land.rhs.i_crit_edge ]
  %38 = ptrtoint ptr %hn.083.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hn.083.i, align 4
  %40 = ptrtoint ptr %dev_addr29.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_addr29.i, align 64
  %ai.i = getelementptr inbounds %struct.mlx5e_l2_hash_node, ptr %hn.083.i, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %44 = ptrtoint ptr %ai.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ai.i, align 4
  %xor.i.i = xor i32 %45, %43
  %add.ptr.i77.i = getelementptr i8, ptr %41, i32 4
  %46 = ptrtoint ptr %add.ptr.i77.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i77.i, align 2
  %add.ptr1.i78.i = getelementptr %struct.mlx5e_l2_hash_node, ptr %hn.083.i, i32 0, i32 2, i32 0, i32 4
  %48 = ptrtoint ptr %add.ptr1.i78.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr1.i78.i, align 2
  %xor37.i.i = xor i16 %49, %47
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %land.rhs.i.for.inc.i_crit_edge, label %if.end32.i

land.rhs.i.for.inc.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end32.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.282.i, i32 %size.2111)
  %cmp33.not.i = icmp slt i32 %i.282.i, %size.2111
  br i1 %cmp33.not.i, label %if.end35.i, label %if.end32.i.for.inc52.i_crit_edge

if.end32.i.for.inc52.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc52.i

if.end35.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc36.i = add nsw i32 %i.282.i, 1
  %arrayidx37.i = getelementptr [6 x i8], ptr %call8.i.i, i32 %i.282.i
  %50 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %45, ptr %arrayidx37.i, align 4
  %51 = ptrtoint ptr %add.ptr1.i78.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr1.i78.i, align 2
  %add.ptr1.i80.i = getelementptr i8, ptr %arrayidx37.i, i32 4
  %53 = ptrtoint ptr %add.ptr1.i80.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %add.ptr1.i80.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end35.i, %land.rhs.i.for.inc.i_crit_edge
  %i.3.i = phi i32 [ %i.282.i, %land.rhs.i.for.inc.i_crit_edge ], [ %inc36.i, %if.end35.i ]
  %tobool25.not.i = icmp eq ptr %39, null
  br i1 %tobool25.not.i, label %for.inc.i.for.inc52.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc.i.for.inc52.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc52.i

for.inc52.i:                                      ; preds = %for.inc.i.for.inc52.i_crit_edge, %if.end32.i.for.inc52.i_crit_edge, %for.body.i.for.inc52.i_crit_edge
  %i.2.lcssa.i = phi i32 [ %i.186.i, %for.body.i.for.inc52.i_crit_edge ], [ %i.3.i, %for.inc.i.for.inc52.i_crit_edge ], [ %i.282.i, %if.end32.i.for.inc52.i_crit_edge ]
  %inc53.i = add nuw nsw i32 %hi.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc53.i, 256
  br i1 %exitcond.not.i, label %for.inc52.i.out_crit_edge, label %for.inc52.i.for.body.i_crit_edge

for.inc52.i.for.body.i_crit_edge:                 ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc52.i.out_crit_edge:                        ; preds = %for.inc52.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.inc52.i.out_crit_edge, %if.end.out_crit_edge
  %size.2112 = phi i32 [ 0, %if.end.out_crit_edge ], [ %size.2111, %for.inc52.i.out_crit_edge ]
  %addr_array.0 = phi ptr [ null, %if.end.out_crit_edge ], [ %call8.i.i, %for.inc52.i.out_crit_edge ]
  %mdev66 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 21
  %54 = ptrtoint ptr %mdev66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdev66, align 64
  %call67 = tail call i32 @mlx5_modify_nic_vport_mac_list(ptr noundef %55, i32 noundef %list_type, ptr noundef %addr_array.0, i32 noundef %size.2112) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %out.if.end73_crit_edge, label %out.if.then69_crit_edge

out.if.then69_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

out.if.end73_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end73

if.then69:                                        ; preds = %out.if.then69_crit_edge, %if.end7.i.i.if.then69_crit_edge, %if.then61.if.then69_crit_edge
  %addr_array.1123 = phi ptr [ %addr_array.0, %out.if.then69_crit_edge ], [ null, %if.end7.i.i.if.then69_crit_edge ], [ null, %if.then61.if.then69_crit_edge ]
  %err.0122 = phi i32 [ %call67, %out.if.then69_crit_edge ], [ -12, %if.end7.i.i.if.then69_crit_edge ], [ -12, %if.then61.if.then69_crit_edge ]
  %netdev70 = getelementptr inbounds %struct.mlx5e_priv, ptr %priv, i32 0, i32 22
  %56 = ptrtoint ptr %netdev70 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev70, align 4
  %cond72 = select i1 %cmp, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond72, i32 noundef %err.0122) #15
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %out.if.end73_crit_edge
  %addr_array.1124 = phi ptr [ %addr_array.1123, %if.then69 ], [ %addr_array.0, %out.if.end73_crit_edge ]
  tail call void @kfree(ptr noundef %addr_array.1124) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_nic_vport_promisc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_modify_nic_vport_mac_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_destroy_flow_group(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_inner_ttc_table(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5e_rx_res_get_tirn_rss_inner(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_table(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_create_flow_group(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 365, i32 28}
!2 = !{ptr @__func__.mlx5e_add_vlan_trap, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 366, i32 7}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 391, i32 28}
!6 = !{ptr @__func__.mlx5e_add_mac_trap, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 392, i32 7}
!8 = distinct !{null, !9, !"__print_once", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 808, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 1278, i32 28}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 1286, i32 7}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 1293, i32 28}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 1300, i32 28}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 1307, i32 28}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 153, i32 8}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 171, i32 20}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 245, i32 6}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 253, i32 28}
!32 = !{ptr @__func__.__mlx5e_add_vlan_rule, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 253, i32 53}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 748, i32 28}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 728, i32 28}
!38 = !{ptr @__func__.mlx5e_add_promisc_rule, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 728, i32 65}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 567, i32 29}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 568, i32 37}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 568, i32 45}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 775, i32 6}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 767, i32 6}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 641, i32 8}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 642, i32 16}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 642, i32 23}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 659, i32 7}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 960, i32 28}
!60 = !{ptr @__func__.mlx5e_add_l2_flow_rule, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 961, i32 7}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en_fs.c", i32 524, i32 2}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i8 0, i8 2}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{!"branch_weights", i32 1, i32 2000}
